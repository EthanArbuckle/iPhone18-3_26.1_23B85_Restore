void sub_1006EA538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006EA56C(uint64_t a1, uint64_t a2)
{
  if (qword_100B512E8 != -1)
  {
    sub_100863F8C();
  }

  v3 = off_100B512E0;

  return sub_1006EA5C0(v3, a2, a2);
}

uint64_t sub_1006EA5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 24);
  v5 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "unknown";
    v7 = *(a1 + 120);
    *buf = 136447235;
    if (!a3)
    {
      v6 = "disallow";
    }

    if (a3 == 1)
    {
      v6 = "allow";
    }

    v14 = v6;
    v15 = 2048;
    v16 = a3;
    v17 = 2160;
    v18 = 1752392040;
    v19 = 1041;
    v20 = 6;
    v21 = 2097;
    v22 = v7 + 128;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User responded to security alert notification with %{public}s (%ld) button for device %{private,bluetooth:BD_ADDR,mask.hash}.6P", buf, 0x30u);
  }

  if (!a3)
  {
    v8 = 2;
    goto LABEL_11;
  }

  if (a3 == 1)
  {
    v8 = 1;
LABEL_11:
    sub_10053CFFC(*(a1 + 120), v8);
    goto LABEL_14;
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_100864138();
  }

LABEL_14:
  v10 = *(a1 + 112);
  v9 = (a1 + 112);
  CFRelease(v10);
  *v9 = 0;
  v9[1] = 0;
  return sub_1000088CC(v12);
}

void sub_1006EA75C(int *a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DE460();
  }

  v3 = *a1;
  v4 = *(a1 + 2);
  v2 = sub_1000E6554(off_100B508E8, &v3, 1);
  if (qword_100B512E8 != -1)
  {
    sub_100864178();
  }

  sub_1006E96DC(off_100B512E0, v2);
}

void sub_1006EA80C(uint64_t a1)
{
  v2 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 141558531;
    v4 = 1752392040;
    v5 = 1041;
    v6 = 6;
    v7 = 2097;
    v8 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Secure-Simple-Pairing has started on device %{private,bluetooth:BD_ADDR,mask.hash}.6P", &v3, 0x1Cu);
  }
}

void sub_1006EA8D4(uint64_t a1, uint64_t a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DE460();
  }

  LODWORD(__p[0]) = *a1;
  WORD2(__p[0]) = *(a1 + 4);
  v4 = sub_1000E6554(off_100B508E8, __p, 1);
  v5 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      sub_1000E5A58(v4, __p);
      if (v10 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 67109378;
      v12 = a2;
      v13 = 2082;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pairing has completed with result %{bluetooth:OI_STATUS}u on device %{public}s", buf, 0x12u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 67109378;
      v12 = a2;
      v13 = 2082;
      v14 = "NULL";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pairing has completed with result %{bluetooth:OI_STATUS}u on device %{public}s", buf, 0x12u);
    }
  }

  if (a2)
  {
    if (qword_100B50F88 != -1)
    {
      sub_100863FC8();
    }

    v7 = off_100B50F80;
    if (qword_100B50AA0 != -1)
    {
      sub_100863F3C();
    }

    v8 = sub_1000DD584(off_100B50A98, a2, 10000);
    sub_1000E5328(v7, v4, v8);
  }
}

void sub_1006EAAB4(uint64_t a1)
{
  v2 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 141558531;
    v5 = 1752392040;
    v6 = 1041;
    v7 = 6;
    v8 = 2097;
    v9 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received IO Capability request for device %{private,bluetooth:BD_ADDR,mask.hash}.6P", &v4, 0x1Cu);
  }

  if (qword_100B512E8 != -1)
  {
    sub_100864178();
  }

  v3 = *(off_100B512E0 + 108);
  sub_1006E9A10(off_100B512E0, a1);
  sub_1002FF43C(0, a1, v3);
}

BOOL sub_1006EABC0(int *a1, uint64_t a2)
{
  v4 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558531;
    v13 = 1752392040;
    v14 = 1041;
    v15 = 6;
    v16 = 2097;
    v17 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Link key requested for device %{private,bluetooth:BD_ADDR,mask.hash}.6P", buf, 0x1Cu);
  }

  if (qword_100B508F0 != -1)
  {
    sub_100864110();
  }

  *buf = *a1;
  LOWORD(v13) = *(a1 + 2);
  v5 = sub_1000E6554(off_100B508E8, buf, 1);
  v10 = 0uLL;
  v11 = 0;
  sub_1006D1B74(&v10);
  if (qword_100B512E8 != -1)
  {
    sub_100864178();
  }

  if (!sub_1006E7E2C(off_100B512E0, v5, &v10))
  {
    v6 = *a1;
    *(a2 + 4) = *(a1 + 2);
    *a2 = v6;
    *(a2 + 6) = *nullsub_21(&v10);
    *(a2 + 24) = sub_1006D1BC0(&v10);
    v7 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558531;
      v13 = 1752392040;
      v14 = 1041;
      v15 = 6;
      v16 = 2097;
      v17 = a1;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found link key for device %{private,bluetooth:BD_ADDR,mask.hash}.6P", buf, 0x1Cu);
    }
  }

  v8 = sub_1006D1BDC(&v10);
  nullsub_21(&v10);
  return !v8;
}

uint64_t sub_1006EADE0(uint64_t a1, __n128 *a2, unsigned __int32 a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DE460();
  }

  *v11 = *a1;
  *&v11[4] = *(a1 + 4);
  v6 = sub_1000E6554(off_100B508E8, v11, 1);
  v14 = 0uLL;
  v15 = 0;
  sub_1006D1BB0(&v14, a2, a3);
  if (qword_100B512E8 != -1)
  {
    sub_100864178();
  }

  v7 = sub_1006E7F2C(off_100B512E0, v6, &v14, 0);
  v8 = qword_100BCE940;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1008641A0();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 141558531;
      *&v11[4] = 1752392040;
      *&v11[12] = 1041;
      *&v11[14] = 6;
      v12 = 2097;
      v13 = a1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "New link key created for device %{private,bluetooth:BD_ADDR,mask.hash}.6P", v11, 0x1Cu);
    }

    sub_1000DEEA4(v6, v11);
    if (SBYTE3(v13) < 0)
    {
      v9 = *&v11[8];
      operator delete(*v11);
      if (v9)
      {
        return nullsub_21(&v14);
      }
    }

    else if (BYTE3(v13))
    {
      return nullsub_21(&v14);
    }

    if (qword_100B50DB8 != -1)
    {
      sub_100864210();
    }

    sub_1005C76B8(off_100B50DB0);
  }

  return nullsub_21(&v14);
}

void sub_1006EAFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  nullsub_21(va);
  _Unwind_Resume(a1);
}

void sub_1006EAFDC(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DE460();
  }

  LODWORD(__p[0]) = *a1;
  WORD2(__p[0]) = *(a1 + 4);
  v2 = sub_1000E6554(off_100B508E8, __p, 1);
  v3 = qword_100BCE940;
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v2, __p);
      v4 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received a new pincode request for device %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v5 = sub_1002413D0(a1);
    if (v5)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100864110();
      }

      sub_10056B7FC(off_100B508E8, v2, v5);
      sub_1000DEEA4(v2, __p);
      if (v10 < 0)
      {
        v6 = v5 & 0x1F00;
        v7 = __p[1];
        operator delete(__p[0]);
        if (v6 != 256 || v7)
        {
          goto LABEL_26;
        }
      }

      else if ((v5 & 0x1F00) != 0x100 || v10)
      {
        goto LABEL_26;
      }

      v8 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Pairing request coming from a computer without a name - try and get the name", __p, 2u);
      }

      if (qword_100B50DB8 != -1)
      {
        sub_100864210();
      }

      sub_1005C76B8(off_100B50DB0);
    }

LABEL_26:
    if (qword_100B50F88 != -1)
    {
      sub_100863FC8();
    }

    sub_1006E6AE0(__p, v2, 4);
    sub_1006DD018();
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_100864238();
  }
}

void sub_1006EB260(uint64_t a1, int a2, int a3, char a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DE460();
  }

  LODWORD(__p[0]) = *a1;
  WORD2(__p[0]) = *(a1 + 4);
  v7 = sub_1000E6554(off_100B508E8, __p, 1);
  v8 = qword_100BCE940;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a3 ? "numeric comparison" : "user confirmation";
      sub_1000E5A58(v7, __p);
      v10 = v16 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v18 = v9;
      v19 = 2082;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received a new %s request for device %{public}s", buf, 0x16u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v11 = sub_1002413D0(a1);
    if (v11)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100864110();
      }

      sub_10056B7FC(off_100B508E8, v7, v11);
      sub_1000DEEA4(v7, __p);
      if (v16 < 0)
      {
        v12 = __p[1];
        operator delete(__p[0]);
        if ((v11 & 0x1F00) != 0x100 || v12)
        {
          goto LABEL_29;
        }
      }

      else if ((v11 & 0x1F00) != 0x100 || v16)
      {
        goto LABEL_29;
      }

      v13 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Pairing request coming from a computer without a name - try and get the name", __p, 2u);
      }

      if (qword_100B50DB8 != -1)
      {
        sub_100864210();
      }

      sub_1005C76B8(off_100B50DB0);
    }

LABEL_29:
    if (qword_100B50F88 != -1)
    {
      sub_100863FC8();
    }

    sub_1006E6CC0(__p, v7, a2, a3, a4);
    sub_1006DD108();
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_100864238();
  }
}

void sub_1006EB508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nullsub_629(va);
  _Unwind_Resume(a1);
}

void sub_1006EB524(uint64_t a1)
{
  v2 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 141558531;
    v4 = 1752392040;
    v5 = 1041;
    v6 = 6;
    v7 = 2097;
    v8 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received a passkey request for device %{private,bluetooth:BD_ADDR,mask.hash}.6P", &v3, 0x1Cu);
  }

  sub_1002FE734(0, a1);
}

void sub_1006EB5FC(uint64_t a1, int a2)
{
  v4 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 141558787;
    v6 = 1752392040;
    v7 = 1041;
    v8 = 6;
    v9 = 2097;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received key-press request for device %{private,bluetooth:BD_ADDR,mask.hash}.6P with type %d", &v5, 0x22u);
  }
}

void sub_1006EB6DC(uint64_t a1, int a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_1000DE460();
  }

  LODWORD(__p[0]) = *a1;
  WORD2(__p[0]) = *(a1 + 4);
  v4 = sub_1000E6554(off_100B508E8, __p, 1);
  v5 = qword_100BCE940;
  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v4, __p);
      v6 = v8 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received a new passkey display request for device %{public}s", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B50F88 != -1)
    {
      sub_100863FC8();
    }

    sub_1006E6EB4(__p, v4, a2);
    sub_1006DD1F8();
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_100864238();
  }
}

void sub_1006EB860(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nullsub_630(va);
  _Unwind_Resume(a1);
}

void sub_1006EB87C(int a1, uint64_t a2)
{
  v4 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 141558787;
    v6 = 1752392040;
    v7 = 1041;
    v8 = 6;
    v9 = 2097;
    v10 = a2;
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received encryption refresh for device %{private,bluetooth:BD_ADDR,mask.hash}.6P with status %{bluetooth:OI_STATUS}u", &v5, 0x22u);
  }
}

void sub_1006EB95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 141559299;
    *v16 = 1752392040;
    *&v16[8] = 1041;
    v17 = 6;
    v18 = 2097;
    v19 = a2;
    v20 = 1024;
    v21 = a1;
    v22 = 1024;
    v23 = a3;
    v24 = 1024;
    v25 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received encryption change for device %{private,bluetooth:BD_ADDR,mask.hash}.6P with status %{bluetooth:OI_STATUS}u mode:%d keySize:%d", &v15, 0x2Eu);
  }

  if (a2)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100864110();
    }

    v15 = *a2;
    *v16 = *(a2 + 4);
    v9 = sub_1000E6554(off_100B508E8, &v15, 1);
    if (v9)
    {
      v10 = v9;
      if (qword_100B50F88 != -1)
      {
        sub_100863FC8();
      }

      sub_1006DEEA8(off_100B50F80, v10, a1, a3);
      if (a3 && a4 != 255)
      {
        if (!sub_10053CC6C(v10))
        {
          v11 = qword_100BCE940;
          if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
          {
            v15 = 67109120;
            *v16 = a4;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Initializing EncryptionKeySize to %d", &v15, 8u);
          }

          sub_10053CCBC(v10, a4);
        }

        if (!sub_10053CE34(v10))
        {
          v12 = qword_100BCE940;
          if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
          {
            v15 = 67109120;
            *v16 = a3;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Initializing EncryptionMode to %d", &v15, 8u);
          }

          sub_10053CE84(v10, a3);
        }

        if (!sub_1006EBD64(v10, a2, a4) && !sub_1006EBF8C(v10, a2, a3))
        {
          sub_10053CCBC(v10, a4);
          sub_10053CE84(v10, a3);
          sub_1006EC0AC(v10, a2, a4);
        }

        return;
      }

      v13 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 67109376;
        *v16 = a3;
        *&v16[4] = 1024;
        *&v16[6] = a4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_encryptChange: Skipping setEncryptionKeySize setEncryptionMode. encryptionMode = %d, keySize = %d", &v15, 0xEu);
      }
    }

    if (!a1 && a3)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100864110();
      }

      v15 = *a2;
      *v16 = *(a2 + 4);
      v14 = sub_1000E6554(off_100B508E8, &v15, 1);
      if (sub_10024DF64(sub_1006EC61C, v14 + 128))
      {
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          sub_1008642A8();
        }
      }

      else if (v14 && sub_1006EBF8C(v14, a2, a3))
      {
        sub_10053CE84(v14, a3);
      }
    }
  }
}

uint64_t sub_1006EBD64(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = sub_10053CDEC(a1);
  v7 = sub_10000F034();
  v9 = v6 > a3 && v6 != 255 && a3 < 7;
  (*(*v7 + 680))();
  if (!v9)
  {
    return 0;
  }

  v10 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    v15 = 141559043;
    v16 = 1752392040;
    v17 = 1041;
    v18 = 6;
    v19 = 2097;
    v20 = a2;
    v21 = 1024;
    v22 = v6;
    v23 = 1024;
    v24 = a3;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Encryption key size downgraded for device %{private,bluetooth:BD_ADDR,mask.hash}.6P from %u to %u. Disconnecting device.", &v15, 0x28u);
  }

  v11 = sub_10000C798();
  if (((*(*v11 + 352))(v11) & 1) != 0 || (v12 = sub_10000C798(), (*(*v12 + 416))(v12)))
  {
    v13 = sub_10000E92C();
    if ((*(*v13 + 8))(v13))
    {
      sub_100304C44();
    }
  }

  sub_10023BD60(a1 + 128);
  return 181;
}

uint64_t sub_1006EBF8C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = sub_10053CFB4(a1);
  result = 0;
  if (v6 > a3 && v6 != 255)
  {
    v8 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      v9 = 141559043;
      v10 = 1752392040;
      v11 = 1041;
      v12 = 6;
      v13 = 2097;
      v14 = a2;
      v15 = 1024;
      v16 = v6;
      v17 = 1024;
      v18 = a3;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Encryption mode downgraded for device %{private,bluetooth:BD_ADDR,mask.hash}.6P from %u to %u. Disconnecting device.", &v9, 0x28u);
    }

    sub_10023BD60(a1 + 128);
    return 181;
  }

  return result;
}

void sub_1006EC0AC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 6)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100864318();
    }

    v5 = sub_10053D064(a1);
    if (v5)
    {
      if (v5 == 2)
      {
        v7 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 141558531;
          *&buf[4] = 1752392040;
          *&buf[12] = 1041;
          *&buf[14] = 6;
          *&buf[18] = 2097;
          *&buf[20] = a2;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User has disallowed to connect to the low security device %{private,bluetooth:BD_ADDR,mask.hash}.6P", buf, 0x1Cu);
        }

        sub_10023BD60(a1 + 128);
      }

      else if (v5 == 1)
      {
        v6 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 141558531;
          *&buf[4] = 1752392040;
          *&buf[12] = 1041;
          *&buf[14] = 6;
          *&buf[18] = 2097;
          *&buf[20] = a2;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User has allowed to connect to the low security device %{private,bluetooth:BD_ADDR,mask.hash}.6P", buf, 0x1Cu);
        }
      }
    }

    else
    {
      v8 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558531;
        *&buf[4] = 1752392040;
        *&buf[12] = 1041;
        *&buf[14] = 6;
        *&buf[18] = 2097;
        *&buf[20] = a2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Show security alert to user for the low security device %{private,bluetooth:BD_ADDR,mask.hash}.6P", buf, 0x1Cu);
      }

      sub_10023BD60(a1 + 128);
      memset(buf, 0, 24);
      v9 = sub_10000C798();
      if ((*(*v9 + 352))(v9))
      {
        v10 = sub_10000C798();
        if ((*(*v10 + 400))(v10))
        {
          v11 = "iPod";
        }

        else
        {
          v12 = sub_10000C798();
          if ((*(*v12 + 392))(v12))
          {
            v11 = "iPad";
          }

          else
          {
            v11 = "iPhone";
          }
        }

        std::string::assign(buf, v11);
        v31 = 0uLL;
        v32 = 0;
        sub_1000DEEA4(a1, &v26);
        v13 = std::string::insert(&v26, 0, "");
        v14 = *&v13->__r_.__value_.__l.__data_;
        v27.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&v27.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        v15 = std::string::append(&v27, "");
        v16 = *&v15->__r_.__value_.__l.__data_;
        v28.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
        *&v28.__r_.__value_.__l.__data_ = v16;
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
        v17 = std::string::append(&v28, " is trying to connect using an unsecured Bluetooth connection. Unsecured Bluetooth accessories can be used to control your ");
        v18 = *&v17->__r_.__value_.__l.__data_;
        v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v29.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        if (buf[23] >= 0)
        {
          v19 = buf;
        }

        else
        {
          v19 = *buf;
        }

        if (buf[23] >= 0)
        {
          v20 = buf[23];
        }

        else
        {
          v20 = *&buf[8];
        }

        v21 = std::string::append(&v29, v19, v20);
        v22 = *&v21->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v23 = std::string::append(&v30, " or gain access to your data.");
        v24 = *&v23->__r_.__value_.__l.__data_;
        v32 = v23->__r_.__value_.__r.__words[2];
        v31 = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        if (qword_100B512E8 != -1)
        {
          sub_100864178();
        }

        v25 = off_100B512E0;
        sub_100007E30(&v30, "Unsecured Bluetooth Connection Request");
        sub_1006EA328(v25, a1, 0, &v30, &v31);
        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v32) < 0)
        {
          operator delete(v31);
        }
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }
}

