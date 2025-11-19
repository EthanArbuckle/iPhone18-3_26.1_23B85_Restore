double sub_1001A6FC8(uint64_t a1)
{
  *a1 = off_10099B158;
  *(a1 + 8) = 850045863;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1065353216;
  *(a1 + 112) = 1;
  return result;
}

void *sub_1001A7014(void *a1)
{
  *a1 = off_10099B158;
  v2 = (a1 + 1);
  sub_100021914((a1 + 9));
  std::mutex::~mutex(v2);
  return a1;
}

void sub_1001A7068(void *a1)
{
  *a1 = off_10099B158;
  v1 = (a1 + 1);
  sub_100021914((a1 + 9));
  std::mutex::~mutex(v1);

  operator delete();
}

void sub_1001A70DC(uint64_t a1@<X0>, unsigned __int16 a2@<W1>, _BYTE *a3@<X8>)
{
  v7 = a2;
  std::mutex::lock((a1 + 8));
  v5 = sub_1000222CC((a1 + 72), &v7);
  if (v5)
  {
    memcpy(a3, v5 + 3, 0x2D0uLL);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a3 = 0;
  }

  a3[720] = v6;
  std::mutex::unlock((a1 + 8));
}

void sub_1001A7164(uint64_t a1@<X0>, unsigned __int16 a2@<W1>, _BYTE *a3@<X8>)
{
  v7 = a2;
  std::mutex::lock((a1 + 8));
  v5 = sub_1000222CC((a1 + 72), &v7);
  if (v5)
  {
    memcpy(a3, v5 + 4, 0x2C0uLL);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a3 = 0;
  }

  a3[704] = v6;
  std::mutex::unlock((a1 + 8));
}

BOOL sub_1001A71EC(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  v8 = a2;
  std::mutex::lock((a1 + 8));
  v5 = sub_1000222CC((a1 + 72), &v8);
  if (v5)
  {
    v6 = *(a3 + 24);
    if (!v6)
    {
      sub_100037B10();
    }

    (*(*v6 + 48))(v6, v5 + 3);
  }

  std::mutex::unlock((a1 + 8));
  return v5 != 0;
}

void sub_1001A72A0(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  for (i = (a1 + 88); ; (*(*v5 + 48))(v5, i + 3))
  {
    i = *i;
    if (!i)
    {
      break;
    }

    v5 = *(a2 + 24);
    if (!v5)
    {
      sub_100037B10();
    }
  }

  std::mutex::unlock((a1 + 8));
}

void sub_1001A7348(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock((a1 + 8));
  v6 = *(a1 + 112);
  *(a1 + 112) = v6 + 1;
  v8 = v6;
  if (((v6 + 1) & 0x10000) != 0)
  {
    *(a1 + 112) = 1;
  }

  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Generated ticket_id for request. ID: %d", buf, 8u);
  }

  memcpy(&__src[6], a2, 0x240uLL);
  *buf = 0;
  v11 = v6;
  memcpy(v12, __src, 0x246uLL);
  v12[582] = 0;
  v12[694] = 0;
  v12[702] = 0;
  sub_1001A7E00((a1 + 72), &v8);
  *a3 = v6;
  memcpy((a3 + 2), __src, 0x246uLL);
  *(a3 + 584) = 0;
  *(a3 + 696) = 0;
  *(a3 + 704) = 1;
  std::mutex::unlock((a1 + 8));
}

BOOL sub_1001A74B8(uint64_t a1, int a2)
{
  v14 = a2;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "deleteServiceRequest for ticket id %d", buf, 8u);
  }

  std::mutex::lock((a1 + 8));
  v5 = sub_1000222CC((a1 + 72), &v14);
  if (v5)
  {
    sub_1000223BC((a1 + 72), v5);
  }

  else
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A2EA8(&v14, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  std::mutex::unlock((a1 + 8));
  return v5 != 0;
}

BOOL sub_1001A75E8(uint64_t a1, int a2, int a3)
{
  v18 = a2;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v20 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updateServiceRequestState for ticket id %d", buf, 8u);
  }

  std::mutex::lock((a1 + 8));
  v7 = sub_1000222CC((a1 + 72), &v18);
  v8 = v7;
  if (v7)
  {
    if (*(v7 + 6) == a3)
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Asked to update service request to same as current state", buf, 2u);
      }
    }

    else
    {
      *(v7 + 6) = a3;
    }
  }

  else
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A2F18(&v18, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  std::mutex::unlock((a1 + 8));
  return v8 != 0;
}

BOOL sub_1001A7768(uint64_t a1, int a2)
{
  v15 = a2;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "recordPowerLogSubmission for ticket id %d", buf, 8u);
  }

  std::mutex::lock((a1 + 8));
  v5 = sub_1000222CC((a1 + 72), &v15);
  v6 = v5;
  if (v5)
  {
    *(v5 + 736) = 1;
  }

  else
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A2F18(&v15, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  std::mutex::unlock((a1 + 8));
  return v6 != 0;
}

uint64_t sub_1001A7894(uint64_t a1)
{
  v3[0] = off_10099B1A8;
  v3[3] = v3;
  v1 = sub_1001A7934(a1, v3);
  sub_1001A8134(v3);
  return v1;
}

void sub_1001A7920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001A8134(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A7934(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  v4 = *(a1 + 88);
  if (v4)
  {
    LODWORD(v5) = 0;
    do
    {
      v6 = *(a2 + 24);
      if (!v6)
      {
        sub_100037B10();
      }

      v5 = v5 + (*(*v6 + 48))(v6, v4 + 3);
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  std::mutex::unlock((a1 + 8));
  return v5;
}

uint64_t sub_1001A79E4(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "countActiveSensorFusionRequests called", v5, 2u);
  }

  v6[0] = off_10099B238;
  v6[3] = v6;
  v3 = sub_1001A7934(a1, v6);
  sub_1001A8134(v6);
  return v3;
}

void sub_1001A7ABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001A8134(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A7AD0(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "countActiveWantsMotionRequests called", v5, 2u);
  }

  v6[0] = off_10099B2B8;
  v6[3] = v6;
  v3 = sub_1001A7934(a1, v6);
  sub_1001A8134(v6);
  return v3;
}

void sub_1001A7BA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001A8134(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A7BBC(uint64_t a1)
{
  v3[0] = off_10099B338;
  v3[3] = v3;
  v1 = sub_1001A7934(a1, v3);
  sub_1001A8134(v3);
  return v1;
}

void sub_1001A7C48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001A8134(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A7C64(uint64_t a1)
{
  sub_100182FE0(v28);
  std::mutex::lock((a1 + 8));
  for (i = *(a1 + 88); i; i = *i)
  {
    if (*(i + 6) == 1)
    {
      v4 = *(i + 41);
      v5 = *(i + 11);
      if (v5 <= 4)
      {
        if (v5 == 4)
        {
          v18 = 1;
        }

        else
        {
          v18 = 4;
        }

        if (v5 == 4)
        {
          v19 = 3;
        }

        else
        {
          v19 = 0;
        }

        if (v5 == 3)
        {
          v18 = 2;
          v19 = 9;
        }

        v20 = v4 == 0;
        if (*(i + 41))
        {
          v21 = 2;
        }

        else
        {
          v21 = 1;
        }

        if (v20)
        {
          v22 = 20;
        }

        else
        {
          v22 = 2;
        }

        if (v5 == 2)
        {
          v23 = 1;
        }

        else
        {
          v23 = 4;
        }

        if (v5 == 2)
        {
          v24 = 3;
        }

        else
        {
          v24 = 0;
        }

        if (v5 != 1)
        {
          v21 = v23;
          v22 = v24;
        }

        v25 = v5 <= 2;
        if (v5 <= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = v18;
        }

        if (v25)
        {
          v17 = v22;
        }

        else
        {
          v17 = v19;
        }
      }

      else
      {
        v6 = v4 == 0;
        if (*(i + 41))
        {
          v7 = 2;
        }

        else
        {
          v7 = 1;
        }

        if (v6)
        {
          v8 = 2;
        }

        else
        {
          v8 = 1;
        }

        if (v5 == 9)
        {
          v9 = 1;
        }

        else
        {
          v9 = 4;
        }

        if (v5 == 9)
        {
          v10 = 12;
        }

        else
        {
          v10 = 0;
        }

        if (v5 == 8)
        {
          v11 = 16;
        }

        else
        {
          v8 = v9;
          v11 = v10;
        }

        if (v5 == 7)
        {
          v12 = 16;
        }

        else
        {
          v7 = v8;
          v12 = v11;
        }

        if (v5 == 6)
        {
          v13 = 1;
        }

        else
        {
          v13 = 4;
        }

        if (v5 == 6)
        {
          v14 = 12;
        }

        else
        {
          v14 = 0;
        }

        if (v5 == 5)
        {
          v13 = 1;
          v14 = 3;
        }

        v15 = v5 <= 6;
        if (v5 <= 6)
        {
          v16 = v13;
        }

        else
        {
          v16 = v7;
        }

        if (v15)
        {
          v17 = v14;
        }

        else
        {
          v17 = v12;
        }
      }

      v1 = v1 & 0xFFFFFFFF00000000 | *(i + 140);
      sub_100182FF4(v28, 1, v17, 1, v16, v1);
    }
  }

  v26 = sub_100183070(v28);
  std::mutex::unlock((a1 + 8));
  return v26;
}

uint64_t **sub_1001A7E00(void *a1, unsigned __int16 *a2)
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
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_1001A80E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001A8134(uint64_t a1)
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

uint64_t sub_1001A823C(uint64_t a1, int *a2)
{
  v3 = sub_10019B1B8(a2[18]);
  v4 = *a2;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a2 + 4);
    v7 = "false";
    if (v4 == 1)
    {
      v8 = "true";
    }

    else
    {
      v8 = "false";
    }

    v10[0] = 67109634;
    v10[1] = v6;
    v11 = 2080;
    if (v3)
    {
      v7 = "true";
    }

    v12 = v8;
    v13 = 2080;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ticket ID %d active: %s, wants sensor fusion: %s", v10, 0x1Cu);
  }

  return (v4 == 1) & v3;
}

uint64_t sub_1001A833C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001A8410(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *(a2 + 68);
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a2 + 4);
    v7 = "false";
    if (v3 == 1)
    {
      v8 = "true";
    }

    else
    {
      v8 = "false";
    }

    v10[0] = 67109634;
    v10[1] = v6;
    v11 = 2080;
    if (v4)
    {
      v7 = "true";
    }

    v12 = v8;
    v13 = 2080;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ticket ID %d active: %s, wants motion: %s", v10, 0x1Cu);
  }

  return (v3 == 1) & v4;
}

uint64_t sub_1001A8508(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001A85EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1001A8688(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 850045863;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *a1 = off_10099B4B0;
  return result;
}

uint64_t sub_1001A86C8(uint64_t a1)
{
  *a1 = off_100998DA8;
  std::mutex::~mutex((a1 + 24));
  return a1;
}

void sub_1001A870C(uint64_t a1)
{
  *a1 = off_100998DA8;
  std::mutex::~mutex((a1 + 24));

  operator delete();
}

uint64_t sub_1001A8778(uint64_t a1)
{
  *a1 = off_10099B7B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1001A87C8(uint64_t a1)
{
  *a1 = off_10099B7B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1001A8818(uint64_t a1)
{
  *a1 = off_10099B7B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1001A8868(uint64_t a1)
{
  *a1 = off_10099B7B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1001A88B8(uint64_t a1)
{
  *a1 = off_10099B7B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1001A8908(uint64_t a1)
{
  *a1 = off_10099B7B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1001A8958(uint64_t a1)
{
  *a1 = off_10099B7B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

double sub_1001A89A8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3 == *a2)
  {
    return 0.0;
  }

  for (i = v2 + 24; i != v3; i += 24)
  {
    if (*(v2 + 8) < *(i + 8))
    {
      v2 = i;
    }
  }

  return *(v2 + 8);
}

double sub_1001A89E8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3 == v2)
  {
    return 0.0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_100012394(&v9, v2, v3, 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3));
  if (v10 == v9)
  {
    v7 = 0.0;
    if (!v9)
    {
      return v7;
    }

LABEL_9:
    v10 = v9;
    operator delete(v9);
    return v7;
  }

  v5 = 0.0;
  v6 = v9;
  do
  {
    v5 = v5 + v6[1];
    v6 += 3;
  }

  while (v6 != v10);
  v7 = v5 / (0xAAAAAAAAAAAAAAABLL * (v10 - v9));
  if (v9)
  {
    goto LABEL_9;
  }

  return v7;
}

double sub_1001A8A9C(uint64_t a1, void *a2)
{
  if (a2[1] == *a2)
  {
    return -200.0;
  }

  v3 = 0;
  v4 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  do
  {
    v5 = a2[1];
    if (v5 != *a2)
    {
      v6 = dword_100563960[v4];
      v7 = *a2 + 8;
      do
      {
        if (*(v7 + 8) == v6)
        {
          sub_100009734(&v28, v7);
          v5 = a2[1];
        }

        v7 += 24;
      }

      while (v7 - 8 != v5);
      v3 = v28;
      if (v29 != v28)
      {
        v23 = 0;
        v24 = 0.0;
        v21 = 0;
        v22 = 0;
        sub_100012F38(&v21, v28, v29, (v29 - v28) >> 3);
        if (v22 == v21)
        {
          v11 = 0.0;
        }

        else
        {
          v8 = 0.0;
          v9 = v21;
          do
          {
            v10 = *v9++;
            v8 = v8 + v10;
          }

          while (v9 != v22);
          v11 = v8 / (v22 - v21);
        }

        v24 = v11;
        if (v21)
        {
          v22 = v21;
          operator delete(v21);
        }

        sub_100009734(&v25, &v24);
        v3 = v28;
      }
    }

    v29 = v3;
    ++v4;
  }

  while (v4 != 3);
  v12 = v26 - v25;
  switch(v12)
  {
    case 1:
      v14 = *v25;
      break;
    case 2:
      v14 = (*v25 + v25[1]) * 0.5;
      break;
    case 3:
      v14 = *v25;
      v13 = v25[1];
      v15 = v25[2];
      if ((*v25 < v13 || v14 > v15) && (v14 > v13 || v14 < v15))
      {
        v18 = v14 > v13;
        v19 = v14 < v13;
        if (v13 > v15)
        {
          v18 = 1;
        }

        if (v13 < v15)
        {
          v19 = 1;
        }

        if (v18 && v19)
        {
          v14 = v25[2];
        }

        else
        {
          v14 = v25[1];
        }
      }

      break;
    default:
      v14 = -200.0;
      if (!v25)
      {
        goto LABEL_43;
      }

      break;
  }

  v26 = v25;
  operator delete(v25);
  v3 = v28;
LABEL_43:
  if (v3)
  {
    v29 = v3;
    operator delete(v3);
  }

  return v14;
}

void sub_1001A8C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_1001A8CBC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3);
  if (v4 <= 2 * *(a1 + 32))
  {
    if (v2 == v3)
    {
      return 0.0;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    sub_100012394(&v16, v3, v2, v4);
    if (v17 == v16)
    {
      v14 = 0.0;
      if (!v16)
      {
        return v14;
      }
    }

    else
    {
      v12 = 0.0;
      v13 = v16;
      do
      {
        v12 = v12 + v13[1];
        v13 += 3;
      }

      while (v13 != v17);
      v14 = v12 / (0xAAAAAAAAAAAAAAABLL * (v17 - v16));
      if (!v16)
      {
        return v14;
      }
    }

    v17 = v16;
    operator delete(v16);
    return v14;
  }

  v19 = sub_10001104C;
  v7 = 126 - 2 * __clz(v4);
  if (v2 == v3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  sub_100010168(v3, v2, &v19, v8, 1);
  v9 = *(a1 + 32);
  v10 = (v3 + 24 * v9);
  v11 = 0.0;
  while (v10 != (v2 - 24 * v9))
  {
    v11 = v11 + v10->n128_f64[1];
    v10 = (v10 + 24);
  }

  return v11 / (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) - 2 * v9);
}

double sub_1001A8E30(uint64_t a1, uint64_t *a2)
{
  __p = 0;
  v17 = 0;
  v18 = 0;
  v2 = *a2;
  if (a2[1] == *a2)
  {
    return 0.0;
  }

  v4 = 0;
  v5 = 8;
  do
  {
    v15 = __exp10(*(v2 + v5) / 10.0);
    sub_100009734(&__p, &v15);
    ++v4;
    v2 = *a2;
    v5 += 24;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v4);
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_100012F38(&v12, __p, v17, (v17 - __p) >> 3);
  if (v13 == v12)
  {
    v9 = 0.0;
    if (v12)
    {
LABEL_8:
      v13 = v12;
      operator delete(v12);
    }
  }

  else
  {
    v6 = 0.0;
    v7 = v12;
    do
    {
      v8 = *v7++;
      v6 = v6 + v8;
    }

    while (v7 != v13);
    v9 = v6 / (v13 - v12) * 0.797884561;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  v10 = log10(v9) * 10.0;
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_1001A8F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A8F88(uint64_t a1)
{
  *a1 = off_10099B7B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_1001A8FF8(uint64_t a1)
{
  *a1 = off_10099B7B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_1001A9068(uint64_t a1)
{
  *a1 = off_10099B7B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_1001A90D8(uint64_t a1)
{
  *a1 = off_10099B7B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_1001A9148(uint64_t a1)
{
  *a1 = off_10099B7B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_1001A91B8(uint64_t a1)
{
  *a1 = off_10099B7B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_1001A9228(uint64_t a1)
{
  *a1 = off_10099B7B8;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void *sub_1001A9298(void *a1)
{
  sub_100004A08(&__p, "MAX_FILTER");
  sub_1001A9328(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = off_10099B5E8;
  return a1;
}

void sub_1001A930C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001A9328(uint64_t a1, const std::string *a2)
{
  *a1 = off_10099B7B8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::string::operator=((a1 + 8), a2);
  return a1;
}

void sub_1001A9384(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001A93A0(void *a1)
{
  sub_100004A08(&__p, "MEAN_FIILTER");
  sub_1001A9328(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = off_10099B638;
  return a1;
}

void sub_1001A9414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001A9430(void *a1)
{
  sub_100004A08(&__p, "MEDIAN_FILTER");
  sub_1001A9328(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = off_10099B678;
  return a1;
}

void sub_1001A94A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001A94C0(void *a1)
{
  sub_100004A08(&__p, "MAX_OF_MEAN_CHAN_FILTER");
  sub_1001A9328(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = off_10099B6B8;
  return a1;
}

void sub_1001A9534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001A9550(void *a1)
{
  sub_100004A08(&__p, "MEDIAN_OF_MEAN_CHAN_FILTER");
  sub_1001A9328(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = off_10099B6F8;
  return a1;
}

void sub_1001A95C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001A95E0(uint64_t a1, int __val)
{
  std::to_string(&v7, __val);
  v4 = std::string::insert(&v7, 0, "OLYMPIC_FILTER");
  v5 = *&v4->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_1001A9328(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  *a1 = off_10099B738;
  *(a1 + 32) = __val;
  return a1;
}

void sub_1001A9694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001A96C8(void *a1)
{
  sub_100004A08(&__p, "RAYLEIGH_FILTER");
  sub_1001A9328(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = off_10099B778;
  return a1;
}

void sub_1001A973C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1001A9758(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unsigned int (**a5)(__n128 *, __n128 *))
{
  v10 = *a5;
  v42 = *a2;
  v43 = a2[1].n128_u64[0];
  v40 = *a1;
  v41 = a1[1].n128_u64[0];
  v11 = v10(&v42, &v40);
  v12 = *a5;
  if (v11)
  {
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v12(&v42, &v40))
    {
      v13 = a1[1].n128_u64[0];
      v14 = *a1;
      v15 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v15;
LABEL_9:
      *a3 = v14;
      a3[1].n128_u64[0] = v13;
      goto LABEL_10;
    }

    v23 = a1[1].n128_u64[0];
    v24 = *a1;
    v25 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = v24;
    a2[1].n128_u64[0] = v23;
    v26 = *a5;
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v26(&v42, &v40))
    {
      v13 = a2[1].n128_u64[0];
      v14 = *a2;
      v27 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v27;
      goto LABEL_9;
    }
  }

  else
  {
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v12(&v42, &v40))
    {
      v16 = a2[1].n128_u64[0];
      v17 = *a2;
      v18 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v18;
      *a3 = v17;
      a3[1].n128_u64[0] = v16;
      v19 = *a5;
      v42 = *a2;
      v43 = a2[1].n128_u64[0];
      v40 = *a1;
      v41 = a1[1].n128_u64[0];
      if (v19(&v42, &v40))
      {
        v20 = a1[1].n128_u64[0];
        v21 = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = v21;
        a2[1].n128_u64[0] = v20;
      }
    }
  }

LABEL_10:
  v28 = *a5;
  v42 = *a4;
  v43 = a4[1].n128_u64[0];
  v40 = *a3;
  v41 = a3[1].n128_u64[0];
  if (v28(&v42, &v40))
  {
    v30 = a3[1].n128_u64[0];
    v31 = *a3;
    v32 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v32;
    *a4 = v31;
    a4[1].n128_u64[0] = v30;
    v33 = *a5;
    v42 = *a3;
    v43 = a3[1].n128_u64[0];
    v40 = *a2;
    v41 = a2[1].n128_u64[0];
    if (v33(&v42, &v40))
    {
      v34 = a2[1].n128_u64[0];
      v35 = *a2;
      v36 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v36;
      *a3 = v35;
      a3[1].n128_u64[0] = v34;
      v37 = *a5;
      v42 = *a2;
      v43 = a2[1].n128_u64[0];
      v40 = *a1;
      v41 = a1[1].n128_u64[0];
      if (v37(&v42, &v40))
      {
        v38 = a1[1].n128_u64[0];
        result = *a1;
        v39 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v39;
        *a2 = result;
        a2[1].n128_u64[0] = v38;
      }
    }
  }

  return result;
}

uint64_t sub_1001A9A3C(uint64_t result, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v24 = v3;
    v25 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        v12 = *a3;
        v22 = *v10;
        v23 = *(v10 + 16);
        v13 = *v11;
        v21 = *(v11 + 16);
        v20 = v13;
        result = v12(&v22, &v20);
        if (result)
        {
          v22 = *v10;
          v23 = *(v10 + 16);
          v14 = v9;
          while (1)
          {
            v15 = v6 + v14;
            *(v15 + 24) = *(v6 + v14);
            *(v15 + 40) = *(v6 + v14 + 16);
            if (!v14)
            {
              break;
            }

            v16 = *a3;
            v20 = v22;
            v21 = v23;
            v18 = *(v15 - 24);
            v19 = *(v15 - 8);
            result = v16(&v20, &v18);
            v14 -= 24;
            if ((result & 1) == 0)
            {
              v17 = v6 + v14 + 24;
              goto LABEL_10;
            }
          }

          v17 = v6;
LABEL_10:
          *v17 = v22;
          *(v17 + 16) = v23;
        }

        v7 = v10 + 24;
        v9 += 24;
      }

      while (v10 + 24 != a2);
    }
  }

  return result;
}

uint64_t sub_1001A9B6C(uint64_t result, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v21 = v3;
    v22 = v4;
    v6 = result;
    for (i = result + 24; v6 + 24 != a2; i = v6 + 24)
    {
      v9 = v6;
      v6 = i;
      v10 = *a3;
      v19 = *v6;
      v20 = *(v6 + 16);
      v11 = *v9;
      v18 = *(v9 + 16);
      v17 = v11;
      result = v10(&v19, &v17);
      if (result)
      {
        v19 = *v6;
        v20 = *(v6 + 16);
        v12 = v6;
        do
        {
          v13 = v12 - 24;
          *v12 = *(v12 - 24);
          *(v12 + 16) = *(v12 - 8);
          v14 = *a3;
          v17 = v19;
          v18 = v20;
          v15 = *(v12 - 48);
          v16 = *(v12 - 32);
          result = v14(&v17, &v15);
          v12 = v13;
        }

        while ((result & 1) != 0);
        *v13 = v19;
        *(v13 + 16) = v20;
      }
    }
  }

  return result;
}

__int128 *sub_1001A9C74(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v31 = *a1;
  v32 = *(a1 + 2);
  v6 = *a3;
  v33 = *a1;
  v34 = *(a1 + 2);
  v29 = *(a2 - 24);
  v30 = *(a2 - 1);
  if (v6(&v33, &v29))
  {
    v7 = a1;
    do
    {
      v8 = (v7 + 24);
      v9 = *a3;
      v33 = v31;
      v34 = v32;
      v29 = *(v7 + 24);
      v30 = *(v7 + 5);
      v10 = v9(&v33, &v29);
      v7 = v8;
    }

    while ((v10 & 1) == 0);
  }

  else
  {
    v11 = (a1 + 24);
    do
    {
      v8 = v11;
      if (v11 >= v4)
      {
        break;
      }

      v12 = *a3;
      v33 = v31;
      v34 = v32;
      v29 = *v8;
      v30 = *(v8 + 2);
      v13 = v12(&v33, &v29);
      v11 = (v8 + 24);
    }

    while (!v13);
  }

  if (v8 >= v4)
  {
    v14 = v4;
  }

  else
  {
    do
    {
      v14 = (v4 - 24);
      v15 = *a3;
      v33 = v31;
      v34 = v32;
      v29 = *(v4 - 24);
      v30 = *(v4 - 1);
      v4 = (v4 - 24);
    }

    while ((v15(&v33, &v29) & 1) != 0);
  }

  while (v8 < v14)
  {
    v16 = *v8;
    v34 = *(v8 + 2);
    v33 = v16;
    v17 = *v14;
    *(v8 + 2) = *(v14 + 2);
    *v8 = v17;
    v18 = v33;
    *(v14 + 2) = v34;
    *v14 = v18;
    do
    {
      v19 = *(v8 + 24);
      v20 = *(v8 + 5);
      v8 = (v8 + 24);
      v21 = *a3;
      v33 = v31;
      v34 = v32;
      v29 = v19;
      v30 = v20;
    }

    while (!v21(&v33, &v29));
    do
    {
      v33 = v31;
      v34 = v32;
      v22 = *(v14 - 24);
      v23 = *(v14 - 1);
      v14 = (v14 - 24);
      v24 = *a3;
      v30 = v23;
      v29 = v22;
    }

    while ((v24(&v33, &v29) & 1) != 0);
  }

  v25 = (v8 - 24);
  if ((v8 - 24) != a1)
  {
    v26 = *v25;
    *(a1 + 2) = *(v8 - 1);
    *a1 = v26;
  }

  v27 = v31;
  *(v8 - 1) = v32;
  *v25 = v27;
  return v8;
}

uint64_t sub_1001A9EAC(__int128 *a1, unint64_t a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v29 = *a1;
  v30 = *(a1 + 2);
  do
  {
    v7 = *a3;
    v31 = *(a1 + v6 + 24);
    v32 = *(a1 + v6 + 40);
    v27 = v29;
    v28 = v30;
    v6 += 24;
  }

  while ((v7(&v31, &v27) & 1) != 0);
  v8 = (a1 + v6);
  v9 = a1 + v6 - 24;
  if (v6 == 24)
  {
    while (v8 < a2)
    {
      v12 = *a3;
      v10 = a2 - 24;
      v31 = *(a2 - 24);
      v32 = *(a2 - 8);
      v27 = v29;
      v28 = v30;
      a2 -= 24;
      if (v12(&v31, &v27))
      {
        goto LABEL_9;
      }
    }

    v10 = a2;
  }

  else
  {
    do
    {
      v10 = a2 - 24;
      v11 = *a3;
      v31 = *(a2 - 24);
      v32 = *(a2 - 8);
      v27 = v29;
      v28 = v30;
      a2 -= 24;
    }

    while (!v11(&v31, &v27));
  }

LABEL_9:
  if (v8 < v10)
  {
    v13 = v8;
    v14 = v10;
    do
    {
      v31 = *v13;
      v15 = v31;
      v32 = *(v13 + 2);
      v16 = v32;
      v17 = *(v14 + 16);
      *v13 = *v14;
      *(v13 + 2) = v17;
      *(v14 + 16) = v16;
      *v14 = v15;
      do
      {
        v18 = *(v13 + 24);
        v19 = *(v13 + 5);
        v13 = (v13 + 24);
        v20 = *a3;
        v31 = v18;
        v32 = v19;
        v27 = v29;
        v28 = v30;
      }

      while ((v20(&v31, &v27) & 1) != 0);
      do
      {
        v21 = *(v14 - 24);
        v22 = *(v14 - 8);
        v14 -= 24;
        v23 = *a3;
        v32 = v22;
        v31 = v21;
        v27 = v29;
        v28 = v30;
      }

      while (!v23(&v31, &v27));
    }

    while (v13 < v14);
    v9 = v13 - 24;
  }

  if (v9 != a1)
  {
    v24 = *v9;
    *(a1 + 2) = *(v9 + 16);
    *a1 = v24;
  }

  v25 = v29;
  *(v9 + 16) = v30;
  *v9 = v25;
  return v9;
}

BOOL sub_1001AA0BC(uint64_t a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v24 = (a2 - 24);
        v25 = *a3;
        v70 = *(a1 + 24);
        v71 = *(a1 + 40);
        v68 = *a1;
        v69 = *(a1 + 16);
        v26 = v25(&v70, &v68);
        v27 = *a3;
        if (v26)
        {
          v70 = *v24;
          v71 = v24[1].n128_i64[0];
          v68 = *(a1 + 24);
          v69 = *(a1 + 40);
          if (v27(&v70, &v68))
          {
            v28 = *(a1 + 16);
            v29 = *a1;
            v30 = v24[1].n128_i64[0];
            *a1 = *v24;
            *(a1 + 16) = v30;
          }

          else
          {
            v49 = *(a1 + 16);
            v50 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v50;
            *(a1 + 40) = v49;
            v51 = *a3;
            v70 = *v24;
            v71 = v24[1].n128_i64[0];
            v68 = *(a1 + 24);
            v69 = *(a1 + 40);
            if (!v51(&v70, &v68))
            {
              return 1;
            }

            v28 = *(a1 + 40);
            v29 = *(a1 + 24);
            v52 = v24[1].n128_i64[0];
            *(a1 + 24) = *v24;
            *(a1 + 40) = v52;
          }

          *v24 = v29;
          v24[1].n128_u64[0] = v28;
          return 1;
        }

        v70 = *v24;
        v71 = v24[1].n128_i64[0];
        v68 = *(a1 + 24);
        v69 = *(a1 + 40);
        if (!v27(&v70, &v68))
        {
          return 1;
        }

        v37 = *(a1 + 40);
        v38 = *(a1 + 24);
        v39 = v24[1].n128_i64[0];
        *(a1 + 24) = *v24;
        *(a1 + 40) = v39;
        *v24 = v38;
        v24[1].n128_u64[0] = v37;
        break;
      case 4:
        sub_1001A9758(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        sub_1001A9758(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        v12 = *a3;
        v70 = *(a2 - 24);
        v71 = a2[-1].n128_i64[1];
        v68 = *(a1 + 72);
        v69 = *(a1 + 88);
        if (!v12(&v70, &v68))
        {
          return 1;
        }

        v13 = &a2[-2].n128_i64[1];
        v14 = *(a1 + 88);
        v15 = *(a1 + 72);
        v16 = a2[-1].n128_i64[1];
        *(a1 + 72) = *(a2 - 24);
        *(a1 + 88) = v16;
        *v13 = v15;
        v13[2] = v14;
        v17 = *a3;
        v70 = *(a1 + 72);
        v71 = *(a1 + 88);
        v68 = *(a1 + 48);
        v69 = *(a1 + 64);
        if (!v17(&v70, &v68))
        {
          return 1;
        }

        v18 = *(a1 + 64);
        v19 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        v20 = *(a1 + 88);
        *(a1 + 64) = v20;
        *(a1 + 72) = v19;
        *(a1 + 88) = v18;
        v21 = *a3;
        v70 = *(a1 + 48);
        v71 = v20;
        v68 = *(a1 + 24);
        v69 = *(a1 + 40);
        if (!v21(&v70, &v68))
        {
          return 1;
        }

        v22 = *(a1 + 40);
        v23 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v23;
        *(a1 + 64) = v22;
        break;
      default:
        goto LABEL_16;
    }

    v40 = *a3;
    v70 = *(a1 + 24);
    v71 = *(a1 + 40);
    v68 = *a1;
    v69 = *(a1 + 16);
    if (v40(&v70, &v68))
    {
      v41 = *(a1 + 16);
      v42 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v42;
      *(a1 + 40) = v41;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v70 = *(a2 - 24);
    v71 = a2[-1].n128_i64[1];
    v68 = *a1;
    v69 = *(a1 + 16);
    if (v7(&v70, &v68))
    {
      v8 = (a2 - 24);
      v9 = *(a1 + 16);
      v10 = *a1;
      v11 = a2[-1].n128_i64[1];
      *a1 = *(a2 - 24);
      *(a1 + 16) = v11;
      *v8 = v10;
      v8[1].n128_u64[0] = v9;
    }

    return 1;
  }

LABEL_16:
  v31 = (a1 + 48);
  v32 = *a3;
  v70 = *(a1 + 24);
  v71 = *(a1 + 40);
  v68 = *a1;
  v69 = *(a1 + 16);
  v33 = v32(&v70, &v68);
  v34 = *a3;
  if (v33)
  {
    v70 = *v31;
    v71 = *(a1 + 64);
    v68 = *(a1 + 24);
    v69 = *(a1 + 40);
    if (v34(&v70, &v68))
    {
      v35 = *(a1 + 16);
      v36 = *a1;
      *a1 = *v31;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v53 = *(a1 + 16);
      v54 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v54;
      *(a1 + 40) = v53;
      v55 = *a3;
      v70 = *v31;
      v71 = *(a1 + 64);
      v68 = *(a1 + 24);
      v69 = *(a1 + 40);
      if (!v55(&v70, &v68))
      {
        goto LABEL_33;
      }

      v35 = *(a1 + 40);
      v36 = *(a1 + 24);
      *(a1 + 24) = *v31;
      *(a1 + 40) = *(a1 + 64);
    }

    *v31 = v36;
    *(a1 + 64) = v35;
  }

  else
  {
    v70 = *v31;
    v71 = *(a1 + 64);
    v68 = *(a1 + 24);
    v69 = *(a1 + 40);
    if (v34(&v70, &v68))
    {
      v43 = *(a1 + 40);
      v44 = *(a1 + 24);
      *(a1 + 24) = *v31;
      v45 = *(a1 + 64);
      *(a1 + 40) = v45;
      *v31 = v44;
      *(a1 + 64) = v43;
      v46 = *a3;
      v70 = *(a1 + 24);
      v71 = v45;
      v68 = *a1;
      v69 = *(a1 + 16);
      if (v46(&v70, &v68))
      {
        v47 = *(a1 + 16);
        v48 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v48;
        *(a1 + 40) = v47;
      }
    }
  }

LABEL_33:
  v56 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v57 = 0;
  v58 = 0;
  while (1)
  {
    v59 = *a3;
    v70 = *v56;
    v71 = v56[1].n128_i64[0];
    v60 = *v31;
    v69 = v31[1].n128_i64[0];
    v68 = v60;
    if (v59(&v70, &v68))
    {
      v70 = *v56;
      v71 = v56[1].n128_i64[0];
      v61 = v57;
      while (1)
      {
        v62 = a1 + v61;
        *(v62 + 72) = *(a1 + v61 + 48);
        *(v62 + 88) = *(a1 + v61 + 64);
        if (v61 == -48)
        {
          break;
        }

        v63 = *a3;
        v68 = v70;
        v69 = v71;
        v66 = *(v62 + 24);
        v67 = *(v62 + 40);
        v61 -= 24;
        if (((v63)(&v68, &v66) & 1) == 0)
        {
          v64 = a1 + v61 + 72;
          goto LABEL_41;
        }
      }

      v64 = a1;
LABEL_41:
      *v64 = v70;
      *(v64 + 16) = v71;
      if (++v58 == 8)
      {
        return &v56[1].n128_i8[8] == a2;
      }
    }

    v31 = v56;
    v57 += 24;
    v56 = (v56 + 24);
    if (v56 == a2)
    {
      return 1;
    }
  }
}

__n128 *sub_1001AA724(__n128 *a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(__n128 *, __n128 *))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        sub_1001AA8FC(a1, a4, v9, v12);
        v12 = (v12 - 24);
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        v14 = *a4;
        v26 = *v13;
        v27 = v13[1].n128_u64[0];
        v24 = *a1;
        v25 = a1[1].n128_u64[0];
        if (v14(&v26, &v24))
        {
          v15 = v13[1].n128_u64[0];
          v16 = *v13;
          v17 = a1[1].n128_u64[0];
          *v13 = *a1;
          v13[1].n128_u64[0] = v17;
          *a1 = v16;
          a1[1].n128_u64[0] = v15;
          sub_1001AA8FC(a1, a4, v9, a1);
        }

        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v19 = (a2 - 24);
      do
      {
        v26 = *a1;
        v27 = a1[1].n128_u64[0];
        v20 = sub_1001AAAE8(a1, a4, v18);
        if (v19 == v20)
        {
          *v20 = v26;
          *(v20 + 2) = v27;
        }

        else
        {
          v21 = *v19;
          *(v20 + 2) = v19[1].n128_u64[0];
          *v20 = v21;
          *v19 = v26;
          v19[1].n128_u64[0] = v27;
          sub_1001AABD0(a1, v20 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v20 + 24 - a1) >> 3));
        }

        v19 = (v19 - 24);
      }

      while (v18-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 sub_1001AA8FC(uint64_t a1, unsigned int (**a2)(__n128 *, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v29 = v4;
    v30 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3)
      {
        v15 = *a2;
        v27 = *v13;
        v28 = *(v13 + 16);
        v25 = *(v13 + 24);
        v26 = *(v13 + 40);
        if (v15(&v27, &v25))
        {
          v13 += 24;
          v12 = v14;
        }
      }

      v16 = *a2;
      v27 = *v13;
      v28 = *(v13 + 16);
      v25 = *v7;
      v26 = v7[1].n128_u64[0];
      if ((v16(&v27, &v25) & 1) == 0)
      {
        v27 = *v7;
        v28 = v7[1].n128_u64[0];
        do
        {
          v18 = v13;
          v19 = *v13;
          v7[1].n128_u64[0] = *(v13 + 16);
          *v7 = v19;
          if (v9 < v12)
          {
            break;
          }

          v20 = (2 * v12) | 1;
          v13 = a1 + 24 * v20;
          if (2 * v12 + 2 < a3)
          {
            v21 = *a2;
            v25 = *v13;
            v26 = *(v13 + 16);
            v23 = *(v13 + 24);
            v24 = *(v13 + 40);
            if (v21(&v25, &v23))
            {
              v13 += 24;
              v20 = 2 * v12 + 2;
            }
          }

          v22 = *a2;
          v25 = *v13;
          v26 = *(v13 + 16);
          v23 = v27;
          v24 = v28;
          v7 = v18;
          v12 = v20;
        }

        while (!v22(&v25, &v23));
        result = v27;
        v18[1].n128_u64[0] = v28;
        *v18 = result;
      }
    }
  }

  return result;
}

__int128 *sub_1001AAAE8(__int128 *a1, unsigned int (**a2)(__int128 *, __int128 *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = (v8 + 24);
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = *a2;
      v13 = *v9;
      v21 = *(v8 + 40);
      v20 = v13;
      v14 = (v8 + 48);
      v15 = *(v8 + 48);
      v19 = *(v8 + 64);
      v18 = v15;
      if (v12(&v20, &v18))
      {
        v9 = v14;
        v10 = v11;
      }
    }

    v16 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v16;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double sub_1001AABD0(uint64_t a1, uint64_t a2, unsigned int (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v25 = v4;
    v26 = v5;
    v10 = v6 >> 1;
    v11 = (a1 + 24 * (v6 >> 1));
    v12 = *a3;
    v23 = *v11;
    v24 = *(v11 + 2);
    v21 = *(a2 - 24);
    v22 = *(a2 - 8);
    if (v12(&v23, &v21))
    {
      v14 = (a2 - 24);
      v23 = *(a2 - 24);
      v24 = *(a2 - 8);
      do
      {
        v15 = v11;
        v16 = *v11;
        *(v14 + 2) = *(v11 + 2);
        *v14 = v16;
        if (!v10)
        {
          break;
        }

        v10 = (v10 - 1) >> 1;
        v11 = (a1 + 24 * v10);
        v17 = *a3;
        v21 = *v11;
        v22 = *(v11 + 2);
        v19 = v23;
        v20 = v24;
        v18 = v17(&v21, &v19);
        v14 = v15;
      }

      while ((v18 & 1) != 0);
      result = *&v23;
      *v15 = v23;
      *(v15 + 2) = v24;
    }
  }

  return result;
}

uint64_t sub_1001AACE0()
{
  sub_1001A9298(qword_1009F0150);
  __cxa_atexit(sub_1001A8778, qword_1009F0150, &_mh_execute_header);
  sub_1001A93A0(qword_1009F0170);
  __cxa_atexit(sub_1001A87C8, qword_1009F0170, &_mh_execute_header);
  sub_1001A9430(qword_1009F0190);
  __cxa_atexit(sub_1001A8818, qword_1009F0190, &_mh_execute_header);
  sub_1001A94C0(qword_1009F01B0);
  __cxa_atexit(sub_1001A8868, qword_1009F01B0, &_mh_execute_header);
  sub_1001A9550(qword_1009F01D0);
  __cxa_atexit(sub_1001A88B8, qword_1009F01D0, &_mh_execute_header);
  sub_1001A95E0(&unk_1009F01F0, 1);
  __cxa_atexit(sub_1001A8908, &unk_1009F01F0, &_mh_execute_header);
  sub_1001A95E0(&unk_1009F0218, 2);
  __cxa_atexit(sub_1001A8908, &unk_1009F0218, &_mh_execute_header);
  sub_1001A96C8(qword_1009F0240);

  return __cxa_atexit(sub_1001A8958, qword_1009F0240, &_mh_execute_header);
}

void sub_1001AAF70(id a1)
{
  if (!MGGetBoolAnswer())
  {
    goto LABEL_17;
  }

  v1 = 1;
  v2 = MGGetProductType();
  if (v2 <= 2309863437)
  {
    if (v2 <= 1169082143)
    {
      if (v2 == 689804742)
      {
        goto LABEL_18;
      }

      v3 = 1060988941;
    }

    else
    {
      if (v2 == 1169082144 || v2 == 1371389549)
      {
        goto LABEL_18;
      }

      v3 = 2080700391;
    }
  }

  else if (v2 > 3585085678)
  {
    if (v2 == 3585085679 || v2 == 3885279870)
    {
      goto LABEL_18;
    }

    v3 = 4201643249;
  }

  else
  {
    if (v2 == 2309863438 || v2 == 2722529672)
    {
      goto LABEL_18;
    }

    v3 = 3001488778;
  }

  if (v2 != v3)
  {
LABEL_17:
    v1 = 0;
  }

LABEL_18:
  byte_1009F0280 = v1;
}

void sub_1001AB084(id a1)
{
  if (MGGetBoolAnswer())
  {
    v1 = MGGetSInt32Answer() == 1;
  }

  else
  {
    v1 = 0;
  }

  byte_1009F0290 = v1;
}

void sub_1001AB168(id a1)
{
  if (!MGGetBoolAnswer())
  {
    goto LABEL_20;
  }

  v1 = 1;
  v2 = MGGetProductType();
  if (v2 <= 1872992316)
  {
    if (v2 > 851437780)
    {
      if (v2 == 851437781 || v2 == 877582975)
      {
        goto LABEL_21;
      }

      v3 = 1781728947;
    }

    else
    {
      if (v2 == 133314240 || v2 == 330877086)
      {
        goto LABEL_21;
      }

      v3 = 574536383;
    }
  }

  else if (v2 <= 2941181570)
  {
    if (v2 == 1872992317 || v2 == 2793418701)
    {
      goto LABEL_21;
    }

    v3 = 2795618603;
  }

  else if (v2 > 3591055298)
  {
    if (v2 == 3591055299)
    {
      goto LABEL_21;
    }

    v3 = 3825599860;
  }

  else
  {
    if (v2 == 2941181571)
    {
      goto LABEL_21;
    }

    v3 = 3048527336;
  }

  if (v2 != v3)
  {
LABEL_20:
    v1 = 0;
  }

LABEL_21:
  byte_1009F02B0 = v1;
}

void sub_1001AB2F8(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  memset(&v18[39], 0, 116);
  *v18 = a2;
  *&v18[2] = 0xFFFFFFFFLL;
  *&v18[10] = 0;
  *&v18[12] = *(a1 + 68);
  *&v18[23] = *(a1 + 79);
  v5 = *(a1 + 4);
  if (v5 > 4)
  {
    if (v5 <= 6)
    {
      if (v5 == 5)
      {
        v18[6] = 103;
        *&v18[2] = 24;
        v9 = *(sub_1000054A8() + 187);
        if (v9)
        {
          if (v9 == 2)
          {
            if (!sub_1001AF4B8(&v18[39], a1))
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_113;
              }

              goto LABEL_114;
            }
          }

          else if (v9 == 1 && !sub_1001AF034(&v18[39], a1))
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_113;
            }

            goto LABEL_114;
          }

          goto LABEL_101;
        }

        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }
      }

      else
      {
        v18[6] = 103;
        *&v18[2] = 25;
        v8 = *(sub_1000054A8() + 187);
        if (v8)
        {
          if (v8 == 2)
          {
            if (!sub_1001AFE1C(&v18[39], a1))
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_113;
              }

              goto LABEL_114;
            }
          }

          else if (v8 == 1 && !sub_1001AF944(&v18[39], a1))
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_113;
            }

            goto LABEL_114;
          }

          goto LABEL_101;
        }

        if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_114;
        }
      }
    }

    else
    {
      if (v5 == 7)
      {
        v18[6] = 104;
        *&v18[2] = 26;
        if (!sub_1001B0B54(&v18[39], a1))
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004A3070();
          }

          goto LABEL_114;
        }

        goto LABEL_101;
      }

      if (v5 == 8)
      {
        v18[6] = 105;
        *&v18[2] = 27;
        if (!sub_1001B0FD4(&v18[39], a1))
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004A303C();
          }

          goto LABEL_114;
        }

        goto LABEL_101;
      }

      if (v5 != 9)
      {
        goto LABEL_101;
      }

      v18[6] = 107;
      *&v18[2] = 28;
      v7 = *(sub_1000054A8() + 187);
      if (v7)
      {
        if (v7 == 2)
        {
          if (!sub_1001B0728(&v18[39], a1))
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_113;
            }

            goto LABEL_114;
          }
        }

        else if (v7 == 1 && !sub_1001B02FC(&v18[39], a1))
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_113;
          }

          goto LABEL_114;
        }

        goto LABEL_101;
      }

      if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_114;
      }
    }

    sub_1004A30A4();
    goto LABEL_114;
  }

  if (v5 <= 1)
  {
    if (!v5)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A3008();
      }

      goto LABEL_114;
    }

    if (v5 == 1)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A3244();
      }

      goto LABEL_114;
    }

    goto LABEL_101;
  }

  if (v5 == 2)
  {
    v18[6] = 100;
    *&v18[2] = 17;
    v10 = *(sub_1000054A8() + 187);
    if (v10)
    {
      if (v10 == 2)
      {
        if (!sub_1001ABF8C(&v18[39], a1))
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004A31DC();
          }

          goto LABEL_114;
        }
      }

      else if (v10 == 1 && !sub_1001ABB34(&v18[39], a1))
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A3210();
        }

        goto LABEL_114;
      }

      goto LABEL_101;
    }

    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_114;
    }

    goto LABEL_83;
  }

  if (v5 == 3)
  {
    if ((*(a1 + 293) & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004A3140();
      }

      goto LABEL_114;
    }

    v18[6] = *(a1 + 292);
    if (v18[6] != 102 && v18[6] != 106)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004A31A8();
      }

      goto LABEL_114;
    }

    *&v18[2] = 16;
    v11 = *(sub_1000054A8() + 187);
    if (v11)
    {
      if (v11 == 2)
      {
        if (!sub_1001AC8A8(&v18[39], a1))
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_113;
          }

          goto LABEL_114;
        }
      }

      else if (v11 == 1 && !sub_1001AC38C(&v18[39], a1))
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_113;
        }

        goto LABEL_114;
      }

      goto LABEL_101;
    }

    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_114;
    }

LABEL_83:
    sub_1004A3174();
    goto LABEL_114;
  }

  if ((*(a1 + 280) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004A30D8();
    }

    goto LABEL_114;
  }

  v18[6] = *(a1 + 243);
  if (v18[6] == 5)
  {
    *&v18[2] = 23;
    v6 = *(sub_1000054A8() + 187);
    if (v6)
    {
      if (v6 == 2)
      {
        if (!sub_1001AD550(&v18[39], a1))
        {
          goto LABEL_112;
        }
      }

      else if (v6 != 1 || !sub_1001ACDE8(&v18[39], a1))
      {
        goto LABEL_112;
      }

      goto LABEL_101;
    }

    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_112;
    }

LABEL_111:
    sub_1004A310C();
    goto LABEL_112;
  }

  *&v18[2] = 22;
  v12 = *(sub_1000054A8() + 187);
  if (!v12)
  {
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

  if (v12 == 1)
  {
    if (!sub_1001ADCCC(&v18[39], a1))
    {
      goto LABEL_112;
    }
  }

  else if (v12 != 2 || !sub_1001AE674(&v18[39], a1))
  {
LABEL_112:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
LABEL_113:
      sub_1004A30A4();
    }

LABEL_114:
    v17 = 0;
    *a3 = 0;
    goto LABEL_115;
  }