void sub_1006EC550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006EC61C(int a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_10086439C();
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    sub_10023DC00(a2, &v8);
    if (qword_100B508F0 != -1)
    {
      sub_100864110();
    }

    v6 = v8;
    v7 = v9;
    v4 = sub_1000E6554(off_100B508E8, &v6, 1);
    if (v4)
    {
      v5 = v4;
      if (sub_1006EBD64(v4, &v8, a3))
      {
        sub_10053CCBC(v5, a3);
        sub_1006EC0AC(v5, &v8, a3);
      }
    }
  }
}

uint64_t sub_1006EC70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a1;
  v12[1] = a2;
  v25 = xmmword_1008A5370;
  v4 = sub_100238000(v12);
  v11[1] = &v25;
  v11[0] = 1048579;
  if (a3)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100864110();
    }

    *buf = *a3;
    LOWORD(v14) = *(a3 + 4);
    v5 = 1;
    v6 = sub_1000E6554(off_100B508E8, buf, 1);
    if (v6)
    {
      v5 = sub_10053E600(v6);
    }
  }

  else
  {
    v5 = 1;
  }

  v7 = 0;
  if (v5 && (v4 - 4099) <= 0xFFFFFFFC)
  {
    if (sub_100237F64(v12, v11))
    {
      v7 = 0;
    }

    else
    {
      v7 = 2;
    }
  }

  v8 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 1752392040;
    v9 = "not enforcing";
    v15 = 1041;
    *buf = 141559299;
    v16 = 6;
    if (v5)
    {
      v9 = "enforcing";
    }

    v17 = 2097;
    v18 = a3;
    v19 = 1024;
    v20 = v4;
    v21 = 1024;
    v22 = v7;
    v23 = 2080;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device %{private,bluetooth:BD_ADDR,mask.hash}.6P running UUID 0x%x has security level %d and %s", buf, 0x32u);
  }

  return v7;
}

void sub_1006EC9B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1006EC9B0(a1, *a2);
    sub_1006EC9B0(a1, a2[1]);
    nullsub_21(a2 + 5);

    operator delete(a2);
  }
}

void *sub_1006ECA74(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void *sub_1006ECB44(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_1006ECC14();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
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

char **sub_1006ECC94(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      nullsub_21(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1006ECDB0(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_10002717C(a1, v4);
  nullsub_21(v4 + 5);
  operator delete(v4);
  return 1;
}

uint64_t sub_1006ECF0C(uint64_t a1, uint64_t a2, __int16 a3)
{
  *a1 = &off_100B09178;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 37) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  sub_1006ECF98(a1);
  *(a1 + 16) = a3;
  *(a1 + 8) = a2;
  return a1;
}

void sub_1006ECF7C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    *(v1 + 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006ECF98(uint64_t a1)
{
  v2 = mach_absolute_time();
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v2;
  *(a1 + 49) = 0;
  if (qword_100B50940 != -1)
  {
    sub_10086440C();
  }

  v3 = 0;
  if (sub_10062FF34(off_100B50938, 0, 0))
  {
    if (qword_100B50940 != -1)
    {
      sub_10086440C();
    }

    sub_10063005C(off_100B50938, v5);
    v3 = v5[1];
    if (v5[0])
    {
      sub_1003A898C(v5[0], a1);
      goto LABEL_9;
    }
  }

  v4 = qword_100BCE8D0;
  if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
LABEL_9:
    if (!v3)
    {
      return;
    }

    goto LABEL_10;
  }

  sub_100864420(v4);
  if (!v3)
  {
    return;
  }

LABEL_10:
  sub_100117644(v3);
}

void sub_1006ED078(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100117644(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006ED094(uint64_t a1)
{
  *a1 = &off_100B09178;
  sub_1006ED10C(a1);
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1006ED0F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    *(v1 + 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006ED10C(uint64_t a1)
{
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (qword_100B50940 != -1)
  {
    sub_10086440C();
  }

  v2 = 0;
  v3 = 0;
  sub_10063005C(off_100B50938, &v2);
  if (v2)
  {
    sub_10007A3F0(v2 + 128, a1);
  }

  if (qword_100B50940 != -1)
  {
    sub_100864464();
  }

  sub_10063007C(off_100B50938, 0, 0);
  if (v3)
  {
    sub_100117644(v3);
  }
}

void sub_1006ED1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100117644(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006ED1D0(uint64_t a1)
{
  sub_1006ED094(a1);

  operator delete();
}

uint64_t sub_1006ED208(uint64_t result)
{
  v1 = *(result + 18);
  if ((v1 + 1) <= 0x63u)
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 18) = v2;
  return result;
}

void sub_1006ED224(uint64_t a1, uint64_t a2, int a3)
{
  v5 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Audio Timesync: TimeSync Notification %d ", v6, 8u);
  }

  *(a1 + 49) = a3;
}

BOOL sub_1006ED2D8(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = a2 > a3 || a2 > a4;
  if (v5)
  {
    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218496;
      v12 = a2;
      v13 = 2048;
      v14 = a3;
      v15 = 2048;
      v16 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: Audio Timesync: Audio Tx complete Timestamp wrapped Previous TS=%llu First in the queue TS=%llu Last in the Queue TS=%llu", &v11, 0x20u);
    }
  }

  return v5;
}

void sub_1006ED3C0(uint64_t a1, unsigned int a2, uint64_t a3, char a4, uint64_t *a5)
{
  v5 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v17 = 0;
    v18 = 0;
    if (qword_100B50940 != -1)
    {
      sub_10086440C();
    }

    v10 = sub_10063005C(off_100B50938, &v17);
    if (v17 && (a4 & 0x80) == 0 && (*(a1 + 49) & 1) != 0)
    {
      sub_1006ED660(a1, a2, 0, 0, a5, 0, v5);
    }

    else
    {
      if (*(a1 + 24) != 0.0)
      {
        sub_1006ED58C(v10, *(a1 + 16), 0, 0);
        *(a1 + 32) = 0;
        *(a1 + 24) = 0;
      }

      v11 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v12 = "No";
        if (*(a1 + 49))
        {
          v13 = "Yes";
        }

        else
        {
          v13 = "No";
        }

        *buf = 136446722;
        v20 = v13;
        if (a4 < 0)
        {
          v12 = "Yes";
        }

        v21 = 1024;
        v22 = v5;
        v23 = 2082;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Warning: Audio Timesync: Audio Tx not processed, Timesync Engine Ready=%{public}s number of enqueued pacekts=%u, overflow: %{public}s", buf, 0x1Cu);
      }

      v14 = *(a1 + 18);
      v15 = v14 >= v5;
      v16 = v14 - v5;
      if (v15)
      {
        *(a1 + 18) = v16;
      }
    }

    if (v18)
    {
      sub_100117644(v18);
    }
  }
}

void sub_1006ED56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100117644(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006ED58C(uint64_t a1, __int16 a2, int a3, int a4)
{
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    v4 = a4 == 0;
  }

  v5 = v4;
  if (v4)
  {
    v6 = a4;
    v9 = sub_1000DAB84();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1006EE06C;
    v13[3] = &unk_100AFEBE0;
    v15 = a2;
    v14 = a3;
    v16 = v6;
    sub_10000CA94(v9, v13);
  }

  else
  {
    v10 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_10086448C(v10);
    }
  }

  return v5;
}

_BYTE *sub_1006ED660(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, unsigned int a7)
{
  v37 = 0;
  sub_1000216B4(&v37);
  v11 = sub_1000E1FE8(*(a1 + 8) + 128);
  sub_100022214(&v37);
  if (v11)
  {
    v12 = *v11;
  }

  else
  {
    v12 = 0xFFFF;
  }

  if (a2)
  {
    v13 = 0;
    do
    {
      v14 = *(a5 + 4);
      if (v12 == v14)
      {
        v15 = *(a1 + 80);
        v16 = *(a1 + 88);
        if (v15 >= v16)
        {
          v21 = *(a1 + 72);
          v22 = 0x2E8BA2E8BA2E8BA3 * (v15 - v21);
          v23 = v22 + 1;
          if ((v22 + 1) > 0x1745D1745D1745D1)
          {
            sub_1000C7698();
          }

          v24 = 0x2E8BA2E8BA2E8BA3 * (v16 - v21);
          if (2 * v24 > v23)
          {
            v23 = 2 * v24;
          }

          if (v24 >= 0xBA2E8BA2E8BA2E8)
          {
            v25 = 0x1745D1745D1745D1;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            sub_1006EEA88(a1 + 72, v25);
          }

          v26 = 11 * v22;
          v27 = *a5;
          *(v26 + 7) = *(a5 + 7);
          *v26 = v27;
          v18 = 11 * v22 + 11;
          v28 = *(a1 + 72);
          v29 = *(a1 + 80) - v28;
          v30 = 11 * v22 - v29;
          memcpy((v26 - v29), v28, v29);
          v31 = *(a1 + 72);
          *(a1 + 72) = v30;
          *(a1 + 80) = v18;
          *(a1 + 88) = 0;
          if (v31)
          {
            operator delete(v31);
          }
        }

        else
        {
          v17 = *a5;
          *(v15 + 7) = *(a5 + 7);
          *v15 = v17;
          v18 = v15 + 11;
        }

        *(a1 + 80) = v18;
      }

      else
      {
        v19 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *a5;
          *buf = 67109376;
          v39 = v14;
          v40 = 2048;
          v41 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Warning: Audio Timesync: Invalid LinkID received ID=%x TS=%llu", buf, 0x12u);
        }
      }

      a5 = (a5 + 11);
      ++v13;
    }

    while (a2 > v13);
  }

  *buf = 0;
  v32 = sub_1006ED94C(a1, *(a1 + 16), (a1 + 72), a7, buf);
  v33 = *(a1 + 16);
  if (v32)
  {
    sub_1006EDD50(a1, v33, *buf);
  }

  else
  {
    sub_1006ED58C(v32, v33, 0, 0);
    v34 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Audio Timesync: update average audio transmit time not ready, reset the modifier", v36, 2u);
    }
  }

  return sub_10002249C(&v37);
}

uint64_t sub_1006ED94C(uint64_t a1, int a2, uint64_t *a3, unsigned int a4, float *a5)
{
  v9 = *a3;
  v8 = a3[1];
  if (0x2E8BA2E8BA2E8BA3 * (v8 - *a3) >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = -29789 * (v8 - *a3);
  }

  if (v10 && (*(a1 + 48) & 1) != 0)
  {
    v32 = 0;
    v13 = *v9;
    v14 = *(v8 - 11);
    v15 = sub_1006ED2D8(a1, *(a1 + 40), v13, v14);
    if (v15)
    {
      if (a3[1] != *a3)
      {
        a3[1] = *a3;
      }

      if (*(a1 + 18))
      {
        if (*(a1 + 24) != 0.0)
        {
          sub_1006ED58C(v15, *(a1 + 16), 0, 0);
          *(a1 + 32) = 0;
          *(a1 + 24) = 0;
        }

        v16 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: Audio Timesync: Dynamic Audio Delivery wrapped around, resetting", buf, 2u);
        }

        v17 = 0;
        *(a1 + 40) = 0;
        *(a1 + 18) = 0;
        *(a1 + 48) = 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
      if (qword_100B50940 != -1)
      {
        sub_10086440C();
      }

      sub_10063005C(off_100B50938, &v30);
      if (v30 && sub_1003A9484(v30, v14, &v32))
      {
        if (!*(a1 + 32))
        {
          *buf = 0;
          if (sub_1003A9484(v30, v13, buf))
          {
            *(a1 + 32) = *buf;
          }
        }

        if (qword_100B50940 != -1)
        {
          sub_100864464();
        }

        v23 = sub_10062EB2C(off_100B50938, v32 - *(a1 + 32), 2) / v10;
        *a5 = v23;
        if (v23 > 250000.0)
        {
          sub_1006EDDFC(a1, a2, a3, a4);
        }

        v17 = 1;
      }

      else
      {
        v17 = 0;
      }

      v24 = *(a1 + 18);
      if (v24 >= v10)
      {
        LOWORD(v24) = v24 - v10;
        *(a1 + 18) = v24;
      }

      if (*(a1 + 52))
      {
        v25 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *a5;
          v27 = 0x2E8BA2E8BA2E8BA3 * (a3[1] - *a3);
          if (v17)
          {
            v28 = 84;
          }

          else
          {
            v28 = 70;
          }

          *buf = 134219008;
          *&buf[4] = v26;
          v34 = 1024;
          v35 = a4;
          v36 = 2048;
          v37 = v27;
          v38 = 1024;
          v39 = v24;
          v40 = 1024;
          v41 = v28;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Audio Delivery  Average Time=%f, Pending Packets=%d, Tx Completed Tx=%lu, Queue depth=%d, status=%c", buf, 0x28u);
        }
      }

      if (*a3 != a3[1])
      {
        a3[1] = *a3;
      }

      v29 = v31;
      *(a1 + 32) = v32;
      *(a1 + 40) = v14;
      if (v29)
      {
        sub_100117644(v29);
      }
    }
  }

  else
  {
    if (v8 != v9)
    {
      a3[1] = v9;
      v8 = v9;
    }

    v17 = *(a1 + 48);
    if ((v17 & 1) == 0)
    {
      v18 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        *&buf[4] = 0x2E8BA2E8BA2E8BA3 * (v8 - v9);
        v34 = 1024;
        v35 = a4;
        v36 = 2080;
        v37 = "No";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Number of packets in queue not yet in sync with Tx complete Tx completed=%lu Enqueued Packets=%d Sync =%s", buf, 0x1Cu);
      }
    }

    v19 = *(a1 + 18);
    v20 = v19 >= a4;
    v21 = v19 - a4;
    if (v20)
    {
      *(a1 + 18) = v21;
    }

    *(a1 + 48) = 1;
  }

  return v17;
}

void sub_1006EDD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100117644(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1006EDD50(uint64_t a1, int a2, float a3)
{
  ++*(a1 + 50);
  *(a1 + 20) = *(a1 + 20) + a3;
  sub_1006EE2F8(a1, a2, a3);
  if (*(a1 + 50) == 2)
  {
    *(a1 + 24) = *(a1 + 20) * 0.5;
    *(a1 + 20) = 0;
    *(a1 + 50) = 0;
  }

  if (qword_100B50940 != -1)
  {
    sub_10086440C();
  }

  v6 = off_100B50938;

  return sub_100630BC8(v6, a2, a3);
}

void sub_1006EDDFC(uint64_t a1, int a2, uint64_t *a3, int a4)
{
  v8 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 24);
    v10 = *(a1 + 20);
    v11 = *(a1 + 50);
    v12 = *(a1 + 32);
    *buf = 67110400;
    v25 = a2;
    v26 = 1024;
    v27 = a4;
    v28 = 2048;
    v29 = v9;
    v30 = 2048;
    v31 = v10;
    v32 = 1024;
    LODWORD(v33[0]) = v11;
    WORD2(v33[0]) = 2048;
    *(v33 + 6) = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Handle=%d, Enqueued Packets=%d Previous Average=%f Current Total Tx time=%f updated count=%d Previous TS=%llu", buf, 0x32u);
  }

  v13 = *(a1 + 32);
  v22 = 0;
  v23 = 0;
  if (qword_100B50940 != -1)
  {
    sub_100864464();
  }

  sub_10063005C(off_100B50938, &v22);
  if (v22)
  {
    for (i = *a3; i != a3[1]; i += 11)
    {
      v21 = 0.0;
      sub_1003A9484(v22, *i, &v21);
      v15 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(i + 8);
        v17 = *(i + 10);
        v18 = *i;
        v19 = v21;
        if (qword_100B50940 != -1)
        {
          sub_100864464();
        }

        v20 = sub_10062EB2C(off_100B50938, *&v21 - *&v13, 2);
        *buf = 67110144;
        v25 = v16;
        v26 = 1024;
        v27 = v17;
        v28 = 2048;
        v29 = *&v18;
        v30 = 2048;
        v31 = v19;
        v32 = 2048;
        v33[0] = v20;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Link=%d Status=%d Time=%llu Translated Time=%llu delta=%f", buf, 0x2Cu);
      }

      v13 = v21;
    }
  }

  if (v23)
  {
    sub_100117644(v23);
  }
}

uint64_t sub_1006EE06C(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_1008644D0();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 36);
  v4 = *(a1 + 32);
  v5 = *(a1 + 38);

  return sub_1004DD59C(v2, v3, v4, v5);
}

BOOL sub_1006EE0C8(uint64_t a1, int a2, float a3)
{
  if (qword_100B50940 != -1)
  {
    sub_10086440C();
  }

  v6 = sub_10062CF44(off_100B50938, a2);
  if (*(a1 + 18) < 8u)
  {
    return 0;
  }

  v7 = v6;
  result = *(a1 + 24) < a3;
  if (result & v7)
  {
    v9 = qword_100BCE8D0;
    result = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Low Latency Mode enabled Timesync paused", v10, 2u);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006EE198(uint64_t a1, float a2, float a3)
{
  if (a2 <= a3)
  {
    return 0;
  }

  v3 = (a2 - a3) / 1000.0;
  v4 = (v3 * 10.0);
  if (v4 >= 0x97)
  {
    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12[0] = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Packet Tx Delta High Delta=%fMSec", &v11, 0xCu);
    }

    return 0;
  }

  if (v4 >= 0x3C)
  {
    v6 = 60;
  }

  else
  {
    v6 = v4;
  }

  v7 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 18);
    v11 = 67109376;
    LODWORD(v12[0]) = v8;
    WORD2(v12[0]) = 2048;
    *(v12 + 6) = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Starting Timesync speed adjust, Current enqueue count=%d Average A2DP Tx Time in Msec =% f", &v11, 0x12u);
  }

  return v6;
}

void sub_1006EE2F8(uint64_t a1, int a2, float a3)
{
  if (!*(a1 + 52) && *(a1 + 24) != 0.0)
  {
    if (qword_100B50940 != -1)
    {
      sub_10086440C();
    }

    if ((sub_10062CF3C(off_100B50938, a2) & 1) == 0 && sub_1006EE0C8(a1, a2, a3))
    {
      v6 = sub_1006EE198(a1, a3, *(a1 + 24));
      if (v6)
      {
        v7 = v6;
        *(a1 + 28) = 0;
        *(a1 + 56) = mach_absolute_time();
        *(a1 + 30) = v7;

        sub_1006EE3E4(a1, a2, 1, v7);
      }
    }
  }
}

void sub_1006EE3E4(uint64_t a1, __int16 a2, int a3, int a4)
{
  v8 = sub_1006ED58C(a1, a2, 0, 0);
  if (a3 == 2)
  {
    sub_1006ED58C(v8, a2, 2, a4);
    *(a1 + 28) = 0;
  }

  else if (a3 == 1)
  {
    sub_1006ED58C(v8, a2, 1, a4);
    *(a1 + 28) += a4;
  }

  *(a1 + 52) = a3;
  v9 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 18);
    v11[0] = 67109632;
    v11[1] = a3;
    v12 = 1024;
    v13 = v10;
    v14 = 1024;
    v15 = a4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Audio Delivery Speed Direction=%d, Pending packets=%d Steps=%d", v11, 0x14u);
  }
}

void sub_1006EE508(uint64_t a1, uint64_t a2, __int16 a3, unsigned int a4)
{
  v8 = qword_100BCE8D0;
  v9 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v10 = *(a1 + 18);
    *buf = 67109120;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio Timesync: delay audio speedup, Pending packets=%d", buf, 8u);
  }

  sub_1006ED58C(v9, a3, 0, 0);
  v11 = dispatch_time(0, 1000000 * a4);
  if (qword_100B50940 != -1)
  {
    sub_100864464();
  }

  v12 = *(off_100B50938 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006EE670;
  block[3] = &unk_100AE0EF8;
  block[4] = a1;
  block[5] = a2;
  v14 = a3;
  dispatch_after(v11, v12, block);
}

uint64_t sub_1006EE670(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B50940 != -1)
  {
    sub_10086440C();
  }

  result = sub_100630CD4(off_100B50938, *(a1 + 40));
  if (result)
  {
    v4 = *(a1 + 48);

    return sub_1006EE6E4(v2, v4);
  }

  return result;
}

void sub_1006EE6E4(uint64_t a1, int a2)
{
  v4 = *(a1 + 18);
  v5 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 52);
    v7 = *(a1 + 28);
    v16[0] = 67109376;
    v16[1] = v6;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Speed Update Complete current State = %d Slowdown duration = %d ", v16, 0xEu);
  }

  v8 = *(a1 + 52);
  if (*(a1 + 52))
  {
    if (v8 == 2)
    {
      *(a1 + 56) = 0;
      v11 = a1;
      v12 = a2;
      v13 = 0;
      v14 = 0;
    }

    else
    {
      if (v8 != 1)
      {
        return;
      }

      if (qword_100B50940 != -1)
      {
        sub_100864464();
      }

      if (sub_10062D060(off_100B50938, a2))
      {
        v9 = 120;
      }

      else
      {
        v9 = 60;
      }

      if (v9 <= *(a1 + 28) || v4 < 8)
      {
        sub_1006EE890(a1, a2);
        return;
      }

      v14 = *(a1 + 30);
      v11 = a1;
      v12 = a2;
      v13 = 1;
    }

    sub_1006EE3E4(v11, v12, v13, v14);
  }

  else
  {
    v15 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Should not reach here", v16, 2u);
    }
  }
}

void sub_1006EE890(uint64_t a1, __int16 a2)
{
  v4 = *(a1 + 18);
  v5 = *(a1 + 64);
  if (qword_100B50940 != -1)
  {
    sub_10086440C();
  }

  v6 = off_100B50938;
  v7 = mach_absolute_time();
  v8 = sub_10062EB2C(v6, v7 - *(a1 + 56), 0);
  if (v4 >= 8 && v8 < 5.0)
  {

    sub_1006EE508(a1, v5, a2, 0x1F4u);
  }

  else
  {
    v10 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 18);
      v12[0] = 67109376;
      v12[1] = v11;
      v13 = 2048;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Speedup %d [%f]", v12, 0x12u);
    }

    sub_1006EE3E4(a1, a2, 2, *(a1 + 28));
  }
}

void sub_1006EEA88(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745D2)
  {
    operator new();
  }

  sub_1000C7698();
}

void *sub_1006EEB4C(uint64_t a1)
{
  result = sub_100589578(a1, "WirelessCarplayService", 0x40000);
  *result = &off_100B091E0;
  return result;
}

void sub_1006EEB90(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_1006EEBC8(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v14 = 0;
  v18 = xmmword_1008C4ED0;
  memset(v19, 0, sizeof(v19));
  v17 = xmmword_1008C4EE0;
  v4 = sub_10054BE34(a2, v19, &v15);
  if (v15)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    LOBYTE(v13) = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableBLE", @"com.apple.carplay", &v13);
    if (v13 && AppBooleanValue && !sub_10024A9C0(v19, 64660, &v14))
    {
      v9 = 2;
    }

    else
    {
      if (sub_10024AB64(v19, &v18, &v14, v7) && sub_10024AB64(v19, &v17, &v14, v8))
      {
        v9 = 0;
        v10 = 0;
LABEL_15:
        sub_10054FF18(a2, v9);
        goto LABEL_16;
      }

      v9 = 1;
    }

    v10 = 4;
    goto LABEL_15;
  }

  v10 = 0;
LABEL_16:
  v11 = *(a1 + 32);
  v16 = 0;
  sub_100016250(&v16);
  *&v13 = v16;
  *(&v13 + 1) = SWORD2(v16);
  return sub_100539554(a2, v11, v10, &v13, 0);
}

uint64_t sub_1006EED5C(uint64_t a1, unsigned __int8 *a2, _BYTE *a3)
{
  memset(v12, 0, sizeof(v12));
  v9 = 0;
  v8 = 0;
  v10 = xmmword_1008C4EE0;
  v11 = xmmword_1008C4ED0;
  *a3 = 0;
  result = sub_10054BE34(a2, v12, &v9);
  if (result)
  {
    if (v9)
    {
      if (!sub_10024AB64(v12, &v11, &v8, v6) || (result = sub_10024AB64(v12, &v10, &v8, v7), !result))
      {
        *a3 = 1;
        result = sub_1000295DC(a2);
        if ((result & 1) == 0)
        {
          return sub_100540ADC(a2, 0);
        }
      }
    }
  }

  return result;
}

void sub_1006EEE70(uint64_t *a1)
{
  v3 = *a1;
  for (i = a1[1]; i != v3; sub_1006EF168(a1, i))
  {
    i -= 104;
  }

  a1[1] = v3;
}

id *sub_1006EEEBC(uint64_t a1, id *location)
{
  sub_1000D6B48(&v8, (location + 13), *(a1 + 8), location);
  v5 = v4;
  v6 = *(a1 + 8);
  if (v6 != v4)
  {
    do
    {
      v6 -= 104;
      sub_1006EF168(a1, v6);
    }

    while (v6 != v5);
  }

  *(a1 + 8) = v5;
  return location;
}

uint64_t sub_1006EEF34(uint64_t *a1, int a2)
{
  v3 = *a1;
  result = a1[1];
  while (v3 != result)
  {
    if (*(v3 + 8) == a2)
    {
      return v3;
    }

    v3 += 104;
  }

  return result;
}

uint64_t sub_1006EEF5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    if (*(v1 + 16) == 2)
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }

    v1 += 104;
  }

  while (v1 != v2);
  return result;
}

uint64_t sub_1006EEF90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    if (*(v1 + 16) == 1)
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }

    v1 += 104;
  }

  while (v1 != v2);
  return result;
}

uint64_t sub_1006EEFC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    if ((*(v1 + 16) - 3) >= 2)
    {
      result = result;
    }

    else
    {
      result = (result + 1);
    }

    v1 += 104;
  }

  while (v1 != v2);
  return result;
}

BOOL sub_1006EEFFC(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v2 = *a1 + 104;
  do
  {
    v3 = *(v2 - 88);
    result = v3 == 6;
    v5 = v3 == 6 || v2 == v1;
    v2 += 104;
  }

  while (!v5);
  return result;
}

BOOL sub_1006EF030(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v2 = *a1 + 104;
  do
  {
    v3 = *(v2 - 88);
    result = v3 == 5;
    v5 = v3 == 5 || v2 == v1;
    v2 += 104;
  }

  while (!v5);
  return result;
}

BOOL sub_1006EF064(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v2 = *a1 + 104;
  do
  {
    v3 = *(v2 - 88);
    result = v3 == 3;
    v5 = v3 == 3 || v2 == v1;
    v2 += 104;
  }

  while (!v5);
  return result;
}

BOOL sub_1006EF098(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v2 = *a1 + 104;
  do
  {
    v3 = *(v2 - 88);
    result = v3 == 4;
    v5 = v3 == 4 || v2 == v1;
    v2 += 104;
  }

  while (!v5);
  return result;
}

void sub_1006EF168(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  sub_1000D8E64(a2 + 24);
  v3 = *a2;
}

uint64_t sub_1006EF1B4(uint64_t a1, uint64_t a2)
{
  *a1 = off_100B092E0;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  if (!a2)
  {
    v3 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_1008644EC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1;
}

void sub_1006EF22C(uint64_t a1, void *a2, uint64_t *a3, __int16 a4)
{
  v11 = a2;
  objc_storeStrong((a1 + 16), a2);
  v9 = *a3;
  v8 = a3[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 32);
  *(a1 + 24) = v9;
  *(a1 + 32) = v8;
  if (v10)
  {
    sub_100117644(v10);
  }

  *(a1 + 40) = a4;
  if ((*(*a1 + 16))(a1))
  {
    (*(*a1 + 24))(a1);
  }
}

void sub_1006EF324(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }
}

void sub_1006EF368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006EF384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100864564(a2, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  return (***(a1 + 8))(*(a1 + 8), a1, a2, a3);
}

void sub_1006EF418(uint64_t a1)
{
  if (qword_100B50900 != -1)
  {
    sub_1008645D0();
  }

  v2 = qword_100B508F8;
  v3 = *(a1 + 16);

  sub_100710D5C(v2, v3);
}

void sub_1006EF46C(uint64_t a1, __int16 a2)
{
  if (qword_100B50900 != -1)
  {
    sub_1008645D0();
  }

  v4 = qword_100B508F8;
  v5 = *(a1 + 16);

  sub_100711338(v4, v5, a2);
}

void sub_1006EF4C8(uint64_t a1, uint64_t a2)
{
  if (qword_100B50900 != -1)
  {
    sub_1008645D0();
  }

  v4 = qword_100B508F8;
  v5 = *(a1 + 16);

  sub_100710FDC(v4, v5, a2);
}

void sub_1006EF524(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (qword_100B50900 == -1)
  {
    v4 = v3;
  }

  else
  {
    sub_1008645D0();
    v4 = v5;
  }

  sub_100710770(qword_100B508F8, a1, v4);
}

uint64_t sub_1006EF5AC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = qword_100BCE910;
  if (a2)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1008645E4();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote response with MTU %d", v8, 8u);
    }

    if (a3 != 23)
    {
      sub_1006EF46C(a1, a3);
    }
  }

  return (*(*a1 + 24))(a1, a2);
}

uint64_t sub_1006EF6C4(uint64_t a1)
{
  v6 = 0;
  sub_1000216B4(&v6);
  v2 = sub_1002D4798(*(a1 + 40), sub_1006EF818, *(a1 + 42), a1);
  sub_100022214(&v6);
  if (v2 == 146)
  {
    v3 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 16);
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ignoring MTU exchange request - MTU already set for device %@", buf, 0xCu);
    }

    (*(*a1 + 24))(a1, 0);
    v2 = 0;
  }

  sub_10002249C(&v6);
  return v2;
}

void sub_1006EF82C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  if (!a2)
  {
    if (a4)
    {
      operator new();
    }

    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10086466C(a1);
    }
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

uint64_t sub_1006EFA8C(uint64_t a1)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B38CC(v2, 0, &__p);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    LOBYTE(__p) = 0;
    sub_1000216B4(&__p);
    v5 = sub_1002D4870(*(a1 + 40), sub_1006EFC14, a1);
    sub_10002249C(&__p);
  }

  else
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Returning primary services from cache", v8, 2u);
    }

    (***(a1 + 8))(*(a1 + 8), a1, 0, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    return 0;
  }

  return v5;
}

void sub_1006EFBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006EFC2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  if (!a2)
  {
    if (a4)
    {
      operator new();
    }

    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      sub_10003B85C(a1 + 44, v9);
      if (v10 >= 0)
      {
        v7 = v9;
      }

      else
      {
        v7 = v9[0];
      }

      v8 = *(a1 + 16);
      *buf = 136446466;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No primary services with UUID %{public}s found on device %@", buf, 0x16u);
      if (v10 < 0)
      {
        operator delete(v9[0]);
      }
    }
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

uint64_t sub_1006EFEC0(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B38CC(v2, (a1 + 44), __p);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    goto LABEL_6;
  }

  v9 = __p[0];
  v8 = __p[1];
  v10 = qword_100BCE910;
  v11 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
  if (v8 == v9)
  {
    if (v11)
    {
      sub_10003B85C(a1 + 44, v16);
      if (v17 >= 0)
      {
        v13 = v16;
      }

      else
      {
        v13 = v16[0];
      }

      v14 = *(a1 + 16);
      *buf = 136446466;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Database cache fetching returned empty for service UUID %{public}s on device %@", buf, 0x16u);
      if (v17 < 0)
      {
        operator delete(v16[0]);
      }
    }

    v15 = sub_10000F034();
    (*(*v15 + 448))(v15);
LABEL_6:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    LOBYTE(v16[0]) = 0;
    sub_1000216B4(v16);
    v5 = *(a1 + 40);
    *__p = *(a1 + 44);
    LODWORD(v23) = *(a1 + 60);
    sub_1002D4BB8(v5, sub_1006F0158, __p, a1);
    v7 = v6;
    sub_10002249C(v16);
    return v7;
  }

  if (v11)
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using local database for discover services by UUID.", v16, 2u);
  }

  (***(a1 + 8))(*(a1 + 8), a1, 0, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1006F010C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F0170(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  if (!a2)
  {
    if (a4)
    {
      operator new();
    }

    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 42);
      v8 = *(a1 + 44);
      v9 = *(a1 + 16);
      *buf = 67109634;
      *&buf[4] = v7;
      *&buf[8] = 1024;
      *&buf[10] = v8;
      *&buf[14] = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No included services found in range [0x%04x, 0x%04x] on device %@", buf, 0x18u);
    }
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

uint64_t sub_1006F0404(uint64_t a1)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B3BF0(v2, *(a1 + 42), *(a1 + 44), &__p);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    LOBYTE(__p) = 0;
    sub_1000216B4(&__p);
    v5 = sub_1002D4F64(*(a1 + 40), sub_1006F0598, *(a1 + 42), *(a1 + 44), a1);
    sub_10002249C(&__p);
  }

  else
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Using local database for discover included services.", v8, 2u);
    }

    (***(a1 + 8))(*(a1 + 8), a1, 0, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    return 0;
  }

  return v5;
}