LABEL_101:
  if ((sub_1001B16C8(&v18[7], a1) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A3278();
    }

    goto LABEL_114;
  }

  if (!sub_1001B18A4(&v18[11], a1))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A32AC();
    }

    goto LABEL_114;
  }

  v13 = *&v18[112];
  *(a3 + 96) = *&v18[96];
  *(a3 + 112) = v13;
  *(a3 + 128) = *&v18[128];
  *(a3 + 139) = *&v18[139];
  v14 = *&v18[48];
  *(a3 + 32) = *&v18[32];
  *(a3 + 48) = v14;
  v15 = *&v18[80];
  *(a3 + 64) = *&v18[64];
  *(a3 + 80) = v15;
  v16 = *&v18[16];
  v17 = 1;
  *a3 = *v18;
  *(a3 + 16) = v16;
LABEL_115:
  *(a3 + 155) = v17;
}

BOOL sub_1001ABB34(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A32E0();
  }

  if (*(a2 + 97) == 1 && *(a2 + 99) == 1 && *(a2 + 163) == 1 && *(a2 + 101) == 1 && *(a2 + 165) == 1 && *(a2 + 103) == 1 && *(a2 + 167) == 1 && *(a2 + 105) == 1 && *(a2 + 107) == 1 && *(a2 + 110) == 1 && *(a2 + 113) == 1 && *(a2 + 115) == 1 && *(a2 + 117) == 1 && *(a2 + 161) == 1 && *(a2 + 120) == 1 && *(a2 + 170) == 1 && *(a2 + 174) == 1 && (*(a2 + 153) & 1) != 0)
  {
    *(a1 + 16) = 16400;
    if ((*(a2 + 97) & 1) == 0)
    {
      goto LABEL_56;
    }

    *(a1 + 22) = *(a2 + 96);
    if ((*(a2 + 99) & 1) == 0)
    {
      goto LABEL_56;
    }

    *(a1 + 23) = *(a2 + 98);
    if ((*(a2 + 163) & 1) == 0)
    {
      goto LABEL_56;
    }

    *(a1 + 35) = *(a2 + 162);
    if ((*(a2 + 101) & 1) == 0)
    {
      goto LABEL_56;
    }

    *(a1 + 24) = *(a2 + 100);
    if ((*(a2 + 165) & 1) == 0)
    {
      goto LABEL_56;
    }

    *(a1 + 36) = *(a2 + 164);
    if ((*(a2 + 103) & 1) == 0)
    {
      goto LABEL_56;
    }

    *(a1 + 25) = *(a2 + 102);
    if ((*(a2 + 167) & 1) == 0)
    {
      goto LABEL_56;
    }

    *(a1 + 37) = *(a2 + 166);
    if ((*(a2 + 105) & 1) == 0)
    {
      goto LABEL_56;
    }

    if (!sub_1004272D8(*(a2 + 104)))
    {
      sub_1004A3348();
    }

    if ((*(a2 + 107) & 1) == 0)
    {
      goto LABEL_56;
    }

    if (!sub_1004272D8(*(a2 + 106)))
    {
      sub_1004A3374();
    }

    if ((*(a2 + 110) & 1) == 0)
    {
      goto LABEL_56;
    }

    if (!sub_100428600((a2 + 108)))
    {
      sub_1004A33A0();
    }

    if ((*(a2 + 113) & 1) == 0)
    {
      goto LABEL_56;
    }

    if (!sub_100428600((a2 + 111)))
    {
      sub_1004A33CC();
    }

    if ((*(a2 + 105) & 1) == 0)
    {
      goto LABEL_56;
    }

    *(a1 + 26) = sub_100427398(*(a2 + 104), 1, v4, v5, v6, v7, v8, v9);
    if ((*(a2 + 107) & 1) == 0)
    {
      goto LABEL_56;
    }

    *(a1 + 27) = sub_100427398(*(a2 + 106), 1, v10, v11, v12, v13, v14, v15);
    if ((*(a2 + 110) & 1) == 0)
    {
      goto LABEL_56;
    }

    *(a1 + 28) = *(a2 + 109);
    if ((*(a2 + 113) & 1) == 0 || (*(a1 + 29) = *(a2 + 112), (*(a2 + 115) & 1) == 0) || (*(a1 + 30) = *(a2 + 114), (*(a2 + 117) & 1) == 0) || (*(a1 + 31) = *(a2 + 116), (*(a2 + 161) & 1) == 0) || (*(a1 + 34) = *(a2 + 160), (*(a2 + 120) & 1) == 0) || (*(a1 + 40) = *(a2 + 118) | 2, (*(a2 + 170) & 1) == 0) || (*(a1 + 38) = *(a2 + 168), (*(a2 + 174) & 1) == 0) || (*(a1 + 54) = *(a2 + 172), (*(a2 + 153) & 1) == 0))
    {
LABEL_56:
      sub_1000195BC();
    }

    *(a1 + 32) = sub_10042838C(*(a2 + 152), 1);
    *(a1 + 56) = 0;
    v16 = qword_1009F9820;
    v17 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    result = 1;
    if (v17)
    {
      v19 = *(a1 + 22);
      v20 = *(a1 + 23);
      v21 = *(a1 + 24);
      v22 = *(a1 + 25);
      v23 = *(a1 + 26);
      v24 = *(a1 + 27);
      v25 = *(a1 + 28);
      v26 = *(a1 + 29);
      v27 = *(a1 + 30);
      v28 = *(a1 + 31);
      v29 = *(a1 + 34);
      v30 = *(a1 + 35);
      v31 = *(a1 + 36);
      v32 = *(a1 + 37);
      v33 = *(a1 + 38);
      v34 = *(a1 + 40);
      v35 = *(a1 + 54);
      v36 = *(a1 + 32);
      v37[0] = 67113472;
      v37[1] = v19;
      v38 = 1024;
      v39 = v20;
      v40 = 1024;
      v41 = v21;
      v42 = 1024;
      v43 = v22;
      v44 = 1024;
      v45 = v23;
      v46 = 1024;
      v47 = v24;
      v48 = 1024;
      v49 = v25;
      v50 = 1024;
      v51 = v26;
      v52 = 1024;
      v53 = v27;
      v54 = 1024;
      v55 = v28;
      v56 = 1024;
      v57 = v29;
      v58 = 1024;
      v59 = v30;
      v60 = 1024;
      v61 = v31;
      v62 = 1024;
      v63 = v32;
      v64 = 1024;
      v65 = v33;
      v66 = 1024;
      v67 = v34;
      v68 = 1024;
      v69 = v35;
      v70 = 1024;
      v71 = v36;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Built P2P packet V1: { \nses_role: %d\n tx_ant_mask: %d\n rx_ant_mask: %d\n rx_sync_search_ant_mask: %d\n tx_preamble: %d\n rx_preamble: %d\n tx_pkt_type: %d\n rx_pkt_type: %d\n tx_mslot_sz_250us: %d\n rx_mslot_sz_250us: %d\n dual_ranging_enable: %d\n tx_ant_mask2: %d\n rx_ant_mask2: %d\n rx_sync_search_ant_mask2: %d\n soi_rssi_thd2: %d\n debug_flags: %d\n interval_ms: %d\n channel:%d\n}", v37, 0x6Eu);
      return 1;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT);
    if (result)
    {
      sub_1004A3314();
      return 0;
    }
  }

  return result;
}

BOOL sub_1001ABF8C(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A33F8();
  }

  if (*(a2 + 97) == 1 && *(a2 + 99) == 1 && *(a2 + 163) == 1 && *(a2 + 101) == 1 && *(a2 + 165) == 1 && *(a2 + 103) == 1 && *(a2 + 167) == 1 && *(a2 + 105) == 1 && *(a2 + 107) == 1 && *(a2 + 110) == 1 && *(a2 + 113) == 1 && *(a2 + 115) == 1 && *(a2 + 117) == 1 && *(a2 + 161) == 1 && *(a2 + 120) == 1 && *(a2 + 170) == 1 && *(a2 + 174) == 1 && (*(a2 + 153) & 1) != 0)
  {
    *(a1 + 16) = 16400;
    if ((*(a2 + 97) & 1) == 0)
    {
      goto LABEL_48;
    }

    *(a1 + 22) = *(a2 + 96);
    if ((*(a2 + 99) & 1) == 0)
    {
      goto LABEL_48;
    }

    *(a1 + 23) = *(a2 + 98);
    if ((*(a2 + 163) & 1) == 0)
    {
      goto LABEL_48;
    }

    *(a1 + 49) = *(a2 + 162);
    if ((*(a2 + 101) & 1) == 0)
    {
      goto LABEL_48;
    }

    *(a1 + 24) = *(a2 + 100);
    if ((*(a2 + 165) & 1) == 0)
    {
      goto LABEL_48;
    }

    *(a1 + 50) = *(a2 + 164);
    if ((*(a2 + 103) & 1) == 0)
    {
      goto LABEL_48;
    }

    *(a1 + 25) = *(a2 + 102);
    if ((*(a2 + 167) & 1) == 0)
    {
      goto LABEL_48;
    }

    *(a1 + 51) = *(a2 + 166);
    if ((*(a2 + 105) & 1) == 0)
    {
      goto LABEL_48;
    }

    *(a1 + 26) = sub_100427398(*(a2 + 104), 2, v4, v5, v6, v7, v8, v9);
    if ((*(a2 + 107) & 1) == 0)
    {
      goto LABEL_48;
    }

    *(a1 + 27) = sub_100427398(*(a2 + 106), 2, v10, v11, v12, v13, v14, v15);
    if ((*(a2 + 110) & 1) == 0)
    {
      goto LABEL_48;
    }

    *(a1 + 28) = sub_100428674((a2 + 108));
    if ((*(a2 + 113) & 1) == 0 || (*(a1 + 30) = sub_100428674((a2 + 111)), (*(a2 + 115) & 1) == 0) || (*(a1 + 44) = *(a2 + 114), (*(a2 + 117) & 1) == 0) || (*(a1 + 45) = *(a2 + 116), (*(a2 + 161) & 1) == 0) || (*(a1 + 48) = *(a2 + 160), (*(a2 + 120) & 1) == 0) || (*(a1 + 70) = *(a2 + 118) | 2, (*(a2 + 170) & 1) == 0) || (*(a1 + 52) = *(a2 + 168), (*(a2 + 174) & 1) == 0) || (*(a1 + 84) = *(a2 + 172), (*(a2 + 153) & 1) == 0))
    {
LABEL_48:
      sub_1000195BC();
    }

    v16 = *(a2 + 152);
    if (v16 == 5 || v16 == 9)
    {
      *(a1 + 46) = v16;
    }

    *(a1 + 86) = 0;
    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 22);
      v19 = *(a1 + 23);
      v20 = *(a1 + 24);
      v21 = *(a1 + 25);
      v22 = *(a1 + 26);
      v23 = *(a1 + 27);
      v24 = *(a1 + 28);
      v25 = *(a1 + 30);
      v26 = *(a1 + 44);
      v27 = *(a1 + 45);
      v28 = *(a1 + 48);
      v29 = *(a1 + 49);
      v30 = *(a1 + 50);
      v31 = *(a1 + 51);
      v32 = *(a1 + 52);
      v33 = *(a1 + 70);
      v34 = *(a1 + 84);
      v35 = *(a1 + 46);
      v37[0] = 67113472;
      v37[1] = v18;
      v38 = 1024;
      v39 = v19;
      v40 = 1024;
      v41 = v20;
      v42 = 1024;
      v43 = v21;
      v44 = 1024;
      v45 = v22;
      v46 = 1024;
      v47 = v23;
      v48 = 1024;
      v49 = v24;
      v50 = 1024;
      v51 = v25;
      v52 = 1024;
      v53 = v26;
      v54 = 1024;
      v55 = v27;
      v56 = 1024;
      v57 = v28;
      v58 = 1024;
      v59 = v29;
      v60 = 1024;
      v61 = v30;
      v62 = 1024;
      v63 = v31;
      v64 = 1024;
      v65 = v32;
      v66 = 1024;
      v67 = v33;
      v68 = 1024;
      v69 = v34;
      v70 = 1024;
      v71 = v35;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Built P2P packet V2: { \nses_role: %d\n tx_ant_mask: %d\n rx_ant_mask: %d\n rx_sync_search_ant_mask: %d\n first_preamble: %d\n subsequent_preamble: %d\n tx_pkt_type: %d\n rx_pkt_type: %d\n tx_mslot_sz_250us: %d\n rx_mslot_sz_250us: %d\n dual_ranging_enable: %d\n tx_ant_mask2: %d\n rx_ant_mask2: %d\n rx_sync_search_ant_mask2: %d\n ping_pong_soi_rssi_thd: %d\n debug_flags: %d\n interval_ms: %d\n band_channel:%hu\n}", v37, 0x6Eu);
    }

    return 1;
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT);
    if (result)
    {
      sub_1004A342C();
      return 0;
    }
  }

  return result;
}