void sub_1006F0558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F05B0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  __p = 0;
  v16 = 0;
  v17 = 0;
  if (!a2)
  {
    if (a4)
    {
      v6 = a4;
      v7 = (a3 + 4);
      do
      {
        v24 = 0uLL;
        v25 = 0;
        *buf = *(v7 + 2);
        *&buf[16] = *(v7 + 5);
        sub_10000D03C(&v24, buf);
        v9 = *(v7 - 2);
        if (v9 == *v7)
        {
          v10 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
          {
            v11 = *(a1 + 16);
            *buf = 67109378;
            *&buf[4] = v9;
            *&buf[8] = 2112;
            *&buf[10] = v11;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Ignoring invalid characteristic with identical handle and value handle (0x%04x) on device %@", buf, 0x12u);
          }
        }

        else
        {
          *&buf[16] = 0;
          *buf = xmmword_1008C4EF0;
          if (!sub_10004E15C(v8, buf))
          {
            *&buf[16] = 0;
            *buf = xmmword_1008C4F04;
            if (!sub_10004E15C(&v24, buf))
            {
              *&buf[16] = 0;
              *buf = xmmword_1008C4F18;
              if (!sub_10004E15C(&v24, buf))
              {
                *&buf[16] = 0;
                *buf = xmmword_1008C4F2C;
                if (!sub_10004E15C(&v24, buf))
                {
                  *&buf[16] = 0;
                  *buf = xmmword_1008C4F40;
                  if (!sub_10004E15C(&v24, buf))
                  {
                    *&buf[16] = 0;
                    *buf = xmmword_1008C4F54;
                    if (!sub_10004E15C(&v24, buf))
                    {
                      *&buf[16] = 0;
                      *buf = xmmword_1008C4F68;
                      if (!sub_10004E15C(&v24, buf))
                      {
                        *&buf[16] = 0;
                        *buf = xmmword_1008C4F7C;
                        if (!sub_10004E15C(&v24, buf))
                        {
                          *&buf[16] = 0;
                          *buf = xmmword_1008C4F90;
                          if (!sub_10004E15C(&v24, buf))
                          {
                            *&buf[16] = 0;
                            *buf = xmmword_1008C4FA4;
                            if (!sub_10004E15C(&v24, buf))
                            {
                              operator new();
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

          v12 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
          {
            sub_10003B85C(&v24, buf);
            if (v19 >= 0)
            {
              v13 = buf;
            }

            else
            {
              v13 = *buf;
            }

            v14 = *(a1 + 16);
            v20 = 136446466;
            v21 = v13;
            v22 = 2112;
            v23 = v14;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Ignoring invalid characteristic with invalid UUID %{public}s on device %@", &v20, 0x16u);
            if (v19 < 0)
            {
              operator delete(*buf);
            }
          }
        }

        v7 += 14;
        --v6;
      }

      while (v6);
    }

    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1008646F4(a1);
    }
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

uint64_t sub_1006F0AB8(uint64_t a1)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B3D78(v2, 0, *(a1 + 42), *(a1 + 44), &__p);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    LOBYTE(__p) = 0;
    sub_1000216B4(&__p);
    v5 = sub_1002D5310(*(a1 + 40), sub_1006F0C50, *(a1 + 42), *(a1 + 44), a1);
    sub_10002249C(&__p);
  }

  else
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Using local database for discover all characteristics.", v8, 2u);
    }

    (***(a1 + 8))(*(a1 + 8), a1, 0, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    return 0;
  }

  return v5;
}

void sub_1006F0C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F0C68(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a2;
  __p = 0;
  v18 = 0;
  v19 = 0;
  if (!a2)
  {
    if (a4)
    {
      v6 = a4;
      v7 = (a3 + 4);
      do
      {
        v8 = *(v7 - 2);
        if (v8 != *v7)
        {
          operator new();
        }

        v9 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 16);
          buf = 67109378;
          *buf_4 = v8;
          *&buf_4[4] = 2112;
          *&buf_4[6] = v10;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Ignoring invalid characteristic with identical handle and value handle (0x%04x) on device %@", &buf, 0x12u);
        }

        v7 += 14;
        --v6;
      }

      while (v6);
      v4 = 0;
    }

    v11 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v20;
      sub_10003B85C(a1 + 48, v20);
      v13 = v4;
      if (v21 < 0)
      {
        v12 = v20[0];
      }

      v14 = *(a1 + 42);
      v15 = *(a1 + 44);
      v16 = *(a1 + 16);
      buf = 136446978;
      *buf_4 = v12;
      *&buf_4[8] = 1024;
      *&buf_4[10] = v14;
      v24 = 1024;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No characteristics with UUID %{public}s found in range [0x%04x, 0x%04x] on device %@", &buf, 0x22u);
      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      v4 = v13;
    }
  }

  sub_1006EF384(a1, v4, &__p);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_1006F0F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F0FDC(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B3D78(v2, (a1 + 48), *(a1 + 42), *(a1 + 44), __p);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v10[0] = 0;
    sub_1000216B4(v10);
    v5 = *(a1 + 40);
    *__p = *(a1 + 48);
    LODWORD(v12) = *(a1 + 64);
    sub_1002D56BC(v5, sub_1006F11BC, __p, *(a1 + 42), *(a1 + 44), a1);
    v7 = v6;
    sub_10002249C(v10);
  }

  else
  {
    v8 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using local database for discover characteristics by UUID.", v10, 2u);
    }

    (***(a1 + 8))(*(a1 + 8), a1, 0, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return 0;
  }

  return v7;
}

void sub_1006F1174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F11D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  if (!a2)
  {
    if (a4)
    {
      memset(buf, 0, sizeof(buf));
      LODWORD(v16) = 0;
      v17 = *(a3 + 4);
      v18 = *(a3 + 20);
      sub_10000D03C(buf, &v17);
      v17 = xmmword_1008C4F40;
      v18 = 0;
      if (sub_10004E15C(buf, &v17))
      {
        operator new();
      }

      v18 = 0;
      v17 = xmmword_1008C4F54;
      if (sub_10004E15C(buf, &v17))
      {
        operator new();
      }

      v18 = 0;
      v17 = xmmword_1008C4F68;
      if (sub_10004E15C(buf, &v17) || (v18 = 0, v17 = xmmword_1008C4F7C, sub_10004E15C(buf, &v17)))
      {
        operator new();
      }

      v18 = 0;
      v17 = xmmword_1008C4F90;
      if (sub_10004E15C(buf, &v17))
      {
        operator new();
      }

      v18 = 0;
      v17 = xmmword_1008C4EF0;
      if (!sub_10004E15C(buf, &v17))
      {
        v18 = 0;
        v17 = xmmword_1008C4F04;
        if (!sub_10004E15C(buf, &v17))
        {
          v18 = 0;
          v17 = xmmword_1008C4F18;
          if (!sub_10004E15C(buf, &v17))
          {
            v18 = 0;
            v17 = xmmword_1008C4F2C;
            if (!sub_10004E15C(buf, &v17))
            {
              operator new();
            }
          }
        }
      }
    }

    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 42);
      v8 = *(a1 + 44);
      v9 = *(a1 + 16);
      *buf = 67109634;
      *&buf[4] = v7;
      *&buf[8] = 1024;
      *&buf[10] = v8;
      *&buf[14] = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No descriptors found in range [0x%04x, 0x%04x] on device %@", buf, 0x18u);
    }

    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1005B5EBC(v10, &__p, *(a1 + 42));
    if (v11)
    {
      sub_100117644(v11);
    }
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

uint64_t sub_1006F1728(uint64_t a1)
{
  __p = 0;
  v10 = 0;
  v11 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B41E8(v2, *(a1 + 42), *(a1 + 44), &__p);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    LOBYTE(__p) = 0;
    sub_1000216B4(&__p);
    v5 = sub_1002D57D0(*(a1 + 40), sub_1006F18BC, *(a1 + 42), *(a1 + 44), a1);
    sub_10002249C(&__p);
  }

  else
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Using local database for discover all descriptors.", v8, 2u);
    }

    (***(a1 + 8))(*(a1 + 8), a1, 0, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    return 0;
  }

  return v5;
}

void sub_1006F187C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F18D4(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  if (!a2)
  {
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_1008647B0();
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_1006F1A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F1AB0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B6820(v2, *(a1 + 44));
  if (v3)
  {
    sub_100117644(v3);
  }

  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_10086493C(a1 + 44, a1);
    }

    return 1;
  }

  v5 = *(v4 + 8);
  v6 = *(v5 + 20);
  v10 = *(v5 + 4);
  v11 = v6;
  sub_10000D03C(&v9, &v10);
  v10 = xmmword_1008C4F2C;
  v11 = 0;
  if (!sub_10004E15C(&v9, &v10))
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100864840(a1 + 44, a1);
    }

    return 1;
  }

  if ((*(v4 + 72) & 2) != 0)
  {
    LOBYTE(v10) = 0;
    sub_1000216B4(&v10);
    v7 = sub_1002D5A5C(*(a1 + 40), sub_1006F1C90, *(a1 + 42), a1);
    sub_10002249C(&v10);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1008648D0();
    }

    return 2;
  }

  return v7;
}

void sub_1006F1C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1006F1CA8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (a4)
  {
    operator new();
  }

  v6 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10003B85C(a1 + 44, v7);
    sub_1008649CC(v7, a1, &v11, v6);
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

uint64_t sub_1006F1EEC(uint64_t a1)
{
  v5 = 0;
  sub_1000216B4(&v5);
  v2 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 60);
  v3 = sub_1002D5CB0(v2, sub_1006F1FB4, &v6, *(a1 + 64), *(a1 + 66), *(a1 + 68), a1);
  sub_10002249C(&v5);
  return v3;
}

void sub_1006F1FCC(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  if (!a2)
  {
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100864A98();
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_1006F2120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F21A8(uint64_t a1)
{
  v4 = 0;
  sub_1000216B4(&v4);
  v2 = sub_1002D6054(*(a1 + 40), sub_1006F2224, *(a1 + 42), *(a1 + 44), a1);
  sub_10002249C(&v4);
  return v2;
}

void sub_1006F223C(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  if (!a2)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = sub_1005B6AA4(v4, *(a1 + 42));
    if (v5)
    {
      sub_100117644(v5);
    }

    if (v6)
    {
      if (sub_1006E3B24(v6))
      {
        v7 = *(a1 + 24);
        v8 = *(a1 + 32);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1005B67BC(v7, v6);
        if (v8)
        {
          sub_100117644(v8);
        }

        v9 = v6;
        sub_1000C2484(&__p, &v9);
      }

      else
      {
        (*(*v6 + 8))(v6);
      }
    }
  }

  if (__p == v11 && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100864B28();
  }

  sub_1006EF384(a1, a2, &__p);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_1006F2394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F23DC(uint64_t a1)
{
  v4 = 0;
  sub_1000216B4(&v4);
  v2 = sub_1002D5A5C(*(a1 + 40), sub_1006F2454, *(a1 + 42), a1);
  sub_10002249C(&v4);
  return v2;
}

uint64_t sub_1006F246C(uint64_t a1, uint64_t a2)
{
  if (a2 && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100864BB8();
  }

  return (*(*a1 + 24))(a1, a2);
}

uint64_t sub_1006F24F8(uint64_t a1)
{
  v8 = 0;
  sub_1000216B4(&v8);
  v2 = *(a1 + 40);
  v3 = *(a1 + 42);
  v4 = sub_10000C5F8(a1 + 48);
  v5 = sub_10000C5E0(a1 + 48);
  v6 = sub_1002D6114(v2, sub_1006F259C, v3, v4, v5, a1);
  sub_10002249C(&v8);
  return v6;
}

uint64_t sub_1006F25AC(unsigned __int16 *a1)
{
  v8 = 0;
  sub_1000216B4(&v8);
  v2 = a1[20];
  v3 = a1[21];
  v4 = sub_10000C5F8((a1 + 24));
  v5 = sub_10000C5E0((a1 + 24));
  v6 = sub_1002D6114(v2, 0, v3, v4, v5, a1);
  sub_100022214(&v8);
  if (!v6)
  {
    (*(*a1 + 24))(a1, 0);
  }

  sub_10002249C(&v8);
  return v6;
}

uint64_t sub_1006F267C(uint64_t a1, uint64_t a2)
{
  if (a2 && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100864C44();
  }

  return (*(*a1 + 24))(a1, a2);
}

uint64_t sub_1006F2708(uint64_t a1)
{
  v8 = 0;
  sub_1000216B4(&v8);
  v2 = *(a1 + 40);
  v3 = *(a1 + 42);
  v4 = sub_10000C5F8(a1 + 48);
  v5 = sub_10000C5E0(a1 + 48);
  v6 = sub_1002D62D0(v2, sub_1006F27B0, v3, 0, v4, v5, a1);
  sub_10002249C(&v8);
  return v6;
}

uint64_t sub_1006F27C0(uint64_t a1, uint64_t a2)
{
  if (a2 && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100864CD0();
  }

  return (*(*a1 + 24))(a1, a2);
}

uint64_t sub_1006F284C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B6820(v2, *(a1 + 42));
  if (v3)
  {
    sub_100117644(v3);
  }

  if (!v4)
  {
    return 1;
  }

  v11 = 0;
  sub_1000216B4(&v11);
  v5 = *(a1 + 40);
  v6 = *(a1 + 42);
  v7 = sub_10000C5F8(a1 + 48);
  v8 = sub_10000C5E0(a1 + 48);
  v9 = sub_1002D6870(v5, sub_1006F2940, v6, v7, v8, a1);
  sub_10002249C(&v11);
  return v9;
}

void sub_1006F2918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (v13)
  {
    sub_100117644(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F2950(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = xmmword_1008A4B48;
  v15 = 0;
  sub_10000D03C(buf, &v14);
  v12 = xmmword_1008A4B70;
  v13 = 0;
  sub_10000D03C(&v14, &v12);
  v4 = sub_1005B68E8(v2, buf, &v14);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v5 + 20);
    *buf = *(v5 + 4);
    v17 = v6;
    sub_10000D03C(&v14, buf);
    *buf = xmmword_1008C4F2C;
    v17 = 0;
    if (sub_10004E15C(&v14, buf))
    {
      v7 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 16);
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting GAP name characteristic value on device %@", buf, 0xCu);
      }

      v9 = *(a1 + 87);
      if ((v9 & 0x8000000000000000) != 0)
      {
        v10 = *(a1 + 64);
        v9 = *(a1 + 72);
      }

      else
      {
        v10 = (a1 + 64);
      }

      sub_10000C704(buf, v10, v9);
      operator new();
    }
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100864D5C(a1);
  }

  return 10;
}

void sub_1006F2BF8(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100117644(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006F2C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100864DE4(a3, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    v14 = *(a1 + 16);
    __dst[0] = 0;
    __dst[1] = 0;
    v24 = 0;
    if (*(a1 + 87) < 0)
    {
      sub_100008904(__dst, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      *__dst = *(a1 + 64);
      v24 = *(a1 + 80);
    }

    v15 = sub_100007EE8();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3321888768;
    v18[2] = sub_1006F2E58;
    v18[3] = &unk_100B09308;
    v20 = a1;
    v16 = v14;
    v19 = v16;
    if (SHIBYTE(v24) < 0)
    {
      sub_100008904(&__p, __dst[0], __dst[1]);
    }

    else
    {
      __p = *__dst;
      v22 = v24;
    }

    sub_10000CA94(v15, v18);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  return sub_1006EF384(a1, a3, a4);
}

void sub_1006F2E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006F2E58(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v3 = off_100B508C8;
  sub_10004DFB4(v8, *(a1 + 32));
  if (*(a1 + 71) < 0)
  {
    sub_100008904(__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *__p = *(a1 + 48);
    v7 = *(a1 + 64);
  }

  v4 = sub_100783194(v3, v8, __p, 2);
  v5 = v4;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v4)
  {
LABEL_10:
    sub_1006EF418(v2);
  }
}

void sub_1006F2F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F2F74(uint64_t a1)
{
  if ((*(a1 + 103) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 88))
    {
      return;
    }
  }

  else if (!*(a1 + 103))
  {
    return;
  }

  v2 = *(a1 + 16);
  __dst[0] = 0;
  __dst[1] = 0;
  v13 = 0;
  if (*(a1 + 103) < 0)
  {
    sub_100008904(__dst, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    *__dst = *(a1 + 80);
    v13 = *(a1 + 96);
  }

  v3 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v4 = __dst;
    if (v13 < 0)
    {
      v4 = __dst[0];
    }

    *buf = 138412546;
    v15 = v2;
    v16 = 2080;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "The device %@ is named %s", buf, 0x16u);
  }

  v5 = sub_100007EE8();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_1006F31A8;
  v7[3] = &unk_100B09308;
  v9 = a1;
  v6 = v2;
  v8 = v6;
  if (SHIBYTE(v13) < 0)
  {
    sub_100008904(&__p, __dst[0], __dst[1]);
  }

  else
  {
    __p = *__dst;
    v11 = v13;
  }

  sub_10000CA94(v5, v7);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1006F3150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006F31A8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v3 = off_100B508C8;
  sub_10004DFB4(v8, *(a1 + 32));
  if (*(a1 + 71) < 0)
  {
    sub_100008904(__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *__p = *(a1 + 48);
    v7 = *(a1 + 64);
  }

  v4 = sub_100783194(v3, v8, __p, 2);
  v5 = v4;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v4)
  {
LABEL_10:
    sub_1006EF418(v2);
  }
}

void sub_1006F3298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F32BC(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = xmmword_1008A4B48;
  v12 = 0;
  sub_10000D03C(buf, &v11);
  sub_10003A364(&v11);
  v4 = sub_1005B68E8(v3, buf, &v11);
  if (v2)
  {
    sub_100117644(v2);
  }

  v10 = 0;
  if (v4 && (v5 = *(v4 + 8), v6 = *(v5 + 20), *buf = *(v5 + 4), v14 = v6, sub_10000D03C(&v11, buf), *buf = xmmword_1008C4EF0, v14 = 0, sub_10004E15C(&v11, buf)))
  {
    v7 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 16);
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reading long GAP name characteristic value on device %@", buf, 0xCu);
    }

    if (!sub_1002D4678(*(a1 + 40), &v10))
    {
      v10 -= 4;
      operator new();
    }

    return (*(*a1 + 24))(a1, 9501);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100864E64(a1);
    }

    return (*(*a1 + 24))(a1, 10);
  }
}

void sub_1006F3594(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100117644(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1006F35D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v7 = *(a1 + 56);
  if (v7)
  {
    if (v7 != a2 && (v8 = qword_100BCE910, os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT)))
    {
      LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
      *(__dst.__r_.__value_.__r.__words + 4) = "fReadGapName.get() == command";
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &__dst, 0xCu);
      v7 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      *(a1 + 56) = 0;
    }

    (*(*v7 + 8))(v7);
LABEL_6:
    if (a4[1] == *a4 || (v9 = *(**a4 + 8), v10 = *(v9 + 20), *&__dst.__r_.__value_.__l.__data_ = *(v9 + 4), LODWORD(__dst.__r_.__value_.__r.__words[2]) = v10, sub_10000D03C(&v34, &__dst), *&__dst.__r_.__value_.__l.__data_ = xmmword_1008C4FB8, LODWORD(__dst.__r_.__value_.__r.__words[2]) = 0, !sub_10004E15C(&v34, &__dst)))
    {
      sub_1006EF384(a1, a3, a4);
    }

    else
    {
      v11 = **a4;
      v12 = sub_10000C5F8(v11 + 72);
      v13 = sub_10000C5E0(v11 + 72);
      sub_100617064(&__dst, v12, v13);
      if (*(a1 + 103) < 0)
      {
        operator delete(*(a1 + 80));
      }

      *(a1 + 80) = __dst;
      if (sub_10000C5E0(v11 + 72) < *(a1 + 72) - 4)
      {
LABEL_11:
        sub_1006F2F74(a1);
        (***(a1 + 8))(*(a1 + 8), a1, 0, a4);
        return;
      }

      v27 = **(v11 + 8);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1006F3AB8;
      v31[3] = &unk_100AEB940;
      v31[4] = a1;
      v32 = v27;
      sub_1006EF524(a1, v31);
      v29 = *a4;
      v28 = a4[1];
      while (v29 != v28)
      {
        if (*v29)
        {
          (*(**v29 + 8))(*v29);
          v28 = a4[1];
        }

        ++v29;
      }
    }

    return;
  }

  v14 = *(a1 + 64);
  if (!v14)
  {
    v30 = sub_10000E92C();
    sub_100693F74(v30, 1);
  }

  if (v14 == a2 || (v15 = qword_100BCE910, !os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT)))
  {
    *(a1 + 64) = 0;
LABEL_17:
    (*(*v14 + 8))(v14);
    goto LABEL_18;
  }

  LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
  *(__dst.__r_.__value_.__r.__words + 4) = "fReadLongGapName.get() == command";
  _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &__dst, 0xCu);
  v14 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v14)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (a4[1] != *a4)
  {
    v16 = *(**a4 + 8);
    v17 = *(v16 + 20);
    *&__dst.__r_.__value_.__l.__data_ = *(v16 + 4);
    LODWORD(__dst.__r_.__value_.__r.__words[2]) = v17;
    sub_10000D03C(&v34, &__dst);
    *&__dst.__r_.__value_.__l.__data_ = xmmword_1008C4FB8;
    LODWORD(__dst.__r_.__value_.__r.__words[2]) = 0;
    if (sub_10004E15C(&v34, &__dst))
    {
      v18 = **a4;
      v19 = sub_10000C5F8(v18 + 72);
      v20 = sub_10000C5E0(v18 + 72);
      sub_100617064(&__dst, v19, v20);
      v21 = *(a1 + 103);
      if (v21 >= 0)
      {
        v22 = (a1 + 80);
      }

      else
      {
        v22 = *(a1 + 80);
      }

      if (v21 >= 0)
      {
        v23 = *(a1 + 103);
      }

      else
      {
        v23 = *(a1 + 88);
      }

      v24 = std::string::insert(&__dst, 0, v22, v23);
      v25 = v24->__r_.__value_.__r.__words[0];
      v34.n128_u64[0] = v24->__r_.__value_.__l.__size_;
      *(v34.n128_u64 + 7) = *(&v24->__r_.__value_.__r.__words[1] + 7);
      v26 = HIBYTE(v24->__r_.__value_.__r.__words[2]);
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      if (*(a1 + 103) < 0)
      {
        operator delete(*(a1 + 80));
      }

      *(a1 + 80) = v25;
      *(a1 + 88) = v34.n128_u64[0];
      *(a1 + 95) = *(v34.n128_u64 + 7);
      *(a1 + 103) = v26;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      goto LABEL_11;
    }
  }

  sub_1006EF384(a1, a3, a4);
}

void sub_1006F3A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F3AD0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = xmmword_1008A4B48;
  v12 = 0;
  sub_10000D03C(buf, &v11);
  sub_10003A364(&v11);
  v4 = sub_1005B68E8(v2, buf, &v11);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v5 + 20);
    *buf = *(v5 + 4);
    v14 = v6;
    sub_10000D03C(&v11, buf);
    *buf = xmmword_1008C4EF0;
    v14 = 0;
    if (sub_10004E15C(&v11, buf))
    {
      v7 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 16);
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reading GAP name characteristic value on device %@", buf, 0xCu);
      }

      v10 = 0;
      sub_1000216B4(&v10);
      sub_1002D4678(*(a1 + 40), (a1 + 72));
      sub_100022214(&v10);
      operator new();
    }
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100864EEC(a1);
  }

  return 10;
}

void sub_1006F3DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16)
  {
    sub_100117644(v16);
  }

  sub_10002249C(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1006F3E14(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 56);
  v5 = *(a1 + 56);
  v6 = *(a1 + 24);
  v7 = *(v4 - 3);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v4;
  }

  else
  {
    v8 = v5;
  }

  v9 = sub_1005B6C38(v6, v8);
  if (v7)
  {
    sub_100117644(v7);
  }

  if (a2)
  {
    v10 = *(*a1 + 24);
    v11 = a1;
    v12 = a2;
LABEL_8:

    return v10(v11, v12);
  }

  if (v9)
  {
    if (v9 >= (v5 + 2))
    {
      v14 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 16);
        *buf = 67109634;
        v17 = (v5 + 2);
        v18 = 1024;
        v19 = v9;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Attempting to discover descriptors in range [0x%04x, 0x%04x] on device %@", buf, 0x18u);
      }

      operator new();
    }

    v10 = *(*a1 + 24);
    v11 = a1;
    v12 = 0;
    goto LABEL_8;
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100864F74(v4, a1);
  }

  return (*(*a1 + 24))(a1, 1);
}

void sub_1006F410C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100117644(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1006F4144(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 64);
  if (!v7)
  {
    v11 = *(a1 + 72);
    if (!v11)
    {
      v13 = sub_10000E92C();
      sub_100693F74(v13, 1);
    }

    if (v11 != a2 && (v12 = qword_100BCE910, os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT)))
    {
      *buf = 136446210;
      v17 = "fDescDisc.get() == command";
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
      v11 = *(a1 + 72);
      *(a1 + 72) = 0;
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *(a1 + 72) = 0;
    }

    (*(*v11 + 8))(v11);
LABEL_17:
    sub_1006EF384(a1, a3, a4);
    return;
  }

  if (v7 == a2 || (v8 = qword_100BCE910, !os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT)))
  {
    *(a1 + 64) = 0;
LABEL_5:
    (*(*v7 + 8))(v7);
    goto LABEL_6;
  }

  *buf = 136446210;
  v17 = "fServiceDisc.get() == command";
  _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
  v7 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v7)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10 = *a4;
  v9 = a4[1];
  while (v10 != v9)
  {
    if (*v10)
    {
      (*(**v10 + 8))(*v10);
      v9 = a4[1];
    }

    ++v10;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1006F43B4;
  v14[3] = &unk_100ADF940;
  v14[4] = a1;
  v15 = a3;
  sub_1006EF524(a1, v14);
}

uint64_t sub_1006F43CC(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = v2;
  }

  v6 = sub_1005B6C38(v3, v5);
  if (v4)
  {
    sub_100117644(v4);
  }

  if (!v6)
  {
    v8 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      v10 = *(a1 + 16);
      *buf = 67109378;
      v15 = v9;
      v16 = 2112;
      *v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to find service for characteristic handle 0x%04x on device %@", buf, 0x12u);
    }

    operator new();
  }

  v7 = v2 + 2;
  if (v6 >= (v2 + 2))
  {
    v11 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 16);
      *buf = 67109634;
      v15 = v7;
      v16 = 1024;
      *v17 = v6;
      *&v17[4] = 2112;
      *&v17[6] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting to discover descriptors in range [0x%04x, 0x%04x] on device %@", buf, 0x18u);
    }

    operator new();
  }

  (*(*a1 + 24))(a1, 0);
  return 0;
}

void sub_1006F4720(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100117644(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1006F4770(uint64_t a1)
{
  v30 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B6820(v2, *(a1 + 56));
  if (v3)
  {
    sub_100117644(v3);
  }

  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1008651B4(a1 + 56, a1);
    }

    goto LABEL_24;
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = sub_1005B6820(v5, *(a1 + 56));
  if (v6)
  {
    sub_100117644(v6);
  }

  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100865124(a1 + 56, a1);
    }

    goto LABEL_24;
  }

  v8 = *(v7 + 8);
  v9 = *(v8 + 20);
  *buf = *(v8 + 4);
  *&buf[16] = v9;
  sub_10000D03C(&v33, buf);
  *buf = xmmword_1008C4F2C;
  *&buf[16] = 0;
  if (!sub_10004E15C(&v33, buf))
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100865004(a1 + 56, a1);
    }

LABEL_24:
    v11 = 1;
LABEL_25:
    (*(*a1 + 24))(a1, v11);
    return;
  }

  if ((*(v7 + 72) & 0x30) == 0)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100865094(a1 + 56, a1);
    }

    v11 = 6;
    goto LABEL_25;
  }

  if (*(a1 + 58) == 1)
  {
    if ((*(v7 + 72) & 0x10) != 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    LOBYTE(v30) = v10;
  }

  else
  {
    v10 = 0;
  }

  sub_100007F20(buf, (v7 + 104));
  v12 = *buf;
  v13 = *&buf[8];
  if (*buf != *&buf[8])
  {
    v14 = *buf;
    while (1)
    {
      v15 = *v14;
      v16 = *(*v14 + 8);
      v17 = *(v16 + 20);
      *buf = *(v16 + 4);
      *&buf[16] = v17;
      sub_10000D03C(&v33, buf);
      *buf = xmmword_1008C4F68;
      *&buf[16] = 0;
      if (sub_10004E15C(&v33, buf))
      {
        break;
      }

      if (++v14 == v13)
      {
        goto LABEL_45;
      }
    }

    v18 = **(v15 + 8);
    v19 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Found client configuration descriptor at handle 0x%04x", buf, 8u);
    }

    if (v18)
    {
      v20 = qword_100BCE910;
      v21 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v21)
        {
          if (v10)
          {
            v22 = "notifications";
          }

          else
          {
            v22 = "indications";
          }

          v23 = *(a1 + 56);
          v24 = *(a1 + 16);
          *buf = 136446722;
          *&buf[4] = v22;
          *&buf[12] = 1024;
          *&buf[14] = v23;
          *&buf[18] = 2112;
          v32 = v24;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Enabling %{public}s on client configuration descriptor for characteristic at handle 0x%04x on device %@", buf, 0x1Cu);
        }
      }

      else if (v21)
      {
        v28 = *(a1 + 56);
        v29 = *(a1 + 16);
        *buf = 67109378;
        *&buf[4] = v28;
        *&buf[8] = 2112;
        *&buf[10] = v29;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Disabling notifications/indications on client configuration descriptor for characteristic at handle 0x%04x on device %@", buf, 0x12u);
      }

      sub_10000C704(buf, &v30, 2uLL);
      operator new();
    }
  }

LABEL_45:
  v25 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 56);
    v27 = *(a1 + 16);
    *buf = 67109378;
    *&buf[4] = v26;
    *&buf[8] = 2112;
    *&buf[10] = v27;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Unable to find client configuration descriptor for characteristic at handle 0x%04x on device %@", buf, 0x12u);
  }

  (*(*a1 + 24))(a1, 10);
  if (v12)
  {
    operator delete(v12);
  }
}

void sub_1006F4D08(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1006F4DC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[8];
  if (!v6)
  {
    v11 = a1[9];
    if (!v11)
    {
      v13 = sub_10000E92C();
      sub_100693F74(v13, 1);
    }

    if (v11 != a2 && (v12 = qword_100BCE910, os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT)))
    {
      *buf = 136446210;
      v17 = "fWriteCommand.get() == command";
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
      v11 = a1[9];
      a1[9] = 0;
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    else
    {
      a1[9] = 0;
    }

    (*(*v11 + 8))(v11);
LABEL_17:
    (*(*a1 + 24))(a1, a3);
    return;
  }

  if (v6 == a2 || (v8 = qword_100BCE910, !os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT)))
  {
    a1[8] = 0;
LABEL_5:
    (*(*v6 + 8))(v6);
    goto LABEL_6;
  }

  *buf = 136446210;
  v17 = "fTreeCommand.get() == command";
  _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
  v6 = a1[8];
  a1[8] = 0;
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10 = *a4;
  v9 = *(a4 + 8);
  while (v10 != v9)
  {
    if (*v10)
    {
      (*(**v10 + 8))(*v10);
      v9 = *(a4 + 8);
    }

    ++v10;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1006F5054;
  v14[3] = &unk_100ADF940;
  v14[4] = a1;
  v15 = a3;
  sub_1006EF524(a1, v14);
}

uint64_t sub_1006F5064(uint64_t a1)
{
  v29 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B6820(v2, *(a1 + 56));
  if (v3)
  {
    sub_100117644(v3);
  }

  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1008653F4(a1 + 56, a1);
    }

    return 1;
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = sub_1005B6820(v5, *(a1 + 56));
  if (v6)
  {
    sub_100117644(v6);
  }

  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100865364(a1 + 56, a1);
    }

    return 1;
  }

  v8 = *(v7 + 8);
  v9 = *(v8 + 20);
  *buf = *(v8 + 4);
  *&buf[16] = v9;
  sub_10000D03C(&v32, buf);
  *buf = xmmword_1008C4F2C;
  *&buf[16] = 0;
  if (!sub_10004E15C(&v32, buf))
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100865244(a1 + 56, a1);
    }

    return 1;
  }

  if ((*(v7 + 72) & 0x30) != 0)
  {
    if (*(a1 + 58) == 1)
    {
      if ((*(v7 + 72) & 0x10) != 0)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      LOBYTE(v29) = v10;
    }

    else
    {
      v10 = 0;
    }

    sub_100007F20(buf, (v7 + 104));
    v12 = *&buf[8];
    if (*buf != *&buf[8])
    {
      v13 = *buf;
      while (1)
      {
        v14 = *v13;
        v15 = *(*v13 + 8);
        v16 = *(v15 + 20);
        *buf = *(v15 + 4);
        *&buf[16] = v16;
        sub_10000D03C(&v32, buf);
        *buf = xmmword_1008C4F68;
        *&buf[16] = 0;
        if (sub_10004E15C(&v32, buf))
        {
          break;
        }

        if (++v13 == v12)
        {
          goto LABEL_44;
        }
      }

      v17 = **(v14 + 8);
      v18 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Found client configuration descriptor at handle 0x%04x", buf, 8u);
      }

      if (v17)
      {
        v19 = qword_100BCE910;
        v20 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          if (v20)
          {
            if (v10)
            {
              v21 = "notifications";
            }

            else
            {
              v21 = "indications";
            }

            v22 = *(a1 + 56);
            v23 = *(a1 + 16);
            *buf = 136315650;
            *&buf[4] = v21;
            *&buf[12] = 1024;
            *&buf[14] = v22;
            *&buf[18] = 2112;
            v31 = v23;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Enabling %s on client configuration descriptor at handle 0x%04x on device %@", buf, 0x1Cu);
          }
        }

        else if (v20)
        {
          v27 = *(a1 + 56);
          v28 = *(a1 + 16);
          *buf = 67109378;
          *&buf[4] = v27;
          *&buf[8] = 2112;
          *&buf[10] = v28;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Disabling notifications/indications on client configuration descriptor at handle 0x%04x on device %@", buf, 0x12u);
        }

        sub_10000C704(buf, &v29, 2uLL);
        operator new();
      }
    }

LABEL_44:
    v24 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 56);
      v26 = *(a1 + 16);
      *buf = 67109378;
      *&buf[4] = v25;
      *&buf[8] = 2112;
      *&buf[10] = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Don't have client configuration descriptor yet for characteristic at handle 0x%04x on device %@", buf, 0x12u);
    }

    operator new();
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_1008652D4(a1 + 56, a1);
  }

  return 6;
}

void sub_1006F5688(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006F5760(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1006EF1B4(a1, a2);
  *v5 = off_100B09348;
  v5[6] = &off_100B09380;
  sub_10000CB74(v5 + 7, a3);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return a1;
}

uint64_t sub_1006F57F0(uint64_t a1)
{
  *a1 = off_100B092E0;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100117644(v2);
  }

  return a1;
}

void sub_1006F5848(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 56);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 64) - v3) >> 2) > v2)
  {
    v4 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      sub_10003B85C(v3 + 20 * v2, __p);
      if (v12 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      v6 = *(a1 + 16);
      *buf = 136446466;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to discover services for next UUID %{public}s on device %@", buf, 0x16u);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    operator new();
  }

  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  sub_1006F5AF8(a1, __p);
  (***(a1 + 8))(*(a1 + 8), a1, 0, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1006F5ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (v17)
  {
    sub_100117644(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1006F5AF8(void *a1, uint64_t a2)
{
  for (i = a1[7]; i != a1[8]; i += 20)
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
    v5 = a1[3];
    v6 = a1[4];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = sub_1005B38CC(v5, i, &__p);
    if (v6)
    {
      sub_100117644(v6);
    }

    v8 = __p;
    if (!v7 && __p != v19)
    {
      v9 = *(a2 + 8);
      do
      {
        v10 = *(a2 + 16);
        if (v9 >= v10)
        {
          v11 = (v9 - *a2) >> 3;
          if ((v11 + 1) >> 61)
          {
            sub_1000C7698();
          }

          v12 = v10 - *a2;
          v13 = v12 >> 2;
          if (v12 >> 2 <= (v11 + 1))
          {
            v13 = v11 + 1;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v13;
          }

          if (v14)
          {
            sub_100008108(a2, v14);
          }

          *(8 * v11) = *v8;
          v9 = (8 * v11 + 8);
          v15 = *(a2 + 8) - *a2;
          v16 = (8 * v11 - v15);
          memcpy(v16, *a2, v15);
          v17 = *a2;
          *a2 = v16;
          *(a2 + 8) = v9;
          *(a2 + 16) = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v9++ = *v8;
        }

        *(a2 + 8) = v9;
        ++v8;
      }

      while (v8 != v19);
      v8 = __p;
    }

    if (v8)
    {
      v19 = v8;
      operator delete(v8);
    }
  }
}

void sub_1006F5C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v11)
  {
    sub_100117644(v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F5CAC(void *a1, uint64_t a2)
{
  v3 = a1[11];
  if (v3)
  {
    a1[11] = 0;
    (*(*v3 + 8))(v3);
    __p = 0;
    v8 = 0;
    v9 = 0;
    sub_1006F5AF8(a1, &__p);
    sub_1006EF384(a1, a2, &__p);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v5 = a1[12];
    if (!v5)
    {
      v6 = sub_10000E92C();
      sub_100693F74(v6, 1);
    }

    a1[12] = 0;
    (*(*v5 + 8))(v5);

    sub_1006F5848(a1);
  }
}

void sub_1006F5D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F5DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *a4;
  v6 = *(a4 + 8);
  if (*a4 != v6)
  {
    do
    {
      if (*v7)
      {
        (*(**v7 + 8))(*v7);
        v6 = *(a4 + 8);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006F5E90;
  v9[3] = &unk_100ADF940;
  v9[4] = a1;
  v10 = a3;
  sub_1006EF524(a1, v9);
}

uint64_t sub_1006F5EA8(uint64_t a1)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  if (0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 2) >= 4)
  {
    v4 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 16);
      buf = 0x404000202;
      buf_8 = 2112;
      buf_10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Number of UUIDs exceeds maximum (%d) - discovering all services on device %@", &buf, 0x12u);
    }

    operator new();
  }

  if (v2 != v3)
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      sub_10003B85C(v3 + 20 * *(a1 + 80), &buf);
      if (v13 >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      v8 = *(a1 + 16);
      *v14 = 136446466;
      v15 = p_buf;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to discover services for first UUID %{public}s on device %@", v14, 0x16u);
      if (v13 < 0)
      {
        operator delete(buf);
      }
    }

    operator new();
  }

  return 0;
}

void sub_1006F620C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100117644(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006F6234(uint64_t a1)
{
  v12 = 23;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B6820(v2, *(a1 + 56));
  if (v3)
  {
    sub_100117644(v3);
  }

  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100865614(a1 + 56, a1);
    }

    return 1;
  }

  v5 = *(v4 + 8);
  v6 = *(v5 + 20);
  *buf = *(v5 + 4);
  *&buf[16] = v6;
  sub_10000D03C(&v14, buf);
  *buf = xmmword_1008C4F2C;
  *&buf[16] = 0;
  if (!sub_10004E15C(&v14, buf))
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100865484(a1 + 56, a1);
    }

    return 1;
  }

  if ((*(a1 + 58) & 1) == 0)
  {
    if ((*(v4 + 72) & 4) == 0)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_100865514();
      }

      return 3;
    }

LABEL_20:
    v11 = 0;
    sub_1000216B4(&v11);
    sub_1002D4678(*(a1 + 40), &v12);
    sub_100022214(&v11);
    v8 = sub_10000C5E0(a1 + 64);
    if (v8 > v12 - 3)
    {
      v9 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_10000C5E0(a1 + 64);
        *buf = 134218240;
        *&buf[4] = v10;
        *&buf[12] = 1024;
        *&buf[14] = v12 - 3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Using Write Long Characteristic Value, as data exceeds PDU capacity at current MTU (%zu of available %u bytes)", buf, 0x12u);
      }

      operator new();
    }

    if (*(a1 + 58) == 1)
    {
      operator new();
    }

    operator new();
  }

  if ((*(v4 + 72) & 8) != 0)
  {
    goto LABEL_20;
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_1008655A8();
  }

  return 3;
}

uint64_t sub_1006F6A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 80) != a2)
  {
    v7 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_1008656A4(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  return sub_1006EF384(a1, a3, a4);
}

void sub_1006F6AA4(_DWORD *a1)
{
  v1 = a1[14];
  if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        sub_1006F6DC4();
      }
    }

    else
    {
      sub_1006F6C7C(a1);
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        sub_1006F6F00(a1);
        break;
      case 3:
        sub_1006F7050();
      case 4:
        (*(*a1 + 24))(a1, 0);
        break;
    }
  }
}