BOOL sub_1001AC38C(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A3460();
  }

  if (*(a2 + 97) != 1 || *(a2 + 99) != 1 || *(a2 + 101) != 1 || *(a2 + 103) != 1 || *(a2 + 153) != 1 || *(a2 + 120) != 1 || *(a2 + 293) != 1 || *(a2 + 295) != 1 || *(a2 + 300) != 1 || *(a2 + 305) != 1 || *(a2 + 307) != 1 || *(a2 + 310) != 1 || *(a2 + 314) != 1 || *(a2 + 317) != 1 || *(a2 + 319) != 1 || *(a2 + 321) != 1 || *(a2 + 323) != 1 || *(a2 + 343) != 1 || (*(a2 + 345) & 1) == 0)
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1004A3494();
    return 0;
  }

  if ((~*(a2 + 118) & 0xC0) == 0 && (*(a2 + 347) & 1) == 0)
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1004A34C8();
    return 0;
  }

  *(a1 + 16) = 16464;
  if ((*(a2 + 97) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 22) = *(a2 + 96);
  if ((*(a2 + 99) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 23) = *(a2 + 98);
  if ((*(a2 + 101) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 24) = *(a2 + 100);
  if ((*(a2 + 103) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 25) = *(a2 + 102);
  if ((*(a2 + 153) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 26) = sub_10042838C(*(a2 + 152), 1);
  if ((*(a2 + 295) & 1) == 0)
  {
    goto LABEL_75;
  }

  if (!sub_1004272D8(*(a2 + 294)))
  {
    sub_1004A34FC();
  }

  if ((*(a2 + 295) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 27) = sub_100427398(*(a2 + 294), 1, v4, v5, v6, v7, v8, v9);
  if ((*(a2 + 300) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 28) = *(a2 + 296);
  v10 = *(a2 + 305) ? *(a2 + 304) : 0;
  *(a1 + 32) = v10;
  v11 = *(a2 + 307) ? *(a2 + 306) : 0;
  *(a1 + 33) = v11;
  if ((*(a2 + 310) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 34) = *(a2 + 308);
  if ((*(a2 + 314) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 36) = *(a2 + 312);
  if ((*(a2 + 317) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 38) = *(a2 + 316);
  if ((*(a2 + 319) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 39) = *(a2 + 318);
  if ((*(a2 + 321) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 40) = *(a2 + 320);
  if ((*(a2 + 323) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 41) = *(a2 + 322);
  if ((*(a2 + 343) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 51) = *(a2 + 342);
  if ((*(a2 + 345) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 52) = *(a2 + 344);
  if (*(a2 + 347))
  {
    v12 = *(a2 + 346) & 0xF;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 53) = *(a1 + 53) & 0xF0 | v12;
  if (*(a2 + 341) == 1)
  {
    *(a1 + 50) = *(a2 + 340);
  }

  if (*(a2 + 328) == 1)
  {
    *(a1 + 42) = *(a2 + 324);
  }

  if (*(a2 + 336) == 1)
  {
    *(a1 + 46) = *(a2 + 332);
  }

  if ((*(a2 + 120) & 1) == 0)
  {
LABEL_75:
    sub_1000195BC();
  }

  *(a1 + 54) = *(a2 + 118);
  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 22);
    v15 = *(a1 + 23);
    v16 = *(a1 + 24);
    v17 = *(a1 + 25);
    v18 = *(a1 + 54);
    v19 = *(a1 + 26);
    v20 = *(a1 + 27);
    v21 = *(a1 + 28);
    v22 = 10 * *(a1 + 32);
    v23 = 10 * *(a1 + 33);
    v24 = *(a1 + 34);
    v25 = *(a1 + 36);
    v26 = *(a1 + 38);
    v27 = *(a1 + 39);
    v28 = *(a1 + 40);
    v29 = *(a1 + 41);
    v30 = *(a1 + 51);
    v31 = *(a1 + 52);
    v32 = *(a1 + 53) & 0xF;
    if (*(a2 + 341))
    {
      v33 = *(a1 + 50);
    }

    else
    {
      v33 = -1;
    }

    if (*(a2 + 336))
    {
      v34 = *(a1 + 46);
    }

    else
    {
      v34 = -1;
    }

    v35 = *(a1 + 42);
    if (!*(a2 + 328))
    {
      v35 = -1;
    }

    v37[0] = 67114496;
    v37[1] = v14;
    v38 = 1024;
    v39 = v15;
    v40 = 1024;
    v41 = v16;
    v42 = 1024;
    v43 = v17;
    v44 = 1024;
    v45 = v18;
    v46 = 1024;
    v47 = v19;
    v48 = 1024;
    v49 = v20;
    v50 = 1024;
    v51 = v21;
    v52 = 1024;
    v53 = v22;
    v54 = 1024;
    v55 = v23;
    v56 = 1024;
    v57 = v24;
    v58 = 1024;
    v59 = v25;
    v60 = 1024;
    v61 = v26;
    v62 = 1024;
    v63 = v27;
    v64 = 1024;
    v65 = v28;
    v66 = 1024;
    v67 = v29;
    v68 = 1024;
    v69 = v30;
    v70 = 1024;
    v71 = v31;
    v72 = 1024;
    v73 = v32;
    v74 = 1024;
    v75 = v33;
    v76 = 1024;
    v77 = v34;
    v78 = 1024;
    v79 = v35;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Built Alisha packet V1: {\n  ses_role: %u\n, tx_ant_mask: %u\n, rx_ant_mask: %u\n, rx_sync_search_ant_mask: %u\n, debug_flags: 0x%x\n, channel: %u\n, preamble: %u\n, uwb_ses_id: %u\n, rsp_timeout_10s: %u (s)\n, total_timeout_10s: %u (s)\n, sel_protocol_version: %u\n, sel_uwb_cfg_id: %u\n, ran_multiplier: %u\n, nchaps_per_slot: %u\n, nslots_per_round: %u\n, nresponders: %u\n, sel_hop_cfg_bitmask: %u\n, sel_pulse_shape_combo: %u\n, space_between_ranging_rounds: %u\n, anchor_only_responder_idx: %d\n, anchor_only_responder_hop_key: %d\n, anchor_only_responder_sts_index_0: %d\n}", v37, 0x86u);
  }

  return 1;
}

BOOL sub_1001AC8A8(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A3460();
  }

  if (*(a2 + 97) != 1 || *(a2 + 99) != 1 || *(a2 + 101) != 1 || *(a2 + 103) != 1 || *(a2 + 153) != 1 || *(a2 + 120) != 1 || *(a2 + 293) != 1 || *(a2 + 295) != 1 || *(a2 + 300) != 1 || *(a2 + 305) != 1 || *(a2 + 307) != 1 || *(a2 + 310) != 1 || *(a2 + 314) != 1 || *(a2 + 317) != 1 || *(a2 + 319) != 1 || *(a2 + 321) != 1 || *(a2 + 323) != 1 || *(a2 + 343) != 1 || (*(a2 + 345) & 1) == 0)
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1004A3494();
    return 0;
  }

  if ((~*(a2 + 118) & 0xC0) == 0 && (*(a2 + 347) & 1) == 0)
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1004A34C8();
    return 0;
  }

  *(a1 + 16) = 16464;
  if ((*(a2 + 97) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 22) = *(a2 + 96);
  if ((*(a2 + 99) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 23) = *(a2 + 98);
  if ((*(a2 + 101) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 24) = *(a2 + 100);
  if ((*(a2 + 103) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 25) = *(a2 + 102);
  if ((*(a2 + 153) & 1) == 0)
  {
    goto LABEL_75;
  }

  v4 = *(a2 + 152);
  LOBYTE(v38) = 0;
  BYTE1(v38) = v4;
  BYTE2(v38) = 1;
  LOBYTE(v39) = 0;
  BYTE2(v39) = 0;
  *(a1 + 26) = sub_100428478(&v38);
  if ((*(a2 + 295) & 1) == 0)
  {
    goto LABEL_75;
  }

  if (!sub_1004272D8(*(a2 + 294)))
  {
    sub_1004A3528();
  }

  if ((*(a2 + 295) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 28) = sub_100427398(*(a2 + 294), 2, v5, v6, v7, v8, v9, v10);
  if ((*(a2 + 300) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 29) = *(a2 + 296);
  v11 = *(a2 + 305) ? *(a2 + 304) : 0;
  *(a1 + 33) = v11;
  v12 = *(a2 + 307) ? *(a2 + 306) : 0;
  *(a1 + 34) = v12;
  if ((*(a2 + 310) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 35) = *(a2 + 308);
  if ((*(a2 + 314) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 37) = *(a2 + 312);
  if ((*(a2 + 317) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 39) = *(a2 + 316);
  if ((*(a2 + 319) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 40) = *(a2 + 318);
  if ((*(a2 + 321) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 41) = *(a2 + 320);
  if ((*(a2 + 323) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 42) = *(a1 + 42) & 0xF0 | *(a2 + 322) & 0xF;
  if ((*(a2 + 343) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 52) = *(a2 + 342);
  if ((*(a2 + 345) & 1) == 0)
  {
    goto LABEL_75;
  }

  *(a1 + 53) = *(a2 + 344);
  if (*(a2 + 347))
  {
    v13 = *(a2 + 346) & 0xF;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 54) = *(a1 + 54) & 0xF0 | v13;
  if (*(a2 + 341) == 1)
  {
    *(a1 + 51) = *(a2 + 340);
  }

  if (*(a2 + 328) == 1)
  {
    *(a1 + 43) = *(a2 + 324);
  }

  if (*(a2 + 336) == 1)
  {
    *(a1 + 47) = *(a2 + 332);
  }

  if ((*(a2 + 120) & 1) == 0)
  {
LABEL_75:
    sub_1000195BC();
  }

  *(a1 + 70) = *(a2 + 118);
  v14 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 22);
    v16 = *(a1 + 23);
    v17 = *(a1 + 24);
    v18 = *(a1 + 25);
    v19 = *(a1 + 70);
    v20 = *(a1 + 26);
    v21 = *(a1 + 28);
    v22 = *(a1 + 29);
    v23 = 10 * *(a1 + 33);
    v24 = 10 * *(a1 + 34);
    v25 = *(a1 + 35);
    v26 = *(a1 + 37);
    v27 = *(a1 + 39);
    v28 = *(a1 + 40);
    v29 = *(a1 + 41);
    v30 = *(a1 + 42) & 0xF;
    v31 = *(a1 + 52);
    v32 = *(a1 + 53);
    v33 = *(a1 + 54) & 0xF;
    if (*(a2 + 341))
    {
      v34 = *(a1 + 51);
    }

    else
    {
      v34 = -1;
    }

    if (*(a2 + 336))
    {
      v35 = *(a1 + 47);
    }

    else
    {
      v35 = -1;
    }

    v36 = *(a1 + 43);
    if (!*(a2 + 328))
    {
      v36 = -1;
    }

    v38 = 67114496;
    v39 = v15;
    v40 = 1024;
    v41 = v16;
    v42 = 1024;
    v43 = v17;
    v44 = 1024;
    v45 = v18;
    v46 = 1024;
    v47 = v19;
    v48 = 1024;
    v49 = v20;
    v50 = 1024;
    v51 = v21;
    v52 = 1024;
    v53 = v22;
    v54 = 1024;
    v55 = v23;
    v56 = 1024;
    v57 = v24;
    v58 = 1024;
    v59 = v25;
    v60 = 1024;
    v61 = v26;
    v62 = 1024;
    v63 = v27;
    v64 = 1024;
    v65 = v28;
    v66 = 1024;
    v67 = v29;
    v68 = 1024;
    v69 = v30;
    v70 = 1024;
    v71 = v31;
    v72 = 1024;
    v73 = v32;
    v74 = 1024;
    v75 = v33;
    v76 = 1024;
    v77 = v34;
    v78 = 1024;
    v79 = v35;
    v80 = 1024;
    v81 = v36;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Built Alisha packet V2: {\n  ses_role: %u\n, tx_ant_mask: %u\n, rx_ant_mask: %u\n, rx_sync_search_ant_mask: %u\n, debug_flags: 0x%x\n, bch: %d\n, preamble: %u\n, uwb_ses_id: %u\n, rsp_timeout_10s: %u (s)\n, total_timeout_10s: %u (s)\n, sel_protocol_version: %u\n, sel_uwb_cfg_id: %u\n, ran_multiplier: %u\n, nchaps_per_slot: %u\n, nslots_per_round: %u\n, nresponders: %u\n, sel_hop_cfg_bitmask: %u\n, sel_pulse_shape_combo: %u\n, space_between_ranging_rounds: %u\n, anchor_only_responder_idx: %d\n, anchor_only_responder_hop_key: %d\n, anchor_only_responder_sts_index_0: %d\n}", &v38, 0x86u);
  }

  return 1;
}

BOOL sub_1001ACDE8(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A3554();
  }

  if (*(a2 + 97) != 1 || *(a2 + 205) != 1 || *(a2 + 99) != 1 || *(a2 + 101) != 1 || *(a2 + 103) != 1 || *(a2 + 105) != 1 || *(a2 + 107) != 1 || *(a2 + 237) != 1 || *(a2 + 214) != 1 || *(a2 + 234) != 1 || *(a2 + 120) != 1 || *(a2 + 174) != 1 || *(a2 + 207) != 1 || *(a2 + 209) != 1 || *(a2 + 211) != 1 || (*(a2 + 280) & 1) == 0)
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    sub_1004A3588();
    return 0;
  }

  *(a1 + 16) = 16422;
  if ((*(a2 + 97) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 22) = *(a2 + 96);
  if ((*(a2 + 205) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 23) = *(a2 + 204);
  if ((*(a2 + 99) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 24) = *(a2 + 98);
  if ((*(a2 + 101) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 25) = *(a2 + 100);
  if ((*(a2 + 103) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 26) = *(a2 + 102);
  if ((*(a2 + 105) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (!sub_1004272D8(*(a2 + 104)))
  {
    sub_1004A35BC();
  }

  if ((*(a2 + 107) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (!sub_1004272D8(*(a2 + 106)))
  {
    sub_1004A35E8();
  }

  if ((*(a2 + 237) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (!sub_100428600((a2 + 235)))
  {
    sub_1004A3614();
  }

  if ((*(a2 + 105) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 30) = sub_100427398(*(a2 + 104), 1, v4, v5, v6, v7, v8, v9);
  if ((*(a2 + 107) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 31) = sub_100427398(*(a2 + 106), 1, v10, v11, v12, v13, v14, v15);
  if ((*(a2 + 237) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 32) = *(a2 + 236);
  if ((*(a2 + 115) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 38) = *(a2 + 114);
  if ((*(a2 + 117) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 39) = *(a2 + 116);
  if ((*(a2 + 120) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 70) = *(a2 + 118) | 2;
  if ((*(a2 + 174) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 42) = *(a2 + 172);
  if ((*(a2 + 207) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 27) = sub_10042838C(*(a2 + 206), 1);
  if ((*(a2 + 209) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 28) = sub_10042838C(*(a2 + 208), 1);
  if ((*(a2 + 211) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 29) = *(a2 + 210);
  if ((*(a2 + 280) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (*(a2 + 240) != 1)
  {
    if (*(a2 + 256) == 1 && (*(a2 + 272) & 1) != 0)
    {
      *(a1 + 84) = *(a2 + 248);
      if ((*(a2 + 280) & 1) == 0)
      {
        sub_1000195BC();
      }

      if ((*(a2 + 272) & 1) == 0)
      {
        sub_1000195BC();
      }

      *(a1 + 92) = *(a2 + 264);
      goto LABEL_43;
    }

    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    sub_1004A3640();
    return 0;
  }

  *(a1 + 92) = 0;
  *(a1 + 84) = 0;
LABEL_43:
  if ((*(a2 + 234) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 49) = *(a2 + 218);
  sub_100004A08(&v39, "0x");
  if (*(a2 + 234) != 1)
  {
    sub_1000195BC();
  }

  for (i = 0; i != 16; ++i)
  {
    snprintf(__str, 8uLL, "%02x", *(a2 + 218 + i));
    sub_100004A08(__p, __str);
    if (SBYTE3(v42) >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = *__p;
    }

    if (SBYTE3(v42) >= 0)
    {
      v18 = BYTE3(v42);
    }

    else
    {
      v18 = *&__p[8];
    }

    std::string::append(&v39, v17, v18);
    if (SBYTE3(v42) < 0)
    {
      operator delete(*__p);
    }
  }

  v19 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 22);
    v21 = *(a1 + 24);
    v22 = *(a1 + 25);
    v23 = *(a1 + 26);
    v24 = *(a1 + 30);
    v25 = *(a1 + 32);
    v26 = *(a1 + 38);
    v27 = *(a1 + 39);
    v28 = *(a1 + 27);
    v29 = *(a1 + 28);
    v30 = *(a1 + 29);
    v31 = *(a1 + 70);
    v32 = *(a1 + 72);
    v33 = *(a1 + 80);
    v34 = *(a1 + 42);
    v35 = *(a1 + 84);
    v36 = *(a1 + 92);
    v37 = &v39;
    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v37 = v39.__r_.__value_.__r.__words[0];
    }

    *__p = 136324098;
    *&__p[4] = "ses_role";
    *&__p[12] = 1024;
    *&__p[14] = v20;
    v41 = 2080;
    v42 = "tx_ant_mask";
    v43 = 1024;
    v44 = v21;
    v45 = 2080;
    v46 = "rx_ant_mask";
    v47 = 1024;
    v48 = v22;
    v49 = 2080;
    v50 = "rx_sync_search_ant_mask";
    v51 = 1024;
    v52 = v23;
    v53 = 2080;
    v54 = "tx_preamble";
    v55 = 1024;
    v56 = v24;
    v57 = 2080;
    v58 = "pkt_type";
    v59 = 1024;
    v60 = v25;
    v61 = 2080;
    v62 = "tx_mslot_sz_250us";
    v63 = 1024;
    v64 = v26;
    v65 = 2080;
    v66 = "rx_mslot_sz_250us";
    v67 = 1024;
    v68 = v27;
    v69 = 2080;
    v70 = "start_channel";
    v71 = 1024;
    v72 = v28;
    v73 = 2080;
    v74 = "alternate_channel";
    v75 = 1024;
    v76 = v29;
    v77 = 2080;
    v78 = "channel_hop_pattern_mask";
    v79 = 1024;
    v80 = v30;
    v81 = 2080;
    v82 = "debug_flags";
    v83 = 1024;
    v84 = v31;
    v85 = 2080;
    v86 = "start_time";
    v87 = 2048;
    v88 = v32;
    v89 = 2080;
    v90 = "start_time_uncertainty";
    v91 = 1024;
    v92 = v33;
    v93 = 2080;
    v94 = "interval_ms";
    v95 = 1024;
    v96 = v34;
    v97 = 2080;
    v98 = "local_addr";
    v99 = 2048;
    v100 = v35;
    v101 = 2080;
    v102 = "peer_addr";
    v103 = 2048;
    v104 = v36;
    v105 = 2080;
    v106 = "sts_blob";
    v107 = 2080;
    v108 = v37;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Built GR ND packet V1: {\n              %s: %d\n             , %s : %d\n             , %s : %d\n             , %s : %d\n             , %s: %d\n             , %s: %d\n             , %s: %d\n             , %s: %d\n             , %s: %d\n             , %s: %d\n             , %s: %x\n             , %s: %d\n             , %s: %llu\n             , %s: %u\n             , %s: %d\n             , %s: 0x%llx\n             , %s: 0x%llx\n             , %s: %s\n     }", __p, 0x132u);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1001AD510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001AD550(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A3554();
  }

  if (*(a2 + 97) != 1 || *(a2 + 205) != 1 || *(a2 + 99) != 1 || *(a2 + 101) != 1 || *(a2 + 103) != 1 || *(a2 + 105) != 1 || *(a2 + 107) != 1 || *(a2 + 237) != 1 || *(a2 + 214) != 1 || *(a2 + 234) != 1 || *(a2 + 120) != 1 || *(a2 + 174) != 1 || *(a2 + 207) != 1 || *(a2 + 209) != 1 || *(a2 + 211) != 1 || (*(a2 + 280) & 1) == 0)
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    sub_1004A3588();
    return 0;
  }

  *(a1 + 16) = 16422;
  if ((*(a2 + 97) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 22) = *(a2 + 96);
  if ((*(a2 + 205) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 23) = *(a2 + 204);
  if ((*(a2 + 99) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 24) = *(a2 + 98);
  if ((*(a2 + 101) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 25) = *(a2 + 100);
  if ((*(a2 + 103) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 26) = *(a2 + 102);
  if ((*(a2 + 105) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (!sub_1004272D8(*(a2 + 104)))
  {
    sub_1004A3674();
  }

  if ((*(a2 + 107) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (!sub_1004272D8(*(a2 + 106)))
  {
    sub_1004A36A0();
  }

  if ((*(a2 + 237) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (!sub_100428600((a2 + 235)))
  {
    sub_1004A36CC();
  }

  if ((*(a2 + 105) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 32) = sub_100427398(*(a2 + 104), 2, v4, v5, v6, v7, v8, v9);
  if ((*(a2 + 107) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 33) = sub_100427398(*(a2 + 106), 2, v10, v11, v12, v13, v14, v15);
  if ((*(a2 + 237) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 34) = sub_100428674((a2 + 235));
  if ((*(a2 + 115) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 46) = *(a2 + 114);
  if ((*(a2 + 117) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 47) = *(a2 + 116);
  if ((*(a2 + 120) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 78) = *(a2 + 118) | 2;
  if ((*(a2 + 174) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 50) = *(a2 + 172);
  if ((*(a2 + 207) & 1) == 0)
  {
    sub_1000195BC();
  }

  v16 = *(a2 + 206);
  if (v16 == 5 || v16 == 9)
  {
    *(a1 + 27) = v16;
  }

  if ((*(a2 + 209) & 1) == 0)
  {
    sub_1000195BC();
  }

  v17 = *(a2 + 208);
  if (v17 == 5 || v17 == 9)
  {
    *(a1 + 29) = v17;
  }

  if ((*(a2 + 211) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 31) = *(a2 + 210);
  if ((*(a2 + 280) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (*(a2 + 240) != 1)
  {
    if (*(a2 + 256) == 1 && (*(a2 + 272) & 1) != 0)
    {
      *(a1 + 92) = *(a2 + 248);
      if ((*(a2 + 280) & 1) == 0)
      {
        sub_1000195BC();
      }

      if ((*(a2 + 272) & 1) == 0)
      {
        sub_1000195BC();
      }

      *(a1 + 100) = *(a2 + 264);
      goto LABEL_49;
    }

    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    sub_1004A3640();
    return 0;
  }

  *(a1 + 100) = 0;
  *(a1 + 92) = 0;
LABEL_49:
  if ((*(a2 + 234) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 57) = *(a2 + 218);
  sub_100004A08(&v41, "0x");
  if (*(a2 + 234) != 1)
  {
    sub_1000195BC();
  }

  for (i = 0; i != 16; ++i)
  {
    snprintf(__str, 8uLL, "%02x", *(a2 + 218 + i));
    sub_100004A08(__p, __str);
    if (SBYTE3(v44) >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = *__p;
    }

    if (SBYTE3(v44) >= 0)
    {
      v20 = BYTE3(v44);
    }

    else
    {
      v20 = *&__p[8];
    }

    std::string::append(&v41, v19, v20);
    if (SBYTE3(v44) < 0)
    {
      operator delete(*__p);
    }
  }

  v21 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 22);
    v23 = *(a1 + 24);
    v24 = *(a1 + 25);
    v25 = *(a1 + 26);
    v26 = *(a1 + 32);
    v27 = *(a1 + 34);
    v28 = *(a1 + 46);
    v29 = *(a1 + 47);
    v30 = *(a1 + 27);
    v31 = *(a1 + 29);
    v32 = *(a1 + 31);
    v33 = *(a1 + 78);
    v34 = *(a1 + 80);
    v35 = *(a1 + 88);
    v36 = *(a1 + 50);
    v37 = *(a1 + 92);
    v38 = *(a1 + 100);
    v39 = &v41;
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v39 = v41.__r_.__value_.__r.__words[0];
    }

    *__p = 136324098;
    *&__p[4] = "ses_role";
    *&__p[12] = 1024;
    *&__p[14] = v22;
    v43 = 2080;
    v44 = "tx_ant_mask";
    v45 = 1024;
    v46 = v23;
    v47 = 2080;
    v48 = "rx_ant_mask";
    v49 = 1024;
    v50 = v24;
    v51 = 2080;
    v52 = "rx_sync_search_ant_mask";
    v53 = 1024;
    v54 = v25;
    v55 = 2080;
    v56 = "tx_preamble";
    v57 = 1024;
    v58 = v26;
    v59 = 2080;
    v60 = "pkt_type";
    v61 = 1024;
    v62 = v27;
    v63 = 2080;
    v64 = "tx_mslot_sz_250us";
    v65 = 1024;
    v66 = v28;
    v67 = 2080;
    v68 = "rx_mslot_sz_250us";
    v69 = 1024;
    v70 = v29;
    v71 = 2080;
    v72 = "start_channel";
    v73 = 1024;
    v74 = v30;
    v75 = 2080;
    v76 = "alternate_channel";
    v77 = 1024;
    v78 = v31;
    v79 = 2080;
    v80 = "channel_hop_pattern_mask";
    v81 = 1024;
    v82 = v32;
    v83 = 2080;
    v84 = "debug_flags";
    v85 = 1024;
    v86 = v33;
    v87 = 2080;
    v88 = "start_time";
    v89 = 2048;
    v90 = v34;
    v91 = 2080;
    v92 = "start_time_uncertainty";
    v93 = 1024;
    v94 = v35;
    v95 = 2080;
    v96 = "interval_ms";
    v97 = 1024;
    v98 = v36;
    v99 = 2080;
    v100 = "local_addr";
    v101 = 2048;
    v102 = v37;
    v103 = 2080;
    v104 = "peer_addr";
    v105 = 2048;
    v106 = v38;
    v107 = 2080;
    v108 = "sts_blob";
    v109 = 2080;
    v110 = v39;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Built GR ND packet V2: {\n              %s: %d\n             , %s : %d\n             , %s : %d\n             , %s : %d\n             , %s: %d\n             , %s: %d\n             , %s: %d\n             , %s: %d\n             , %s: %d\n             , %s: %d\n             , %s: %x\n             , %s: %d\n             , %s: %llu\n             , %s: %u\n             , %s: %d\n             , %s: 0x%llx\n             , %s: 0x%llx\n             , %s: %s\n     }", __p, 0x132u);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1001ADC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001ADCCC(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A36F8();
  }

  if (*(a2 + 97) != 1 || *(a2 + 205) != 1 || *(a2 + 99) != 1 || *(a2 + 101) != 1 || *(a2 + 103) != 1 || *(a2 + 105) != 1 || *(a2 + 107) != 1 || *(a2 + 110) != 1 || *(a2 + 113) != 1 || *(a2 + 115) != 1 || *(a2 + 117) != 1 || *(a2 + 201) != 1 || *(a2 + 203) != 1 || *(a2 + 217) != 1 || *(a2 + 214) != 1 || *(a2 + 234) != 1 || *(a2 + 120) != 1 || *(a2 + 194) != 1 || *(a2 + 198) != 1 || *(a2 + 207) != 1 || *(a2 + 209) != 1 || *(a2 + 211) != 1 || (*(a2 + 280) & 1) == 0)
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    sub_1004A372C();
    return 0;
  }

  *(a1 + 16) = 16421;
  if ((*(a2 + 97) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 22) = *(a2 + 96);
  if ((*(a2 + 205) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 23) = *(a2 + 204);
  if ((*(a2 + 99) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 24) = *(a2 + 98);
  if ((*(a2 + 101) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 25) = *(a2 + 100);
  if ((*(a2 + 103) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 26) = *(a2 + 102);
  if (*(a2 + 163) == 1)
  {
    *(a1 + 34) = *(a2 + 162);
  }

  if (*(a2 + 165) == 1)
  {
    *(a1 + 35) = *(a2 + 164);
  }

  if (*(a2 + 167) == 1)
  {
    *(a1 + 36) = *(a2 + 166);
  }

  if ((*(a2 + 105) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (!sub_1004272D8(*(a2 + 104)))
  {
    sub_1004A3760();
  }

  if ((*(a2 + 107) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (!sub_1004272D8(*(a2 + 106)))
  {
    sub_1004A378C();
  }

  if ((*(a2 + 110) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (!sub_100428600((a2 + 108)))
  {
    sub_1004A37B8();
  }

  if ((*(a2 + 113) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (!sub_100428600((a2 + 111)))
  {
    sub_1004A37E4();
  }

  if ((*(a2 + 105) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 30) = sub_100427398(*(a2 + 104), 1, v4, v5, v6, v7, v8, v9);
  if ((*(a2 + 107) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 31) = sub_100427398(*(a2 + 106), 1, v10, v11, v12, v13, v14, v15);
  if ((*(a2 + 110) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 32) = *(a2 + 109);
  if ((*(a2 + 113) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 33) = *(a2 + 112);
  if ((*(a2 + 115) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 38) = *(a2 + 114);
  if ((*(a2 + 117) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 39) = *(a2 + 116);
  if ((*(a2 + 201) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 46) = *(a2 + 200);
  if ((*(a2 + 203) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 47) = *(a2 + 202);
  if ((*(a2 + 217) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 48) = *(a2 + 216);
  if ((*(a2 + 120) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 70) = *(a2 + 118) | 2;
  if ((*(a2 + 194) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 42) = *(a2 + 192);
  if ((*(a2 + 198) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 44) = *(a2 + 196);
  if ((*(a2 + 207) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 27) = sub_10042838C(*(a2 + 206), 1);
  if ((*(a2 + 209) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 28) = sub_10042838C(*(a2 + 208), 1);
  if ((*(a2 + 211) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 29) = *(a2 + 210);
  if ((*(a2 + 280) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (*(a2 + 240) != 1)
  {
    if (*(a2 + 256) == 1 && (*(a2 + 272) & 1) != 0)
    {
      *(a1 + 84) = *(a2 + 248);
      if ((*(a2 + 280) & 1) == 0)
      {
        sub_1000195BC();
      }

      if ((*(a2 + 272) & 1) == 0)
      {
        sub_1000195BC();
      }

      *(a1 + 92) = *(a2 + 264);
      goto LABEL_63;
    }

    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    sub_1004A3640();
    return 0;
  }

  *(a1 + 92) = 0;
  *(a1 + 84) = 0;
LABEL_63:
  if ((*(a2 + 234) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 49) = *(a2 + 218);
  sub_100004A08(&v48, "0x");
  if (*(a2 + 234) != 1)
  {
    sub_1000195BC();
  }

  for (i = 0; i != 16; ++i)
  {
    snprintf(__str, 8uLL, "%02x", *(a2 + 218 + i));
    sub_100004A08(__p, __str);
    if (SBYTE3(v51) >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = *__p;
    }

    if (SBYTE3(v51) >= 0)
    {
      v18 = BYTE3(v51);
    }

    else
    {
      v18 = *&__p[8];
    }

    std::string::append(&v48, v17, v18);
    if (SBYTE3(v51) < 0)
    {
      operator delete(*__p);
    }
  }

  v19 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 22);
    v21 = *(a1 + 24);
    v22 = *(a1 + 25);
    v23 = *(a1 + 26);
    v24 = *(a1 + 34);
    v25 = *(a1 + 35);
    v26 = *(a1 + 36);
    v27 = *(a1 + 30);
    v28 = *(a1 + 31);
    v29 = *(a1 + 32);
    v30 = *(a1 + 33);
    v31 = *(a1 + 38);
    v32 = *(a1 + 39);
    v33 = *(a1 + 42);
    v34 = *(a1 + 46);
    v35 = *(a1 + 47);
    v36 = *(a1 + 48);
    v37 = *(a1 + 27);
    v38 = *(a1 + 28);
    v39 = *(a1 + 29);
    v40 = *(a1 + 70);
    v41 = *(a1 + 72);
    v42 = *(a1 + 80);
    v46 = *(a1 + 44);
    v47 = *(a1 + 84);
    v43 = *(a1 + 92);
    v44 = &v48;
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v44 = v48.__r_.__value_.__r.__words[0];
    }

    *__p = 136328706;
    *&__p[4] = "ses_role";
    *&__p[12] = 1024;
    *&__p[14] = v20;
    v50 = 2080;
    v51 = "tx_ant_mask";
    v52 = 1024;
    v53 = v21;
    v54 = 2080;
    v55 = "rx_ant_mask";
    v56 = 1024;
    v57 = v22;
    v58 = 2080;
    v59 = "rx_sync_search_ant_mask";
    v60 = 1024;
    v61 = v23;
    v62 = 2080;
    v63 = "tx_ant_mask2";
    v64 = 1024;
    v65 = v24;
    v66 = 2080;
    v67 = "rx_ant_mask2";
    v68 = 1024;
    v69 = v25;
    v70 = 2080;
    v71 = "rx_sync_search_ant_mask2";
    v72 = 1024;
    v73 = v26;
    v74 = 2080;
    v75 = "tx_preamble";
    v76 = 1024;
    v77 = v27;
    v78 = 2080;
    v79 = "rx_preamble";
    v80 = 1024;
    v81 = v28;
    v82 = 2080;
    v83 = "tx_pkt_type";
    v84 = 1024;
    v85 = v29;
    v86 = 2080;
    v87 = "rx_pkt_type";
    v88 = 1024;
    v89 = v30;
    v90 = 2080;
    v91 = "tx_mslot_sz_250us";
    v92 = 1024;
    v93 = v31;
    v94 = 2080;
    v95 = "rx_mslot_sz_250us";
    v96 = 1024;
    v97 = v32;
    v98 = 2080;
    v99 = "interval_min_ms";
    v100 = 1024;
    v101 = v33;
    v102 = 2080;
    v103 = "naccess_slots_min";
    v104 = 1024;
    v105 = v34;
    v106 = 2080;
    v107 = "naccess_slots_max";
    v108 = 1024;
    v109 = v35;
    v110 = 2080;
    v111 = "access_slot_idx";
    v112 = 1024;
    v113 = v36;
    v114 = 2080;
    v115 = "start_channel";
    v116 = 1024;
    v117 = v37;
    v118 = 2080;
    v119 = "alternate_channel";
    v120 = 1024;
    v121 = v38;
    v122 = 2080;
    v123 = "channel_hop_pattern_mask";
    v124 = 1024;
    v125 = v39;
    v126 = 2080;
    v127 = "debug_flags";
    v128 = 1024;
    v129 = v40;
    v130 = 2080;
    v131 = "start_time";
    v132 = 2048;
    v133 = v41;
    v134 = 2080;
    v135 = "start_time_uncertainty";
    v136 = 1024;
    v137 = v42;
    v138 = 2080;
    v139 = "interval_max_ms";
    v140 = 1024;
    v141 = v46;
    v142 = 2080;
    v143 = "local_addr";
    v144 = 2048;
    v145 = v47;
    v146 = 2080;
    v147 = "peer_addr";
    v148 = 2048;
    v149 = v43;
    v150 = 2080;
    v151 = "sts_blob";
    v152 = 2080;
    v153 = v44;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Built GR packet V1: {\n                  %s: %d\n                 , %s : %d\n                 , %s : %d\n                 , %s : %d\n                 , %s : %d\n                 , %s : %d\n                 , %s : %d\n                 , %s: %d\n                 , %s: %d\n                 , %s: %d\n                 , %s: %d\n                 , %s: %d\n                 , %s: %d\n                 , %s: %d\n                 , %s: %d\n                 , %s: %d\n                 , %s: %u\n                 , %s: %d\n                 , %s: %x\n                 , %s: %x\n                 , %s: %d\n                 , %s: %llu\n                 , %s: %u\n                 , %s: %d\n                 , %s: 0x%llx\n                 , %s: 0x%llx\n                 , %s: %s\n     }", __p, 0x1C2u);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1001AE634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001AE674(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A36F8();
  }

  if (*(a2 + 97) != 1 || *(a2 + 205) != 1 || *(a2 + 99) != 1 || *(a2 + 101) != 1 || *(a2 + 103) != 1 || *(a2 + 105) != 1 || *(a2 + 107) != 1 || *(a2 + 110) != 1 || *(a2 + 113) != 1 || *(a2 + 115) != 1 || *(a2 + 117) != 1 || *(a2 + 201) != 1 || *(a2 + 203) != 1 || *(a2 + 217) != 1 || *(a2 + 214) != 1 || *(a2 + 234) != 1 || *(a2 + 120) != 1 || *(a2 + 194) != 1 || *(a2 + 198) != 1 || *(a2 + 207) != 1 || *(a2 + 209) != 1 || *(a2 + 211) != 1 || (*(a2 + 280) & 1) == 0)
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    sub_1004A372C();
    return 0;
  }

  *(a1 + 16) = 16421;
  if ((*(a2 + 97) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 22) = *(a2 + 96);
  if ((*(a2 + 205) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 23) = *(a2 + 204);
  if ((*(a2 + 99) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 24) = *(a2 + 98);
  if ((*(a2 + 101) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 25) = *(a2 + 100);
  if ((*(a2 + 103) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 26) = *(a2 + 102);
  if (*(a2 + 163) == 1)
  {
    *(a1 + 38) = *(a2 + 162);
  }

  if (*(a2 + 165) == 1)
  {
    *(a1 + 39) = *(a2 + 164);
  }

  if (*(a2 + 167) == 1)
  {
    *(a1 + 40) = *(a2 + 166);
  }

  if ((*(a2 + 105) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (!sub_1004272D8(*(a2 + 104)))
  {
    sub_1004A3810();
  }

  if ((*(a2 + 107) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (!sub_1004272D8(*(a2 + 106)))
  {
    sub_1004A383C();
  }

  if ((*(a2 + 110) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (!sub_100428600((a2 + 108)))
  {
    sub_1004A3868();
  }

  if ((*(a2 + 113) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (!sub_100428600((a2 + 111)))
  {
    sub_1004A3894();
  }

  if ((*(a2 + 105) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 32) = sub_100427398(*(a2 + 104), 2, v4, v5, v6, v7, v8, v9);
  if ((*(a2 + 107) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 33) = sub_100427398(*(a2 + 106), 2, v10, v11, v12, v13, v14, v15);
  if ((*(a2 + 110) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 34) = sub_100428674((a2 + 108));
  if ((*(a2 + 113) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 36) = sub_100428674((a2 + 111));
  if ((*(a2 + 115) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 46) = *(a2 + 114);
  if ((*(a2 + 117) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 47) = *(a2 + 116);
  if ((*(a2 + 201) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 54) = *(a2 + 200);
  if ((*(a2 + 203) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 55) = *(a2 + 202);
  if ((*(a2 + 217) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 56) = *(a2 + 216);
  if ((*(a2 + 120) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 78) = *(a2 + 118) | 2;
  if ((*(a2 + 194) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 50) = *(a2 + 192);
  if ((*(a2 + 198) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 52) = *(a2 + 196);
  if ((*(a2 + 207) & 1) == 0)
  {
    sub_1000195BC();
  }

  v16 = *(a2 + 206);
  if (v16 == 5 || v16 == 9)
  {
    *(a1 + 27) = v16;
  }

  if ((*(a2 + 209) & 1) == 0)
  {
    sub_1000195BC();
  }

  v17 = *(a2 + 208);
  if (v17 == 5 || v17 == 9)
  {
    *(a1 + 29) = v17;
  }

  if ((*(a2 + 211) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 31) = *(a2 + 210);
  if ((*(a2 + 280) & 1) == 0)
  {
    sub_1000195BC();
  }

  if (*(a2 + 240) != 1)
  {
    if (*(a2 + 256) == 1 && (*(a2 + 272) & 1) != 0)
    {
      *(a1 + 92) = *(a2 + 248);
      if ((*(a2 + 280) & 1) == 0)
      {
        sub_1000195BC();
      }

      if ((*(a2 + 272) & 1) == 0)
      {
        sub_1000195BC();
      }

      *(a1 + 100) = *(a2 + 264);
      goto LABEL_69;
    }

    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    sub_1004A3640();
    return 0;
  }

  *(a1 + 100) = 0;
  *(a1 + 92) = 0;
LABEL_69:
  if ((*(a2 + 234) & 1) == 0)
  {
    sub_1000195BC();
  }

  *(a1 + 57) = *(a2 + 218);
  sub_100004A08(&v50, "0x");
  if (*(a2 + 234) != 1)
  {
    sub_1000195BC();
  }

  for (i = 0; i != 16; ++i)
  {
    snprintf(__str, 8uLL, "%02x", *(a2 + 218 + i));
    sub_100004A08(__p, __str);
    if (SBYTE3(v53) >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = *__p;
    }

    if (SBYTE3(v53) >= 0)
    {
      v20 = BYTE3(v53);
    }

    else
    {
      v20 = *&__p[8];
    }

    std::string::append(&v50, v19, v20);
    if (SBYTE3(v53) < 0)
    {
      operator delete(*__p);
    }
  }

  v21 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 22);
    v23 = *(a1 + 24);
    v24 = *(a1 + 25);
    v25 = *(a1 + 26);
    v26 = *(a1 + 38);
    v27 = *(a1 + 39);
    v28 = *(a1 + 40);
    v29 = *(a1 + 32);
    v30 = *(a1 + 33);
    v31 = *(a1 + 34);
    v32 = *(a1 + 36);
    v33 = *(a1 + 46);
    v34 = *(a1 + 47);
    v35 = *(a1 + 50);
    v36 = *(a1 + 54);
    v37 = *(a1 + 55);
    v38 = *(a1 + 56);
    v39 = *(a1 + 27);
    v40 = *(a1 + 29);
    v41 = *(a1 + 31);
    v42 = *(a1 + 78);
    v43 = *(a1 + 80);
    v44 = *(a1 + 88);
    v48 = *(a1 + 52);
    v49 = *(a1 + 92);
    v45 = *(a1 + 100);
    v46 = &v50;
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v46 = v50.__r_.__value_.__r.__words[0];
    }

    *__p = 136328706;
    *&__p[4] = "ses_role";
    *&__p[12] = 1024;
    *&__p[14] = v22;
    v52 = 2080;
    v53 = "tx_ant_mask";
    v54 = 1024;
    v55 = v23;
    v56 = 2080;
    v57 = "rx_ant_mask";
    v58 = 1024;
    v59 = v24;
    v60 = 2080;
    v61 = "rx_sync_search_ant_mask";
    v62 = 1024;
    v63 = v25;
    v64 = 2080;
    v65 = "tx_ant_mask2";
    v66 = 1024;
    v67 = v26;
    v68 = 2080;
    v69 = "rx_ant_mask2";
    v70 = 1024;
    v71 = v27;
    v72 = 2080;
    v73 = "rx_sync_search_ant_mask2";
    v74 = 1024;
    v75 = v28;
    v76 = 2080;
    v77 = "tx_preamble";
    v78 = 1024;
    v79 = v29;
    v80 = 2080;
    v81 = "rx_preamble";
    v82 = 1024;
    v83 = v30;
    v84 = 2080;
    v85 = "tx_pkt_type";
    v86 = 1024;
    v87 = v31;
    v88 = 2080;
    v89 = "rx_pkt_type";
    v90 = 1024;
    v91 = v32;
    v92 = 2080;
    v93 = "tx_mslot_sz_250us";
    v94 = 1024;
    v95 = v33;
    v96 = 2080;
    v97 = "rx_mslot_sz_250us";
    v98 = 1024;
    v99 = v34;
    v100 = 2080;
    v101 = "interval_min_ms";
    v102 = 1024;
    v103 = v35;
    v104 = 2080;
    v105 = "naccess_slots_min";
    v106 = 1024;
    v107 = v36;
    v108 = 2080;
    v109 = "naccess_slots_max";
    v110 = 1024;
    v111 = v37;
    v112 = 2080;
    v113 = "access_slot_idx";
    v114 = 1024;
    v115 = v38;
    v116 = 2080;
    v117 = "start_channel";
    v118 = 1024;
    v119 = v39;
    v120 = 2080;
    v121 = "alternate_channel";
    v122 = 1024;
    v123 = v40;
    v124 = 2080;
    v125 = "channel_hop_pattern_mask";
    v126 = 1024;
    v127 = v41;
    v128 = 2080;
    v129 = "debug_flags";
    v130 = 1024;
    v131 = v42;
    v132 = 2080;
    v133 = "start_time";
    v134 = 2048;
    v135 = v43;
    v136 = 2080;
    v137 = "start_time_uncertainty";
    v138 = 1024;
    v139 = v44;
    v140 = 2080;
    v141 = "interval_max_ms";
    v142 = 1024;
    v143 = v48;
    v144 = 2080;
    v145 = "local_addr";
    v146 = 2048;
    v147 = v49;
    v148 = 2080;
    v149 = "peer_addr";
    v150 = 2048;
    v151 = v45;
    v152 = 2080;
    v153 = "sts_blob";
    v154 = 2080;
    v155 = v46;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Built GR packet V2: {\n                  %s: %d\n                 , %s : %d\n                 , %s : %d\n                 , %s : %d\n                 , %s : %d\n                 , %s : %d\n                 , %s : %d\n                 , %s: %d\n                 , %s: %d\n                 , %s: %d\n                 , %s: %d\n                 , %s: %d\n                 , %s: %d\n                 , %s: %d\n                 , %s: %d\n                 , %s: %d\n                 , %s: %u\n                 , %s: %d\n                 , %s: %x\n                 , %s: %x\n                 , %s: %d\n                 , %s: %llu\n                 , %s: %u\n                 , %s: %d\n                 , %s: 0x%llx\n                 , %s: 0x%llx\n                 , %s: %s\n     }", __p, 0x1C2u);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1001AEFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001AF034(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A38C0();
  }

  if (*(a2 + 97) == 1 && *(a2 + 99) == 1 && *(a2 + 101) == 1 && *(a2 + 103) == 1 && *(a2 + 120) == 1 && *(a2 + 353) == 1 && *(a2 + 355) == 1 && *(a2 + 360) == 1 && *(a2 + 365) == 1 && *(a2 + 367) == 1 && *(a2 + 369) == 1 && *(a2 + 372) == 1 && *(a2 + 376) == 1 && *(a2 + 380) == 1 && *(a2 + 388) == 1 && *(a2 + 392) == 1 && *(a2 + 408) == 1 && *(a2 + 424) == 1 && (*(a2 + 434) & 1) != 0)
  {
    *(a1 + 16) = 16448;
    if ((*(a2 + 97) & 1) == 0)
    {
      goto LABEL_50;
    }

    *(a1 + 22) = *(a2 + 96);
    if ((*(a2 + 99) & 1) == 0)
    {
      goto LABEL_50;
    }

    *(a1 + 29) = *(a2 + 98);
    if ((*(a2 + 101) & 1) == 0)
    {
      goto LABEL_50;
    }

    *(a1 + 30) = *(a2 + 100);
    if ((*(a2 + 103) & 1) == 0)
    {
      goto LABEL_50;
    }

    *(a1 + 31) = *(a2 + 102);
    if ((*(a2 + 353) & 1) == 0)
    {
      goto LABEL_50;
    }

    *(a1 + 32) = sub_10042838C(*(a2 + 352), 1);
    if ((*(a2 + 355) & 1) == 0)
    {
      goto LABEL_50;
    }

    if (!sub_1004272D8(*(a2 + 354)))
    {
      sub_1004A3928();
    }

    if ((*(a2 + 355) & 1) == 0)
    {
      goto LABEL_50;
    }

    *(a1 + 33) = sub_100427398(*(a2 + 354), 1, v4, v5, v6, v7, v8, v9);
    if ((*(a2 + 360) & 1) == 0)
    {
      goto LABEL_50;
    }

    *(a1 + 34) = *(a2 + 356);
    if ((*(a2 + 365) & 1) == 0)
    {
      goto LABEL_50;
    }

    *(a1 + 45) = *(a2 + 364);
    if ((*(a2 + 367) & 1) == 0)
    {
      goto LABEL_50;
    }

    *(a1 + 46) = *(a2 + 366);
    if ((*(a2 + 369) & 1) == 0)
    {
      goto LABEL_50;
    }

    *(a1 + 47) = *(a2 + 368);
    if ((*(a2 + 372) & 1) == 0)
    {
      goto LABEL_50;
    }

    *(a1 + 48) = *(a2 + 370);
    if ((*(a2 + 376) & 1) == 0 || (*(a1 + 50) = *(a2 + 374), (*(a2 + 380) & 1) == 0) || (*(a1 + 52) = *(a2 + 378), (*(a2 + 392) & 1) == 0) || (*(a1 + 70) = *(a2 + 390), (*(a2 + 408) & 1) == 0) || (*(a1 + 72) = *(a2 + 400), (*(a2 + 424) & 1) == 0) || (*(a1 + 74) = *(a2 + 416), (*(a2 + 120) & 1) == 0) || (*(a1 + 76) = *(a2 + 118), (*(a2 + 434) & 1) == 0) || (*(a1 + 54) = *(a2 + 432), (*(a2 + 388) & 1) == 0))
    {
LABEL_50:
      sub_1000195BC();
    }

    v10 = *(a2 + 382);
    *(a1 + 68) = *(a2 + 386);
    *(a1 + 64) = v10;
    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 22);
      v13 = *(a1 + 29);
      v14 = *(a1 + 30);
      v15 = *(a1 + 31);
      v16 = *(a1 + 76);
      v17 = *(a1 + 32);
      v18 = *(a1 + 33);
      v19 = *(a1 + 34);
      v20 = *(a1 + 45);
      v21 = *(a1 + 46);
      v22 = *(a1 + 47);
      v23 = *(a1 + 48);
      v24 = *(a1 + 50);
      v25 = *(a1 + 52);
      v26 = *(a1 + 70);
      v27 = *(a1 + 72);
      v28 = *(a1 + 74);
      v29 = *(a1 + 54);
      v30 = *(a1 + 64);
      v31 = *(a1 + 65);
      v32 = *(a1 + 66);
      v33 = *(a1 + 67);
      v34 = *(a1 + 68);
      v35 = *(a1 + 69);
      v37[0] = 67115008;
      v37[1] = v12;
      v38 = 1024;
      v39 = v13;
      v40 = 1024;
      v41 = v14;
      v42 = 1024;
      v43 = v15;
      v44 = 1024;
      v45 = v16;
      v46 = 1024;
      v47 = v17;
      v48 = 1024;
      v49 = v18;
      v50 = 1024;
      v51 = v19;
      v52 = 1024;
      v53 = v20;
      v54 = 1024;
      v55 = v21;
      v56 = 1024;
      v57 = v22;
      v58 = 1024;
      v59 = v23;
      v60 = 1024;
      v61 = v24;
      v62 = 1024;
      v63 = v25;
      v64 = 1024;
      v65 = v26;
      v66 = 1024;
      v67 = v27;
      v68 = 1024;
      v69 = v28;
      v70 = 1024;
      v71 = v29;
      v72 = 1024;
      v73 = v30;
      v74 = 1024;
      v75 = v31;
      v76 = 1024;
      v77 = v32;
      v78 = 1024;
      v79 = v33;
      v80 = 1024;
      v81 = v34;
      v82 = 1024;
      v83 = v35;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Built FiRa Unicast packet V1: {\n  ses_role: %u\n, tx_ant_mask: %u\n, rx_ant_mask: %u\n, rx_sync_search_ant_mask: %u\n, debug_flags: 0x%x\n, channel: %u\n, preamble: %u\n, uwb_ses_id: 0x%x\n, tx_pulse_shape: %u\n, rx_pulse_shape: %u\n, sfd_id: %u \n, nrstus_per_slot: %u\n, nslots_per_round: %u\n, nrounds_per_block: %u\n, vendor_id: 0x%x\n, local_addr: 0x%x\n, peer_addr: 0x%x\n, ranging_interval: %u\n, static_sts_iv:[%x, %x, %x, %x, %x, %x]}", v37, 0x92u);
    }

    return 1;
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1004A38F4();
      return 0;
    }
  }

  return result;
}

BOOL sub_1001AF4B8(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A38C0();
  }

  if (*(a2 + 97) == 1 && *(a2 + 99) == 1 && *(a2 + 101) == 1 && *(a2 + 103) == 1 && *(a2 + 120) == 1 && *(a2 + 353) == 1 && *(a2 + 355) == 1 && *(a2 + 360) == 1 && *(a2 + 365) == 1 && *(a2 + 367) == 1 && *(a2 + 369) == 1 && *(a2 + 372) == 1 && *(a2 + 376) == 1 && *(a2 + 380) == 1 && *(a2 + 388) == 1 && *(a2 + 392) == 1 && *(a2 + 408) == 1 && *(a2 + 424) == 1 && (*(a2 + 434) & 1) != 0)
  {
    *(a1 + 16) = 16448;
    if ((*(a2 + 97) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 22) = *(a2 + 96);
    if ((*(a2 + 99) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 29) = *(a2 + 98);
    if ((*(a2 + 101) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 30) = *(a2 + 100);
    if ((*(a2 + 103) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 31) = *(a2 + 102);
    if ((*(a2 + 355) & 1) == 0)
    {
      goto LABEL_53;
    }

    if (!sub_1004272D8(*(a2 + 354)))
    {
      sub_1004A3954();
    }

    if ((*(a2 + 355) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 34) = sub_100427398(*(a2 + 354), 2, v4, v5, v6, v7, v8, v9);
    if ((*(a2 + 360) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 35) = *(a2 + 356);
    if ((*(a2 + 365) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 55) = *(a2 + 364);
    if ((*(a2 + 367) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 56) = *(a2 + 366);
    if ((*(a2 + 369) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 57) = *(a2 + 368);
    if ((*(a2 + 372) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 58) = *(a2 + 370);
    if ((*(a2 + 376) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 60) = *(a2 + 374);
    if ((*(a2 + 380) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 62) = *(a2 + 378);
    if ((*(a2 + 392) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 88) = *(a2 + 390);
    if ((*(a2 + 408) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 90) = *(a2 + 400);
    if ((*(a2 + 424) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 92) = *(a2 + 416);
    if ((*(a2 + 120) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 94) = *(a2 + 118);
    if ((*(a2 + 434) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 64) = *(a2 + 432);
    if ((*(a2 + 353) & 1) == 0)
    {
      goto LABEL_53;
    }

    v10 = *(a2 + 352);
    if (v10 == 5 || v10 == 9)
    {
      *(a1 + 32) = v10;
    }

    if ((*(a2 + 388) & 1) == 0)
    {
LABEL_53:
      sub_1000195BC();
    }

    v11 = *(a2 + 382);
    *(a1 + 86) = *(a2 + 386);
    *(a1 + 82) = v11;
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 22);
      v14 = *(a1 + 29);
      v15 = *(a1 + 30);
      v16 = *(a1 + 31);
      v17 = *(a1 + 94);
      v18 = *(a1 + 32);
      v19 = *(a1 + 34);
      v20 = *(a1 + 35);
      v21 = *(a1 + 55);
      v22 = *(a1 + 56);
      v23 = *(a1 + 57);
      v24 = *(a1 + 58);
      v25 = *(a1 + 60);
      v26 = *(a1 + 62);
      v27 = *(a1 + 88);
      v28 = *(a1 + 90);
      v29 = *(a1 + 92);
      v30 = *(a1 + 64);
      v31 = *(a1 + 82);
      v32 = *(a1 + 83);
      v33 = *(a1 + 84);
      v34 = *(a1 + 85);
      v35 = *(a1 + 86);
      v36 = *(a1 + 87);
      v38[0] = 67115008;
      v38[1] = v13;
      v39 = 1024;
      v40 = v14;
      v41 = 1024;
      v42 = v15;
      v43 = 1024;
      v44 = v16;
      v45 = 1024;
      v46 = v17;
      v47 = 1024;
      v48 = v18;
      v49 = 1024;
      v50 = v19;
      v51 = 1024;
      v52 = v20;
      v53 = 1024;
      v54 = v21;
      v55 = 1024;
      v56 = v22;
      v57 = 1024;
      v58 = v23;
      v59 = 1024;
      v60 = v24;
      v61 = 1024;
      v62 = v25;
      v63 = 1024;
      v64 = v26;
      v65 = 1024;
      v66 = v27;
      v67 = 1024;
      v68 = v28;
      v69 = 1024;
      v70 = v29;
      v71 = 1024;
      v72 = v30;
      v73 = 1024;
      v74 = v31;
      v75 = 1024;
      v76 = v32;
      v77 = 1024;
      v78 = v33;
      v79 = 1024;
      v80 = v34;
      v81 = 1024;
      v82 = v35;
      v83 = 1024;
      v84 = v36;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Built FiRa Unicast packet V2: {\n  ses_role: %u\n, tx_ant_mask: %u\n, rx_ant_mask: %u\n, rx_sync_search_ant_mask: %u\n, debug_flags: 0x%x\n, channel: %u\n, preamble: %u\n, uwb_ses_id: 0x%08X\n, tx_pulse_shape: %u\n, rx_pulse_shape: %u\n, sfd_id: %u \n, nrstus_per_slot: %u\n, nslots_per_round: %u\n, nrounds_per_block: %u\n, vendor_id: 0x%x\n, local_addr: 0x%x\n, peer_addr: 0x%x\n, ranging_interval: %u\n, static_sts_iv:[%x, %x, %x, %x, %x, %x]\n}", v38, 0x92u);
    }

    return 1;
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1004A38F4();
      return 0;
    }
  }

  return result;
}

BOOL sub_1001AF944(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A3980();
  }

  if (*(a2 + 97) == 1 && *(a2 + 99) == 1 && *(a2 + 101) == 1 && *(a2 + 103) == 1 && *(a2 + 120) == 1 && *(a2 + 353) == 1 && *(a2 + 355) == 1 && *(a2 + 360) == 1 && *(a2 + 365) == 1 && *(a2 + 367) == 1 && *(a2 + 369) == 1 && *(a2 + 372) == 1 && *(a2 + 376) == 1 && *(a2 + 380) == 1 && *(a2 + 437) == 1 && *(a2 + 439) == 1 && *(a2 + 441) == 1 && *(a2 + 388) == 1 && *(a2 + 392) == 1 && *(a2 + 408) == 1 && (*(a2 + 424) & 1) != 0)
  {
    *(a1 + 16) = 16449;
    if ((*(a2 + 97) & 1) == 0)
    {
      goto LABEL_54;
    }

    *(a1 + 22) = *(a2 + 96);
    if ((*(a2 + 99) & 1) == 0)
    {
      goto LABEL_54;
    }

    *(a1 + 29) = *(a2 + 98);
    if ((*(a2 + 101) & 1) == 0)
    {
      goto LABEL_54;
    }

    *(a1 + 30) = *(a2 + 100);
    if ((*(a2 + 103) & 1) == 0)
    {
      goto LABEL_54;
    }

    *(a1 + 31) = *(a2 + 102);
    if ((*(a2 + 353) & 1) == 0)
    {
      goto LABEL_54;
    }

    *(a1 + 32) = sub_10042838C(*(a2 + 352), 1);
    if ((*(a2 + 355) & 1) == 0)
    {
      goto LABEL_54;
    }

    if (!sub_1004272D8(*(a2 + 354)))
    {
      sub_1004A39E8();
    }

    if ((*(a2 + 355) & 1) == 0)
    {
      goto LABEL_54;
    }

    *(a1 + 33) = sub_100427398(*(a2 + 354), 1, v4, v5, v6, v7, v8, v9);
    if ((*(a2 + 360) & 1) == 0)
    {
      goto LABEL_54;
    }

    *(a1 + 34) = *(a2 + 356);
    if ((*(a2 + 365) & 1) == 0)
    {
      goto LABEL_54;
    }

    *(a1 + 48) = *(a2 + 364);
    if ((*(a2 + 367) & 1) == 0)
    {
      goto LABEL_54;
    }

    *(a1 + 49) = *(a2 + 366);
    if ((*(a2 + 369) & 1) == 0)
    {
      goto LABEL_54;
    }

    *(a1 + 50) = *(a2 + 368);
    if ((*(a2 + 372) & 1) == 0)
    {
      goto LABEL_54;
    }

    *(a1 + 51) = *(a2 + 370);
    if ((*(a2 + 376) & 1) == 0)
    {
      goto LABEL_54;
    }

    *(a1 + 53) = *(a2 + 374);
    if ((*(a2 + 380) & 1) == 0)
    {
      goto LABEL_54;
    }

    *(a1 + 55) = *(a2 + 378);
    if ((*(a2 + 437) & 1) == 0 || (*(a1 + 23) = *(a2 + 436), (*(a2 + 439) & 1) == 0) || (*(a1 + 57) = *(a2 + 438), (*(a2 + 441) & 1) == 0) || (*(a1 + 58) = *(a2 + 440), (*(a2 + 392) & 1) == 0) || (*(a1 + 75) = *(a2 + 390), (*(a2 + 408) & 1) == 0) || (*(a1 + 77) = *(a2 + 400), (*(a2 + 424) & 1) == 0) || (*(a1 + 85) = *(a2 + 416), (*(a2 + 120) & 1) == 0) || (*(a1 + 93) = *(a2 + 118), (*(a2 + 388) & 1) == 0))
    {
LABEL_54:
      sub_1000195BC();
    }

    v10 = *(a2 + 382);
    *(a1 + 73) = *(a2 + 386);
    *(a1 + 69) = v10;
    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 22);
      v13 = *(a1 + 29);
      v14 = *(a1 + 30);
      v15 = *(a1 + 31);
      v16 = *(a1 + 93);
      v17 = *(a1 + 32);
      v18 = *(a1 + 33);
      v19 = *(a1 + 34);
      v20 = *(a1 + 48);
      v21 = *(a1 + 49);
      v22 = *(a1 + 50);
      v23 = *(a1 + 51);
      v24 = *(a1 + 53);
      v25 = *(a1 + 55);
      v26 = *(a1 + 23);
      v27 = *(a1 + 57);
      v28 = *(a1 + 58);
      v29 = *(a1 + 75);
      v30 = *(a1 + 77);
      v31 = *(a1 + 85);
      v32 = *(a1 + 69);
      v33 = *(a1 + 70);
      v34 = *(a1 + 71);
      v35 = *(a1 + 72);
      v36 = *(a1 + 73);
      v37 = *(a1 + 74);
      v39[0] = 67115520;
      v39[1] = v12;
      v40 = 1024;
      v41 = v13;
      v42 = 1024;
      v43 = v14;
      v44 = 1024;
      v45 = v15;
      v46 = 1024;
      v47 = v16;
      v48 = 1024;
      v49 = v17;
      v50 = 1024;
      v51 = v18;
      v52 = 1024;
      v53 = v19;
      v54 = 1024;
      v55 = v20;
      v56 = 1024;
      v57 = v21;
      v58 = 1024;
      v59 = v22;
      v60 = 1024;
      v61 = v23;
      v62 = 1024;
      v63 = v24;
      v64 = 1024;
      v65 = v25;
      v66 = 1024;
      v67 = v26;
      v68 = 1024;
      v69 = v27;
      v70 = 1024;
      v71 = v28;
      v72 = 1024;
      v73 = v29;
      v74 = 2048;
      v75 = v30;
      v76 = 2048;
      v77 = v31;
      v78 = 1024;
      v79 = v32;
      v80 = 1024;
      v81 = v33;
      v82 = 1024;
      v83 = v34;
      v84 = 1024;
      v85 = v35;
      v86 = 1024;
      v87 = v36;
      v88 = 1024;
      v89 = v37;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Built FiRa Contention Based packet V1: {\n  ses_role: %u\n, tx_ant_mask: %u\n, rx_ant_mask: %u\n, rx_sync_search_ant_mask: %u\n, debug_flags: 0x%x\n, channel: %u\n, preamble: %u\n, uwb_ses_id: 0x%x\n, tx_pulse_shape: %u\n, rx_pulse_shape: %u\n, sfd_id: %u \n, nrstus_per_slot: %u\n, nslots_per_round: %u\n, nrounds_per_block: %u\n, ranging_type: %u\n, cap_size_min: %u\n, cap_size_max: %u\n, vendor_id: 0x%x\n, local_addr: 0x%llx\n, peer_addr: 0x%llx\n, static_sts_iv:[%x, %x, %x, %x, %x, %x]}", v39, 0xA6u);
    }

    return 1;
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1004A39B4();
      return 0;
    }
  }

  return result;
}

BOOL sub_1001AFE1C(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A3980();
  }

  if (*(a2 + 97) == 1 && *(a2 + 99) == 1 && *(a2 + 101) == 1 && *(a2 + 103) == 1 && *(a2 + 120) == 1 && *(a2 + 353) == 1 && *(a2 + 355) == 1 && *(a2 + 360) == 1 && *(a2 + 365) == 1 && *(a2 + 367) == 1 && *(a2 + 369) == 1 && *(a2 + 372) == 1 && *(a2 + 376) == 1 && *(a2 + 380) == 1 && *(a2 + 437) == 1 && *(a2 + 439) == 1 && *(a2 + 441) == 1 && *(a2 + 388) == 1 && *(a2 + 392) == 1 && *(a2 + 408) == 1 && (*(a2 + 424) & 1) != 0)
  {
    *(a1 + 16) = 16449;
    if ((*(a2 + 97) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 22) = *(a2 + 96);
    if ((*(a2 + 99) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 29) = *(a2 + 98);
    if ((*(a2 + 101) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 30) = *(a2 + 100);
    if ((*(a2 + 103) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 31) = *(a2 + 102);
    if ((*(a2 + 355) & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!sub_1004272D8(*(a2 + 354)))
    {
      sub_1004A3A48();
    }

    if ((*(a2 + 355) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 34) = sub_100427398(*(a2 + 354), 2, v4, v5, v6, v7, v8, v9);
    if ((*(a2 + 360) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 35) = *(a2 + 356);
    if ((*(a2 + 365) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 49) = *(a2 + 364);
    if ((*(a2 + 367) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 50) = *(a2 + 366);
    if ((*(a2 + 369) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 51) = *(a2 + 368);
    if ((*(a2 + 372) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 52) = *(a2 + 370);
    if ((*(a2 + 376) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 54) = *(a2 + 374);
    if ((*(a2 + 380) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 56) = *(a2 + 378);
    if ((*(a2 + 437) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 23) = *(a2 + 436);
    if ((*(a2 + 439) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 58) = *(a2 + 438);
    if ((*(a2 + 441) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 59) = *(a2 + 440);
    if ((*(a2 + 392) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 76) = *(a2 + 390);
    if ((*(a2 + 408) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 78) = *(a2 + 400);
    if ((*(a2 + 424) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 86) = *(a2 + 416);
    if ((*(a2 + 120) & 1) == 0)
    {
      goto LABEL_57;
    }

    *(a1 + 94) = *(a2 + 118);
    if ((*(a2 + 353) & 1) == 0)
    {
      goto LABEL_57;
    }

    v10 = *(a2 + 352);
    if (v10 == 5 || v10 == 9)
    {
      *(a1 + 32) = v10;
    }

    if ((*(a2 + 388) & 1) == 0)
    {
LABEL_57:
      sub_1000195BC();
    }

    v11 = *(a2 + 382);
    *(a1 + 74) = *(a2 + 386);
    *(a1 + 70) = v11;
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 22);
      v14 = *(a1 + 29);
      v15 = *(a1 + 30);
      v16 = *(a1 + 31);
      v17 = *(a1 + 94);
      v18 = *(a1 + 32);
      v19 = *(a1 + 34);
      v20 = *(a1 + 35);
      v21 = *(a1 + 49);
      v22 = *(a1 + 50);
      v23 = *(a1 + 51);
      v24 = *(a1 + 52);
      v25 = *(a1 + 54);
      v26 = *(a1 + 56);
      v27 = *(a1 + 23);
      v28 = *(a1 + 58);
      v29 = *(a1 + 59);
      v30 = *(a1 + 76);
      v31 = *(a1 + 78);
      v32 = *(a1 + 86);
      v33 = *(a1 + 70);
      v34 = *(a1 + 71);
      v35 = *(a1 + 72);
      v36 = *(a1 + 73);
      v37 = *(a1 + 74);
      v38 = *(a1 + 75);
      v40[0] = 67115520;
      v40[1] = v13;
      v41 = 1024;
      v42 = v14;
      v43 = 1024;
      v44 = v15;
      v45 = 1024;
      v46 = v16;
      v47 = 1024;
      v48 = v17;
      v49 = 1024;
      v50 = v18;
      v51 = 1024;
      v52 = v19;
      v53 = 1024;
      v54 = v20;
      v55 = 1024;
      v56 = v21;
      v57 = 1024;
      v58 = v22;
      v59 = 1024;
      v60 = v23;
      v61 = 1024;
      v62 = v24;
      v63 = 1024;
      v64 = v25;
      v65 = 1024;
      v66 = v26;
      v67 = 1024;
      v68 = v27;
      v69 = 1024;
      v70 = v28;
      v71 = 1024;
      v72 = v29;
      v73 = 1024;
      v74 = v30;
      v75 = 2048;
      v76 = v31;
      v77 = 2048;
      v78 = v32;
      v79 = 1024;
      v80 = v33;
      v81 = 1024;
      v82 = v34;
      v83 = 1024;
      v84 = v35;
      v85 = 1024;
      v86 = v36;
      v87 = 1024;
      v88 = v37;
      v89 = 1024;
      v90 = v38;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Built FiRa Contention Based packet V2: {\n  ses_role: %u\n, tx_ant_mask: %u\n, rx_ant_mask: %u\n, rx_sync_search_ant_mask: %u\n, debug_flags: 0x%x\n, channel: %u\n, preamble: %u\n, uwb_ses_id: 0x%x\n, tx_pulse_shape: %u\n, rx_pulse_shape: %u\n, sfd_id: %u \n, nrstus_per_slot: %u\n, nslots_per_round: %u\n, nrounds_per_block: %u\n, ranging_type: %u\n, cap_size_min: %u\n, cap_size_max: %u\n, vendor_id: 0x%x\n, local_addr: 0x%llx\n, peer_addr: 0x%llx\n, static_sts_iv:[%x, %x, %x, %x, %x, %x]\n}", v40, 0xA6u);
    }

    return 1;
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1004A3A14();
      return 0;
    }
  }

  return result;
}

BOOL sub_1001B02FC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 101) == 1 && *(a2 + 103) == 1 && *(a2 + 120) == 1 && *(a2 + 449) == 1 && *(a2 + 451) == 1 && *(a2 + 456) == 1 && *(a2 + 461) == 1 && *(a2 + 463) == 1 && *(a2 + 465) == 1 && *(a2 + 468) == 1 && *(a2 + 472) == 1 && *(a2 + 476) == 1 && *(a2 + 480) == 1 && (*(a2 + 490) & 1) != 0)
  {
    *(a1 + 16) = 16452;
    if ((*(a2 + 101) & 1) == 0)
    {
      goto LABEL_37;
    }

    *(a1 + 29) = *(a2 + 100);
    if ((*(a2 + 103) & 1) == 0)
    {
      goto LABEL_37;
    }

    *(a1 + 30) = *(a2 + 102);
    if ((*(a2 + 451) & 1) == 0)
    {
      goto LABEL_37;
    }

    if (!sub_1004272D8(*(a2 + 450)))
    {
      sub_1004A3AA8();
    }

    if ((*(a2 + 451) & 1) == 0)
    {
      goto LABEL_37;
    }

    *(a1 + 32) = sub_100427398(*(a2 + 450), 1, v4, v5, v6, v7, v8, v9);
    if ((*(a2 + 456) & 1) == 0)
    {
      goto LABEL_37;
    }

    *(a1 + 58) = *(a2 + 452);
    if ((*(a2 + 461) & 1) == 0)
    {
      goto LABEL_37;
    }

    *(a1 + 39) = *(a2 + 460);
    if ((*(a2 + 463) & 1) == 0)
    {
      goto LABEL_37;
    }

    *(a1 + 40) = *(a2 + 462);
    if ((*(a2 + 465) & 1) == 0 || (*(a1 + 57) = *(a2 + 464), (*(a2 + 468) & 1) == 0) || (*(a1 + 41) = *(a2 + 466), (*(a2 + 472) & 1) == 0) || (*(a1 + 43) = *(a2 + 470), (*(a2 + 476) & 1) == 0) || (*(a1 + 45) = *(a2 + 474), (*(a2 + 480) & 1) == 0) || (*(a1 + 47) = *(a2 + 478), (*(a2 + 490) & 1) == 0) || (*(a1 + 62) = *(a2 + 488), (*(a2 + 120) & 1) == 0) || (*(a1 + 70) = *(a2 + 118), (*(a2 + 449) & 1) == 0))
    {
LABEL_37:
      sub_1000195BC();
    }

    *(a1 + 31) = sub_10042838C(*(a2 + 448), 1);
    v10 = *(a2 + 508);
    *(a1 + 72) = *(a2 + 492);
    *(a1 + 88) = v10;
    v11 = *(a2 + 482);
    *(a1 + 68) = *(a2 + 486);
    *(a1 + 64) = v11;
    v12 = qword_1009F9820;
    v13 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    result = 1;
    if (v13)
    {
      v57 = *(a1 + 86);
      v61 = *(a1 + 90);
      v65 = *(a1 + 65);
      v69 = *(a1 + 67);
      v73 = *(a1 + 69);
      v15[1] = *(a1 + 29);
      v17 = *(a1 + 30);
      v19 = *(a1 + 70);
      v21 = *(a1 + 31);
      v23 = *(a1 + 32);
      v25 = *(a1 + 58);
      v27 = *(a1 + 39);
      v29 = *(a1 + 40);
      v31 = *(a1 + 57);
      v33 = *(a1 + 41);
      v35 = *(a1 + 43);
      v37 = *(a1 + 45);
      v39 = *(a1 + 47);
      v41 = *(a1 + 62);
      v43 = *(a1 + 72);
      v45 = *(a1 + 74);
      v47 = *(a1 + 76);
      v49 = *(a1 + 78);
      v51 = *(a1 + 80);
      v53 = *(a1 + 82);
      v55 = *(a1 + 84);
      v59 = *(a1 + 88);
      v63 = *(a1 + 64);
      v67 = *(a1 + 66);
      v71 = *(a1 + 68);
      v16 = 1024;
      v18 = 1024;
      v20 = 1024;
      v22 = 1024;
      v24 = 1024;
      v26 = 1024;
      v28 = 1024;
      v30 = 1024;
      v32 = 1024;
      v34 = 1024;
      v36 = 1024;
      v38 = 1024;
      v40 = 1024;
      v42 = 1024;
      v44 = 1024;
      v46 = 1024;
      v48 = 1024;
      v50 = 1024;
      v52 = 1024;
      v54 = 1024;
      v56 = 1024;
      v58 = 1024;
      v60 = 1024;
      v62 = 1024;
      v64 = 1024;
      v66 = 1024;
      v68 = 1024;
      v70 = 1024;
      v72 = 1024;
      v15[0] = 67116544;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Built FiRa localization packet V1: {\n, rx_ant_mask: %u\n, rx_sync_search_ant_mask: %u\n, debug_flags: 0x%x\n, channel: %u\n, preamble: %u\n, uwb_ses_id: 0x%x\n, tx_pulse_shape: %u\n, rx_pulse_shape: %u\n, sfd_id: %u \n, nrstus_per_slot: %u\n, nslots_per_round: %u\n, nrounds_per_block: %u\n, interval_ms: %d\n, vendor_id: 0x%x\n, peer_addr: [%x, %x, %x, %x, %x, %x, %x, %x, %x, %x]\n, static_sts_iv: [%02x, %02x, %02x, %02x, %02x, %02x]\n}", v15, 0xB6u);
      return 1;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1004A3A74();
      return 0;
    }
  }

  return result;
}

BOOL sub_1001B0728(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 101) == 1 && *(a2 + 103) == 1 && *(a2 + 120) == 1 && *(a2 + 449) == 1 && *(a2 + 451) == 1 && *(a2 + 456) == 1 && *(a2 + 461) == 1 && *(a2 + 463) == 1 && *(a2 + 465) == 1 && *(a2 + 468) == 1 && *(a2 + 472) == 1 && *(a2 + 476) == 1 && *(a2 + 480) == 1 && (*(a2 + 490) & 1) != 0)
  {
    *(a1 + 16) = 16452;
    if ((*(a2 + 101) & 1) == 0)
    {
      goto LABEL_41;
    }

    *(a1 + 28) = *(a2 + 100);
    if ((*(a2 + 103) & 1) == 0)
    {
      goto LABEL_41;
    }

    *(a1 + 29) = *(a2 + 102);
    if ((*(a2 + 451) & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!sub_1004272D8(*(a2 + 450)))
    {
      sub_1004A3B08();
    }

    if ((*(a2 + 451) & 1) == 0)
    {
      goto LABEL_41;
    }

    *(a1 + 32) = sub_100427398(*(a2 + 450), 2, v4, v5, v6, v7, v8, v9);
    if ((*(a2 + 456) & 1) == 0)
    {
      goto LABEL_41;
    }

    *(a1 + 58) = *(a2 + 452);
    if ((*(a2 + 461) & 1) == 0)
    {
      goto LABEL_41;
    }

    *(a1 + 39) = *(a2 + 460);
    if ((*(a2 + 463) & 1) == 0)
    {
      goto LABEL_41;
    }

    *(a1 + 40) = *(a2 + 462);
    if ((*(a2 + 465) & 1) == 0 || (*(a1 + 57) = *(a2 + 464), (*(a2 + 468) & 1) == 0) || (*(a1 + 41) = *(a2 + 466), (*(a2 + 472) & 1) == 0) || (*(a1 + 43) = *(a2 + 470), (*(a2 + 476) & 1) == 0) || (*(a1 + 45) = *(a2 + 474), (*(a2 + 480) & 1) == 0) || (*(a1 + 47) = *(a2 + 478), (*(a2 + 490) & 1) == 0) || (*(a1 + 62) = *(a2 + 488), (*(a2 + 120) & 1) == 0) || (*(a1 + 70) = *(a2 + 118), (*(a2 + 449) & 1) == 0))
    {
LABEL_41:
      sub_1000195BC();
    }

    v10 = *(a2 + 448);
    if (v10 == 5 || v10 == 9)
    {
      *(a1 + 30) = v10;
    }

    v11 = *(a2 + 492);
    *(a1 + 88) = *(a2 + 508);
    *(a1 + 72) = v11;
    v12 = *(a2 + 482);
    *(a1 + 68) = *(a2 + 486);
    *(a1 + 64) = v12;
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v57 = *(a1 + 86);
      v61 = *(a1 + 90);
      v65 = *(a1 + 65);
      v69 = *(a1 + 67);
      v73 = *(a1 + 69);
      v15[1] = *(a1 + 28);
      v17 = *(a1 + 29);
      v19 = *(a1 + 70);
      v21 = *(a1 + 30);
      v23 = *(a1 + 32);
      v25 = *(a1 + 58);
      v27 = *(a1 + 39);
      v29 = *(a1 + 40);
      v31 = *(a1 + 57);
      v33 = *(a1 + 41);
      v35 = *(a1 + 43);
      v37 = *(a1 + 45);
      v39 = *(a1 + 47);
      v41 = *(a1 + 62);
      v43 = *(a1 + 72);
      v45 = *(a1 + 74);
      v47 = *(a1 + 76);
      v49 = *(a1 + 78);
      v51 = *(a1 + 80);
      v53 = *(a1 + 82);
      v55 = *(a1 + 84);
      v59 = *(a1 + 88);
      v63 = *(a1 + 64);
      v67 = *(a1 + 66);
      v71 = *(a1 + 68);
      v16 = 1024;
      v18 = 1024;
      v20 = 1024;
      v22 = 1024;
      v24 = 1024;
      v26 = 1024;
      v28 = 1024;
      v30 = 1024;
      v32 = 1024;
      v34 = 1024;
      v36 = 1024;
      v38 = 1024;
      v40 = 1024;
      v42 = 1024;
      v44 = 1024;
      v46 = 1024;
      v48 = 1024;
      v50 = 1024;
      v52 = 1024;
      v54 = 1024;
      v56 = 1024;
      v58 = 1024;
      v60 = 1024;
      v62 = 1024;
      v64 = 1024;
      v66 = 1024;
      v68 = 1024;
      v70 = 1024;
      v72 = 1024;
      v15[0] = 67116544;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Built FiRa localization packet V2: {\n, rx_ant_mask: %u\n, rx_sync_search_ant_mask: %u\n, debug_flags: 0x%x\n, channel: %u\n, preamble: %u\n, uwb_ses_id: 0x%x\n, tx_pulse_shape: %u\n, rx_pulse_shape: %u\n, sfd_id: %u \n, nrstus_per_slot: %u\n, nslots_per_round: %u\n, nrounds_per_block: %u\n, interval_ms: %d\n, vendor_id: 0x%x\n, peer_addr: [%x, %x, %x, %x, %x, %x, %x, %x, %x, %x]\n, static_sts_iv: [%02x, %02x, %02x, %02x, %02x, %02x]\n}", v15, 0xB6u);
    }

    return 1;
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1004A3AD4();
      return 0;
    }
  }

  return result;
}

BOOL sub_1001B0B54(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A3B34();
  }

  if (*(a2 + 97) == 1 && *(a2 + 513) == 1 && *(a2 + 515) == 1 && *(a2 + 518) == 1 && *(a2 + 522) == 1 && *(a2 + 99) == 1 && *(a2 + 101) == 1 && *(a2 + 103) == 1 && *(a2 + 163) == 1 && *(a2 + 165) == 1 && *(a2 + 167) == 1 && *(a2 + 528) == 1 && *(a2 + 531) == 1 && *(a2 + 533) == 1 && *(a2 + 535) == 1 && *(a2 + 543) == 1 && *(a2 + 538) == 1 && *(a2 + 525) == 1 && *(a2 + 541) == 1 && *(a2 + 120) == 1 && *(a2 + 174) == 1 && (*(a2 + 184) & 1) != 0)
  {
    *(a1 + 16) = 16480;
    if ((*(a2 + 97) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 22) = *(a2 + 96);
    if ((*(a2 + 513) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 23) = *(a2 + 512);
    if ((*(a2 + 515) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 24) = *(a2 + 514);
    if ((*(a2 + 518) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 25) = *(a2 + 516);
    if ((*(a2 + 522) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 27) = *(a2 + 520);
    if ((*(a2 + 99) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 41) = *(a2 + 98);
    if ((*(a2 + 101) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 42) = *(a2 + 100);
    if ((*(a2 + 103) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 43) = *(a2 + 102);
    if ((*(a2 + 163) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 49) = *(a2 + 162);
    if ((*(a2 + 165) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 50) = *(a2 + 164);
    if ((*(a2 + 167) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 51) = *(a2 + 166);
    if ((*(a2 + 528) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 44) = *(a2 + 526);
    if ((*(a2 + 531) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 52) = *(a2 + 530) - 1;
    if ((*(a2 + 533) & 1) == 0)
    {
      goto LABEL_53;
    }

    *(a1 + 53) = *(a2 + 532);
    if ((*(a2 + 535) & 1) == 0 || (*(a1 + 54) = *(a2 + 534), (*(a2 + 543) & 1) == 0) || (*(a1 + 46) = *(a2 + 542), (*(a2 + 538) & 1) == 0) || (*(a1 + 47) = *(a2 + 536), (*(a2 + 525) & 1) == 0) || (*(a1 + 60) = *(a2 + 524), (*(a2 + 541) & 1) == 0) || (*(a1 + 61) = *(a2 + 540), (*(a2 + 120) & 1) == 0) || (*(a1 + 78) = *(a2 + 118), (*(a2 + 174) & 1) == 0) || (*(a1 + 92) = *(a2 + 172), (*(a2 + 184) & 1) == 0))
    {
LABEL_53:
      sub_1000195BC();
    }

    *(a1 + 94) = *(a2 + 176);
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 22);
      v6 = *(a1 + 23);
      v7 = *(a1 + 24);
      v8 = *(a1 + 25);
      v9 = *(a1 + 27);
      v10 = *(a1 + 41);
      v11 = *(a1 + 42);
      v12 = *(a1 + 43);
      v13 = *(a1 + 49);
      v14 = *(a1 + 50);
      v15 = *(a1 + 51);
      v16 = *(a1 + 44);
      v17 = *(a1 + 52);
      v18 = *(a1 + 53);
      v19 = *(a1 + 54);
      v20 = *(a1 + 46);
      v21 = *(a1 + 47);
      v22 = *(a1 + 60);
      v23 = *(a1 + 61);
      v24 = *(a1 + 78);
      v25 = *(a1 + 92);
      v26 = *(a1 + 94);
      v28[0] = 67114496;
      v28[1] = v5;
      v29 = 1024;
      v30 = v6;
      v31 = 1024;
      v32 = v7;
      v33 = 1024;
      v34 = v8;
      v35 = 1024;
      v36 = v9;
      v37 = 1024;
      v38 = v10;
      v39 = 1024;
      v40 = v11;
      v41 = 1024;
      v42 = v12;
      v43 = 1024;
      v44 = v13;
      v45 = 1024;
      v46 = v14;
      v47 = 1024;
      v48 = v15;
      v49 = 1024;
      v50 = v16;
      v51 = 1024;
      v52 = v17;
      v53 = 1024;
      v54 = v18;
      v55 = 1024;
      v56 = v19;
      v57 = 1024;
      v58 = v20;
      v59 = 1024;
      v60 = v21;
      v61 = 1024;
      v62 = v22;
      v63 = 1024;
      v64 = v23;
      v65 = 1024;
      v66 = v24;
      v67 = 1024;
      v68 = v25;
      v69 = 2048;
      v70 = v26;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Built Test NMI packet: {\n, ses_role: %u\n, nb_tx_ant_mask: %u\n, nb_rx_ant_mask: %u\n, nb_pkt_type: %u\n, nb_band_channel: %u\n, mms_tx_ant_mask: %u\n, mms_rx_ant_mask: %u\n, mms_sync_search_ant_mask: %u\n, mms_tx_ant_mask2: %u\n, mms_rx_ant_mask2: %u\n, mms_sync_search_ant_mask2: %u\n, mms_packet_type: %u\n, mms_psr_minus_one: %u\n, mms_gap: %u\n, mms_seq_idx: %u\n, mms_num_fragments: %u\n, mms_band_channel: %u\n, nb_slot_size: %u\n, mms_slot_size: %u\n, debug_flags: 0x%x\n, interval_ms: %u\n, mac_addr: %llu", v28, 0x8Au);
    }

    return 1;
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1004A3B68();
      return 0;
    }
  }

  return result;
}

BOOL sub_1001B0FD4(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A3B9C();
  }

  if (*(a2 + 97) == 1 && *(a2 + 513) == 1 && *(a2 + 515) == 1 && *(a2 + 518) == 1 && *(a2 + 522) == 1 && *(a2 + 99) == 1 && *(a2 + 101) == 1 && *(a2 + 103) == 1 && *(a2 + 163) == 1 && *(a2 + 165) == 1 && *(a2 + 167) == 1 && *(a2 + 569) == 1 && *(a2 + 528) == 1 && *(a2 + 531) == 1 && *(a2 + 533) == 1 && *(a2 + 535) == 1 && *(a2 + 543) == 1 && *(a2 + 538) == 1 && *(a2 + 525) == 1 && *(a2 + 541) == 1 && *(a2 + 120) == 1 && *(a2 + 174) == 1 && *(a2 + 546) == 1 && *(a2 + 549) == 1 && *(a2 + 551) == 1 && *(a2 + 571) == 1 && (*(a2 + 184) & 1) != 0)
  {
    *(a1 + 16) = 16481;
    if ((*(a2 + 97) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 22) = *(a2 + 96);
    if ((*(a2 + 513) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 33) = *(a2 + 512);
    if ((*(a2 + 515) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 34) = *(a2 + 514);
    if ((*(a2 + 518) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 35) = *(a2 + 516);
    if ((*(a2 + 522) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 23) = *(a2 + 520);
    if ((*(a2 + 99) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 47) = *(a2 + 98);
    if ((*(a2 + 101) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 48) = *(a2 + 100);
    if ((*(a2 + 103) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 49) = *(a2 + 102);
    if ((*(a2 + 528) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 50) = *(a2 + 526);
    if ((*(a2 + 531) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 59) = *(a2 + 530) - 1;
    if ((*(a2 + 533) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 60) = *(a2 + 532);
    if ((*(a2 + 535) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 61) = *(a2 + 534);
    if ((*(a2 + 543) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 52) = *(a2 + 542);
    if ((*(a2 + 538) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 53) = *(a2 + 536);
    if ((*(a2 + 525) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 65) = *(a2 + 524);
    if ((*(a2 + 541) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 67) = *(a2 + 540);
    if ((*(a2 + 120) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 76) = *(a2 + 118);
    if ((*(a2 + 174) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 90) = *(a2 + 172);
    if ((*(a2 + 546) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 37) = *(a2 + 544);
    if ((*(a2 + 549) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 64) = *(a2 + 548);
    if ((*(a2 + 551) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 66) = *(a2 + 550);
    if ((*(a2 + 184) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 92) = *(a2 + 176);
    *(a1 + 100) = *(a2 + 552);
    if ((*(a2 + 569) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 58) = *(a2 + 568);
    if ((*(a2 + 163) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 55) = *(a2 + 162);
    if ((*(a2 + 165) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 56) = *(a2 + 164);
    if ((*(a2 + 167) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 57) = *(a2 + 166);
    if ((*(a2 + 571) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 75) = *(a2 + 570);
    v4 = qword_1009F9820;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 22);
      v6 = *(a1 + 33);
      v7 = *(a1 + 34);
      v8 = *(a1 + 35);
      v9 = *(a1 + 23);
      v10 = *(a1 + 47);
      v11 = *(a1 + 48);
      v15 = *(a1 + 49);
      v16 = *(a1 + 55);
      v17 = *(a1 + 56);
      v18 = *(a1 + 57);
      v19 = *(a1 + 58);
      v20 = *(a1 + 50);
      v21 = *(a1 + 59);
      v22 = *(a1 + 60);
      v23 = *(a1 + 61);
      v24 = *(a1 + 52);
      v25 = *(a1 + 53);
      v26 = *(a1 + 65);
      v27 = *(a1 + 67);
      v28 = *(a1 + 76);
      v29 = *(a1 + 90);
      v30 = *(a1 + 37);
      v31 = *(a1 + 64);
      v32 = *(a1 + 66);
      v33 = *(a1 + 92);
      v34 = *(a1 + 75);
      v12 = [NSData dataWithBytes:a1 + 100 length:16];
      v13 = CUPrintNSObjectMasked();
      *buf = 67116034;
      v36 = v5;
      v37 = 1024;
      v38 = v6;
      v39 = 1024;
      v40 = v7;
      v41 = 1024;
      v42 = v8;
      v43 = 1024;
      v44 = v9;
      v45 = 1024;
      v46 = v10;
      v47 = 1024;
      v48 = v11;
      v49 = 1024;
      v50 = v15;
      v51 = 1024;
      v52 = v16;
      v53 = 1024;
      v54 = v17;
      v55 = 1024;
      v56 = v18;
      v57 = 1024;
      v58 = v19;
      v59 = 1024;
      v60 = v20;
      v61 = 1024;
      v62 = v21;
      v63 = 1024;
      v64 = v22;
      v65 = 1024;
      v66 = v23;
      v67 = 1024;
      v68 = v24;
      v69 = 1024;
      v70 = v25;
      v71 = 1024;
      v72 = v26;
      v73 = 1024;
      v74 = v27;
      v75 = 1024;
      v76 = v28;
      v77 = 1024;
      v78 = v29;
      v79 = 1024;
      v80 = v30;
      v81 = 1024;
      v82 = v31;
      v83 = 1024;
      v84 = v32;
      v85 = 2048;
      v86 = v33;
      v87 = 1024;
      v88 = v34;
      v89 = 2112;
      v90 = v13;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Built NMI packet: {\n, ses_role: %u\n, nb_tx_ant_mask: %u\n, nb_rx_ant_mask: %u\n, nb_pkt_type: %u\n, nap_band_channel: %u\n, mms_tx_ant_mask: %u\n, mms_rx_ant_mask: %u\n, mms_sync_search_ant_mask: %u\n, mms_tx_ant_mask2: %u\n, mms_rx_ant_mask2: %u\n, mms_sync_search_ant_mask2: %u\n, mms_ant_diversity_pattern: %u\n, mms_packet_type: %u\n, mms_psr_minus_one: %u\n, mms_gap: %u\n, mms_seq_idex: %u\n, mms_num_fragments: %u\n, mms_band_channel: %u\n, nb_slot_size: %u\n, mms_slot_size: %u\n, debug_flags: 0x%x\n, interval_ms: %u\n, nb_ch_sel_mask: %u\n, nap_slot_size: %u\n, data_slot_size: %u\n, mac_addr: %llu\n, misc_setting: %hu\n, irk: %@\n}", buf, 0xB2u);
    }

    return 1;
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1004A3BD0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001B16C8(char *a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 4);
  if (v3 > 4)
  {
    if (v3 > 7)
    {
      if (v3 == 8)
      {
        if (*(a2 + 290))
        {
          v7 = *(a2 + 288);
          if (v7)
          {
            v8 = 5;
          }

          else
          {
            v8 = 4;
          }

          *a1 = v8;
          a1[1] = v7;
          a1[2] = *(a2 + 289);
          return 1;
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
        {
          sub_1004A3C04();
        }

        return 0;
      }

      if (v3 != 9)
      {
        return v2;
      }
    }

    else if ((v3 - 5) >= 2)
    {
      if (v3 == 7)
      {
        if (*(a2 + 290))
        {
          if (*(a2 + 288) == 1)
          {
            sub_1004A3C6C();
          }

          goto LABEL_17;
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
        {
          sub_1004A3C38();
        }

        return 0;
      }

      return v2;
    }

LABEL_17:
    v5 = 4;
LABEL_18:
    *a1 = v5;
    return 1;
  }

  if (v3 <= 1)
  {
    if (v3 == 1)
    {
      v5 = *(a2 + 1) != 0;
      goto LABEL_18;
    }

    if (!v3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "PRRoseProvider::populateRangingTriggerConfig got Unspecified mac mode");
    }

    return v2;
  }

  if ((v3 - 2) < 2)
  {
    goto LABEL_17;
  }

  if (v3 == 4)
  {
    if (*(a2 + 280))
    {
      a1[3] = *(a2 + 241);
      v4 = *(a2 + 240);
      a1[1] = v4;
      a1[2] = *(a2 + 242);
      if (v4)
      {
        v5 = 5;
      }

      else
      {
        v5 = 4;
      }

      goto LABEL_18;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004A3C98();
    }

    return 0;
  }

  return v2;
}

BOOL sub_1001B18A4(_BYTE *a1, uint64_t a2)
{
  v3 = *(a2 + 60);
  result = 1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      *a1 = 1;
    }

    else if (v3 == 3)
    {
      *a1 = 2;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      *a1 = 0;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1004A3CCC();
      return 0;
    }
  }

  return result;
}

void sub_1001B1944(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 56);
  if (*(a3 + 87))
  {
    v8 = *(a3 + 86);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a3 + 60);
  v10 = *(a3 + 64);
  if (*(a3 + 81))
  {
    v11 = *(a3 + 80);
  }

  else
  {
    v11 = 0;
  }

  if ((v7 - 1) >= 2)
  {
    if (v7 == 3)
    {
      v14 = *(a3 + 48);
      v12 = HIDWORD(v14);
      v16 = 1;
    }

    else
    {
      v16 = 0;
      LODWORD(v14) = 0;
      LODWORD(v12) = 0;
    }

    LODWORD(v13) = 0;
    v15 = *(a3 + 76);
LABEL_18:
    if ((v15 & 1) == 0)
    {
      v17 = 0;
      if (!v10)
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }

LABEL_23:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004A3DD0();
    }

    goto LABEL_52;
  }

  LODWORD(v12) = 0;
  v13 = *(a3 + 48);
  LODWORD(v14) = v13;
  v15 = *(a3 + 76);
  if (v7 != 2 || (*(a3 + 76) & 1) == 0)
  {
    v16 = 0;
    if (v7 == 2)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v16 = 0;
  v17 = *(a3 + 72);
  LODWORD(v12) = v17;
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_20:
  v18 = *(a3 + 68);
  if (v18 > 1.0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004A3D00();
    }

    goto LABEL_52;
  }

  v9 = (v18 * v10);
  if (*(a3 + 92) == 1 && *(a3 + 100) == 1 && *(a3 + 108) == 1)
  {
    v19 = *(a3 + 88) / 0x3E8u;
    v20 = *(a3 + 96);
    v21 = v20 / 0x3E8;
    v22 = (*(a3 + 104) * v20);
    goto LABEL_30;
  }

LABEL_29:
  LOWORD(v19) = 0;
  v22 = 0;
  LOWORD(v21) = 0;
LABEL_30:
  v23 = *(a2 + 4);
  if (v23 == 8)
  {
    if (*(a3 + 40) != 1 || (*(a3 + 36) & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004A3D34();
      }

      goto LABEL_52;
    }

    v35 = v8;
    v36 = v22;
    v37 = v21;
    v38 = v19;
    v32 = v17;
    v33 = v16;
    v39 = v9;
    v40 = v11;
    v41 = a1;
    v34 = *(a3 + 30) | (*(a3 + 32) << 16);
    if (*(a3 + 84) != 1)
    {
      goto LABEL_54;
    }

    v24 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "updating acquisition band & channel in trigger command", buf, 2u);
    }

    if ((*(a3 + 84) & 1) == 0)
    {
      sub_1000195BC();
    }

    v25 = *(a3 + 82);
    v23 = *(a2 + 4);
    v11 = v40;
    a1 = v41;
    v8 = v35;
    v22 = v36;
    v9 = v39;
    v17 = v32;
    v16 = v33;
    LOWORD(v21) = v37;
    LOWORD(v19) = v38;
  }

  else
  {
    if (v23 == 2)
    {
      if (*(a3 + 40) == 1 && (*(a3 + 29) & 1) != 0)
      {
        v35 = v8;
        v36 = v22;
        v37 = v21;
        v38 = v19;
        v32 = v17;
        v33 = v16;
        v39 = v9;
        v40 = v11;
        v41 = a1;
        v34 = *(a3 + 21);
LABEL_54:
        v25 = 0xFFFF;
        goto LABEL_55;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004A3D68();
      }

LABEL_52:
      v26 = 0;
      *a4 = 0;
      goto LABEL_53;
    }

    v34 = 0;
    v25 = 0xFFFF;
  }

  if (v23 == 4 && *(a3 + 40) == 1)
  {
    if ((*(a3 + 36) & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004A3D9C();
      }

      goto LABEL_52;
    }

    v35 = v8;
    v36 = v22;
    v37 = v21;
    v38 = v19;
    v32 = v17;
    v33 = v16;
    v39 = v9;
    v40 = v11;
    v41 = a1;
    v34 = *(a3 + 30) | (*(a3 + 32) << 16);
  }

  else
  {
    v35 = v8;
    v36 = v22;
    v37 = v21;
    v38 = v19;
    v32 = v17;
    v33 = v16;
    v39 = v9;
    v40 = v11;
    v41 = a1;
  }

LABEL_55:
  v27 = v14 | (v12 << 32);
  v28 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if ((v7 - 1) > 2)
    {
      v29 = "Ignored";
    }

    else
    {
      v29 = (&off_10099B988)[(v7 - 1)];
    }

    if (v33)
    {
      v30 = v27;
    }

    else
    {
      v30 = 0;
    }

    *buf = 67112450;
    v43 = v41;
    v44 = 2080;
    v45 = v29;
    v46 = 2048;
    if (v25 == 0xFFFF)
    {
      v31 = -1;
    }

    else
    {
      v31 = v25;
    }

    v47 = v30;
    v48 = 1024;
    v49 = v13;
    v50 = 1024;
    v51 = v32;
    v52 = 1024;
    v53 = v39;
    v54 = 1024;
    v55 = v35;
    v56 = 1024;
    v57 = (v10 / 0x3E8);
    v58 = 1024;
    v59 = v40;
    v60 = 1024;
    v61 = v38;
    v62 = 1024;
    v63 = v36;
    v64 = 1024;
    v65 = v37;
    v66 = 2048;
    v67 = v34;
    v68 = 1024;
    v69 = v31;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Built clientStartService packet: {\n  tkt: %d\n, start_time_type: %s\n, start_time_absolute_us: %llu\n, start_time_offset_us: %d\n, bt_conn_interval_ms: %d\n, start_time_uncert_us: %d\n, cross_session_offset_ms: %d\n, scheduling_interval_ms: %d\n, dither_const_ms: %d\n, secondary_scheduling_delay_ms: %d\n, secondary_start_time_uncert_us: %d\n, secondary_scheduling_interval_ms: %d\n, addr: 0x%llx\n, nb_band_ch: %d }", buf, 0x62u);
  }

  *a4 = v41;
  *(a4 + 2) = v7;
  *(a4 + 3) = v27;
  *(a4 + 11) = v39;
  *(a4 + 15) = v35;
  *(a4 + 16) = v10 / 0x3E8;
  *(a4 + 18) = v40;
  *(a4 + 19) = v38;
  *(a4 + 21) = v36;
  *(a4 + 25) = v37;
  *(a4 + 27) = v34;
  v26 = 1;
  *(a4 + 35) = v25;
LABEL_53:
  *(a4 + 37) = v26;
}

void sub_1001B1ECC(unsigned __int8 **a1@<X0>, uint64_t a2@<X8>)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A3E04();
  }

  *(a2 + 16) = 16420;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"LPEMModeOverride"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedShortValue];
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LPEM mode override: %d", buf, 8u);
    }
  }

  else
  {
    LOWORD(v6) = 0;
  }

  *(a2 + 20) = v6;
  v8 = a1[1] - *a1;
  if (v8 <= 1)
  {
    if (v8 == 1)
    {
      if (**a1 == 5)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 0;
  }

  sub_10019D500(v9, v19);
  *(a2 + 22) = sub_1001A6BA4(v19);
  *(a2 + 23) = sub_1001A6BAC(v19);
  v10 = sub_1001A6BB4(v19);
  *(a2 + 25) = 0;
  *(a2 + 24) = v10;
  v12 = *a1;
  v11 = a1[1];
  while (v12 != v11)
  {
    sub_1004281A0((a2 + 25), *v12++);
  }

  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a2 + 20);
    v15 = *(a2 + 22);
    v16 = *(a2 + 23);
    v17 = *(a2 + 24);
    v18 = *(a2 + 25);
    *buf = 67110144;
    v21 = v14;
    v22 = 1024;
    v23 = v15;
    v24 = 1024;
    v25 = v16;
    v26 = 1024;
    v27 = v17;
    v28 = 1024;
    v29 = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Built LPEM enable packet: {\n  mode: %d\n, tx_ant_mask: %d\n, rx_ant_mask: %d\n, rx_sync_search_ant_mask: %d\n, rf_channel_bitmask: %d\n}", buf, 0x20u);
  }
}

uint64_t sub_1001B2150(unsigned int a1, unsigned int a2, uint64_t a3)
{
  if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_15:
    sub_1004A3F9C();
  }

  sub_1004A3E38();
  if (!a1)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (!a2)
  {
    sub_1004A3F04();
  }

  if (a1 == a2)
  {
    sub_1004A3E6C();
  }

  v10[0] = a1;
  v10[1] = a2;
  *&v10[2] = a3;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (a1 > 3)
    {
      v7 = "Unspecified";
    }

    else
    {
      v7 = (&off_10099B9A0)[a1 - 1];
    }

    if (a2 > 3)
    {
      v8 = "Unspecified";
    }

    else
    {
      v8 = (&off_10099B9A0)[a2 - 1];
    }

    *buf = 136315650;
    v12 = v7;
    v13 = 2080;
    v14 = v8;
    v15 = 2048;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Built convert time command packet: {\n, timebaseFrom: %s\n, timebaseTo: %s\n, timeToConvertUsec: %llu\n}", buf, 0x20u);
  }

  return *v10;
}

uint64_t sub_1001B22B4(uint64_t a1)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A4034();
  }

  if ((a1 - 1) > 2)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004A4068();
    }

    v5 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      v6 = 136315650;
      v7 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Libraries/DaemonCore/Ranging/Providers/Rose/PRRoseSupervisorPacketBuilder.mm";
      v8 = 1024;
      v9 = 547;
      v10 = 2080;
      v11 = "deepSleepRequest";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:%d: assertion failure in %s", &v6, 0x1Cu);
    }

    abort();
  }

  v2 = qword_1009F9820;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (&off_10099B9B8)[a1 - 1];
    v6 = 136315138;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Built deep sleep request packet: {\n, request: %s\n}", &v6, 0xCu);
  }

  return a1;
}

id sub_1001B243C()
{
  if (qword_1009F02C8 != -1)
  {
    sub_1004A409C();
  }

  v1 = qword_1009F02C0;

  return v1;
}

void sub_1001B2480(id a1)
{
  v1 = sub_1001B2614(&OBJC_PROTOCOL___PRRangingServerProtocol);
  v2 = qword_1009F02C0;
  qword_1009F02C0 = v1;

  v3 = [NSSet alloc];
  v4 = objc_opt_class();
  v11 = [v3 initWithObjects:{v4, objc_opt_class(), 0}];
  v5 = [NSSet alloc];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 initWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  [qword_1009F02C0 setClasses:v11 forSelector:"configureForP2PRanging:options:reply:" argumentIndex:0 ofReply:0];
  [qword_1009F02C0 setClasses:v10 forSelector:"configureForP2PRanging:options:reply:" argumentIndex:1 ofReply:0];
  [qword_1009F02C0 setClasses:v11 forSelector:"startP2PRanging:reply:" argumentIndex:0 ofReply:0];
  [qword_1009F02C0 setClasses:v11 forSelector:"stopP2PRanging:reply:" argumentIndex:0 ofReply:0];
}

id sub_1001B2614(uint64_t a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:a1];
  v2 = [NSSet alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 initWithObjects:{v3, v4, objc_opt_class(), 0}];
  [v1 setClasses:v5 forSelector:"connectWithClientInfo:" argumentIndex:0 ofReply:0];

  return v1;
}

id sub_1001B26EC(uint64_t a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:a1];
  v2 = objc_opt_class();
  v3 = [NSSet setWithObjects:v2, objc_opt_class(), 0];
  v4 = [NSSet alloc];
  v5 = objc_opt_class();
  v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
  [v1 setClasses:v3 forSelector:"didReceiveNewSolutions:" argumentIndex:0 ofReply:0];
  [v1 setClass:objc_opt_class() forSelector:"didFailWithError:" argumentIndex:0 ofReply:0];
  [v1 setClasses:v6 forSelector:"remoteDevice:didChangeState:" argumentIndex:0 ofReply:0];

  return v1;
}

id sub_1001B2824()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PRBTRangingClientProtocol];
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = [v1 initWithObjects:{v2, v3, objc_opt_class(), 0}];
  v5 = [NSSet alloc];
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [[NSSet alloc] initWithObjects:{objc_opt_class(), 0}];
  [v0 setClass:objc_opt_class() forSelector:"didFailWithError:" argumentIndex:0 ofReply:0];
  [v0 setClasses:v4 forSelector:"didFetchTxPower:fromDevice:withError:" argumentIndex:0 ofReply:0];
  [v0 setClasses:v7 forSelector:"didConnectDevice:error:" argumentIndex:0 ofReply:0];
  [v0 setClasses:v7 forSelector:"didStartRangingOnDevice:withError:" argumentIndex:0 ofReply:0];
  [v0 setClasses:v7 forSelector:"didStopOwnerRangingOnDevice:withError:" argumentIndex:0 ofReply:0];
  [v0 setClasses:v8 forSelector:"didReceiveNewBTRSSI:" argumentIndex:0 ofReply:0];

  return v0;
}

id sub_1001B2A00()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PRDiagnosticsServerProtocol];
  [v0 setClass:objc_opt_class() forSelector:"sendHelloWithTimeout:reply:" argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:"getChipInfoSync:reply:" argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:"getPowerStatsWithTimeout:reply:" argumentIndex:0 ofReply:1];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v1, v2, v3, v4, objc_opt_class(), 0];
  [v0 setClasses:v5 forSelector:"getPreflightInfo:" argumentIndex:0 ofReply:1];
  [v0 setClasses:v5 forSelector:"getChipPublicKey:" argumentIndex:0 ofReply:1];
  [v0 setClasses:v5 forSelector:"setRoseGlobalConfigParams:reply:" argumentIndex:0 ofReply:0];

  return v0;
}

id sub_1001B2BA8()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PRProtobufServerProtocol];
  [v0 setClass:objc_opt_class() forSelector:"startStreamingProtobufDataForClientId:reply:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"stopStreamingProtobufDataForClientId:reply:" argumentIndex:0 ofReply:0];

  return v0;
}

id sub_1001B2C40()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PRProtobufClientProtocol];
  [v0 setClass:objc_opt_class() forSelector:"consumeProtobufBytes:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"getUniqueClientIdentifier:" argumentIndex:0 ofReply:1];

  return v0;
}

id sub_1001B2CDC()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PRRegulatoryAssistanceEndpointProtocol];
  [v0 setClass:objc_opt_class() forSelector:"injectIsoCode:" argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:"prepareForRegulatoryAssistance:" argumentIndex:0 ofReply:1];

  return v0;
}

id sub_1001B2D78()
{
  v0 = sub_1001B2614(&OBJC_PROTOCOL___PRCompanionRangingServerProtocol);
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = [v1 initWithObjects:{v2, objc_opt_class(), 0}];
  v4 = [NSSet alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v4 initWithObjects:{v5, v6, v7, v8, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:"configureForCompanionRanging:options:reply:" argumentIndex:0 ofReply:0];
  [v0 setClasses:v9 forSelector:"configureForCompanionRanging:options:reply:" argumentIndex:1 ofReply:0];
  [v0 setClasses:v3 forSelector:"startCompanionRanging:options:reply:" argumentIndex:0 ofReply:0];
  [v0 setClasses:v9 forSelector:"startCompanionRanging:options:reply:" argumentIndex:1 ofReply:0];
  [v0 setClasses:v3 forSelector:"stopCompanionRanging:reply:" argumentIndex:0 ofReply:0];
  [v0 setClasses:v3 forSelector:"recordUsageOfCompanionRanging:usageParameters:" argumentIndex:0 ofReply:0];
  [v0 setClasses:v9 forSelector:"recordUsageOfCompanionRanging:usageParameters:" argumentIndex:1 ofReply:0];

  return v0;
}

id sub_1001B2F58()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PRBTRangingServerProtocol];
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = [v1 initWithObjects:{v2, objc_opt_class(), 0}];
  v4 = [NSSet alloc];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 initWithObjects:{v5, v6, objc_opt_class(), 0}];
  [v0 setClasses:v7 forSelector:"fetchTxPower:isUT:reply:" argumentIndex:0 ofReply:0];
  [v0 setClasses:v3 forSelector:"startUTRanging:reply:" argumentIndex:0 ofReply:0];
  [v0 setClasses:v3 forSelector:"stopUTRanging:reply:" argumentIndex:0 ofReply:0];
  [v0 setClasses:v3 forSelector:"startOwnerRanging:reply:" argumentIndex:0 ofReply:0];
  [v0 setClasses:v3 forSelector:"stopOwnerRanging:reply:" argumentIndex:0 ofReply:0];

  return v0;
}

id sub_1001B30D8()
{
  v0 = sub_1001B2614(&OBJC_PROTOCOL___PRBeaconRangingProtocol);
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v1 initWithObjects:{v2, v3, v4, objc_opt_class(), 0}];
  [v0 setClasses:v5 forSelector:"startBeaconing:options:reply:" argumentIndex:1 ofReply:0];
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  [v0 setClasses:v7 forSelector:"pushBeaconAllowlist:reply:" argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t sub_1001B3880(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a1 + 16;
  *(a1 + 24) = a1 + 16;
  *(a1 + 32) = 0;
  sub_100004A08((a1 + 40), "prglobaltile.bin");
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v5[0] = off_10099BA00;
  v5[1] = a1;
  v5[3] = v5;
  sub_100254E18(a1 + 88, v3, v5);
  sub_1001B3E54(v5);

  return a1;
}

void sub_1001B3964(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001B3E54(va);
  if (*(v3 + 87) < 0)
  {
    operator delete(*v5);
  }

  if (*(v3 + 63) < 0)
  {
    operator delete(*(v3 + 40));
  }

  sub_1001B3D00(v4);

  _Unwind_Resume(a1);
}

void *sub_1001B39B8(uint64_t a1)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A40B0();
  }

  *a1 = 0;
  return sub_1001B3D00((a1 + 16));
}

uint64_t sub_1001B3A0C(uint64_t a1, double a2, long double a3)
{
  v22 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v26 = 0;
  v30 = xmmword_100561E40;
  v5 = (a1 + 87);
  v6 = (a1 + 64);
  v7 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v7 = *v6;
  }

  sub_100004A08(__p, v7);
  v8 = sub_1003033C8(__p);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG);
  if (!v8)
  {
    if (v9)
    {
      sub_1004A4454();
    }

    goto LABEL_29;
  }

  if (v9)
  {
    sub_1004A44D8(v5, v6);
  }

  v10 = v6;
  if (*v5 < 0)
  {
    v10 = *v6;
  }

  v11 = fopen(v10, "rb");
  v12 = v11;
  if (!v11)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004A4644(v5, v6);
    }

    goto LABEL_29;
  }

  sub_100255BEC(v11, &v22);
  if ((v13 & 1) == 0 || (v14 = v31, v31 > a2) || v32 <= a2)
  {
LABEL_28:
    fclose(v12);
LABEL_29:
    v18 = 0;
    goto LABEL_30;
  }

  v15 = fmod(a3, 360.0);
  if (v15 < 0.0)
  {
    v15 = v15 + 360.0;
  }

  v16 = vcvtmd_s64_f64(v15 * 10.0);
  v17 = v16 + 3600 * ((floor(a2 * 10.0) + 900.0) - 10 * v14 - 900);
  LOBYTE(__p[0]) = 0;
  if ((v17 / 8) >= DWORD2(v30))
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004A4558();
    }

    goto LABEL_28;
  }

  fseek(v12, v17 / 8, 1);
  if (fread(__p, 1uLL, 1uLL, v12) != 1)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004A45CC();
    }

    goto LABEL_28;
  }

  fclose(v12);
  v18 = (LOBYTE(__p[0]) >> (v16 & 7)) & 1;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A4608();
  }

LABEL_30:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v27);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }

  return v18;
}

void *sub_1001B3D00(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t sub_1001B3DD4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10099BA00;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001B3E08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B3E54(uint64_t a1)
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

void sub_1001B456C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _didDiscoverSample:v5];
  }
}

char *sub_1001B45E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained printableState];
    v4 = sub_10003FA2C(@"Bluetooth Sample Distributor", v3);
  }

  else
  {
    v4 = sub_10003F7DC(@"Bluetooth Sample Distributor", &__NSDictionary0__struct);
  }

  return v4;
}

void sub_1001B49AC(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _initPrivate];
  v2 = qword_1009F02D0;
  qword_1009F02D0 = v1;
}

uint64_t sub_1001B4AD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B4AF0(uint64_t a1)
{
  v2 = [*(a1 + 32) _printableState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001B4FE0(uint64_t a1)
{
  v2 = mach_continuous_time();
  v3 = sub_100005348(v2);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([*(a1 + 40) isInteresetedInSample:{v8, v13}])
        {
          [*(a1 + 40) consumeBluetoothSample:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }

  v9 = qword_1009F9820;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) count];
    v11 = mach_continuous_time();
    v12 = sub_100005348(v11);
    *buf = 134218240;
    v18 = v10;
    v19 = 2048;
    v20 = v12 - v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#btsampledistributor Read %zu samples from cache in %f seconds", buf, 0x16u);
  }
}

void sub_1001B559C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 40));

  _Unwind_Resume(a1);
}

void sub_1001B55CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = v4 - v5;
    v8 = qword_1009F9820;
    if (v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A483C();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134217984;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#btsampledistributor BT Leeching with max rate scanner activation succeeded [%0.6f s]", &v9, 0xCu);
      }

      atomic_store(1u, WeakRetained + 72);
    }
  }
}

void sub_1001B5E90(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1001B6150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1001B6174(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005288();
  v5 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = v4 - v5;
    v8 = qword_1009F9820;
    if (v3)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A4978();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 134217984;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#btsampledistributor CBDiscovery activation succeeded [%0.6f s]", &v9, 0xCu);
      }

      atomic_store(1u, WeakRetained + 48);
    }
  }
}

void sub_1001B64B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_1001B650C(id a1)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A49E8();
  }
}

void sub_1001B6550(uint64_t a1)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A4A24();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleCBDiscoveryInterrupted];
  }
}

void sub_1001B65C4(id a1, NSError *a2)
{
  v2 = a2;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A4A60();
  }
}

void sub_1001B6618(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained handleCBDiscoveryStateChanged];
  }
}

void sub_1001B667C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained handleCBDiscoverySystemOverride];
  }
}

id sub_1001B6A44(uint64_t a1)
{
  result = [*(a1 + 32) isInteresetedInSample:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 consumeBluetoothSample:v4];
  }

  return result;
}

void sub_1001B6C9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

void sub_1001B6CF0(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _didDiscoverDevice:v5];
  }
}

void sub_1001B6D6C(id a1)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A49E8();
  }
}

void sub_1001B6DB0(uint64_t a1)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A4A24();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleCBDiscoveryInterrupted];
  }
}

void sub_1001B6E24(id a1, NSError *a2)
{
  v2 = a2;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A4A60();
  }
}

void sub_1001B6E78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained handleCBDiscoveryStateChanged];
  }
}

void sub_1001B6EDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained handleCBDiscoverySystemOverride];
  }
}

void sub_1001B7448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_1001B75A4(uint64_t a1)
{
  result = [*(a1 + 32) isInterestedInSamplesForDevice:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);

    return [v3 consumeBluetoothSample:v4];
  }

  return result;
}

BOOL sub_1001B7BA8(std::string::size_type a1, std::string::size_type a2)
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v5;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Logger::tooManyLogFilesToEnumerate: dir %s prefix %s", &buf, 0x16u);
  }

  sub_1001B9424(&buf, a1);
  std::__fs::filesystem::directory_iterator::directory_iterator(&v27, &buf, 0, skip_permission_denied);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  ptr = v27.__imp_.__ptr_;
  cntrl = v27.__imp_.__cntrl_;
  if (v27.__imp_.__cntrl_)
  {
    atomic_fetch_add_explicit(&v27.__imp_.__cntrl_->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = v27.__imp_.__cntrl_;
    v26.__imp_.__ptr_ = ptr;
    v26.__imp_.__cntrl_ = cntrl;
    if (v27.__imp_.__cntrl_)
    {
      atomic_fetch_add_explicit(&v27.__imp_.__cntrl_->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_10000AD84(v9);
    }
  }

  else
  {
    v26.__imp_.__ptr_ = v27.__imp_.__ptr_;
    v26.__imp_.__cntrl_ = 0;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = v26.__imp_.__ptr_;
    if (!v26.__imp_.__ptr_)
    {
      break;
    }

    v13 = std::__fs::filesystem::directory_iterator::__dereference(&v26);
    std::__fs::filesystem::__status(&v13->__p_, 0);
    if (buf.__r_.__value_.__s.__data_[0] != 1)
    {
      goto LABEL_52;
    }

    sub_1001B7FBC(&v13->__p_, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000056BC(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      buf = __p;
    }

    v14 = *(a2 + 23);
    if (v14 >= 0)
    {
      v15 = *(a2 + 23);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v15 == -1)
      {
LABEL_61:
        sub_1001B96B4();
      }

      p_buf = buf.__r_.__value_.__r.__words[0];
      if (buf.__r_.__value_.__l.__size_ >= v15)
      {
        size = v15;
      }

      else
      {
        size = buf.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      if (v15 == -1)
      {
        goto LABEL_61;
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) >= v15)
      {
        size = v15;
      }

      else
      {
        size = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      p_buf = &buf;
    }

    if (v14 >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    if (!memcmp(p_buf, v18, size) && size == v15 && ++v10 >= 0x1F4)
    {
      v19 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
        *(__p.__r_.__value_.__r.__words + 4) = v10;
        v20 = v19;
        v21 = "Logger::tooManyLogFilesToEnumerate: TRUE - found %zu matching files (there may be more than this!)";
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (++v11 >= 0x3E8)
    {
      v22 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
        *(__p.__r_.__value_.__r.__words + 4) = v11;
        v20 = v22;
        v21 = "Logger::tooManyLogFilesToEnumerate: TRUE - found %zu files (there may be more than this!)";
LABEL_46:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, &__p, 0xCu);
      }

LABEL_47:
      v23 = 0;
      goto LABEL_49;
    }

    v23 = 1;
LABEL_49:
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if ((v23 & 1) == 0)
    {
      break;
    }

LABEL_52:
    std::__fs::filesystem::directory_iterator::__increment(&v26, 0);
  }

  if (v26.__imp_.__cntrl_)
  {
    sub_10000AD84(v26.__imp_.__cntrl_);
  }

  if (v27.__imp_.__cntrl_)
  {
    sub_10000AD84(v27.__imp_.__cntrl_);
  }

  if (!v12)
  {
    v24 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134218240;
      *(buf.__r_.__value_.__r.__words + 4) = v10;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Logger::tooManyLogFilesToEnumerate: FALSE - found %zu matches out of %zu files", &buf, 0x16u);
    }
  }

  return v12 != 0;
}

void sub_1001B7F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1001B7FBC@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100013AEC();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

void sub_1001B8084(uint64_t a1, std::string::size_type a2, std::string::size_type a3)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__pn_.__r_.__value_.__r.__words + 4) = v7;
    WORD2(buf.__pn_.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__pn_.__r_.__value_.__r.__words[1] + 6) = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Logger::deleteFilesWithoutEnumerating: dir %s prefix %s", &buf, 0x16u);
  }

  sub_1001B9424(&buf.__pn_, a2);
  std::__fs::filesystem::directory_iterator::directory_iterator(&v26, &buf, 0, skip_permission_denied);
  if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__pn_.__r_.__value_.__l.__data_);
  }

  ptr = v26.__imp_.__ptr_;
  cntrl = v26.__imp_.__cntrl_;
  if (v26.__imp_.__cntrl_)
  {
    atomic_fetch_add_explicit(&v26.__imp_.__cntrl_->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v26.__imp_.__cntrl_;
    v25.__imp_.__ptr_ = ptr;
    v25.__imp_.__cntrl_ = cntrl;
    if (v26.__imp_.__cntrl_)
    {
      atomic_fetch_add_explicit(&v26.__imp_.__cntrl_->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_10000AD84(v11);
    }
  }

  else
  {
    v25.__imp_.__ptr_ = v26.__imp_.__ptr_;
    v25.__imp_.__cntrl_ = 0;
  }

  v12 = 0;
  v13 = 0;
  while (v25.__imp_.__ptr_)
  {
    v14 = std::__fs::filesystem::directory_iterator::__dereference(&v25);
    std::__fs::filesystem::__status(&v14->__p_, 0);
    if (buf.__pn_.__r_.__value_.__s.__data_[0] != 1)
    {
      goto LABEL_60;
    }

    sub_1001B7FBC(&v14->__p_, &__p);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000056BC(&buf, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      buf = __p;
    }

    if (sub_1001B96CC(a1 + 56, &buf.__pn_.__r_.__value_.__l.__data_))
    {
      v15 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        p_buf = &buf;
        if ((buf.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p.__pn_.__r_.__value_.__l.__data_) = 136315138;
        *(__p.__pn_.__r_.__value_.__r.__words + 4) = p_buf;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "pruneLogFiles: skipping %s, which is in the FilesToKeep list", &__p, 0xCu);
      }

      v17 = 0;
      v18 = 3;
    }

    else
    {
      v19 = *(a3 + 23);
      if (v19 >= 0)
      {
        v20 = *(a3 + 23);
      }

      else
      {
        v20 = *(a3 + 8);
      }

      if ((SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v20 == -1)
        {
LABEL_68:
          sub_1001B96B4();
        }

        v22 = buf.__pn_.__r_.__value_.__r.__words[0];
        if (buf.__pn_.__r_.__value_.__l.__size_ >= v20)
        {
          size = v20;
        }

        else
        {
          size = buf.__pn_.__r_.__value_.__l.__size_;
        }
      }

      else
      {
        if (v20 == -1)
        {
          goto LABEL_68;
        }

        if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) >= v20)
        {
          size = v20;
        }

        else
        {
          size = SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]);
        }

        v22 = &buf;
      }

      if (v19 >= 0)
      {
        v23 = a3;
      }

      else
      {
        v23 = *a3;
      }

      if (memcmp(v22, v23, size) || size != v20)
      {
        goto LABEL_53;
      }

      if (SHIBYTE(v14->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_1000056BC(&__p, v14->__p_.__pn_.__r_.__value_.__l.__data_, v14->__p_.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        __p.__pn_ = v14->__p_;
      }

      sub_1001B84F4(&__p);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }

      if (++v12 > 0x1F3)
      {
        v17 = 0;
        v18 = 2;
      }

      else
      {
LABEL_53:
        v17 = ++v13 < 0x3E8;
        v18 = 2 * (v13 > 0x3E7);
      }
    }

    if (SHIBYTE(buf.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__pn_.__r_.__value_.__l.__data_);
      if (v17)
      {
        goto LABEL_60;
      }
    }

    else if (v17)
    {
      goto LABEL_60;
    }

    if (v18 != 3 && v18)
    {
      break;
    }

LABEL_60:
    std::__fs::filesystem::directory_iterator::__increment(&v25, 0);
  }

  if (v25.__imp_.__cntrl_)
  {
    sub_10000AD84(v25.__imp_.__cntrl_);
  }

  if (v26.__imp_.__cntrl_)
  {
    sub_10000AD84(v26.__imp_.__cntrl_);
  }

  v24 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__pn_.__r_.__value_.__r.__words + 4) = v12;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Logger::deleteFilesWithoutEnumerating: deleted %zu logs (there may be more than this!)", &buf, 0xCu);
  }
}

void sub_1001B845C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    sub_10000AD84(a12);
  }

  if (a14)
  {
    sub_10000AD84(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001B84F4(const char *a1)
{
  v1 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v2 = unlink(a1);
  if (v2)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(v1 + 23);
      v6 = *v1;
      v7 = __error();
      if (v5 >= 0)
      {
        v8 = v1;
      }

      else
      {
        v8 = v6;
      }

      v9 = *v7;
      v10 = 136315394;
      v11 = v8;
      v12 = 1024;
      v13 = v9;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "deleteFile: could not unlink %s, errno %d", &v10, 0x12u);
    }
  }

  return v2 == 0;
}

void sub_1001B8614(uint64_t *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v37 = +[NSFileManager defaultManager];
  if (*(a1 + 23) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = [NSString stringWithUTF8String:v6, v37];
  v8 = [v38 contentsOfDirectoryAtPath:v7 error:0];

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v9 = [v8 reverseObjectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v10)
  {
    v39 = *v48;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v48 != v39)
        {
          objc_enumerationMutation(v9);
        }

        v12 = [*(*(&v47 + 1) + 8 * i) UTF8String];
        if (v12)
        {
          sub_100004A08(&v42, v12);
          v13 = v8;
          v14 = *(a2 + 23);
          if (v14 >= 0)
          {
            v15 = *(a2 + 23);
          }

          else
          {
            v15 = a2[1];
          }

          v16 = v44;
          if ((v44 & 0x8000000000000000) != 0)
          {
            if (v15 == -1)
            {
LABEL_52:
              sub_1001B96B4();
            }

            v18 = v42;
            if (v43 >= v15)
            {
              v17 = v15;
            }

            else
            {
              v17 = v43;
            }
          }

          else
          {
            if (v15 == -1)
            {
              goto LABEL_52;
            }

            if (v44 >= v15)
            {
              v17 = v15;
            }

            else
            {
              v17 = v44;
            }

            v18 = &v42;
          }

          if (v14 >= 0)
          {
            v20 = a2;
          }

          else
          {
            v20 = *a2;
          }

          if (!memcmp(v18, v20, v17) && v17 == v15)
          {
            sub_100004A08(__p, v12);
            v23 = *(a3 + 8);
            v22 = *(a3 + 16);
            if (v23 >= v22)
            {
              v25 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a3) >> 3);
              v26 = v25 + 1;
              if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_100019B38();
              }

              v27 = 0xAAAAAAAAAAAAAAABLL * ((v22 - *a3) >> 3);
              if (2 * v27 > v26)
              {
                v26 = 2 * v27;
              }

              if (v27 >= 0x555555555555555)
              {
                v28 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v28 = v26;
              }

              v51[4] = a3;
              if (v28)
              {
                sub_10019A0A8(a3, v28);
              }

              v29 = 24 * v25;
              v30 = *__p;
              *(v29 + 16) = v41;
              *v29 = v30;
              __p[1] = 0;
              v41 = 0;
              __p[0] = 0;
              v31 = 24 * v25 + 24;
              v32 = *(a3 + 8) - *a3;
              v33 = (24 * v25 - v32);
              memcpy(v33, *a3, v32);
              v34 = *a3;
              *a3 = v33;
              *(a3 + 8) = v31;
              v35 = *(a3 + 16);
              *(a3 + 16) = 0;
              v51[2] = v34;
              v51[3] = v35;
              v51[0] = v34;
              v51[1] = v34;
              sub_1001B97B4(v51);
              v36 = SHIBYTE(v41);
              *(a3 + 8) = v31;
              if (v36 < 0)
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              v24 = *__p;
              *(v23 + 16) = v41;
              *v23 = v24;
              *(a3 + 8) = v23 + 24;
            }

            v16 = v44;
          }

          if (v16 < 0)
          {
            operator delete(v42);
          }

          v8 = v13;
        }

        else
        {
          v19 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004A4B40(&buf, v46, v19);
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v10);
  }
}

void sub_1001B8978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_10019A240(&a17);

  _Unwind_Resume(a1);
}

BOOL sub_1001B8A14(const char *a1, timespec *a2, off_t *a3)
{
  v5 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v6 = stat(a1, &v13);
  if (v6)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(v5 + 23);
      v10 = *v5;
      v11 = *__error();
      if (v9 >= 0)
      {
        v12 = v5;
      }

      else
      {
        v12 = v10;
      }

      *buf = 136315394;
      v15 = v12;
      v16 = 1024;
      v17 = v11;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "getFileModificationTimeAndSize: could not stat %s, errno %d", buf, 0x12u);
    }
  }

  else
  {
    *a2 = v13.st_mtimespec;
    *a3 = v13.st_size;
  }

  return v6 == 0;
}

void sub_1001B8B58(uint64_t a1)
{
  v2 = (a1 + 31);
  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_13:
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A4C54(v6);
    }

    return;
  }

  if (!*(a1 + 31))
  {
    goto LABEL_13;
  }

LABEL_3:
  v3 = (a1 + 8);
  __ec.__val_ = 0;
  __ec.__cat_ = std::system_category();
  v4 = sub_1001B9424(&buf, (v2 - 23));
  std::__fs::filesystem::__status(v4, &__ec);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (v51 && v51 != 255 && v51 == 2)
  {
    if (sub_1001B7BA8((v2 - 23), a1 + 32))
    {
      sub_1001B8084(a1, (v2 - 23), a1 + 32);
      return;
    }

    if (clock_gettime(_CLOCK_REALTIME, &__tp))
    {
      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = __error();
        sub_1004A4C08(v8, &buf, v7);
      }

      return;
    }

    if (__tp.tv_sec > 1209600)
    {
      v43 = __tp.tv_sec - 1209600;
    }

    else
    {
      v9 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
        *(buf.__r_.__value_.__r.__words + 4) = __tp.tv_sec;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "pruneLogFiles: timespecNow too small to use: %ld", &buf, 0xCu);
      }

      v43 = 0;
    }

    sub_1001B8614((v2 - 23), (a1 + 32), &v48);
    v10 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (&v49[-v48] >> 3));
    if (v49 == v48)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    sub_1001B9848(v48, v49, __p, v11, 1);
    v46 = 0;
    v12 = v48;
    v13 = v49;
    if (v48 == v49)
    {
LABEL_87:
      buf.__r_.__value_.__r.__words[0] = &v48;
      sub_10019A240(&buf);
      return;
    }

    v42 = 0;
    v14 = 0;
    while (sub_1001B96CC(a1 + 56, v12))
    {
      v15 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v12;
        if (*(v12 + 23) < 0)
        {
          v16 = *v12;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "pruneLogFiles: skipping %s, which is in the FilesToKeep list", &buf, 0xCu);
      }

LABEL_67:
      v12 += 24;
      if (v12 == v13)
      {
        goto LABEL_87;
      }
    }

    v17 = v14;
    if (*(a1 + 31) >= 0)
    {
      v18 = *(a1 + 31);
    }

    else
    {
      v18 = *(a1 + 16);
    }

    sub_100175C6C(&buf, v18 + 1);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    if (v18)
    {
      if (*v2 >= 0)
      {
        v20 = v2 - 23;
      }

      else
      {
        v20 = *v3;
      }

      memmove(p_buf, v20, v18);
    }

    *(&p_buf->__r_.__value_.__l.__data_ + v18) = 47;
    v21 = *(v12 + 23);
    if (v21 >= 0)
    {
      v22 = v12;
    }

    else
    {
      v22 = *v12;
    }

    if (v21 >= 0)
    {
      v23 = *(v12 + 23);
    }

    else
    {
      v23 = *(v12 + 8);
    }

    v24 = std::string::append(&buf, v22, v23);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v45 = v24->__r_.__value_.__r.__words[2];
    *__p = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v14 = v17;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (sub_1001B8A14(__p, &v47, &v46))
    {
      v26 = v46;
      v27 = v46 + v42;
      v28 = qword_1009F9820;
      v29 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
      tv_sec = v47.tv_sec;
      if (v29)
      {
        v31 = __p;
        if (v45 < 0)
        {
          v31 = __p[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
        *(buf.__r_.__value_.__r.__words + 4) = v31;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v47.tv_sec;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
        v54 = v43;
        v55 = 2048;
        v56 = v26;
        v57 = 2048;
        v58 = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "pruneLogFiles: looking at %s, modTime %ld floorTime %ld size %lld new total %lld", &buf, 0x34u);
      }

      if (tv_sec >= v43)
      {
        if (v17 < 250)
        {
          if (v26)
          {
            v37 = v27;
            if (v27 >= 314572801 && sub_1001B84F4(__p))
            {
              v14 = (v17 + 1);
              v38 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
              {
                v39 = __p;
                if (v45 < 0)
                {
                  v39 = __p[0];
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                *(buf.__r_.__value_.__r.__words + 4) = v39;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "pruneLogFiles: deleted due to size: %s", &buf, 0xCu);
              }
            }

            else
            {
              v14 = (v17 + 1);
            }

            v42 = v37;
            goto LABEL_65;
          }

          v32 = (v17 + 1);
          sub_1001B84F4(__p);
          v40 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v41 = __p;
            if (v45 < 0)
            {
              v41 = __p[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
            *(buf.__r_.__value_.__r.__words + 4) = v41;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "pruneLogFiles: deleted due to zero size: %s", &buf, 0xCu);
          }
        }

        else
        {
          v32 = (v17 + 1);
          sub_1001B84F4(__p);
          v35 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v36 = __p;
            if (v45 < 0)
            {
              v36 = __p[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = v36;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            v14 = (v17 + 1);
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v17 + 1;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "pruneLogFiles: deleted due to num files: %s num files %d", &buf, 0x12u);
            goto LABEL_65;
          }
        }
      }

      else
      {
        v32 = (v17 + 1);
        sub_1001B84F4(__p);
        v33 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v34 = __p;
          if (v45 < 0)
          {
            v34 = __p[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
          *(buf.__r_.__value_.__r.__words + 4) = v34;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = tv_sec;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
          v54 = v43;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "pruneLogFiles: deleted due to age %s fileTime %ld targetTime %ld", &buf, 0x20u);
        }
      }

      v14 = v32;
    }

LABEL_65:
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_67;
  }

  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A4B80(v2, v2 - 23, v5);
  }
}