void sub_1006F6B10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 64) != a2)
  {
    v7 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_10086571C(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v16 = *a4;
  v15 = *(a4 + 8);
  while (v16 != v15)
  {
    if (*v16)
    {
      (*(**v16 + 8))(*v16);
      v15 = *(a4 + 8);
    }

    ++v16;
  }

  v17 = *(a1 + 56);
  if (v17 <= 1)
  {
    if (v17 == 1)
    {
      if (a3)
      {
        v18 = 4;
      }

      else
      {
        v18 = 2;
      }

      goto LABEL_16;
    }

    if (v17)
    {
      goto LABEL_17;
    }

LABEL_22:
    v19 = sub_10000E92C();
    sub_100693F74(v19, 1);
  }

  if (v17 == 3)
  {
    v18 = 4;
LABEL_16:
    *(a1 + 56) = v18;
    goto LABEL_17;
  }

  if (v17 == 2 || v17 == 4)
  {
    goto LABEL_22;
  }

LABEL_17:
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1006F6C6C;
  v20[3] = &unk_100ADF8F8;
  v20[4] = a1;
  sub_1006EF524(a1, v20);
}

void sub_1006F6C7C(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = xmmword_1008A4D50;
  v8 = 0;
  sub_10000D03C(&v9, &v7);
  sub_10003A364(&v7);
  v4 = sub_1005B68E8(v3, &v9, &v7);
  *(a1 + 72) = v4;
  if (v2)
  {
    sub_100117644(v2);
    v4 = *(a1 + 72);
  }

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 4;
  }

  *(a1 + 56) = v5;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006F71E4;
  v6[3] = &unk_100ADF8F8;
  v6[4] = a1;
  sub_1006EF524(a1, v6);
}

void sub_1006F6EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
    sub_100117644(v10);
  }

  _Unwind_Resume(a1);
}

void sub_1006F6F00(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  sub_10006C96C(v10, 10916);
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = xmmword_1008A4D50;
  v8 = 0;
  sub_10000D03C(&v9, &v7);
  v4 = sub_1005B68E8(v3, &v9, v10);
  *(a1 + 80) = v4;
  if (v2)
  {
    sub_100117644(v2);
    v4 = *(a1 + 80);
  }

  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  *(a1 + 56) = v5;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006F71EC;
  v6[3] = &unk_100ADF8F8;
  v6[4] = a1;
  sub_1006EF524(a1, v6);
}

void sub_1006F7050()
{
  v1 = 3;
  sub_10000C704(&v0, &v1, 1uLL);
  operator new();
}

void sub_1006F7174(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100117644(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1006F7210(uint64_t a1)
{
  switch(*(a1 + 56))
  {
    case 0:

      sub_1006F8978(a1);
      break;
    case 1:

      sub_1006F8ABC(a1);
      break;
    case 2:
      *__p = xmmword_1008A4BD4;
      v10 = 0;
      sub_1006F8CE8(a1, __p, 3);
      break;
    case 3:
      *__p = xmmword_1008A4BE8;
      v10 = 0;
      sub_1006F8CE8(a1, __p, 4);
      break;
    case 4:
      *__p = xmmword_1008A4BFC;
      v10 = 0;
      sub_1006F8CE8(a1, __p, 5);
      break;
    case 5:
      *__p = xmmword_1008A4C10;
      v10 = 0;
      sub_1006F8CE8(a1, __p, 6);
      break;
    case 6:
      *__p = xmmword_1008A4C24;
      v10 = 0;
      sub_1006F8CE8(a1, __p, 7);
      break;
    case 7:
      *__p = xmmword_1008A4C38;
      v10 = 0;
      sub_1006F8CE8(a1, __p, 8);
      break;
    case 8:
      *__p = xmmword_1008A4C4C;
      v10 = 0;
      sub_1006F8CE8(a1, __p, 9);
      break;
    case 9:
      *__p = xmmword_1008A4C60;
      v10 = 0;
      sub_1006F8CE8(a1, __p, 10);
      break;
    case 0xA:
      *__p = xmmword_1008A4C74;
      v10 = 0;
      sub_1006F8CE8(a1, __p, 11);
      break;
    case 0xB:
      *__p = xmmword_1008A4C88;
      v10 = 0;
      sub_1006F8CE8(a1, __p, 12);
      break;
    case 0xC:
      v2 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(a1 + 16);
        if (qword_100B508D0 != -1)
        {
          sub_100864E50();
        }

        v4 = off_100B508C8;
        v5 = *(a1 + 16);
        sub_10078FC7C(v4, v5, __p);
        if (v11 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        *buf = 138412546;
        v13 = v3;
        v14 = 2080;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed DIS discovery for device %@ %s", buf, 0x16u);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (qword_100B508D0 != -1)
      {
        sub_100865580();
      }

      sub_100785F60(off_100B508C8, *(a1 + 16), 1);
      if (qword_100B50900 != -1)
      {
        sub_100865794();
      }

      v7 = qword_100B508F8;
      v8 = *(a1 + 16);
      sub_10004DFB4(__p, v8);
      sub_1007093E0(v7, __p);

      (*(*a1 + 24))(a1, 0);
      break;
    default:
      return;
  }
}

void sub_1006F768C(uint64_t a1, uint64_t a2, int a3, uint64_t **a4)
{
  if (*(a1 + 64) != a2)
  {
    v7 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_10086571C(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *(a1 + 16);
  switch(*(a1 + 56))
  {
    case 0:
    case 0xC:
      v111 = sub_10000E92C();
      sub_100693F74(v111, 1);
    case 1:
      if (a3)
      {
        v16 = 12;
      }

      else
      {
        v16 = 2;
      }

      goto LABEL_28;
    case 2:
      if (!a3 && a4[1] != *a4)
      {
        v73 = *(**a4 + 8);
        v74 = *(v73 + 20);
        __dst = *(v73 + 4);
        v144 = v74;
        sub_10000D03C(&v146, &__dst);
        __dst = xmmword_1008C4FB8;
        v144 = 0;
        if (sub_10004E15C(v75, &__dst))
        {
          v76 = **a4;
          v77 = sub_10000C5F8(v76 + 72);
          v78 = sub_10000C5E0(v76 + 72);
          sub_100617064(&__dst, v77, v78);
          if (v145 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          v80 = [NSString stringWithUTF8String:p_dst];
          if (v145 < 0)
          {
            operator delete(__dst);
          }

          v81 = sub_100007EE8();
          v140[0] = _NSConcreteStackBlock;
          v140[1] = 3221225472;
          v140[2] = sub_1006F8620;
          v140[3] = &unk_100AE0B60;
          v141 = v15;
          v82 = v80;
          v142 = v82;
          sub_10000CA94(v81, v140);
        }
      }

      v16 = 3;
      goto LABEL_28;
    case 3:
      if (!a3 && a4[1] != *a4)
      {
        v63 = *(**a4 + 8);
        v64 = *(v63 + 20);
        __dst = *(v63 + 4);
        v144 = v64;
        sub_10000D03C(&v146, &__dst);
        __dst = xmmword_1008C4FB8;
        v144 = 0;
        if (sub_10004E15C(v65, &__dst))
        {
          v66 = **a4;
          v67 = sub_10000C5F8(v66 + 72);
          v68 = sub_10000C5E0(v66 + 72);
          sub_100617064(&__dst, v67, v68);
          if (v145 >= 0)
          {
            v69 = &__dst;
          }

          else
          {
            v69 = __dst;
          }

          v70 = [NSString stringWithUTF8String:v69];
          if (v145 < 0)
          {
            operator delete(__dst);
          }

          v71 = sub_100007EE8();
          v137[0] = _NSConcreteStackBlock;
          v137[1] = 3221225472;
          v137[2] = sub_1006F8674;
          v137[3] = &unk_100AE0B60;
          v138 = v15;
          v72 = v70;
          v139 = v72;
          sub_10000CA94(v71, v137);
        }
      }

      v16 = 4;
      goto LABEL_28;
    case 4:
      if (!a3 && a4[1] != *a4)
      {
        v45 = *(**a4 + 8);
        v46 = *(v45 + 20);
        __dst = *(v45 + 4);
        v144 = v46;
        sub_10000D03C(&v146, &__dst);
        __dst = xmmword_1008C4FB8;
        v144 = 0;
        if (sub_10004E15C(v47, &__dst))
        {
          v48 = **a4;
          v49 = sub_10000C5F8(v48 + 72);
          v50 = sub_10000C5E0(v48 + 72);
          sub_100617064(&__dst, v49, v50);
          if (v145 >= 0)
          {
            v51 = &__dst;
          }

          else
          {
            v51 = __dst;
          }

          v52 = [NSString stringWithUTF8String:v51];
          if (v145 < 0)
          {
            operator delete(__dst);
          }

          v53 = sub_100007EE8();
          v134[0] = _NSConcreteStackBlock;
          v134[1] = 3221225472;
          v134[2] = sub_1006F86C8;
          v134[3] = &unk_100AE0B60;
          v135 = v15;
          v54 = v52;
          v136 = v54;
          sub_10000CA94(v53, v134);
        }
      }

      v16 = 5;
      goto LABEL_28;
    case 5:
      if (!a3 && a4[1] != *a4)
      {
        v91 = *(**a4 + 8);
        v92 = *(v91 + 20);
        __dst = *(v91 + 4);
        v144 = v92;
        sub_10000D03C(&v146, &__dst);
        __dst = xmmword_1008C4FB8;
        v144 = 0;
        if (sub_10004E15C(v93, &__dst))
        {
          v94 = **a4;
          v95 = sub_10000C5F8(v94 + 72);
          v96 = sub_10000C5E0(v94 + 72);
          sub_100617064(&__dst, v95, v96);
          if (v145 >= 0)
          {
            v97 = &__dst;
          }

          else
          {
            v97 = __dst;
          }

          v98 = [NSString stringWithUTF8String:v97];
          if (v145 < 0)
          {
            operator delete(__dst);
          }

          v99 = sub_100007EE8();
          v131[0] = _NSConcreteStackBlock;
          v131[1] = 3221225472;
          v131[2] = sub_1006F871C;
          v131[3] = &unk_100AE0B60;
          v132 = v15;
          v100 = v98;
          v133 = v100;
          sub_10000CA94(v99, v131);
        }
      }

      v16 = 6;
      goto LABEL_28;
    case 6:
      if (!a3 && a4[1] != *a4)
      {
        v101 = *(**a4 + 8);
        v102 = *(v101 + 20);
        __dst = *(v101 + 4);
        v144 = v102;
        sub_10000D03C(&v146, &__dst);
        __dst = xmmword_1008C4FB8;
        v144 = 0;
        if (sub_10004E15C(v103, &__dst))
        {
          v104 = **a4;
          v105 = sub_10000C5F8(v104 + 72);
          v106 = sub_10000C5E0(v104 + 72);
          sub_100617064(&__dst, v105, v106);
          if (v145 >= 0)
          {
            v107 = &__dst;
          }

          else
          {
            v107 = __dst;
          }

          v108 = [NSString stringWithUTF8String:v107];
          if (v145 < 0)
          {
            operator delete(__dst);
          }

          v109 = sub_100007EE8();
          v128[0] = _NSConcreteStackBlock;
          v128[1] = 3221225472;
          v128[2] = sub_1006F8770;
          v128[3] = &unk_100AE0B60;
          v129 = v15;
          v110 = v108;
          v130 = v110;
          sub_10000CA94(v109, v128);
        }
      }

      v16 = 7;
      goto LABEL_28;
    case 7:
      if (!a3 && a4[1] != *a4)
      {
        v35 = *(**a4 + 8);
        v36 = *(v35 + 20);
        __dst = *(v35 + 4);
        v144 = v36;
        sub_10000D03C(&v146, &__dst);
        __dst = xmmword_1008C4FB8;
        v144 = 0;
        if (sub_10004E15C(v37, &__dst))
        {
          v38 = **a4;
          v39 = sub_10000C5F8(v38 + 72);
          v40 = sub_10000C5E0(v38 + 72);
          sub_100617064(&__dst, v39, v40);
          if (v145 >= 0)
          {
            v41 = &__dst;
          }

          else
          {
            v41 = __dst;
          }

          v42 = [NSString stringWithUTF8String:v41];
          if (v145 < 0)
          {
            operator delete(__dst);
          }

          v43 = sub_100007EE8();
          v125[0] = _NSConcreteStackBlock;
          v125[1] = 3221225472;
          v125[2] = sub_1006F87C4;
          v125[3] = &unk_100AE0B60;
          v126 = v15;
          v44 = v42;
          v127 = v44;
          sub_10000CA94(v43, v125);
        }
      }

      v16 = 8;
      goto LABEL_28;
    case 8:
      if (!a3 && a4[1] != *a4)
      {
        v55 = *(**a4 + 8);
        v56 = *(v55 + 20);
        __dst = *(v55 + 4);
        v144 = v56;
        sub_10000D03C(&v146, &__dst);
        __dst = xmmword_1008C4FB8;
        v144 = 0;
        if (sub_10004E15C(v57, &__dst))
        {
          v58 = **a4;
          v59 = sub_10000C5F8(v58 + 72);
          v60 = [NSData dataWithBytes:v59 length:sub_10000C5E0(v58 + 72)];
          v61 = sub_100007EE8();
          v122[0] = _NSConcreteStackBlock;
          v122[1] = 3221225472;
          v122[2] = sub_1006F8818;
          v122[3] = &unk_100AE0B60;
          v123 = v15;
          v62 = v60;
          v124 = v62;
          sub_10000CA94(v61, v122);
        }
      }

      v16 = 9;
      goto LABEL_28;
    case 9:
      if (!a3 && a4[1] != *a4)
      {
        v19 = *(**a4 + 8);
        v20 = *(v19 + 20);
        __dst = *(v19 + 4);
        v144 = v20;
        sub_10000D03C(&v146, &__dst);
        __dst = xmmword_1008C4FB8;
        v144 = 0;
        if (sub_10004E15C(v21, &__dst))
        {
          v22 = **a4;
          v23 = sub_10000C5F8(v22 + 72);
          v24 = [NSData dataWithBytes:v23 length:sub_10000C5E0(v22 + 72)];
          v25 = sub_100007EE8();
          v119[0] = _NSConcreteStackBlock;
          v119[1] = 3221225472;
          v119[2] = sub_1006F886C;
          v119[3] = &unk_100AE0B60;
          v120 = v15;
          v26 = v24;
          v121 = v26;
          sub_10000CA94(v25, v119);
        }
      }

      v16 = 10;
      goto LABEL_28;
    case 0xA:
      if (!a3 && a4[1] != *a4)
      {
        v27 = *(**a4 + 8);
        v28 = *(v27 + 20);
        __dst = *(v27 + 4);
        v144 = v28;
        sub_10000D03C(&v146, &__dst);
        __dst = xmmword_1008C4FB8;
        v144 = 0;
        if (sub_10004E15C(v29, &__dst))
        {
          v30 = **a4;
          v31 = sub_10000C5F8(v30 + 72);
          v32 = [NSData dataWithBytes:v31 length:sub_10000C5E0(v30 + 72)];
          v33 = sub_100007EE8();
          v116[0] = _NSConcreteStackBlock;
          v116[1] = 3221225472;
          v116[2] = sub_1006F88C0;
          v116[3] = &unk_100AE0B60;
          v117 = v15;
          v34 = v32;
          v118 = v34;
          sub_10000CA94(v33, v116);
        }
      }

      v16 = 11;
      goto LABEL_28;
    case 0xB:
      if (!a3 && a4[1] != *a4)
      {
        v83 = *(**a4 + 8);
        v84 = *(v83 + 20);
        __dst = *(v83 + 4);
        v144 = v84;
        sub_10000D03C(&v146, &__dst);
        __dst = xmmword_1008C4FB8;
        v144 = 0;
        if (sub_10004E15C(v85, &__dst))
        {
          v86 = **a4;
          v87 = sub_10000C5F8(v86 + 72);
          v88 = [NSData dataWithBytes:v87 length:sub_10000C5E0(v86 + 72)];
          v89 = sub_100007EE8();
          v113[0] = _NSConcreteStackBlock;
          v113[1] = 3221225472;
          v113[2] = sub_1006F8914;
          v113[3] = &unk_100AE0B60;
          v114 = v15;
          v90 = v88;
          v115 = v90;
          sub_10000CA94(v89, v113);
        }
      }

      v16 = 12;
LABEL_28:
      *(a1 + 56) = v16;
      break;
    default:
      break;
  }

  v18 = *a4;
  v17 = a4[1];
  while (v18 != v17)
  {
    if (*v18)
    {
      (*(**v18 + 8))(*v18);
      v17 = a4[1];
    }

    ++v18;
  }

  v112[0] = _NSConcreteStackBlock;
  v112[1] = 3221225472;
  v112[2] = sub_1006F8968;
  v112[3] = &unk_100ADF8F8;
  v112[4] = a1;
  sub_1006EF524(a1, v112);
}

void sub_1006F8620(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078E6EC(v2, v3, v4);
}

void sub_1006F8674(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078E958(v2, v3, v4);
}

void sub_1006F86C8(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078EA94(v2, v3, v4);
}

void sub_1006F871C(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078EBD0(v2, v3, v4);
}

void sub_1006F8770(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078ED0C(v2, v3, v4);
}

void sub_1006F87C4(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078EE48(v2, v3, v4);
}

void sub_1006F8818(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078EF84(v2, v3, v4);
}

void sub_1006F886C(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078F0C0(v2, v3, v4);
}

void sub_1006F88C0(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078F1FC(v2, v3, v4);
}

void sub_1006F8914(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078F8D8(v2, v3, v4);
}

void sub_1006F8978(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = xmmword_1008A4BC0;
  v8 = 0;
  sub_10000D03C(&v9, &v7);
  sub_10003A364(&v7);
  v4 = sub_1005B68E8(v3, &v9, &v7);
  if (v2)
  {
    sub_100117644(v2);
  }

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 12;
  }

  *(a1 + 56) = v5;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006F8FF4;
  v6[3] = &unk_100ADF8F8;
  v6[4] = a1;
  sub_1006EF524(a1, v6);
}

void sub_1006F8ABC(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = xmmword_1008A4BC0;
  v7 = 0;
  sub_10000D03C(&v8, &v6);
  sub_10003A364(&v6);
  v4 = sub_1005B68E8(v3, &v8, &v6);
  if (v2)
  {
    sub_100117644(v2);
  }

  if (v4)
  {
    operator new();
  }

  *(a1 + 56) = 12;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006F8FFC;
  v5[3] = &unk_100ADF8F8;
  v5[4] = a1;
  sub_1006EF524(a1, v5);
}

void sub_1006F8CAC(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100117644(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1006F8CE8(uint64_t a1, __n128 *a2, int a3)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = xmmword_1008A4BC0;
  v16 = 0;
  sub_10000D03C(&v17, &v15);
  sub_10003A364(&v15);
  v8 = sub_1005B68E8(v6, &v17, &v15);
  if (v7)
  {
    sub_100117644(v7);
  }

  if (v8)
  {
    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = xmmword_1008A4BC0;
    v16 = 0;
    sub_10000D03C(&v17, &v15);
    v13 = *a2;
    v14 = a2[1].n128_u32[0];
    sub_10000D03C(&v15, &v13);
    v11 = sub_1005B68E8(v10, &v17, &v15);
    if (v9)
    {
      sub_100117644(v9);
    }

    if (v11)
    {
      operator new();
    }
  }

  else
  {
    a3 = 12;
  }

  *(a1 + 56) = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1006F9004;
  v12[3] = &unk_100ADF8F8;
  v12[4] = a1;
  sub_1006EF524(a1, v12);
}

void sub_1006F8F9C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100117644(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006F9028(uint64_t result)
{
  v1 = result;
  v2 = *(result + 60);
  if (v2 <= 3)
  {
    if (v2 > 1)
    {
      if (v2 != 2)
      {
        goto LABEL_28;
      }

      if (qword_100B50900 != -1)
      {
        sub_1008645D0();
      }

      v4 = qword_100B508F8;
      v5 = *(v1 + 16);
      sub_10004DFB4(&v15, v5);
      sub_100708044(v4, &v15);

      if (*(v1 + 58) == 1)
      {
        return sub_1006F98E4(v1);
      }

      else
      {
LABEL_28:
        *(&v15 + 3) = 0;
        LODWORD(v15) = 0;
        sub_1000841FC(&v15);
        if (v15 == 1 && BYTE1(v15) <= 0x3Fu)
        {
          return sub_1006F9B24(v1);
        }

        else
        {
          return sub_1006FA1CC(v1);
        }
      }
    }

    else
    {
      if (!v2)
      {

        sub_1006F9434(result);
      }

      if (v2 == 1)
      {

        sub_1006F9784(result);
      }
    }
  }

  else if (v2 <= 5)
  {
    if (v2 == 4)
    {

      return sub_1006F9E04(result);
    }

    else
    {

      return sub_1006FA1CC(result);
    }
  }

  else
  {
    switch(v2)
    {
      case 6:
        v7 = *(result + 24);
        v6 = *(result + 32);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = xmmword_1008A4B5C;
        v14 = 0;
        sub_10000D03C(&v15, &v13);
        v11 = xmmword_1008A4BAC;
        v12 = 0;
        sub_10000D03C(&v13, &v11);
        v8 = sub_1005B68E8(v7, &v15, &v13);
        if (v6)
        {
          sub_100117644(v6);
        }

        if (v8 && (v9 = *(v8 + 8), v10 = *(v9 + 20), v15 = *(v9 + 4), v16 = v10, sub_10000D03C(&v13, &v15), v15 = xmmword_1008C4F2C, v16 = 0, sub_10004E15C(&v13, &v15)))
        {
          return sub_1006FA4AC(v1);
        }

        else
        {
          return sub_1006FA7A8(v1);
        }

      case 7:

        return sub_1006FA7A8(result);
      case 8:
        v3 = *(*result + 24);

        return v3();
    }
  }

  return result;
}

void sub_1006F9404(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100117644(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F9434(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_1008657BC();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 16);
  sub_10004DFB4(buf, v3);
  v4 = sub_100050290(v2, buf);

  v5 = *(a1 + 56);
  if (*(a1 + 56) != 0 && v4)
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 16);
      *buf = 67109378;
      v12 = v5;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to set MTU to %u on device %@", buf, 0x12u);
    }

    operator new();
  }

  sub_1006EF46C(a1, *(a1 + 56));
  v8 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 56);
    v10 = *(a1 + 16);
    *buf = 67109378;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skipping MTU %u set on remote to discovering services for device %@", buf, 0x12u);
  }

  sub_1006F9784(a1);
}

void sub_1006F966C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1008657D0();
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F9698(uint64_t a1, uint64_t *a2, int a3)
{
  v5 = *a2;
  *a2 = 0;
  v6 = *(a1 + 64);
  *(a1 + 64) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    v5 = *(a1 + 64);
  }

  *(a1 + 60) = a3;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v10[0] = *(a1 + 24);
  v10[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v7;
  sub_1006EF22C(v5, v7, v10, *(a1 + 40));
  if (v8)
  {
    sub_100117644(v8);
  }
}

void sub_1006F9764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
    sub_100117644(v10);
  }

  _Unwind_Resume(a1);
}

void sub_1006F9784(uint64_t a1)
{
  v2 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 16);
    *buf = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Attempting to find all services on device %@", buf, 0xCu);
  }

  operator new();
}

void sub_1006F98C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1008657D0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F98E4(void *a1)
{
  v3 = a1[3];
  v2 = a1[4];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = xmmword_1008A4B48;
  v9 = 0;
  sub_10000D03C(&v10, &v8);
  sub_10003A364(&v8);
  v4 = sub_1005B68E8(v3, &v10, &v8);
  if (v2)
  {
    sub_100117644(v2);
  }

  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v5 + 20);
    v10 = *(v5 + 4);
    v11 = v6;
    sub_10000D03C(&v8, &v10);
    v10 = xmmword_1008C4EF0;
    v11 = 0;
    if (sub_10004E15C(&v8, &v10))
    {
      operator new();
    }
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100865804(a1);
  }

  return (*(*a1 + 24))(a1, 10);
}

void sub_1006F9AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1008657D0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F9B24(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = xmmword_1008A4B48;
  v11 = 0;
  sub_10000D03C(buf, &v10);
  sub_10003A364(&v10);
  v4 = sub_1005B68E8(v2, buf, &v10);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v5 + 20);
    *buf = *(v5 + 4);
    v13 = v6;
    sub_10000D03C(&v10, buf);
    *buf = xmmword_1008C4EF0;
    v13 = 0;
    if (sub_10004E15C(&v10, buf))
    {
      v7 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 16);
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding GAP reconnection characteristic handle on device %@", buf, 0xCu);
      }

      operator new();
    }
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10086588C(a1);
  }

  return (*(*a1 + 24))(a1, 10);
}

void sub_1006F9DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1008657D0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F9E04(uint64_t a1)
{
  v13 = 0;
  v12 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v11[3] = 0;
  *v11 = 0;
  v17 = xmmword_1008A4B48;
  v18 = 0;
  sub_10000D03C(buf, &v17);
  v15 = xmmword_1008A4B98;
  v16 = 0;
  sub_10000D03C(&v17, &v15);
  v4 = sub_1005B68E8(v2, buf, &v17);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4 && (v5 = *(v4 + 8), v6 = *(v5 + 20), *buf = *(v5 + 4), *&buf[16] = v6, sub_10000D03C(&v17, buf), *buf = xmmword_1008C4F2C, *&buf[16] = 0, sub_10004E15C(&v17, buf)))
  {
    sub_1000841FC(v11);
    if (v11[0] == 1 && v11[1] < 0x40uLL)
    {
      LOBYTE(v12) = v11[6];
      BYTE1(v12) = v11[5];
      BYTE2(v12) = v11[4];
      HIBYTE(v12) = v11[3];
      LOBYTE(v13) = v11[2];
      HIBYTE(v13) = v11[1];
      v7 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v8 = sub_100063D0C();
        v9 = *(a1 + 16);
        *buf = 138412546;
        *&buf[4] = v8;
        *&buf[12] = 2112;
        *&buf[14] = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Writing local address %@ into GAP reconnection characteristic value on device %@", buf, 0x16u);
      }

      sub_10000C704(buf, &v12, 6uLL);
      operator new();
    }

    return sub_1006FA1CC(a1);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100865914(a1);
    }

    return (*(*a1 + 24))(a1, 10);
  }
}

void sub_1006FA140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    sub_1008657D0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FA1CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = xmmword_1008A4B5C;
  v11 = 0;
  sub_10000D03C(buf, &v10);
  sub_10003A364(&v10);
  v4 = sub_1005B68E8(v2, buf, &v10);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v5 + 20);
    *buf = *(v5 + 4);
    v13 = v6;
    sub_10000D03C(&v10, buf);
    *buf = xmmword_1008C4EF0;
    v13 = 0;
    if (sub_10004E15C(&v10, buf))
    {
      v7 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 16);
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding GATT service changed characteristic handle on device %@", buf, 0xCu);
      }

      operator new();
    }
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10086599C(a1);
  }

  return (*(*a1 + 24))(a1, 10);
}

void sub_1006FA460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1008657D0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FA4AC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = xmmword_1008A4B5C;
  v15 = 0;
  sub_10000D03C(buf, &v14);
  v12 = xmmword_1008A4BAC;
  v13 = 0;
  sub_10000D03C(&v14, &v12);
  v4 = sub_1005B68E8(v2, buf, &v14);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v5 + 20);
    *buf = *(v5 + 4);
    v17 = v6;
    sub_10000D03C(&v14, buf);
    *buf = xmmword_1008C4F2C;
    v17 = 0;
    if (sub_10004E15C(&v14, buf))
    {
      v7 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 16);
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enabling GATT service changed indications on device %@", buf, 0xCu);
      }

      operator new();
    }
  }

  v9 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 16);
    *buf = 138412290;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to locate GATT service changed characteristic handle on device %@", buf, 0xCu);
  }

  return (*(*a1 + 24))(a1, 10);
}

void sub_1006FA770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1008657D0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FA7A8(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = xmmword_1008A4D28;
  v23 = 0;
  sub_10000D03C(buf, &v22);
  sub_10003A364(&v22);
  v4 = sub_1005B68E8(v2, buf, &v22);
  if (v3)
  {
    sub_100117644(v3);
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = xmmword_1008A4E80;
  v23 = 13091918;
  sub_10000D03C(buf, &v22);
  sub_10003A364(&v22);
  v7 = sub_1005B68E8(v5, buf, &v22);
  if (v6)
  {
    sub_100117644(v6);
  }

  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = xmmword_1008A4D3C;
  v23 = 0;
  sub_10000D03C(buf, &v22);
  sub_10003A364(&v22);
  v10 = sub_1005B68E8(v8, buf, &v22);
  if (v9)
  {
    sub_100117644(v9);
  }

  if (v4 && (v11 = *(v4 + 8), v12 = *(v11 + 20), *buf = *(v11 + 4), v25 = v12, sub_10000D03C(&v22, buf), *buf = xmmword_1008C4EF0, v25 = 0, sub_10004E15C(&v22, buf)) || v7 && (v13 = *(v7 + 8), v14 = *(v13 + 20), *buf = *(v13 + 4), v25 = v14, sub_10000D03C(&v21, buf), *buf = xmmword_1008C4EF0, v25 = 0, sub_10004E15C(&v21, buf)) || v10 && (v15 = *(v10 + 8), v16 = *(v15 + 20), *buf = *(v15 + 4), v25 = v16, sub_10000D03C(&v20, buf), *buf = xmmword_1008C4EF0, v25 = 0, sub_10004E15C(&v20, buf)))
  {
    v17 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 16);
      *buf = 138412290;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Reading DIS information on HID, MIDI, or GHS device %@", buf, 0xCu);
    }

    operator new();
  }

  return (*(*a1 + 24))(a1, 0);
}

void sub_1006FAB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    sub_1008657D0();
  }

  _Unwind_Resume(exception_object);
}

void sub_1006FAB88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 64) != a2)
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_10086571C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (*(a1 + 60) == 2)
  {
    v14 = *a4;
    if (a4[1] != *a4)
    {
      __p = 0;
      v35 = 0;
      v36 = 0;
      do
      {
        v15 = *(*v14 + 8);
        v16 = *(v15 + 20);
        v39 = *(v15 + 4);
        v40 = v16;
        sub_10000D03C(&v37, &v39);
        v39 = xmmword_1008C4EF0;
        v40 = 0;
        if (sub_10004E15C(&v37, &v39))
        {
          v17 = *v14;
          v39 = *(*v14 + 72);
          v40 = *(v17 + 88);
          sub_10000D03C(&v37, &v39);
          v18 = v35;
          if (v35 >= v36)
          {
            v21 = 0xCCCCCCCCCCCCCCCDLL * ((v35 - __p) >> 2);
            v22 = v21 + 1;
            if (v21 + 1 > 0xCCCCCCCCCCCCCCCLL)
            {
              sub_1000C7698();
            }

            if (0x999999999999999ALL * ((v36 - __p) >> 2) > v22)
            {
              v22 = 0x999999999999999ALL * ((v36 - __p) >> 2);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v36 - __p) >> 2) >= 0x666666666666666)
            {
              v23 = 0xCCCCCCCCCCCCCCCLL;
            }

            else
            {
              v23 = v22;
            }

            if (v23)
            {
              sub_100018404(&__p, v23);
            }

            v24 = 4 * ((v35 - __p) >> 2);
            v25 = v37;
            *(v24 + 16) = v38;
            *v24 = v25;
            v26 = __p;
            v27 = v35;
            v28 = (20 * v21 + __p - v35);
            if (__p != v35)
            {
              v29 = (v24 + __p - v35);
              do
              {
                v30 = *v26;
                *(v29 + 4) = v26[1].n128_u32[0];
                *v29 = v30;
                v29 += 20;
                v26 = (v26 + 20);
              }

              while (v26 != v27);
              v26 = __p;
            }

            v20 = (v24 + 20);
            __p = v28;
            v35 = (v24 + 20);
            v36 = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            v19 = v37;
            v35[1].n128_u32[0] = v38;
            *v18 = v19;
            v20 = &v18[1].n128_u32[1];
          }

          v35 = v20;
        }

        ++v14;
      }

      while (v14 != a4[1]);
      sub_1006EF4C8(a1, &__p);
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }
    }
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1006FAEAC;
  v33[3] = &unk_100ADF8F8;
  v33[4] = a1;
  sub_1006EF524(a1, v33);
  v32 = *a4;
  v31 = a4[1];
  while (v32 != v31)
  {
    if (*v32)
    {
      (*(**v32 + 8))(*v32);
      v31 = a4[1];
    }

    ++v32;
  }
}

void sub_1006FAE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006FAEBC(uint64_t a1, uint64_t a2)
{
  if (qword_100B50900 != -1)
  {
    sub_1008645D0();
  }

  sub_1007111A0(qword_100B508F8, *(a1 + 16));

  sub_1006EF324(a1, a2);
}

void sub_1006FAF24(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FAF60(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FAF9C(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FAFD8(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FB014(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FB050(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FB08C(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FB0C8(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FB104(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FB140(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FB17C(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FB1B4(void *a1)
{
  *a1 = off_100B095A8;
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FB230(void *a1)
{
  *a1 = off_100B095A8;
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FB2C0(void *a1)
{
  *a1 = off_100B095D8;
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FB33C(void *a1)
{
  *a1 = off_100B095D8;
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FB3CC(void *a1)
{
  *a1 = off_100B09608;
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FB448(void *a1)
{
  *a1 = off_100B09608;
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FB4D8(void *a1)
{
  *a1 = off_100B09638;
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FB554(void *a1)
{
  *a1 = off_100B09638;
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FB5E4(uint64_t a1)
{
  *a1 = off_100B09668;
  *(a1 + 48) = &off_100B096A0;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FB694(uint64_t a1)
{
  *a1 = off_100B09668;
  *(a1 + 48) = &off_100B096A0;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FB758(uint64_t a1)
{
  *a1 = off_100B096B8;
  *(a1 + 48) = &off_100B096F0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FB838(uint64_t a1)
{
  *a1 = off_100B096B8;
  *(a1 + 48) = &off_100B096F0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FB92C(void *a1)
{
  *a1 = off_100B09708;
  a1[6] = &off_100B09740;
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FB9FC(void *a1)
{
  *a1 = off_100B09708;
  a1[6] = &off_100B09740;
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FBAE0(void *a1)
{
  *a1 = off_100B09758;
  a1[6] = &off_100B09790;
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FBBB0(void *a1)
{
  *a1 = off_100B09758;
  a1[6] = &off_100B09790;
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FBC94(void *a1)
{
  *a1 = off_100B097A8;
  a1[6] = &off_100B097E0;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  a1[8] = &off_100AE0A78;
  v3 = a1[9];
  if (v3)
  {
    sub_10000C808(v3);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FBD60(void *a1)
{
  *a1 = off_100B097A8;
  a1[6] = &off_100B097E0;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  a1[8] = &off_100AE0A78;
  v3 = a1[9];
  if (v3)
  {
    sub_10000C808(v3);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FBE40(void *a1)
{
  *a1 = off_100B097F8;
  a1[6] = &off_100B09830;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FBEE0(void *a1)
{
  *a1 = off_100B097F8;
  a1[6] = &off_100B09830;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FBF94(void *a1)
{
  *a1 = off_100B09848;
  a1[6] = &off_100B09880;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FC034(void *a1)
{
  *a1 = off_100B09848;
  a1[6] = &off_100B09880;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FC0E8(void *a1)
{
  *a1 = off_100B09898;
  a1[6] = &off_100B098D0;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FC188(void *a1)
{
  *a1 = off_100B09898;
  a1[6] = &off_100B098D0;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FC23C(void *a1)
{
  *a1 = off_100B09348;
  a1[6] = &off_100B09380;
  v2 = a1[12];
  a1[12] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[11];
  a1[11] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FC31C(void *a1)
{
  *a1 = off_100B09348;
  a1[6] = &off_100B09380;
  v2 = a1[12];
  a1[12] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[11];
  a1[11] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FC478(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v7 = sub_1006EF1B4(a1, a2);
  *v7 = off_100B095A8;
  *(v7 + 42) = a3;
  v8 = *(a4 + 8);
  *(a1 + 48) = &off_100AE0A78;
  *(a1 + 56) = v8;
  if (v8)
  {
    sub_10000C69C(v8);
  }

  return a1;
}

uint64_t sub_1006FC578(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v7 = sub_1006EF1B4(a1, a2);
  *v7 = off_100B09638;
  *(v7 + 42) = a3;
  v8 = *(a4 + 8);
  *(a1 + 48) = &off_100AE0A78;
  *(a1 + 56) = v8;
  if (v8)
  {
    sub_10000C69C(v8);
  }

  return a1;
}

uint64_t sub_1006FC610(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v7 = sub_1006EF1B4(a1, a2);
  *v7 = off_100B09608;
  *(v7 + 42) = a3;
  v8 = *(a4 + 8);
  *(a1 + 48) = &off_100AE0A78;
  *(a1 + 56) = v8;
  if (v8)
  {
    sub_10000C69C(v8);
  }

  return a1;
}

uint64_t sub_1006FC6A8(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v7 = sub_1006EF1B4(a1, a2);
  *v7 = off_100B095D8;
  *(v7 + 42) = a3;
  v8 = *(a4 + 8);
  *(a1 + 48) = &off_100AE0A78;
  *(a1 + 56) = v8;
  if (v8)
  {
    sub_10000C69C(v8);
  }

  return a1;
}

id sub_1006FC7A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  return v3;
}

BOOL sub_1006FC7C4(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 == 0;
}

std::string *sub_1006FC7DC@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v2 = a2;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = (a1 + 32);
  LODWORD(a2) = *(a1 + 55);
  if ((a2 & 0x80000000) == 0)
  {
    *&v2->__r_.__value_.__l.__data_ = *&v3->__r_.__value_.__l.__data_;
    v2->__r_.__value_.__r.__words[2] = *(a1 + 48);
    strcpy(v18, "()- ");
    goto LABEL_4;
  }

  sub_100008904(v2, *(a1 + 32), *(a1 + 40));
  LODWORD(a2) = *(a1 + 55);
  strcpy(v18, "()- ");
  if ((a2 & 0x80000000) == 0)
  {
LABEL_4:
    a2 = a2;
    v5 = v3;
    if (!a2)
    {
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  v5 = *(a1 + 32);
  a2 = *(a1 + 40);
  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_5:
  v6 = 0;
  while (1)
  {
    v7 = v5->__r_.__value_.__s.__data_[v6];
    if (v7 == 44 || v7 == 59)
    {
      break;
    }

    if (a2 == ++v6)
    {
      goto LABEL_16;
    }
  }

  if (a2 != v6 && v6 != -1)
  {
    std::string::basic_string(&v17, v3, 0, v6, &v18[7]);
    if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v2->__r_.__value_.__l.__data_);
    }

    *v2 = v17;
  }

LABEL_16:
  for (i = 0; i != 4; ++i)
  {
    size = HIBYTE(v2->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v10 = v2;
    }

    else
    {
      v10 = v2->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = v2->__r_.__value_.__l.__size_;
    }

    v11 = sub_100545740(v10, v10 + size, &v18[i]);
    v12 = HIBYTE(v2->__r_.__value_.__r.__words[2]);
    v13 = v12;
    v14 = v2 + v12;
    if (v13 >= 0)
    {
      v15 = v2;
    }

    else
    {
      v14 = (v2->__r_.__value_.__r.__words[0] + v2->__r_.__value_.__l.__size_);
      v15 = v2->__r_.__value_.__r.__words[0];
    }

    result = std::string::erase(v2, v11 - v15, v14 - v11);
  }

  return result;
}

void sub_1006FC958(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1006FC97C(uint64_t a1)
{
  std::string::assign(a1, "");
  result = std::string::assign((a1 + 32), "");
  *(a1 + 24) = -127;
  return result;
}

uint64_t sub_1006FC9C0(uint64_t result)
{
  *result = off_100B09948;
  *(result + 8) = off_100B099B8;
  *(result + 16) = off_100B099F8;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = result + 16;
  *(result + 64) = 0;
  return result;
}

void sub_1006FCA40(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_1006FD950((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

void sub_1006FCB14(uint64_t a1, uint64_t a2)
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
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

uint64_t sub_1006FCC60(uint64_t a1)
{
  result = *(a1 + 64);
  if (result)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1006FCD04;
    v3[3] = &unk_100ADF8F8;
    v3[4] = result;
    result = (*(*result + 16))(result, v3);
    *(a1 + 64) = 0;
  }

  return result;
}

uint64_t sub_1006FCD04(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1006FCED4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v3 = (*(*v2 + 32))(v2, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1006FCF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FD000(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v3 = (*(*v2 + 64))(v2, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1006FD098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FD0B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v3 = (*(*v2 + 72))(v2, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1006FD14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FD1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 64);
  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v8 = *(a3 + 16);
  }

  v5 = (*(*v4 + 104))(v4, a2, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1006FD27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FD298(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v3 = (*(*v2 + 112))(v2, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1006FD330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006FD3F4(uint64_t a1)
{
  v2 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending 'operator status changed' notification to telephony listeners", v3, 2u);
  }

  sub_1000D9624(a1 + 24, &stru_100B09A50);
}

void sub_1006FD47C(uint64_t a1)
{
  v2 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending 'wireless technology changed' notification to telephony listeners", v3, 2u);
  }

  sub_1000D9624(a1 + 24, &stru_100B09A70);
}

void sub_1006FD504(uint64_t a1)
{
  v2 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending 'registration status changed' notification to telephony listeners", v3, 2u);
  }

  sub_1000D9624(a1 + 24, &stru_100B09A90);
}

void sub_1006FD58C(uint64_t a1, char a2)
{
  v4 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending 'signal strength changed' notification to telephony listeners", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006FD7B0;
  v5[3] = &unk_100B09AB0;
  v6 = a2;
  sub_1000D9624(a1 + 24, v5);
}

void sub_1006FD664(uint64_t a1, char a2)
{
  v4 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending 'transmit state changed' notification to telephony listeners", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006FD7E0;
  v5[3] = &unk_100B09AB0;
  v6 = a2;
  sub_1000D9624(a1 + 24, v5);
}

void *sub_1006FD810(void *a1)
{
  *a1 = off_100B09948;
  a1[1] = off_100B099B8;
  a1[2] = off_100B099F8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1006FD8A0(void *a1)
{
  *a1 = off_100B09948;
  a1[1] = off_100B099B8;
  a1[2] = off_100B099F8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  operator delete();
}

char *sub_1006FD950(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1006FDAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006FE30C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_1006FE6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003A1C64(a1, 1952538980);
  *result = &off_100B09AE0;
  *(result + 400) = 0;
  *(result + 408) = 0;
  *(result + 416) = a2;
  *(result + 424) = a3;
  *(result + 432) = 0;
  *(result + 436) = 0;
  *(result + 448) = 0;
  return result;
}

void sub_1006FE744(uint64_t a1)
{
  sub_1003A1D74(a1);

  operator delete();
}

void sub_1006FE77C(uint64_t a1, char *__s1, const __CFNumber *a3)
{
  if (!strcmp(__s1, "kBTAudioMsgPropertySpatialOn"))
  {
    *valuePtr = 0;
    CFNumberGetValue(a3, kCFNumberSInt32Type, valuePtr);
    if (valuePtr[0])
    {
      (*(**(a1 + 424) + 8))(*(a1 + 424), a1, 1);
    }

    else
    {
      v6 = **(a1 + 424);
      if ((valuePtr[0] & 2) != 0)
      {
        (*v6)();
      }

      else
      {
        v6[1]();
        (***(a1 + 424))(*(a1 + 424), a1, 0);
      }
    }

    return;
  }

  if (!strcmp(__s1, "kBTAudioMsgPropertyWSModeEnabled"))
  {
    CFBooleanGetValue(a3);
    v7 = *(**(a1 + 424) + 16);

    v7();
  }

  else
  {
    if (!strcmp(__s1, "kBTAudioMsgPropertyDynamicLatencyAudioAndInputAggregationOn"))
    {
      CFBooleanGetValue(a3);
      v8 = *(**(a1 + 424) + 24);

      goto LABEL_37;
    }

    if (!strcmp(__s1, "kBTAudioMsgPropertyEnableSoftwareVolume"))
    {
      CFBooleanGetValue(a3);
      v8 = *(**(a1 + 424) + 32);

      goto LABEL_37;
    }

    if (!strcmp(__s1, "kBTAudioMsgPropertyPMEOnBuds"))
    {
      CFBooleanGetValue(a3);
      v8 = *(**(a1 + 424) + 40);

      goto LABEL_37;
    }

    if (!strcmp(__s1, "kBTAudioMsgPropertySpatialAudioActive"))
    {
      CFBooleanGetValue(a3);
      v8 = *(**(a1 + 424) + 64);

      goto LABEL_37;
    }

    if (strcmp(__s1, "kBTAudioMsgPropertySpatialAudioAppBasedMode"))
    {
      if (strcmp(__s1, "kBTHeadtrackingAvailabilityChanged"))
      {
        if (!strcmp(__s1, "kBTAudioMsgUnifiedUSBCDict"))
        {
          BOOLean = 0;
          value = 0;
          LOBYTE(v13) = 0;
          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgUnifiedUSBCBTAddress", &value))
          {
            v10 = [value copy];
          }

          else
          {
            v10 = 0;
          }

          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgUnifiedUSBCStatus", &BOOLean))
          {
            CFNumberGetValue(BOOLean, kCFNumberSInt8Type, &v13);
          }

          v12 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 138412546;
            *&valuePtr[4] = v10;
            v17 = 1024;
            v18 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unpacking kBTAudioMsgUnifiedUSBCDict for address: %@, status: %d", valuePtr, 0x12u);
          }

          if (_os_feature_enabled_impl())
          {
            (*(**(a1 + 424) + 72))(*(a1 + 424), a1, v10, v13);
          }
        }

        else
        {

          sub_1003A432C(a1, __s1, a3);
        }

        return;
      }

      CFBooleanGetValue(a3);
      v8 = *(**(a1 + 424) + 104);

LABEL_37:
      v8();
      return;
    }

    value = 0;
    *valuePtr = 0;
    BOOLean = 0;
    v13 = 0;
    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertySpatialBundleID", valuePtr))
    {
      v9 = [*valuePtr copy];
    }

    else
    {
      v9 = 0;
    }

    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertySpatialMode", &value))
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, &v13);
    }

    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyHeadTrack", &BOOLean))
    {
      if (CFBooleanGetValue(BOOLean))
      {
        v11 = 0xFFFFFFFFLL;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0xFFFFFFFFLL;
    }

    (*(**(a1 + 424) + 56))(*(a1 + 424), a1, v9, v13, v11);
  }
}

void sub_1006FEE8C(uint64_t a1, int a2, CFBooleanRef BOOLean)
{
  if (a2 == 14)
  {
    CFBooleanGetValue(BOOLean);
    v4 = *(**(a1 + 424) + 48);

    v4();
  }

  else
  {

    sub_1003A48F4();
  }
}

void sub_1006FEF60(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  switch(a2)
  {
    case '\'':
      value = 0;
      LODWORD(number) = 0;
      if (CFDictionaryGetValueIfPresent(theDict, @"kBTAudioMsgPropertyAmpAvgSkipDurationInSecond", &value))
      {
        CFNumberGetValue(value, kCFNumberIntType, &number);
        v7 = number;
      }

      else
      {
        v7 = 0;
      }

      (*(**(a1 + 424) + 96))(*(a1 + 424), a1, v7);
      break;
    case '&':
      v6 = *(**(a1 + 424) + 88);

      v6();
      break;
    case '%':
      number = 0;
      value = 0;
      v8 = 130;
      valuePtr = 0;
      if (CFDictionaryGetValueIfPresent(theDict, @"kBTAudioMsgPropertyAmpRouteReason", &value))
      {
        CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
      }

      if (CFDictionaryGetValueIfPresent(theDict, @"kBTAudioMsgPropertyAmpCodecID", &number))
      {
        CFNumberGetValue(number, kCFNumberIntType, &v8);
        v5 = v8;
      }

      else
      {
        v5 = 130;
      }

      (*(**(a1 + 424) + 80))(*(a1 + 424), a1, valuePtr, v5);
      break;
    default:

      sub_1003A48A8();
      break;
  }
}

void sub_1006FF118(uint64_t a1, char *a2, unsigned int a3)
{
  if (*(a1 + 432) == 1)
  {
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a2;
      v8 = a2[1];
      v9 = a2[2];
      v10 = a2[3];
      v17[0] = 67110144;
      v17[1] = a3;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v8;
      v22 = 1024;
      v23 = v9;
      v24 = 1024;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AMP link data len=%u data=%.8x, %.8x, %.8x, %.8x", v17, 0x20u);
    }
  }

  if (_os_feature_enabled_impl())
  {
    if (a2 && a3 && (sub_1003A2BF4(a1) || sub_1003A2C04(a1)))
    {
      v11 = a2[6];
      v12 = v11 & 0xF;
      v13 = v11 >> 4;
      if (v12 == 8)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if (v14 == 1)
      {
        sub_1003A3150(a1, a2, a3, 1);
      }

      else
      {
        v16 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
        {
          sub_100865ADC(v14, v16);
        }
      }
    }

    else
    {
      v15 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
      {
        sub_100865A38(a3, a2 != 0, v15);
      }
    }
  }
}

void sub_1006FF2D8(uint64_t a1, int a2, int a3)
{
  valuePtr = a3;
  *keys = *&off_100B09BF0;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v6 = v5;
  v7 = &kCFBooleanTrue;
  if (!a2)
  {
    v7 = &kCFBooleanFalse;
  }

  values[0] = *v7;
  values[1] = v5;
  v8 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_1003A3724(a1, "kBTAudioMsgPropertyAmpIsEnabled", v8);
  CFRelease(v6);
  CFRelease(v8);
}

void sub_1006FF3D8(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 436) < a2)
  {
    *(a1 + 436) = a2;
  }

  ++*(a1 + 440);
  *(a1 + 448) += a2;
  if (qword_100B50940 != -1)
  {
    sub_100865B54();
  }

  sub_10062F210(off_100B50938, *(a1 + 416), *(a1 + 448) / *(a1 + 440), *(a1 + 436));
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 436);
    v5 = *(a1 + 440);
    v6 = *(a1 + 448);
    v7[0] = 67109632;
    v7[1] = v4;
    v8 = 1024;
    v9 = v5;
    v10 = 2048;
    v11 = v6 / v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AMP Metric SendAMPSkipDuration Max %u ms, count %u, avg %llu", v7, 0x18u);
  }
}

uint64_t sub_1006FF71C(uint64_t a1)
{
  *a1 = off_100B09C30;
  v2 = a1 + 256;
  *(a1 + 256) = off_100B09CA0;
  dispatch_release(*(a1 + 512));
  CFRelease(*(a1 + 520));

  sub_1003FCA4C(v2);

  return sub_10032F580(a1);
}

void sub_1006FF7B4(_Unwind_Exception *a1)
{
  sub_1003FCA4C(v2);
  sub_10032F580(v1);
  _Unwind_Resume(a1);
}

void sub_1006FF7E4(uint64_t a1)
{
  sub_1006FF71C(a1);

  operator delete();
}

void sub_1006FF81C(uint64_t a1)
{
  sub_1006FF71C(a1 - 256);

  operator delete();
}

uint64_t sub_1006FF858(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  *(a1 + 504) = 1;
  v4 = 0;
  sub_1000216B4(&v4);
  if (sub_1002EF24C(sub_1006FFA08, off_100B09CF0, 0x3EFu, 0x3B01u, (a1 + 504), &unk_100B09D18))
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100865B68();
    }

LABEL_10:
    v2 = 1;
    goto LABEL_11;
  }

  *&v7 = &unk_100B09D48;
  WORD4(v7) = 3;
  *&v8 = &unk_100B09CC0;
  WORD4(v8) = 1;
  *&v5 = &unk_100B09D90;
  WORD4(v5) = 3;
  *&v6 = &unk_100B09CD8;
  WORD4(v6) = 1;
  byte_100BC7048 = 1;
  word_100BC704A = 1;
  dword_100BC7050 = *(a1 + 504);
  if (sub_1002F7E1C(&v7, (a1 + 496)))
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100865BD8();
    }

    goto LABEL_10;
  }

  v2 = sub_1002F7E1C(&v5, (a1 + 500));
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100865C48();
    }

    goto LABEL_10;
  }

LABEL_11:
  sub_10002249C(&v4);
  return v2;
}

void sub_1006FFA08(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (qword_100B54EC0 != -1)
  {
    sub_100865CB8();
  }

  v6 = off_100B54EB8;

  sub_1006FFFB0(v6, a1, a4);
}

uint64_t sub_1006FFA64(uint64_t a1)
{
  v4 = 0;
  sub_1000216B4(&v4);
  sub_1002F8018(*(a1 + 496));
  sub_1002F8018(*(a1 + 500));
  if (sub_1002EF558(*(a1 + 504)) == 101)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100865CCC();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  sub_10002249C(&v4);
  return v2;
}

uint64_t sub_1006FFB30(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v21 = unk_100B09DE8;
    v22 = unk_100B09DD8;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v4 = sub_10053BFB4(a2, &v21, 4u, &v18);
    if ((v4 & 1) != 0 || sub_10053BFB4(a2, &v22, 4u, &v18))
    {
      v6 = v18;
      v5 = v19;
      if (v18 != v19)
      {
        v7 = v18;
        while (1)
        {
          if (*v7 == 6 && *(v7 + 1) == 2)
          {
            v9 = v7[1];
            v10 = *v9 == 3 && *(v9 + 8) == 3;
            if (v10 && *(v9 + 16) == 1)
            {
              break;
            }
          }

          v7 += 2;
          if (v7 == v19)
          {
            v11 = -1;
            goto LABEL_26;
          }
        }

        v11 = *(v9 + 24);
LABEL_26:
        while (v6 != v5)
        {
          *buf = *v6;
          sub_10037D4F4(buf);
          ++v6;
          v5 = v19;
        }

        if (v11 != -1)
        {
          v14 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, __p);
            if (v24 >= 0)
            {
              v15 = __p;
            }

            else
            {
              v15 = __p[0];
            }

            v16 = "Old WiAP UUID";
            *buf = 136446722;
            if (v4)
            {
              v16 = "New WiAP UUID";
            }

            *&buf[4] = v15;
            *&buf[12] = 1024;
            *&buf[14] = v11;
            v26 = 2082;
            v27 = v16;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Initiating outgoing Wireless IAP connection request to device %{public}s on rfcomm channel %d, %{public}s", buf, 0x1Cu);
            if (v24 < 0)
            {
              operator delete(__p[0]);
            }
          }

          LOBYTE(__p[0]) = 0;
          sub_1000216B4(__p);
          *buf = 0;
          if (sub_1002EF8BC(sub_1006FFEB8, off_100B09CF0, a2 + 128, v11, 0x3EFu, 0x3B01u, buf, &unk_100B09D18))
          {
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              sub_100865DBC();
            }

            v12 = 305;
          }

          else
          {
            sub_10057E218(a1, a2, *buf);
            v12 = 0;
          }

          sub_10002249C(__p);
          goto LABEL_45;
        }
      }

      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100865E2C();
      }
    }

    else
    {
      v13 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a2, buf);
        sub_100865D48(buf, __p, v13);
      }
    }

    v12 = 305;
LABEL_45:
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    return v12;
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100865E68();
  }

  return 1;
}

void sub_1006FFE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006FFEB8(int a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B54EC0 != -1)
  {
    sub_100865CB8();
  }

  v5 = off_100B54EB8;

  sub_100700220(v5, a1, a3);
}

uint64_t sub_1006FFF14(void *a1, unint64_t a2)
{
  v2 = sub_10057E30C(a1, a2);
  v5 = 0;
  sub_1000216B4(&v5);
  v3 = sub_1002EFF1C(v2, 1818);
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100851590();
    }

    v3 = 1;
  }

  sub_10002249C(&v5);
  return v3;
}