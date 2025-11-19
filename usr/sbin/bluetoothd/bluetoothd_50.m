void sub_10033DD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10033DD54(uint64_t a1, __n128 *a2, unsigned int a3, unsigned int a4, int a5)
{
  if (!sub_1000E2140(a2, 14))
  {
    return 11;
  }

  v10 = sub_1000E3188(a2);
  sub_10053D6E4(a2, a4 | (a3 << 8));
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == a2)
      {
        v12 = sub_100331844(a1, a2, 12, a4 | (a3 << 8), 2u);
        goto LABEL_9;
      }
    }
  }

  v12 = 1;
LABEL_9:
  v13 = sub_10000C798();
  if ((*(*v13 + 352))(v13) & 1) != 0 || (v14 = sub_10000C798(), ((*(*v14 + 416))(v14)) || (v15 = sub_10000C798(), (*(*v15 + 456))(v15)))
  {
    sub_10033142C(a1, a2);
    if (v10 != 0xFFFF && a5 == 2 && v10 != (a4 | (a3 << 8)))
    {
      if (qword_100B50AB0 != -1)
      {
        sub_10081A1B0();
      }

      sub_100560FB0(off_100B50AA8, a2, 4097);
    }

    v18[0] = 0;
    v18[1] = 0;
    v19 = 0;
    sub_100579608(v18, 4, a2);
    v19 = __PAIR64__(a3, a4);
    v16 = sub_10000F034();
    (*(*v16 + 56))(v16, v18);
  }

  sub_1000088CC(v20);
  return v12;
}

void sub_10033DF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10033DF90(uint64_t a1, __n128 *a2, int a3, unsigned int a4)
{
  if (*(a1 + 328) == 1)
  {
    if (a3)
    {
      v8 = -1;
    }

    else
    {
      v8 = -3;
    }

    v9 = sub_1000E356C(a2);
    v10 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v11 = __p[0];
      v12 = "Disabled";
      if (v27 >= 0)
      {
        v11 = __p;
      }

      if (a3)
      {
        v12 = "Enabled";
      }

      *buf = 136315394;
      v29 = v11;
      v30 = 2080;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Set InEarDetection for device %s, InEarDetection = %s", buf, 0x16u);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v13 = sub_1005468F0(a2, a3, 1);
    sub_10033E2FC(v13, a2);
    __p[0] = 0;
    __p[1] = 0;
    sub_100007F88(__p, a1 + 360);
    if (a2)
    {
      for (i = *(a1 + 336); i != *(a1 + 344); ++i)
      {
        v15 = *i;
        if (**i == a2)
        {
          sub_1003393C0(a1, a2, 0xFFFFLL, v8);
          if (a3)
          {
            v25 = 2;
          }

          else
          {
            v25 = 1;
          }

          v16 = sub_100331844(a1, a2, 10, v25, a4);
          if (a3)
          {
            v17 = 0;
          }

          else
          {
            *(v15 + 8) = 0;
            if (*(v15 + 9) != 3)
            {
              *(v15 + 9) = 0;
            }

            v17 = 1;
          }

          goto LABEL_19;
        }
      }
    }

    v17 = 0;
    v16 = 312;
LABEL_19:
    sub_10000801C(__p);
    v18 = sub_10000C798();
    if ((*(*v18 + 352))(v18))
    {
      sub_10033142C(a1, a2);
    }

    v19 = sub_10000C798();
    v20 = (*(*v19 + 352))(v19);
    if (v20 & 1) != 0 || (v21 = sub_10000C798(), v20 = (*(*v21 + 416))(v21), (v20) || (v22 = sub_10000C798(), v20 = (*(*v22 + 456))(v22), v20))
    {
      if (v17)
      {
        if (a4 != 2)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v23 = v9;
        if (a4 != 2)
        {
          v23 = 1;
        }

        if ((v23 & 1) != 0 || (a3 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (qword_100B50AB0 != -1)
      {
        sub_10081A1B0();
      }

      v20 = sub_100560FB0(off_100B50AA8, a2, 4097);
    }

    if (!v17)
    {
LABEL_36:
      sub_1000088CC(__p);
      return v16;
    }

LABEL_35:
    sub_10033BBAC(v20, a2);
    goto LABEL_36;
  }

  return 111;
}

uint64_t sub_10033E2FC(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(a2, __p);
    v4 = v9 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notify in ear enabled change for device %s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = sub_1000D999C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100354EC0;
  v7[3] = &unk_100ADF8F8;
  v7[4] = a2;
  sub_10000CA94(v5, v7);
  if (qword_100B50AE0 != -1)
  {
    sub_10081A23C();
  }

  sub_1004DACA4(qword_100B50AD8, a2);
  if (qword_100B508E0 != -1)
  {
    sub_10081A1D8();
  }

  return sub_100518DC8(off_100B508D8, a2);
}

uint64_t sub_10033E47C(uint64_t a1, __n128 *a2, int a3)
{
  v6 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v7 = v28 >= 0 ? __p : *__p;
    *buf = 136446466;
    *&buf[4] = v7;
    v23 = 1024;
    v24 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received primary bud side notification for device %{public}s, with bud side = %d from other end of magnet", buf, 0x12u);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(*__p);
    }
  }

  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      v9 = *i;
      if (**i == a2)
      {
        v9[11] = a3;
        v10 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v9[10];
          v12 = v9[9];
          *__p = 67109632;
          *&__p[4] = a3;
          *&__p[8] = 1024;
          *&__p[10] = v11;
          *v27 = 1024;
          *&v27[2] = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Primary bud info over magnet link -> %d, current connection primary bud info -> %d, current connection secondary bud in ear status -> %d", __p, 0x14u);
        }

        v13 = sub_10000C798();
        if (!(*(*v13 + 368))(v13))
        {
          break;
        }

        v14 = 0;
        if (a3 != 3 && v9[10] != a3)
        {
          if (v9[9] != 3)
          {
            break;
          }

          v15 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, buf);
            v16 = v25 >= 0 ? buf : *buf;
            v17 = v9[10];
            *__p = 136446722;
            *&__p[4] = v16;
            *&__p[12] = 1024;
            *v27 = v17;
            *&v27[4] = 1024;
            v28 = a3;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Info update from Magnet, Primary bud side  for device %{public}s seen locally is different from that of companion, we see  %d, and companion sees %d. Requesting connected bud to go secondary", __p, 0x18u);
            if (v25 < 0)
            {
              operator delete(*buf);
            }
          }

          v14 = sub_100331844(a1, a2, 8, 2, 1u);
          v18 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, __p);
            v19 = v28 >= 0 ? __p : *__p;
            *buf = 136315138;
            *&buf[4] = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Schedule reconnection to W1 device after LSTO (5 seconds) on Gizmo, device addr : %s", buf, 0xCu);
            if (SHIBYTE(v28) < 0)
            {
              operator delete(*__p);
            }
          }

          *__p = a2[8].n128_u32[0];
          *&__p[4] = a2[8].n128_u16[2];
          if (qword_100B50AC0 != -1)
          {
            sub_10081A96C();
          }

          sub_100595470(off_100B50AB8, __p);
        }

        goto LABEL_34;
      }
    }
  }

  v14 = 0;
LABEL_34:
  sub_1000088CC(v21);
  return v14;
}

uint64_t sub_10033E80C(uint64_t a1, uint64_t a2)
{
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      v5 = *i;
      if (**i == a2)
      {
        if (sub_100338390(*i))
        {
          v9 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 605;
            if (*(v5 + 617))
            {
              v17 = 611;
            }

            v18 = v5 + v17;
            v19 = *(v18 + 4);
            v21 = *v18;
            v22 = v19;
            v20 = sub_100304810(&v21, v10, v11, v12, v13, v14, v15, v16);
            *buf = 136446210;
            v25 = v20;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Peer source %{public}s is currently connected in TiPi, skip connection stealing", buf, 0xCu);
          }

          v6 = 17;
        }

        else
        {
          if (sub_100337E54(a1, a2))
          {
            sub_100337EC0(a1, v5);
            v6 = 0;
            goto LABEL_9;
          }

          v6 = 1;
        }

        goto LABEL_7;
      }
    }
  }

  v6 = 7;
LABEL_7:
  v7 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v25) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "reformTriangle: Conditions not met for easy pairing, result %d", buf, 8u);
  }

LABEL_9:
  sub_1000088CC(v23);
  return v6;
}

void sub_10033E9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10033E9E4(uint64_t a1)
{
  v2 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ----------------- AACP connections ------------------", buf, 2u);
  }

  *buf = 0;
  v41 = 0;
  v42 = 0;
  sub_100007F20(buf, (a1 + 336));
  v3 = *buf;
  if (*buf != v41)
  {
    while (1)
    {
      v4 = **v3;
      v5 = *(*v3 + 20);
      v6 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v4, &__p);
        p_p = &__p;
        if (v52 < 0)
        {
          p_p = __p;
        }

        *v43 = 136446466;
        *&v43[4] = p_p;
        v44 = 1024;
        LODWORD(v45) = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump: Device %{public}s (pId 0x%04X)", v43, 0x12u);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p);
        }
      }

      if ((v5 - 8194) > 0xE || ((1 << (v5 - 2)) & 0x409B) == 0)
      {
        v37 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v38 = sub_1000E2C2C(v4);
          v39 = "no";
          if (v38)
          {
            v39 = "yes";
          }

          LODWORD(__p) = 136446210;
          *(&__p + 4) = v39;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "statedump:   Dev-fused: %{public}s", &__p, 0xCu);
        }
      }

      __p = 0uLL;
      v52 = 0;
      sub_1000E2D2C(v4, 0xAu, &__p);
      v9 = HIBYTE(v52);
      v10 = SHIBYTE(v52);
      if (v52 < 0)
      {
        v9 = *(&__p + 1);
      }

      v11 = qword_100BCE8C0;
      if (v9 >= 2 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        v12 = __p;
        if (v10 >= 0)
        {
          v12 = &__p;
        }

        *v43 = 136446210;
        *&v43[4] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "statedump:   Firmware version: %{public}s", v43, 0xCu);
        v11 = qword_100BCE8C0;
      }

      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        v14 = sub_1000E3314(v4);
        v15 = "unknown";
        if (v14 <= 2u)
        {
          v15 = off_100AED308[v14 & 3];
        }

        *v43 = 136446466;
        *&v43[4] = "Mic mode";
        v44 = 2082;
        v45 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "statedump:   %{public}s: %{public}s", v43, 0x16u);
      }

      if (sub_1003391A4(v13, v4))
      {
        v16 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v17 = sub_1000E356C(v4);
          *v43 = 136446466;
          v18 = "Disabled";
          if (v17)
          {
            v18 = "Enabled";
          }

          *&v43[4] = "In Ear detection";
          v44 = 2082;
          v45 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "statedump:   %{public}s: %{public}s", v43, 0x16u);
        }
      }

      if (sub_1000E2140(v4, 30))
      {
        break;
      }

      if (sub_1000E2140(v4, 14))
      {
        v20 = 12;
        goto LABEL_33;
      }

      if (v5 - 8194) < 0xF && ((0x409Bu >> (v5 - 2)))
      {
        v20 = 4;
LABEL_33:
        v19 = sub_1000E3188(v4);
LABEL_34:
        v21 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v22 = sub_100333C10(a1, v20, v19, v43);
          v23 = sub_100333BE4(v22, v20);
          v24 = v43;
          if (v46 < 0)
          {
            v24 = *v43;
          }

          *v47 = 136446466;
          v48 = v23;
          v49 = 2082;
          v50 = v24;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "statedump:   %{public}s: %{public}s", v47, 0x16u);
          if (v46 < 0)
          {
            operator delete(*v43);
          }
        }
      }

      if (sub_1000E2140(v4, 16) || sub_1000E2140(v4, 17))
      {
        v25 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v26 = sub_1000E3284(v4);
          sub_100333C10(a1, 13, v26, v43);
          v27 = v43;
          if (v46 < 0)
          {
            v27 = *v43;
          }

          *v47 = 136446466;
          v48 = "Listen mode";
          v49 = 2082;
          v50 = v27;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "statedump:   %{public}s: %{public}s", v47, 0x16u);
          if (v46 < 0)
          {
            operator delete(*v43);
          }
        }
      }

      if (sub_1000E2140(v4, 28))
      {
        v28 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v29 = sub_1000E32CC(v4);
          v30 = sub_1003551F4(v29, v29);
          sub_100007E30(v43, v30);
          v31 = v43;
          if (v46 < 0)
          {
            v31 = *v43;
          }

          *v47 = 136446466;
          v48 = "Listening Mode Configs";
          v49 = 2082;
          v50 = v31;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "statedump:   %{public}s: %{public}s", v47, 0x16u);
          if (v46 < 0)
          {
            operator delete(*v43);
          }
        }
      }

      if (sub_1000E2140(v4, 16) && sub_1000E2140(v4, 1))
      {
        v32 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v33 = sub_1005493C4(v4);
          v34 = "unknown";
          if (v33 == 1)
          {
            v34 = "Enabled";
          }

          if (v33 == 2)
          {
            v35 = "Disabled";
          }

          else
          {
            v35 = v34;
          }

          sub_100007E30(v43, v35);
          v36 = v43;
          if (v46 < 0)
          {
            v36 = *v43;
          }

          *v47 = 136446466;
          v48 = "One Bud ANC Mode";
          v49 = 2082;
          v50 = v36;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "statedump:   %{public}s: %{public}s", v47, 0x16u);
          if (v46 < 0)
          {
            operator delete(*v43);
          }
        }
      }

      if (SHIBYTE(v52) < 0)
      {
        operator delete(__p);
      }

      if (++v3 == v41)
      {
        v3 = *buf;
        goto LABEL_75;
      }
    }

    v19 = sub_1000E06EC(v4);
    v20 = 22;
    goto LABEL_34;
  }

LABEL_75:
  if (v3)
  {
    v41 = v3;
    operator delete(v3);
  }
}

id sub_10033F114(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_100B6D2D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6D2D0))
  {
    v21 = +[NSCharacterSet alphanumericCharacterSet];
    qword_100B6D2C8 = [v21 invertedSet];

    __cxa_guard_release(&qword_100B6D2D0);
  }

  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v3 = sub_1000E6554(off_100B508E8, __p, 1);
  v11 = [NSString stringWithFormat:@"%s", sub_100304810(a2, v4, v5, v6, v7, v8, v9, v10)];
  v12 = [v11 stringByReplacingOccurrencesOfString:@":" withString:&stru_100B0F9E0];

  v13 = sub_10000E92C();
  if ((*(*v13 + 8))(v13))
  {
    if (v3)
    {
      sub_1000C23E0(v3, __p);
      if (v23 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      v15 = [NSString stringWithUTF8String:v14];
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      v16 = [v15 componentsSeparatedByCharactersInSet:qword_100B6D2C8];
      v17 = [v16 componentsJoinedByString:&stru_100B0F9E0];

      if ([v17 length] < 0x41)
      {
        v3 = v17;
      }

      else
      {
        v18 = [v17 substringToIndex:64];

        v3 = v18;
      }
    }

    v19 = [NSString stringWithFormat:@"%@_%@", v12, v3];
  }

  else
  {
    v19 = v12;
  }

  return v19;
}

id sub_10033F3C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10033F114(a1, a2);
  v3 = [NSString stringWithFormat:@"/private/var/mobile/Library/Logs/Bluetooth/AccessoryVersionInfo_%@.txt", v2];

  return v3;
}

uint64_t sub_10033F444(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  v4 = qword_100BCE8C0;
  if (*(a1 + 328))
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v8 = v13 >= 0 ? __p : __p[0];
      *buf = 67109635;
      v15 = a4;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2081;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendSmartRoutingInformation: Sending SR 2.0 info of length %u to %{private, mask.hash}s", buf, 0x1Cu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v9 = sub_10018A788((a2 + 128), a3, a4);
    sub_100022214(buf);
    if (v9 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B090();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v10 = sub_1000DD584(off_100B50A98, v9, 10000);
    sub_10002249C(buf);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B054();
    }

    return 111;
  }

  return v10;
}

uint64_t sub_10033F61C(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  v4 = qword_100BCE8C0;
  if (*(a1 + 328))
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v8 = v13 >= 0 ? __p : __p[0];
      *buf = 67109635;
      v15 = a4;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2081;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendConversationDetectMessage: Sending CD Message of length %u to %{private, mask.hash}s", buf, 0x1Cu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v9 = sub_10018A8D8((a2 + 128), a3, a4);
    sub_100022214(buf);
    if (v9 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B13C();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v10 = sub_1000DD584(off_100B50A98, v9, 10000);
    sub_10002249C(buf);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B100();
    }

    return 111;
  }

  return v10;
}

uint64_t sub_10033F7F4(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  v4 = qword_100BCE8C0;
  if (*(a1 + 328))
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v8 = v13 >= 0 ? __p : __p[0];
      *buf = 67109635;
      v15 = a4;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2081;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendSleepDetectionUpdateMessage: Sending SDU Message of length %u to %{private, mask.hash}s", buf, 0x1Cu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v9 = sub_10018B46C((a2 + 128), a3, a4);
    sub_100022214(buf);
    if (v9 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B1E8();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v10 = sub_1000DD584(off_100B50A98, v9, 10000);
    sub_10002249C(buf);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B1AC();
    }

    return 111;
  }

  return v10;
}

uint64_t sub_10033F9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = qword_100BCE8C0;
  if (*(a1 + 328))
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 134218499;
      v14 = a3;
      v15 = 2160;
      v16 = 1752392040;
      v17 = 2081;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "sendFeatureProxCardStatusUpdate: Sending prox card status bitmask 0x%02llX to %{private, mask.hash}s", buf, 0x20u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_100539460(a2);
    sub_1005393CC(a2, v7 | a3);
    buf[0] = 0;
    sub_1000216B4(buf);
    v8 = sub_10018AFFC((a2 + 128), a3);
    sub_100022214(buf);
    if (v8 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B294();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v9 = sub_1000DD584(off_100B50A98, v8, 10000);
    sub_10002249C(buf);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B258();
    }

    return 111;
  }

  return v9;
}

void sub_10033FB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10033FBB0(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4)
{
  v4 = qword_100BCE8C0;
  if (*(a1 + 328))
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v8 = v13 >= 0 ? __p : __p[0];
      *buf = 67109635;
      v15 = a3;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2081;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendSourceContextMessage: Sending source context message of length %u to %{private, mask.hash}s", buf, 0x1Cu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v9 = sub_10018B0C0((a2 + 128), a3, a4);
    sub_100022214(buf);
    if (v9 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B340();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v10 = sub_1000DD584(off_100B50A98, v9, 10000);
    sub_10002249C(buf);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B304();
    }

    return 111;
  }

  return v10;
}

uint64_t sub_10033FD88(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  if (*(a1 + 328))
  {
    v14[0] = 0;
    v14[1] = 0;
    sub_100007F88(v14, a1 + 360);
    if (a2)
    {
      for (i = *(a1 + 336); i != *(a1 + 344); ++i)
      {
        if (**i == a2)
        {
          v17[0] = 0;
          sub_1000216B4(v17);
          v11 = sub_10018AC6C((a2 + 128), a3, a4);
          sub_100022214(v17);
          v12 = qword_100BCE8C0;
          if (v11)
          {
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              sub_10081B3EC();
            }
          }

          else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *a4;
            *buf = 67109120;
            v16 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sendAdaptiveVolumeMessage: message sent of subtype %u", buf, 8u);
          }

          if (qword_100B50AA0 != -1)
          {
            sub_100819F0C();
          }

          v9 = sub_1000DD584(off_100B50A98, v11, 10000);
          sub_10002249C(v17);
          goto LABEL_13;
        }
      }
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, buf);
      sub_10081A678();
    }

    v9 = 312;
LABEL_13:
    sub_1000088CC(v14);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B3B0();
    }

    return 111;
  }

  return v9;
}

uint64_t sub_10033FFAC(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 *a4)
{
  if (*(a1 + 328))
  {
    v14[0] = 0;
    v14[1] = 0;
    sub_100007F88(v14, a1 + 360);
    if (a2)
    {
      for (i = *(a1 + 336); i != *(a1 + 344); ++i)
      {
        if (**i == a2)
        {
          v17[0] = 0;
          sub_1000216B4(v17);
          v11 = sub_10018B23C((a2 + 128), a3, a4);
          sub_100022214(v17);
          v12 = qword_100BCE8C0;
          if (v11)
          {
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              sub_10081B498();
            }
          }

          else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *a4;
            *buf = 67109120;
            v16 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sendPMEConfigMessage: message sent of subtype %u", buf, 8u);
          }

          if (qword_100B50AA0 != -1)
          {
            sub_100819F0C();
          }

          v9 = sub_1000DD584(off_100B50A98, v11, 10000);
          sub_10002249C(v17);
          goto LABEL_13;
        }
      }
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, buf);
      sub_10081A678();
    }

    v9 = 312;
LABEL_13:
    sub_1000088CC(v14);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B45C();
    }

    return 111;
  }

  return v9;
}

uint64_t sub_1003401D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 328))
  {
    v9[0] = 0;
    v9[1] = 0;
    sub_100007F88(v9, a1 + 360);
    if (a2)
    {
      for (i = *(a1 + 336); i != *(a1 + 344); ++i)
      {
        if (**i == a2)
        {
          v8[0] = 0;
          sub_1000216B4(v8);
          v7 = sub_10018B3B8((a2 + 128));
          sub_100022214(v8);
          if (v7 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            sub_10081B544();
          }

          if (qword_100B50AA0 != -1)
          {
            sub_100819F0C();
          }

          v5 = sub_1000DD584(off_100B50A98, v7, 10000);
          sub_10002249C(v8);
          goto LABEL_13;
        }
      }
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, v8);
      sub_10081A678();
    }

    v5 = 312;
LABEL_13:
    sub_1000088CC(v9);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B508();
    }

    return 111;
  }

  return v5;
}

void sub_100340364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100340394(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4)
{
  if (*(a1 + 328))
  {
    v13[0] = 0;
    v13[1] = 0;
    sub_100007F88(v13, a1 + 360);
    if (a2)
    {
      for (i = *(a1 + 336); i != *(a1 + 344); ++i)
      {
        if (**i == a2)
        {
          v12[0] = 0;
          sub_1000216B4(v12);
          v11 = sub_10018ADBC((a2 + 128), a3, a4);
          sub_100022214(v12);
          if (v11 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            sub_10081B5F0();
          }

          if (qword_100B50AA0 != -1)
          {
            sub_100819F0C();
          }

          v9 = sub_1000DD584(off_100B50A98, v11, 10000);
          sub_10002249C(v12);
          goto LABEL_13;
        }
      }
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, v12);
      sub_10081A678();
    }

    v9 = 312;
LABEL_13:
    sub_1000088CC(v13);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B5B4();
    }

    return 111;
  }

  return v9;
}

void sub_100340540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100340570(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (*(a1 + 328) != 1)
  {
    return 111;
  }

  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == a2)
      {
        v12 = 0;
        sub_1000216B4(&v12);
        v11 = sub_10018B5BC((a2 + 128), 0, a3, a4);
        sub_100022214(&v12);
        if (qword_100B50AA0 != -1)
        {
          sub_100819F0C();
        }

        v9 = sub_1000DD584(off_100B50A98, v11, 10000);
        sub_10002249C(&v12);
        goto LABEL_9;
      }
    }
  }

  v9 = 312;
LABEL_9:
  sub_1000088CC(v13);
  return v9;
}

void sub_100340670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100340694(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  v4 = qword_100BCE8C0;
  if (*(a1 + 328))
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v8 = v13 >= 0 ? __p : __p[0];
      *buf = 67109635;
      v15 = a4;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2081;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendDynamicEndOfChargeMessage: Sending dynamic end of charge Message of length %u to %{private, mask.hash}s", buf, 0x1Cu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v9 = sub_10018B734((a2 + 128), a3, a4);
    sub_100022214(buf);
    if (v9 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B69C();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v10 = sub_1000DD584(off_100B50A98, v9, 10000);
    sub_10002249C(buf);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B660();
    }

    return 111;
  }

  return v10;
}

uint64_t sub_10034086C(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  v4 = qword_100BCE8C0;
  if (*(a1 + 328))
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(a2, __p);
      v8 = v13 >= 0 ? __p : __p[0];
      *buf = 67109635;
      v15 = a4;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2081;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sendPersonalTranslationMessage: Sending PT Message of length %u to %{private, mask.hash}s", buf, 0x1Cu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v9 = sub_10018E964((a2 + 128), a3, a4);
    sub_100022214(buf);
    if (v9 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B748();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v10 = sub_1000DD584(off_100B50A98, v9, 10000);
    sub_10002249C(buf);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B70C();
    }

    return 111;
  }

  return v10;
}

id sub_100340A44(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v3 = [NSString stringWithFormat:@"%d%c%d", (a2 >> 20) & 0xF, (HIWORD(a2) & 0xF) + 65, a2 >> 4];
  if ((v2 & 0xF) != 0)
  {
    v4 = [NSString stringWithFormat:@"%@%c", v3, v2 & 0xF | 0x60u];

    v3 = v4;
  }

  return v3;
}

void sub_100340AFC(uint64_t a1, uint64_t a2)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v4 = sub_1000E6554(off_100B508E8, __p, 1);
  v5 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(v4, __p);
    v6 = v18;
    v7 = __p[0];
    v15 = sub_100304810(a2, v8, v9, v10, v11, v12, v13, v14);
    v16 = __p;
    if (v6 < 0)
    {
      v16 = v7;
    }

    *buf = 136315394;
    v20 = v16;
    v21 = 2080;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AACP Connection attempt by device %s, addr %s,", buf, 0x16u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10057D9B0(a1, v4);
}

void sub_100340C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100340C6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *__p = *a2;
  *&__p[4] = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  v9 = qword_100BCE8C0;
  v10 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
  if (a4)
  {
    if (v10)
    {
      sub_1000C23E0(v8, __p);
      v11 = v31 >= 0 ? __p : *__p;
      *v24 = 136315394;
      *&v24[4] = v11;
      v25 = 1024;
      v26 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "connection to device %s failed... reason %d", v24, 0x12u);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(*__p);
      }
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v12 = sub_1000DD584(off_100B50A98, a4, 20000);
    sub_10057DA84(a1, v8, v12);
  }

  if (v10)
  {
    sub_1000C23E0(v8, v24);
    v13 = v27;
    v14 = *v24;
    v22 = sub_100304810(a2, v15, v16, v17, v18, v19, v20, v21);
    v23 = v24;
    *__p = 136315906;
    if (v13 < 0)
    {
      v23 = v14;
    }

    *&__p[4] = v23;
    v29 = 2080;
    v30 = v22;
    v31 = 1024;
    v32 = a3;
    v33 = 1024;
    v34 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Connection succeeded to device %s, addr %s, mtu %d, result %d", __p, 0x22u);
    if (v27 < 0)
    {
      operator delete(*v24);
    }
  }

  sub_10057DA84(a1, v8, 0);
}

void sub_100340EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100340ECC(void *a1, unsigned __int8 *a2, int a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  v11 = (v5 << 40) | (v6 << 32) | (v7 << 24) | (v8 << 16) | (v9 << 8) | v10;
  v12 = sub_1000504C8(off_100B508E8, v11, 1);
  if (v12)
  {
    v13 = v12;
    sub_100548A1C(v12, 0);
    v23[0] = 0;
    v23[1] = 0;
    sub_100007F88(v23, (a1 + 45));
    for (i = a1[42]; i != a1[43]; ++i)
    {
      v15 = *i;
      if (**i == v13)
      {
        goto LABEL_9;
      }
    }

    v15 = 0;
LABEL_9:
    v16 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT) && ((sub_1000C23E0(v13, __p), v22 >= 0) ? (v17 = __p) : (v17 = __p[0]), *buf = 136315394, v25 = v17, v26 = 1024, v27 = a3, _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "disconnecting %s, reason = %d", buf, 0x12u), v22 < 0))
    {
      operator delete(__p[0]);
      if (v15)
      {
LABEL_15:
        if ((*(*v15[96] + 176))(v15[96]) == 1)
        {
          sub_10057E710(a1, v13, 0);
          sub_1003411BC(a1, v15);
        }

LABEL_22:
        if (a3 == 734 || a3 == 708)
        {
          v19 = sub_100017F4C();
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100341334;
          v20[3] = &unk_100AEC130;
          v20[4] = a1;
          v20[5] = v13;
          v20[6] = v11;
          sub_10008E008(v19, 5000, v20);
        }

        sub_1000088CC(v23);
        return;
      }
    }

    else if (v15)
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000C23E0(v13, __p);
      sub_10081B7B8();
    }

    goto LABEL_22;
  }

  v18 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081B80C(v11, v18);
  }
}

void sub_100341198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void *sub_1003411BC(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[42];
  v5 = result[43];
  v6 = v4;
  if (v4 != v5)
  {
    v7 = result[42];
    while (*v7 != a2)
    {
      ++v7;
      ++v6;
      if (v7 == v5)
      {
        v6 = result[43];
        break;
      }
    }
  }

  if (v5 != v6)
  {
    v8 = *a2;
    v9 = (v5 - (v6 + 1));
    if (v5 != v6 + 1)
    {
      memmove(v6, v6 + 1, v5 - (v6 + 1));
    }

    v3[43] = &v9[v6];
    sub_100354BD0(a2);
    sub_10034F194(v10, a2);
    sub_100350B24(v11, a2);
    if (qword_100B51308 != -1)
    {
      sub_10081B8A4();
    }

    sub_1004B4DE0(qword_100B51300, v8 + 128);
    sub_1003557D8(a2);
    operator delete();
  }

  if (v4 == v5)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100819FC0();
    }

    sub_10007A3F0(off_100B508E8 + 240, (v3 + 34));
    result = v3[61];
    v3[61] = 0;
    if (result)
    {
      v12 = *(*result + 64);

      return v12();
    }
  }

  return result;
}

void sub_100341334(uint64_t a1)
{
  if (sub_100337E54(*(a1 + 32), *(a1 + 40)))
  {
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    v1 = sub_1007774DC();
    sub_100007E30(v7, [v1 UTF8String]);

    v2 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v7;
      if (v8 < 0)
      {
        v3 = v7[0];
      }

      *buf = 136315138;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notifying Phone/Watch of unexpected disconnection from device addr %s", buf, 0xCu);
    }

    v4 = sub_100432610();
    if (SHIBYTE(v8) < 0)
    {
      sub_100008904(__p, v7[0], v7[1]);
    }

    else
    {
      *__p = *v7;
      v6 = v8;
    }

    (*(*v4 + 152))(v4, __p);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }
}

void sub_1003414A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003414F4(uint64_t result, uint64_t a2, int a3, __int16 a4)
{
  if (a3 == 30 && (a4 & 0x8000) == 0)
  {
    v5 = result;
    v7[0] = 0;
    v7[1] = 0;
    sub_100007F88(v7, result + 360);
    v6 = sub_100341598(v5, a2);
    if (v6)
    {
      sub_1003415E0(v6);
    }

    else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B8B8();
    }

    return sub_1000088CC(v7);
  }

  return result;
}

uint64_t *sub_100341598(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 336);
  v3 = *(a1 + 344);
  if (v2 == v3)
  {
    return 0;
  }

  while (1)
  {
    result = *v2;
    v5 = **v2;
    v6 = *(v5 + 128);
    v7 = *(v5 + 132);
    if (v6 == *a2 && v7 == *(a2 + 4))
    {
      break;
    }

    if (++v2 == v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003415E0(void *a1)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, (a1 + 55));
  v2 = a1[54];
  if (v2)
  {
    v3 = a1[53];
    v4 = v3[1];
    v5 = v3[2];
    v6 = *v3;
    *(v6 + 8) = v4;
    *v4 = v6;
    a1[54] = v2 - 1;
    operator delete(v3);
    v7 = *v5;
    if (v7 <= 0x1F)
    {
      v8 = a1[v7 + 20];
      if (v8)
      {
        if (*(v8 + 97))
        {
          v18 = 0;
          sub_1000216B4(&v18);
          v9 = sub_100189618((*a1 + 128), *v5, *(v5 + 1), v5[1]);
          sub_100022214(&v18);
          if (v9)
          {
            v10 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v23 = v9;
              _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "sendEASessionPacket: error %d", buf, 8u);
            }

            if (v5[1])
            {
              operator delete[]();
            }

            operator delete();
          }

          if (*(v5 + 1) >= 3u)
          {
            v13 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              v14 = v5[1];
              v15 = *v14;
              v16 = v14[1];
              LODWORD(v14) = v14[2];
              v17 = a1[54];
              *buf = 67109888;
              v23 = v15;
              v24 = 1024;
              v25 = v16;
              v26 = 1024;
              v27 = v14;
              v28 = 2048;
              v29 = v17;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sendEASessionPacket: Packet start %02X %02X %02X; %lu remaining", buf, 0x1Eu);
            }
          }

          if (v5[1])
          {
            operator delete[]();
          }

          operator delete();
        }
      }
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B8F4(&v19, v20);
    }

    if (v5[1])
    {
      operator delete[]();
    }

    operator delete();
  }

  v11 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "sendEASessionPacket: No more packets to send", buf, 2u);
  }

  return sub_1000088CC(v21);
}

void sub_1003418C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1003418F4(uint64_t a1, _DWORD *a2, _BYTE *a3)
{
  v4 = sub_1003360F8(a1, a2);
  v5 = qword_100BCE8C0;
  v6 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *a3;
      v8[0] = 67109120;
      v8[1] = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GAPA device remove all %d AACP capabilities", v8, 8u);
    }

    *a3 = 0;
  }

  else if (v6)
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GAPA device remove limited AACP capabilities", v8, 2u);
  }
}

uint64_t sub_1003419E4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v51 = a3;
  v50[0] = 0;
  v50[1] = 0;
  sub_100007F88(v50, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  *v52 = *a2;
  *&v52[4] = *(a2 + 4);
  v7 = sub_1000E6554(off_100B508E8, v52, 1);
  v8 = sub_100341598(a1, a2);
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v8;
    v11 = sub_1000E31D0(v7);
    if ((v11 & 2) != 0)
    {
      sub_1003418F4(v11, v7, &v51);
    }

    v12 = qword_100BCE8C0;
    v13 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      sub_1000E5A58(v7, v52);
      if (v57 >= 0)
      {
        v14 = v52;
      }

      else
      {
        v14 = *v52;
      }

      v15 = v51;
      *buf = 136446466;
      v59 = v14;
      v60 = 1024;
      v61 = v51;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "capabilitiesResponseEvent: device %{public}s response: numCaps = %d", buf, 0x12u);
      if (v57 < 0)
      {
        operator delete(*v52);
      }
    }

    else
    {
      v15 = v51;
    }

    v47 = v10;
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = v15;
      v19 = (a4 + 1);
      while (1)
      {
        v20 = *(v19 - 1);
        if (v20 <= 0x7F)
        {
          switch(*(v19 - 1))
          {
            case 1:
            case 2:
              v21 = *v19;
              goto LABEL_37;
            case 4:
              v21 = *v19;
              goto LABEL_37;
            case 5:
            case 6:
            case 7:
            case 0x30:
              v21 = *v19;
              goto LABEL_36;
            case 8:
              v21 = *v19;
              if (*v19)
              {
                *(v47 + 152) = 1;
              }

              goto LABEL_30;
            case 9:
            case 0xC:
            case 0xF:
            case 0x11:
            case 0x12:
            case 0x14:
            case 0x40:
              v21 = *v19;
              goto LABEL_30;
            case 0xA:
              v21 = *v19;
              if (v21)
              {
                if (qword_100B50AE0 != -1)
                {
                  sub_10081A23C();
                }

                sub_1004DB8A8(qword_100B50AD8, v7, 1);
              }

              goto LABEL_30;
            case 0xB:
              v21 = *v19;
              if (v21)
              {
                v32 = sub_1000D999C();
                v49[0] = _NSConcreteStackBlock;
                v49[1] = 3221225472;
                v49[2] = sub_1003424AC;
                v49[3] = &unk_100ADF8F8;
                v49[4] = v7;
                sub_10000CA94(v32, v49);
              }

              goto LABEL_30;
            case 0xD:
              v21 = *v19;
              if (v21)
              {
                v36 = sub_1000D999C();
                v48[0] = _NSConcreteStackBlock;
                v48[1] = 3221225472;
                v48[2] = sub_100342504;
                v48[3] = &unk_100ADF8F8;
                v48[4] = v7;
                sub_10000CA94(v36, v48);
              }

              goto LABEL_30;
            case 0x10:
              v21 = *v19;
              if (*v19)
              {
                v29 = qword_100BCE8C0;
                if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
                {
                  sub_1000E5A58(v7, v52);
                  v30 = v57 >= 0 ? v52 : *v52;
                  *buf = 136446210;
                  v59 = v30;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "capabilitiesResponseEvent: Requested case information from device %{public}s", buf, 0xCu);
                  if (v57 < 0)
                  {
                    operator delete(*v52);
                  }
                }

                sub_100339640(a1, v7);
              }

              v17 = 1;
              goto LABEL_30;
            case 0x13:
              v21 = *v19;
              v34 = _os_feature_enabled_impl();
              if (v21 == 1)
              {
                v35 = v34;
              }

              else
              {
                v35 = 0;
              }

              if (v35 == 1)
              {
                if (sub_1000E3218(v7, 0x13u))
                {
                  v21 = 1;
                }

                else
                {
                  v41 = sub_10054964C(v7);
                  v21 = 1;
                  sub_100331844(a1, v7, 52, v41, 1u);
                }
              }

              goto LABEL_36;
            case 0x15:
            case 0x16:
            case 0x17:
            case 0x18:
            case 0x23:
            case 0x24:
            case 0x26:
            case 0x28:
            case 0x29:
            case 0x31:
            case 0x32:
            case 0x33:
            case 0x34:
            case 0x60:
              goto LABEL_20;
            case 0x20:
              v21 = *v19;
              if (v21)
              {
                if (qword_100B50AE0 != -1)
                {
                  sub_10081A23C();
                }

                sub_1004DB94C(qword_100B50AD8, v7, 1);
              }

              goto LABEL_30;
            case 0x21:
              if (!_os_feature_enabled_impl())
              {
                goto LABEL_82;
              }

              v21 = *v19;
              if (*v19 && !sub_1000E3218(v7, 0x21u))
              {
                v33 = sub_10054991C(v7);
                sub_100331844(a1, v7, 53, v33, 1u);
              }

              goto LABEL_36;
            case 0x22:
              v21 = *v19;
              if (_os_feature_enabled_impl())
              {
                if (qword_100B540B0 != -1)
                {
                  sub_10081B958();
                }

                sub_1006C0CE0(qword_100B540A8, v7, v21 == 1);
              }

              goto LABEL_36;
            case 0x25:
              v21 = *v19;
              v31 = sub_10000C798();
              if ((*(*v31 + 464))(v31))
              {
                if (qword_100B50AD0 != -1)
                {
                  sub_10081B930();
                }

                sub_1005D3414(off_100B50AC8, v7, v21 != 0);
              }

              goto LABEL_36;
            case 0x50:
              v21 = *v19;
              if (v21 == 2)
              {
                if (qword_100B50AE0 != -1)
                {
                  sub_10081A23C();
                }

                sub_1004DBBB4(qword_100B50AD8, v7, 1);
                v21 = 2;
              }

              goto LABEL_30;
            default:
              goto LABEL_51;
          }
        }

        if (*(v19 - 1) > 0xBFu)
        {
          break;
        }

        if (*(v19 - 1) > 0x9Fu)
        {
          if (v20 != 160)
          {
            if (v20 != 176)
            {
              goto LABEL_51;
            }

            v21 = *v19;
            if (v21 == 1)
            {
              *buf = 4;
              if (qword_100B50AE0 != -1)
              {
                sub_10081A23C();
              }

              sub_1004DBA04(qword_100B50AD8, v7, buf);
              v24 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
              {
                *v52 = 67109120;
                *&v52[4] = *buf;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "capabilitiesResponseEvent: supportedListening modes: %u", v52, 8u);
              }

              v25 = *(v19 - 1);
            }

            else
            {
              v25 = 176;
            }

            sub_100548E00(v7, v25, v21 != 0);
LABEL_36:
            sub_100549080(v7, *(v19 - 1), v21);
            goto LABEL_37;
          }

          v21 = *v19;
          if (*v19 && v21 != 3)
          {
            if (qword_100B50AE0 != -1)
            {
              sub_10081A23C();
            }

            sub_1004DB998(qword_100B50AD8, v7, 1);
          }
        }

        else if (v20 == 128)
        {
          v21 = *v19;
          if (v21)
          {
            v37 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v7, v52);
              v38 = v52;
              if (v57 < 0)
              {
                v38 = *v52;
              }

              *buf = 136446210;
              v59 = v38;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "capabilitiesResponseEvent: Setting double click & click and hold intervals for device %{public}s", buf, 0xCu);
              if (v57 < 0)
              {
                operator delete(*v52);
              }
            }

            if (!sub_1000E2140(v7, 29) && !sub_1000E2140(v7, 43))
            {
              v39 = sub_100549334(v7);
              sub_100331844(a1, v7, 23, v39, 1u);
            }

            if (!sub_1000E2140(v7, 30) && !sub_1000E2140(v7, 43))
            {
              v40 = sub_10054937C(v7);
              sub_100331844(a1, v7, 24, v40, 1u);
            }
          }
        }

        else
        {
          if (v20 != 144)
          {
            goto LABEL_51;
          }

          v21 = *v19;
          if (v21)
          {
            if (qword_100B50AE0 != -1)
            {
              sub_10081A23C();
            }

            sub_1004DBAD8(qword_100B50AD8, v7, 1);
          }
        }

LABEL_30:
        sub_100548E00(v7, *(v19 - 1), v21 != 0);
LABEL_37:
        v22 = qword_100BCE8C0;
        v13 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          v23 = *(v19 - 1);
          *v52 = 67109632;
          *&v52[4] = v16;
          v53 = 1024;
          v54 = v23;
          v55 = 1024;
          v56 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "capabilitiesResponseEvent: index %d, capId %d, capInfo %d", v52, 0x14u);
        }

        ++v16;
        v19 = (v19 + 5);
        if (v16 >= v18)
        {
          goto LABEL_126;
        }
      }

      if (*(v19 - 1) > 0xDFu)
      {
        if (v20 != 224 && v20 != 240)
        {
LABEL_51:
          v26 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v7, v52);
            v27 = v52;
            if (v57 < 0)
            {
              v27 = *v52;
            }

            v28 = *(v19 - 1);
            *buf = 136446466;
            v59 = v27;
            v60 = 1024;
            v61 = v28;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Warning: capabilitiesResponseEvent: device %{public}s unexpected response capId = %d", buf, 0x12u);
            if (v57 < 0)
            {
              operator delete(*v52);
            }
          }

LABEL_82:
          v21 = 0;
          goto LABEL_37;
        }

LABEL_20:
        v21 = *v19;
      }

      else if (v20 == 192)
      {
        v21 = *v19;
        sub_100548E00(v7, 192, *v19 != 0);
      }

      else
      {
        if (v20 != 208)
        {
          goto LABEL_51;
        }

        v21 = *v19;
        sub_100548E00(v7, 208, *v19 != 0);
      }

      goto LABEL_36;
    }

    v17 = 0;
LABEL_126:
    sub_10034255C(v13, v7);
    if ((v17 & 1) == 0)
    {
      if (sub_1000E356C(v7))
      {
        v42 = 0xFFFFLL;
      }

      else
      {
        v42 = 65533;
      }

      sub_1003393C0(a1, v7, 0xFFFFLL, v42);
    }

    v43 = *(v47 + 604);
    v44 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      if (v43)
      {
        v45 = (v43 >> 1) & 1;
      }

      else
      {
        v45 = 0;
      }

      *v52 = 67109376;
      *&v52[4] = v45;
      v53 = 1024;
      v54 = v43 & 1;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "GAPA capabilitiesResponseEvent newlyPaired=%d invokeNow=%d", v52, 0xEu);
    }

    if (v43)
    {
      *(v47 + 604) = 0;
      sub_1003427B8(a1, v47, 1, (v43 >> 1) & 1);
    }
  }

  return sub_1000088CC(v50);
}

uint64_t sub_1003424AC(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10081B980();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 32);

  return sub_1005D345C(v2, v3, 1);
}

uint64_t sub_100342504(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10081B980();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 32);

  return sub_1005D34E8(v2, v3, 1);
}

uint64_t sub_10034255C(uint64_t a1, __n128 *a2)
{
  sub_100548D28(a2);
  if (qword_100B508E0 != -1)
  {
    sub_10081B994();
  }

  sub_10051A00C(off_100B508D8, a2);
  result = sub_1000E012C(a2, 64);
  if (result)
  {
    v4 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting up spatial audio", __p, 2u);
    }

    if (qword_100B50AE0 != -1)
    {
      sub_10081A23C();
    }

    sub_1004DBC20(qword_100B50AD8, a2, 1);
    v11 = 0;
    if (qword_100B508F0 != -1)
    {
      sub_10081A4E4();
    }

    result = sub_1000BE6E8(off_100B508E8);
    if (result)
    {
      v5 = sub_1000BE4B4();
      result = (*(*v5 + 1224))(v5, a2, &v11);
      if (result)
      {
        v6 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, __p);
          if (v10 >= 0)
          {
            v7 = __p;
          }

          else
          {
            v7 = __p[0];
          }

          *buf = 136446210;
          v13 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Initialize spatial audio to true for %{public}s", buf, 0xCu);
          if (v10 < 0)
          {
            operator delete(__p[0]);
          }
        }

        CFPreferencesSetAppValue(@"spatial-audio-accessory-feature", kCFBooleanTrue, @"com.apple.springboard");
        CFPreferencesAppSynchronize(@"com.apple.springboard");
        v8 = *sub_1000BE4B4();
        return (*(v8 + 1232))();
      }
    }
  }

  return result;
}

void sub_1003427B8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081BCD8();
    }

    return;
  }

  v5 = *(a2 + 80) - 8194;
  v6 = v5 > 0xE;
  v7 = (1 << v5) & 0x409B;
  if (!v6 && v7 != 0)
  {
    return;
  }

  v72 = *a2;
  if (!*a2)
  {
    return;
  }

  if (!*(a2 + 128))
  {
    sub_1000BE6F8((v72 + 128), keys);
    if (SHIBYTE(keys[2]) >= 0)
    {
      v16 = keys;
    }

    else
    {
      v16 = keys[0];
    }

    v17 = CFStringCreateWithCString(kCFAllocatorDefault, v16, 0x8000100u);
    if (SHIBYTE(keys[2]) < 0)
    {
      operator delete(keys[0]);
    }

    if (!v17)
    {
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081BC3C();
      }

      return;
    }

    Connection = acc_transportClient_createConnection();
    if (!Connection)
    {
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081BBA0();
      }

      CFRelease(v17);
      return;
    }

    *(a2 + 128) = Connection;
    CFRelease(v17);
  }

  if (*(a2 + 152) == 1)
  {
    v11 = 0;
    while (1)
    {
      v12 = *(a2 + 160 + v11);
      if (v12)
      {
        if (*(v12 + 24))
        {
          break;
        }
      }

      v11 += 8;
      if (v11 == 256)
      {
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          sub_10081B9A8();
        }

        break;
      }
    }

    v93 = _NSConcreteStackBlock;
    v94 = 3221225472;
    v95 = sub_10034F55C;
    v96 = &unk_100AEC180;
    v97 = a1;
    v98 = v72;
    Endpoint = acc_transportClient_createEndpoint();
    v14 = qword_100BCE8C0;
    if (Endpoint)
    {
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v72, keys);
        v15 = SHIBYTE(keys[2]) >= 0 ? keys : keys[0];
        *buf = 136446466;
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = Endpoint;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: device %{public}s endpoint = %@", buf, 0x16u);
        if (SHIBYTE(keys[2]) < 0)
        {
          operator delete(keys[0]);
        }
      }

      *(a2 + 136) = Endpoint;
      *(a2 + 152) = 0;
    }

    else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081B9E4();
    }
  }

  v19 = 0;
  v78 = kCFACCInfo_Name;
  v77 = kCFACCInfo_Manufacturer;
  v75 = kCFACCInfo_SerialNumber;
  v76 = kCFACCInfo_Model;
  v73 = kCFACCInfo_FirmwareVersionActive;
  v74 = kCFACCInfo_HardwareVersion;
  v20 = kCFACCInfo_FirmwareVersionPending;
  while (1)
  {
    v21 = *(a2 + 8 * v19 + 160);
    if (v21)
    {
      if (!v21[11])
      {
        break;
      }
    }

LABEL_49:
    if (++v19 == 32)
    {
      if (!a3)
      {
        return;
      }

      v34 = *(a2 + 192);
      if (v34)
      {
        if (*(v34 + 88))
        {
          v35 = sub_10000C798();
          if ((*(*v35 + 352))(v35) & 1) != 0 || (v36 = sub_10000C798(), ((*(*v36 + 416))(v36)) || (v37 = sub_10000C798(), (*(*v37 + 456))(v37)))
          {
            *buf = 0;
            v38 = acc_transportClient_createEndpoint();
            v39 = objc_opt_new();
            v40 = *(v34 + 64);
            v80 = *(v34 + 72);
            v79 = *(v34 + 24);
            if ([v40 length] >= 2)
            {
              v41 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(keys[0]) = 141558275;
                *(keys + 4) = 1752392040;
                WORD2(keys[1]) = 2113;
                *(&keys[1] + 6) = v40;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: Left bud serial %{private, mask.hash}@", keys, 0x16u);
              }

              v42 = [NSNumber numberWithInt:2];
              v43 = [NSDictionary dictionaryWithObjectsAndKeys:v42, kCFACCProperties_Endpoint_AACP_CertificateInfo_Type, v40, kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial, 0];
              [v39 addObject:v43];
            }

            if ([v80 length] >= 2)
            {
              v44 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(keys[0]) = 141558275;
                *(keys + 4) = 1752392040;
                WORD2(keys[1]) = 2113;
                *(&keys[1] + 6) = v80;
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: Right bud serial %{private, mask.hash}@", keys, 0x16u);
              }

              v45 = [NSNumber numberWithInt:3];
              v46 = [NSDictionary dictionaryWithObjectsAndKeys:v45, kCFACCProperties_Endpoint_AACP_CertificateInfo_Type, v80, kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial, 0];
              [v39 addObject:v46];
            }

            if (![v39 count] && objc_msgSend(v79, "length") >= 2)
            {
              v47 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(keys[0]) = 141558275;
                *(keys + 4) = 1752392040;
                WORD2(keys[1]) = 2113;
                *(&keys[1] + 6) = v79;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: Single tethered serial %{private, mask.hash}@", keys, 0x16u);
              }

              v48 = [NSNumber numberWithInt:1];
              v49 = [NSDictionary dictionaryWithObjectsAndKeys:v48, kCFACCProperties_Endpoint_AACP_CertificateInfo_Type, v79, kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial, 0];
              [v39 addObject:v49];

              *buf = 1;
            }

            v50 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(keys[0]) = 141558275;
              *(keys + 4) = 1752392040;
              WORD2(keys[1]) = 2113;
              *(&keys[1] + 6) = v39;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: Dictionary %{private, mask.hash}@", keys, 0x16u);
            }

            if (v38)
            {
              v51 = [v39 count];
              v52 = qword_100BCE8C0;
              if (v51)
              {
                if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
                {
                  v53 = *(a2 + 128);
                  LODWORD(keys[0]) = 138543618;
                  *(keys + 4) = v38;
                  WORD2(keys[1]) = 2114;
                  *(&keys[1] + 6) = v53;
                  _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: Creating certificate endpoint %{public}@ for %{public}@", keys, 0x16u);
                }

                *(a2 + 144) = v38;
                *valuePtr = sub_1000E012C(v72, 9);
                v54 = sub_10000E92C();
                if ((*(*v54 + 760))(v54))
                {
                  *valuePtr = 0;
                }

                v55 = qword_100BCE8C0;
                if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(keys[0]) = 67109120;
                  HIDWORD(keys[0]) = *valuePtr;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: isCertificateSupported %d", keys, 8u);
                }

                v56 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, valuePtr);
                acc_transportClient_setPropertyForEndpointWithUUID();
                *__p = a4;
                v57 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, __p);
                acc_transportClient_setPropertyForEndpointWithUUID();
                acc_transportClient_setPropertyForEndpointWithUUID();
                if (sub_1003374B4(a1, v72, a2, *valuePtr != 0))
                {
                  *(a2 + 600) = 1;
                  v58 = sub_10000F034();
                  LODWORD(keys[0]) = *(v72 + 128);
                  WORD2(keys[0]) = *(v72 + 132);
                  (*(*v58 + 392))(v58, keys, 1, 0);
                  v82 = 3;
                  if (qword_100B50950 != -1)
                  {
                    sub_10081A480();
                  }

                  sub_10033C47C(off_100B50948, v72, &v82);
                  v59 = *buf;
                  if (!*buf)
                  {
                    if (v82 == 1)
                    {
                      v59 = 2;
                    }

                    else
                    {
                      v59 = 3;
                    }

                    *buf = v59;
                  }

                  v60 = qword_100BCE8C0;
                  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(keys[0]) = 67109120;
                    HIDWORD(keys[0]) = v59;
                    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware GAPA_AUTH_SUPPORTED for this connection certificateInfoType=%d", keys, 8u);
                  }

                  Mutable = CFArrayCreateMutable(0, 0, 0);
                  v62 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
                  CFArrayAppendValue(Mutable, v62);
                  acc_transportClient_setPropertyForEndpointWithUUID();
                  CFRelease(v62);
                  CFArrayRemoveAllValues(Mutable);
                  CFRelease(Mutable);
                }

                acc_transportClient_setEndpointPropertyDidChangeHandler();
                acc_transportClient_setEndpointPropertyDidChangeHandler();
                acc_transportClient_setEndpointPropertyDidChangeHandler();
                CFRelease(v56);
                CFRelease(v57);
              }

              else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
              {
                sub_1000E5A58(v72, keys);
                sub_10081BA80();
              }

              CFRelease(v38);
            }

            else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              sub_1000E5A58(v72, keys);
              sub_10081BAD4();
            }
          }

          acc_transportClient_setPropertyForConnectionWithUUID();
          v66 = acc_transportClient_publishConnection();
          v67 = qword_100BCE8C0;
          if (v66)
          {
            if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            sub_1000E5A58(v72, buf);
            if ((buf[23] & 0x80u) == 0)
            {
              v68 = buf;
            }

            else
            {
              v68 = *buf;
            }

            v69 = *(a2 + 128);
            *valuePtr = 136446466;
            *&valuePtr[4] = v68;
            v104 = 2112;
            *v105 = v69;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: Published connection for device %{public}s, connection %@", valuePtr, 0x16u);
LABEL_118:
            if ((buf[23] & 0x80000000) == 0)
            {
              return;
            }

            v65 = *buf;
LABEL_120:
            operator delete(v65);
            return;
          }

          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            sub_1000E5A58(v72, buf);
            if ((buf[23] & 0x80u) == 0)
            {
              v70 = buf;
            }

            else
            {
              v70 = *buf;
            }

            v71 = *(a2 + 128);
            *valuePtr = 136446466;
            *&valuePtr[4] = v70;
            v104 = 2112;
            *v105 = v71;
            _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "publishAccRemoteFirmware: Failed to publish connection for device %{public}s, connection %@", valuePtr, 0x16u);
            goto LABEL_118;
          }
        }

        else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          sub_10081BB28();
        }
      }

      else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081BB64();
      }

      return;
    }
  }

  v113 = 0;
  v112 = 0u;
  memset(keys, 0, sizeof(keys));
  v110 = 0;
  v109 = 0u;
  memset(buf, 0, sizeof(buf));
  v88 = _NSConcreteStackBlock;
  v89 = 3221225472;
  v90 = sub_10034F77C;
  v91 = &unk_100AEC1A0;
  v92 = a1;
  v22 = acc_transportClient_createEndpoint();
  if (v22)
  {
    v83 = _NSConcreteStackBlock;
    v84 = 3221225472;
    v85 = sub_10034FCE4;
    v86 = &unk_100AEC1C0;
    v87 = a1;
    acc_transportClient_setEndpointPropertyDidChangeHandler();
    v21[11] = v22;
    keys[0] = v78;
    keys[1] = v77;
    keys[2] = v76;
    keys[3] = v75;
    *&v112 = v74;
    *(&v112 + 1) = v73;
    v113 = v20;
    v23 = v21[2];
    v24 = v21[3];
    *buf = *v21;
    *&buf[8] = v23;
    *&buf[16] = v21[1];
    *&buf[24] = v24;
    *(&v109 + 1) = v21[10];
    v25 = v21[5];
    *&v109 = v21[6];
    Length = CFStringGetLength(v25);
    v27 = 5;
    if (!Length)
    {
      v27 = 4;
    }

    v110 = v21[v27];
    v28 = CFDictionaryCreate(kCFAllocatorDefault, keys, buf, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    acc_transportClient_setAccessoryInfo();
    v29 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, v21 + 12);
    acc_transportClient_setPropertyForEndpointWithUUID();
    v30 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v72, __p);
      v31 = __p;
      if (v102 < 0)
      {
        v31 = *__p;
      }

      v32 = *(a2 + 128);
      v33 = v21[11];
      *valuePtr = 136446978;
      *&valuePtr[4] = v31;
      v104 = 1024;
      *v105 = v19;
      *&v105[4] = 2112;
      *&v105[6] = v32;
      v106 = 2112;
      v107 = v33;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware: Created EA endpoint for device %{public}s (index %d), connection %@, endpoint %@", valuePtr, 0x26u);
      if (v102 < 0)
      {
        operator delete(*__p);
      }
    }

    CFRelease(v28);
    CFRelease(v29);
    goto LABEL_49;
  }

  v63 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(v72, valuePtr);
    v64 = v105[9] >= 0 ? valuePtr : *valuePtr;
    *__p = 136446466;
    *&__p[4] = v64;
    v100 = 1024;
    v101 = v19;
    _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "publishAccRemoteFirmware: Failed to create CoreAccessories EA endpoint for device %{public}s (index %d)", __p, 0x12u);
    if ((v105[9] & 0x80000000) != 0)
    {
      v65 = *valuePtr;
      goto LABEL_120;
    }
  }
}

void sub_10034398C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  if (v8)
  {
    v19[0] = 0;
    v19[1] = 0;
    sub_100007F88(v19, a1 + 360);
    v9 = *(a1 + 336);
    v10 = *(a1 + 344);
    while (v9 != v10)
    {
      v11 = *v9;
      if (**v9 == v8)
      {
        v12 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000C23E0(v8, __p);
          v13 = v18 >= 0 ? __p : __p[0];
          *buf = 136315394;
          v21 = v13;
          v22 = 1024;
          v23 = a3;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "received battery info from device %s num reports = %d", buf, 0x12u);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (a3)
        {
          v14 = a3;
          v15 = a4;
          do
          {
            v16 = v15[3] - 5;
            if (v16 >= 0xFFFFFFFE)
            {
              sub_100343C20(v11, *v15);
            }

            sub_100343E00(v11, v15, v16 < 0xFFFFFFFE);
            v15 += 5;
            --v14;
          }

          while (v14);
        }

        if (_os_feature_enabled_impl())
        {
          if (qword_100B508E0 != -1)
          {
            sub_10081A1D8();
          }

          sub_100514C5C(off_100B508D8, 7, v8, 5 * a3, a4);
        }

        goto LABEL_27;
      }

      ++v9;
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081BD14();
    }

LABEL_27:
    sub_1000088CC(v19);
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081BD50();
  }
}

void sub_100343BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100343C20(uint64_t a1, unsigned int a2)
{
  v4 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_100355A20(a2, __p);
    v5 = v18 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "destroy battery info %{public}s", buf, 0xCu);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(a1 + 32);
  v7 = a1 + 32;
  v6 = v8;
  if (v8)
  {
    v9 = (v7 - 8);
    v10 = v7;
    do
    {
      v11 = *(v6 + 32);
      v12 = v11 >= a2;
      v13 = v11 < a2;
      if (v12)
      {
        v10 = v6;
      }

      v6 = *(v6 + 8 * v13);
    }

    while (v6);
    if (v10 != v7 && *(v10 + 32) <= a2)
    {
      v14 = *(v10 + 40);
      if (v14)
      {
        v15 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_100355A20(a2, __p);
          if (v18 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *buf = 136315138;
          v20 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "battery instance for %s found. Destroying...", buf, 0xCu);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }

        (*(*v14 + 8))(v14);
      }

      sub_10002717C(v9, v10);
      operator delete(v10);
    }
  }
}

uint64_t sub_100343E00(uint64_t *a1, char *a2, int a3)
{
  v6 = a1[4];
  v7 = (a1 + 3);
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = *a2;
  v9 = a1 + 4;
  do
  {
    v10 = *(v6 + 32);
    v11 = v10 >= v8;
    v12 = v10 < v8;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * v12);
  }

  while (v6);
  if (v9 == a1 + 4 || v8 < *(v9 + 32))
  {
LABEL_9:
    v13 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_100355A20(*a2, __p);
      if (v57 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      v15 = a2[2];
      v16 = a2[3];
      if (v16 == 1)
      {
        v17 = "Yes";
      }

      else
      {
        v17 = "No";
      }

      if (a2[3])
      {
        v18 = "No";
      }

      else
      {
        v18 = "Yes";
      }

      *buf = 136447490;
      if (v16 == 5)
      {
        v19 = "Yes";
      }

      else
      {
        v19 = "No";
      }

      *&buf[4] = v14;
      *&buf[12] = 1024;
      if (v16 == 6)
      {
        v20 = "Yes";
      }

      else
      {
        v20 = "No";
      }

      *&buf[14] = v15;
      *&buf[18] = 2082;
      *&buf[20] = v17;
      v59 = 2082;
      v60 = v18;
      v61 = 2080;
      v62 = v19;
      v63 = 2080;
      v64 = v20;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Create Battery for %{public}s battery, battery level %d, charging = %{public}s fully charged = %{public}s DEOC charging = %s OBC charging = %s", buf, 0x3Au);
      if (v57 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1004328AC();
  }

  v21 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_100355A20(v8, __p);
    v22 = v57 >= 0 ? __p : __p[0];
    v23 = a2[2];
    v24 = a2[3];
    v25 = v24 == 1 ? "Yes" : "No";
    v26 = a2[3] ? "No" : "Yes";
    *buf = 136447490;
    v27 = v24 == 5 ? "Yes" : "No";
    *&buf[4] = v22;
    *&buf[12] = 1024;
    v28 = v24 == 6 ? "Yes" : "No";
    *&buf[14] = v23;
    *&buf[18] = 2080;
    *&buf[20] = v25;
    v59 = 2082;
    v60 = v26;
    v61 = 2080;
    v62 = v27;
    v63 = 2080;
    v64 = v28;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Update Battery for %{public}s battery, battery level %d, charging = %s fully charged = %{public}s DEOC charging = %s OBC charging = %s", buf, 0x3Au);
    if (v57 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v29 = v9[5];
  if (!v29)
  {
    v32 = 0;
    goto LABEL_87;
  }

  (*(*v29 + 48))(v9[5], a2[2]);
  v30 = a2[3];
  if (v30 > 6)
  {
    v31 = 0;
  }

  else
  {
    v31 = dword_1008A5FA0[v30];
  }

  (*(*v29 + 64))(v29, v31);
  sub_100355A54(a1, *a2, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    v33 = *&buf[8];
    operator delete(*buf);
    if (!v33)
    {
      goto LABEL_59;
    }
  }

  else if (!buf[23])
  {
    goto LABEL_59;
  }

  *buf = a2;
  v34 = sub_100361F0C(v7, a2)[5];
  sub_100355A54(a1, *a2, buf);
  (*(*v34 + 72))(v34, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

LABEL_59:
  v32 = 0;
  v35 = a2[3];
  if (v35 >= 7)
  {
    v36 = 0;
  }

  else
  {
    v36 = 0x4050000020103uLL >> (8 * v35);
  }

  v37 = *a2;
  if (v37 <= 3)
  {
    if (v37 == 1)
    {
      v47 = sub_10053F8E4(*a1, 1);
      v48 = a2[2];
      v40 = v47 != v48;
      if (v47 != v48)
      {
        sub_100540560(*a1, v48, 1);
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    if (v37 == 2)
    {
      v41 = sub_10053F8E4(*a1, 2);
      v42 = a2[2];
      v40 = v41 != v42;
      if (v41 != v42)
      {
        sub_100540560(*a1, v42, 2);
        goto LABEL_78;
      }

LABEL_79:
      v32 = v40 | sub_1005406CC(*a1, v36, v37);
    }
  }

  else
  {
    switch(v37)
    {
      case 4u:
        v43 = sub_10053F8E4(*a1, 4);
        v44 = a2[2];
        v40 = v43 != v44;
        if (v43 != v44)
        {
          sub_100540560(*a1, v44, 4);
          goto LABEL_78;
        }

        goto LABEL_79;
      case 8u:
        v45 = sub_10053F8E4(*a1, 8);
        v46 = a2[2];
        v40 = v45 != v46;
        if (v45 != v46)
        {
          sub_100540560(*a1, v46, 8);
          goto LABEL_78;
        }

        goto LABEL_79;
      case 0x10u:
        v38 = sub_10053F8E4(*a1, 16);
        v39 = a2[2];
        v40 = v38 != v39;
        if (v38 != v39)
        {
          sub_100540560(*a1, v39, 16);
LABEL_78:
          v40 = 1;
          goto LABEL_79;
        }

        goto LABEL_79;
    }
  }

  LODWORD(__p[0]) = 0;
  v55 = 0;
  v54 = 0;
  sub_1000C2364(*a1, __p, &v55 + 1, &v55, &v54);
  v49 = [CBProductInfo productInfoWithProductID:v55];
  if (([v49 flags] & 0x100000) != 0 && HIDWORD(v55) == 76)
  {
    v50 = *a2 == 8;

    v32 = !v50 & v32;
  }

  else
  {

    v50 = 0;
  }

  if (((_os_feature_enabled_impl() | v50) & 1) == 0)
  {
    if (a3)
    {
      sub_100355B3C(a1, *a2, buf);
      (*(*v29 + 24))(v29, buf);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

LABEL_87:
  memset(buf, 0, 24);
  v51 = a2[3];
  sub_100579608(buf, 3, 0);
  *&buf[16] = v51;
  v52 = sub_10000F034();
  (*(*v52 + 56))(v52, buf);
  return v32;
}

void sub_1003447F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100344840(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, buf, 1);
  if (v6)
  {
    v26[0] = 0;
    v26[1] = 0;
    sub_100007F88(v26, a1 + 360);
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      v8 = *i;
      if (**i == v6)
      {
        v9 = sub_1000E356C(v6);
        if (v9)
        {
          v10 = sub_10033C45C(v9, *a3);
          v11 = v10;
          v12 = sub_10033C45C(v10, a3[1]);
          v13 = v8[10];
          if (v13 == 1)
          {
            v14 = 2;
          }

          else
          {
            v14 = 1;
          }

          v15 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v6, __p);
            v16 = *__p;
            v17 = off_100AED320[v11];
            if (v28 >= 0)
            {
              v16 = __p;
            }

            v18 = off_100AED320[v12];
            *buf = 136446722;
            *&buf[4] = v16;
            *&buf[12] = 2082;
            *&buf[14] = v17;
            *&buf[22] = 2082;
            v30 = v18;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "received in-ear state update from device %{public}s primary bud state = %{public}s, secondary bud state = %{public}s", buf, 0x20u);
            if (v28 < 0)
            {
              operator delete(*__p);
            }
          }

          v19 = v8[8];
          v20 = v11 != v19;
          if (v11 != v19)
          {
            v8[8] = v11;
            memset(buf, 0, sizeof(buf));
            sub_100579608(buf, 2, v6);
            *&buf[16] = v13;
            *&buf[20] = v11;
            v21 = sub_10000F034();
            (*(*v21 + 56))(v21, buf);
          }

          if (v12 != v8[9])
          {
            v8[9] = v12;
            memset(buf, 0, sizeof(buf));
            sub_100579608(buf, 2, v6);
            *&buf[16] = v14;
            *&buf[20] = v12;
            v22 = sub_10000F034();
            (*(*v22 + 56))(v22, buf);
            v20 = 1;
          }

          sub_10000801C(v26);
          if (v20)
          {
            sub_10033BBAC(v23, v6);
          }
        }

        else
        {
          v24 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v6, buf);
            v25 = (buf[23] & 0x80u) == 0 ? buf : *buf;
            *__p = 136446210;
            *&__p[4] = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Ignoring in-ear status update from device %{public}s that's disabled for tracking in-ear detection", __p, 0xCu);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }
        }

        goto LABEL_10;
      }
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081BDF0();
    }

LABEL_10:
    sub_1000088CC(v26);
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081BE2C();
  }
}

void sub_100344BD8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, buf, 1);
  if (v6)
  {
    v57[0] = 0;
    v57[1] = 0;
    sub_100007F88(v57, a1 + 360);
    v7 = *(a1 + 336);
    v8 = *(a1 + 344);
    if (v7 == v8)
    {
LABEL_7:
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081BEF4();
      }
    }

    else
    {
      while (1)
      {
        v9 = *v7;
        if (**v7 == v6)
        {
          break;
        }

        if (++v7 == v8)
        {
          goto LABEL_7;
        }
      }

      v10 = *a3;
      if (v10 == 2)
      {
        v11 = 2;
      }

      else
      {
        v11 = 3;
      }

      if (v10 == 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v6, __p);
        if (v59 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = *__p;
        }

        v15 = "unknown";
        if (v10 == 2)
        {
          v15 = "right";
        }

        if (v10 == 1)
        {
          v15 = "left";
        }

        v16 = "Yes";
        v17 = *(a1 + 430);
        v18 = a3[3];
        v19 = a3[2] == 0;
        *buf = 136447234;
        *&buf[4] = v14;
        v20 = "is";
        if (v19)
        {
          v16 = "No";
        }

        if (!v17)
        {
          v20 = "not";
        }

        *&buf[12] = 2082;
        *v61 = v15;
        *&v61[8] = 2082;
        v62 = v16;
        v63 = 2082;
        v64 = v20;
        if (v18)
        {
          v21 = "enabled";
        }

        else
        {
          v21 = "disabled";
        }

        v65 = 2082;
        v66 = v21;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "received role state from device %{public}s, primary bud side is %{public}s, secondary connected = %{public}s, magnet %{public}s connected, quickdisconnect %{public}s", buf, 0x34u);
        if (v59 < 0)
        {
          operator delete(*__p);
        }
      }

      v22 = *(v9 + 10);
      v23 = v12 != v22;
      if (v12 != v22)
      {
        if (v22 != 3 && *(v9 + 8) != 3 && *(v9 + 9) != 3)
        {
          if (qword_100B50940 != -1)
          {
            sub_10081BECC();
          }

          sub_10062ED90(off_100B50938, v6);
        }

        *(v9 + 10) = v12;
      }

      if (!a3[2] && sub_1000E356C(v6) && *(v9 + 9) != 3)
      {
        *(v9 + 9) = 3;
        v23 = 1;
      }

      sub_10000801C(v57);
      if (v23)
      {
        sub_10033BBAC(v24, v6);
        if (sub_100337E54(a1, v6))
        {
          v25 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000BE6F8(&v6[8], buf);
            v26 = v61[9] >= 0 ? buf : *buf;
            *__p = 67109378;
            *&__p[4] = v12;
            *&__p[8] = 2082;
            *&__p[10] = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Sending current primary bud side as %d to other end of magnet link for device %{public}s", __p, 0x12u);
            if ((v61[9] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          v27 = sub_100432610();
          sub_1000BE6F8(&v6[8], v55);
          (*(*v27 + 160))(v27, v55, v12);
          if (v56 < 0)
          {
            operator delete(v55[0]);
          }

          v28 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(v9 + 11);
            v30 = *(v9 + 9);
            *buf = 67109632;
            *&buf[4] = v29;
            *&buf[8] = 1024;
            *&buf[10] = v12;
            *v61 = 1024;
            *&v61[2] = v30;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Primary bud info over magnet link before -> %d, primary bud info from Headset -> %d, current connection secondary bud in ear status -> %d", buf, 0x14u);
          }

          v31 = sub_10000C798();
          if (!(*(*v31 + 368))(v31) || (v32 = *(v9 + 11), v32 == 3) || v12 == v32 || *(v9 + 9) != 3)
          {
            if (sub_100338390(v9))
            {
              v38 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
              {
                v46 = 605;
                if (*(v9 + 617))
                {
                  v46 = 611;
                }

                v47 = v9 + v46;
                v48 = *(v47 + 2);
                *__p = *v47;
                *&__p[4] = v48;
                v49 = sub_100304810(__p, v39, v40, v41, v42, v43, v44, v45);
                *buf = 136446210;
                *&buf[4] = v49;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Peer source %{public}s is currently connected in TiPi, skip connection stealing", buf, 0xCu);
              }
            }

            else if (a3[3] && sub_1003453C8(v9))
            {
              v50 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(v6, buf);
                v51 = v61[9] >= 0 ? buf : *buf;
                *__p = 136446210;
                *&__p[4] = v51;
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Sending message to Phone/Watch to connect to device %{public}s", __p, 0xCu);
                if ((v61[9] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              v52 = sub_100432610();
              sub_1000BE6F8(&v6[8], v53);
              (*(*v52 + 144))(v52, v53, a3[3] != 0);
              if (v54 < 0)
              {
                operator delete(v53[0]);
              }
            }
          }

          else
          {
            v33 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v6, __p);
              v34 = v59 >= 0 ? __p : *__p;
              v35 = *(v9 + 11);
              *buf = 136446722;
              *&buf[4] = v34;
              *&buf[12] = 1024;
              *v61 = v35;
              *&v61[4] = 1024;
              *&v61[6] = v12;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Info update from Headset, Primary bud side  for device %{public}s seen locally is different from that of companion, we see  %d, and companion sees %d. Requesting connected Bud to be secondary", buf, 0x18u);
              if (v59 < 0)
              {
                operator delete(*__p);
              }
            }

            sub_100331844(a1, v6, 8, 2, 1u);
            v36 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v6, buf);
              v37 = v61[9] >= 0 ? buf : *buf;
              *__p = 136446210;
              *&__p[4] = v37;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Schedule reconnection to W1 device after LSTO (5 seconds) on Gizmo, device : %{public}s", __p, 0xCu);
              if ((v61[9] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }
            }

            *buf = v6[8].n128_u32[0];
            *&buf[4] = v6[8].n128_u16[2];
            if (qword_100B50AC0 != -1)
            {
              sub_10081A96C();
            }

            sub_100595470(off_100B50AB8, buf);
          }
        }
      }
    }

    sub_1000088CC(v57);
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081BF30();
  }
}

BOOL sub_1003453C8(uint64_t a1)
{
  v2 = sub_10000C798();
  if ((*(*v2 + 368))(v2) & 1) != 0 || (*(a1 + 728))
  {
    return 1;
  }

  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if ((*(off_100B50948 + 520) & 1) != 0 || sub_100338390(a1))
  {
    return 0;
  }

  for (i = *(a1 + 736); i != *(a1 + 744); i += 8)
  {
    if (*(i + 6) - 1 <= 1 && (*(i + 7) & 8) != 0)
    {
      return 0;
    }
  }

  return sub_1000E5DB8(*a1) != 1;
}

uint64_t sub_1003454A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  LOWORD(v30) = *(a2 + 4);
  result = sub_1000E6554(off_100B508E8, buf, 1);
  v9 = result;
  if (result)
  {
    v28[0] = 0;
    v28[1] = 0;
    sub_100007F88(v28, a1 + 360);
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      v11 = *i;
      if (**i == v9)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_9:
    v12 = qword_100BCE8C0;
    if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v13 = a4 == 1 ? "Pair success" : "Pair failed";
    sub_1000C23E0(v9, __p);
    v14 = v27;
    v15 = __p[0];
    v23 = sub_100304810(a3, v16, v17, v18, v19, v20, v21, v22);
    v24 = __p;
    *buf = 136446722;
    if (v14 < 0)
    {
      v24 = v15;
    }

    v30 = v13;
    v31 = 2080;
    v32 = v24;
    v33 = 2080;
    v34 = v23;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "received easy pair response %{public}s from device %s, for address %s ", buf, 0x20u);
    if (v27 < 0)
    {
      operator delete(__p[0]);
      if (v11)
      {
LABEL_17:
        v25 = v11[6];
        if (v25)
        {
          *buf = *a2;
          LOWORD(v30) = *(a2 + 4);
          LODWORD(__p[0]) = *a3;
          WORD2(__p[0]) = *(a3 + 4);
          sub_1003236C4(v25, buf, __p, a4 != 1);
        }
      }
    }

    else
    {
LABEL_16:
      if (v11)
      {
        goto LABEL_17;
      }
    }

    return sub_1000088CC(v28);
  }

  return result;
}

uint64_t sub_1003456D8(uint64_t a1, uint64_t a2, unint64_t a3, int a4, int a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  result = sub_1000504C8(off_100B508E8, a2, 1);
  if (result)
  {
    v11 = result;
    v28[0] = 0;
    v28[1] = 0;
    sub_100007F88(v28, a1 + 360);
    v12 = *(a1 + 336);
    v13 = *(a1 + 344);
    while (v12 != v13)
    {
      v14 = *v12;
      if (**v12 == v11)
      {
        v15 = sub_1002D3618(a3);
        v35 = v15;
        v36 = WORD2(v15);
        v16 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v24 = sub_100304810(&v35, v17, v18, v19, v20, v21, v22, v23);
          v25 = "Connected";
          if (!a4)
          {
            v25 = "Disconnected";
          }

          *buf = 136446722;
          v30 = v24;
          v31 = 2082;
          v32 = v25;
          if (a5 == 1)
          {
            v26 = "Source";
          }

          else
          {
            v26 = "UTP";
          }

          v33 = 2082;
          v34 = v26;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received connection state info : target addr = %{public}s, connState %{public}s, connType = %{public}s ", buf, 0x20u);
        }

        if (a5 == 1)
        {
          buf[0] = BYTE5(a3);
          buf[1] = BYTE4(a3);
          buf[2] = BYTE3(a3);
          buf[3] = BYTE2(a3);
          LOBYTE(v30) = BYTE1(a3);
          BYTE1(v30) = a3;
          sub_100338020(v14, buf, a4);
          v27 = sub_100338390(v14);
          sub_1003382B0(v27, v11, v27);
        }

        return sub_1000088CC(v28);
      }

      ++v12;
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v11, buf);
      sub_10081BFD0();
    }

    return sub_1000088CC(v28);
  }

  return result;
}

void sub_100345924(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  v7 = sub_1000504C8(off_100B508E8, a2, 1);
  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  sub_100007E30(__p, "");
  if (a4 == 2)
  {
    sub_100007E30(v17, "streaming A2DP");
  }

  else if (a4 == 1)
  {
    sub_100007E30(v17, "streaming SCO");
  }

  else if (a4)
  {
    sub_100007E30(v17, "in unknown state");
  }

  else
  {
    sub_100007E30(v17, "stopped streaming");
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = *v17;
  v20 = v18;
  v8 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(v7, v17);
    if (v18 >= 0)
    {
      v9 = v17;
    }

    else
    {
      v9 = v17[0];
    }

    v10 = __p;
    if (v20 < 0)
    {
      v10 = __p[0];
    }

    *buf = 136315394;
    v22 = v9;
    v23 = 2080;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received device %s stream state info: %s", buf, 0x16u);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }
  }

  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 360);
  if (v7)
  {
    v11 = *(a1 + 336);
    v12 = *(a1 + 344);
    while (v11 != v12)
    {
      v13 = *v11;
      if (**v11 == v7)
      {
        if (*(v13 + 4) != a4)
        {
          if (qword_100B508E0 != -1)
          {
            sub_10081A1D8();
          }

          sub_100518F34(off_100B508D8, v7, a4);
        }

        v14 = 0;
        *(v13 + 4) = a4;
        goto LABEL_28;
      }

      ++v11;
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_1000C23E0(v7, v17);
    sub_10081C024();
  }

  v14 = 1;
LABEL_28:
  sub_10000801C(v16);
  if (v14)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000C23E0(v7, buf);
      sub_10081C078();
    }
  }

  else
  {
    sub_100345C5C(v15, v7, a4);
  }

  sub_1000088CC(v16);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100345C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1000088CC(&a10);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100345C5C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_INFO))
  {
    sub_1000C23E0(a2, __p);
    if (v14 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315138;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Notify stream state change for device %s", buf, 0xCu);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = sub_1000D999C();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100354F14;
  v11[3] = &unk_100AE15D8;
  v11[4] = a2;
  v12 = a3;
  sub_10000CA94(v7, v11);
  v8 = sub_1000DAB84();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100354F6C;
  v9[3] = &unk_100AE15D8;
  v9[4] = a2;
  v10 = a3;
  sub_10000CA94(v8, v9);
}

uint64_t sub_100345DE4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  LOWORD(v32) = *(a2 + 4);
  result = sub_1000E6554(off_100B508E8, buf, 1);
  v9 = result;
  if (result)
  {
    v30[0] = 0;
    v30[1] = 0;
    sub_100007F88(v30, a1 + 360);
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      v11 = *i;
      if (**i == v9)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
LABEL_9:
    v12 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v13 = "paired";
      }

      else
      {
        v13 = "not paired";
      }

      sub_1000C23E0(v9, __p);
      v14 = v29;
      v15 = __p[0];
      v23 = sub_100304810(a3, v16, v17, v18, v19, v20, v21, v22);
      v24 = __p;
      v25 = *(v11 + 12);
      if (v14 < 0)
      {
        v24 = v15;
      }

      *buf = 136446978;
      v32 = v13;
      v33 = 2080;
      v34 = v24;
      v35 = 2080;
      v36 = v23;
      v37 = 1024;
      v38 = v25;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "received triangle status response %{public}s from device %s, for address %s, easy unpairing? - %d", buf, 0x26u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else if (!v11)
    {
      return sub_1000088CC(v30);
    }

    *(v11 + 84) = a4;
    if (*(v11 + 12) == 1)
    {
      *(v11 + 12) = 0;
      if (qword_100B50F88 != -1)
      {
        sub_10081A944();
      }

      sub_1006E1070(off_100B50F80, v9, 2u);
    }

    else
    {
      v26 = v11[6];
      if (v26)
      {
        *buf = *a2;
        LOWORD(v32) = *(a2 + 4);
        LODWORD(__p[0]) = *a3;
        WORD2(__p[0]) = *(a3 + 4);
        if (a4)
        {
          v27 = 2;
        }

        else
        {
          v27 = 1;
        }

        sub_1003231E0(v26, buf, __p, v27);
      }
    }

    return sub_1000088CC(v30);
  }

  return result;
}

uint64_t sub_100346074(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, buf, 1);
  *&v71[3] = 0;
  *v71 = 0;
  v82 = 0;
  v83 = 0;
  v81 = 0uLL;
  v79 = 0;
  v80 = 0;
  v70[0] = 0;
  v70[1] = 0;
  sub_100007F88(v70, a1 + 360);
  if (v8)
  {
    for (i = *(a1 + 336); ; ++i)
    {
      if (i == *(a1 + 344))
      {
        return sub_1000088CC(v70);
      }

      if (**i == v8)
      {
        break;
      }
    }

    if (v5 && a4)
    {
      v10 = v8[63].n128_u8[8];
      if (qword_100B50AB0 != -1)
      {
        sub_10081A1B0();
      }

      v11 = off_100B50AA8;
      if (sub_1000E25D8())
      {
        v69 = v11[240];
        if (v10)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v69 = 0;
        if (v10)
        {
          goto LABEL_24;
        }
      }

      if (v8[65].n128_u8[4] == 1)
      {
        if (qword_100B50AB0 != -1)
        {
          sub_10081A1B0();
        }

        if ((sub_1000E2570(off_100B50AA8, v8) & v69 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      if (v69)
      {
LABEL_22:
        if ((v8[65].n128_u8[6] & 1) != 0 || v8[65].n128_u8[5] == 1)
        {
          goto LABEL_24;
        }

        v71[0] = 0;
        *&v71[1] = *a2;
        *&v71[5] = *(a2 + 4);
        if (qword_100B51078 != -1)
        {
          sub_10081C0CC();
        }

        sub_1000AF8E0(off_100B51070, (v71[1] << 40) | (v71[2] << 32) | (v71[3] << 24) | (v71[4] << 16) | (v71[5] << 8) | v71[6] | (v71[0] << 48), &v82);
        if (qword_100B508C0 != -1)
        {
          sub_10081AD54();
        }

        sub_1007CA58C(off_100B508B8, v71, &v81);
        v5 = v5;
        for (j = (a4 + 8); ; j += 2)
        {
          v38 = qword_100BCE960;
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
          {
            v39 = *(j - 4);
            v40 = *(j - 3);
            sub_1000C23E0(v8, __p);
            v41 = v78 >= 0 ? __p : *__p;
            *buf = 67109634;
            *&buf[4] = v39;
            *&buf[8] = 1024;
            *&buf[10] = v40;
            *v73 = 2080;
            *&v73[2] = v41;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "received Key update with keyType = %x, keyLength = %d  from device%s ", buf, 0x18u);
            if (v78 < 0)
            {
              operator delete(*__p);
            }
          }

          v42 = *(j - 4);
          if (v42 == 1)
          {
            break;
          }

LABEL_142:
          if (v42 != 4)
          {
            goto LABEL_171;
          }

          if (**j == v79 && *(*j + 8) == v80)
          {
            v59 = qword_100BCE960;
            if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_171;
            }

            sub_1000C23E0(v8, buf);
            v60 = buf;
            if (v73[9] < 0)
            {
              v60 = *buf;
            }

            *__p = 136315138;
            *&__p[4] = v60;
            v61 = v59;
            v62 = " Received invalid Enc key from %s";
            v63 = 12;
            goto LABEL_186;
          }

          if (qword_100B50AB0 != -1)
          {
            sub_10081A1B0();
          }

          sub_10055C778(off_100B50AA8, v8, *j);
          if (v82 == **j && v83 == *(*j + 8))
          {
            goto LABEL_171;
          }

          if (qword_100B51078 != -1)
          {
            sub_10081C0CC();
          }

          sub_10079E618(off_100B51070, v71, *j);
          v53 = sub_1000E2738();
          v54 = (*(*v53 + 88))(v53, v8, 3, *j);
          v55 = qword_100BCE960;
          v56 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR);
          if (v54)
          {
            if (!v56)
            {
              goto LABEL_171;
            }

            sub_1000C23E0(v8, __p);
            v57 = v78 >= 0 ? __p : *__p;
            *buf = 141558531;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *v73 = v57;
            *&v73[8] = 1024;
            v74 = v54;
            _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Failed to store encryption key to storage for device %{private, mask.hash}s with error %d", buf, 0x1Cu);
            if ((v78 & 0x80000000) == 0)
            {
              goto LABEL_171;
            }

            v58 = *__p;
            goto LABEL_188;
          }

          if (v56)
          {
            sub_1000C23E0(v8, buf);
            v67 = buf;
            if (v73[9] < 0)
            {
              v67 = *buf;
            }

            *__p = 141558275;
            *&__p[4] = 1752392040;
            v76 = 2081;
            v77 = v67;
            v61 = v55;
            v62 = "Successfully stored encryption key to storage for device %{private, mask.hash}s ";
            v63 = 22;
LABEL_186:
            _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, v62, __p, v63);
            if ((v73[9] & 0x80000000) != 0)
            {
              v58 = *buf;
LABEL_188:
              operator delete(v58);
            }
          }

LABEL_171:
          if (*(j - 4) == 256)
          {
            v65 = **j;
            if (qword_100B50AB0 != -1)
            {
              sub_10081A1B0();
            }

            sub_10055CBF4(off_100B50AA8, v8, v65);
          }

          if (!--v5)
          {
            return sub_1000088CC(v70);
          }
        }

        if (**j == v79 && *(*j + 8) == v80)
        {
          v50 = qword_100BCE960;
          if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_141;
          }

          sub_1000C23E0(v8, buf);
          v66 = buf;
          if (v73[9] < 0)
          {
            v66 = *buf;
          }

          *__p = 136315138;
          *&__p[4] = v66;
          _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, " Received invalid IRK from %s", __p, 0xCu);
        }

        else
        {
          if (qword_100B50AB0 != -1)
          {
            sub_10081A1B0();
          }

          sub_10055C400(off_100B50AA8, v8, *j);
          if (v81 == **j && *(&v81 + 1) == *(*j + 8))
          {
            goto LABEL_141;
          }

          if (qword_100B508C0 != -1)
          {
            sub_10081AD54();
          }

          sub_1007BE07C(off_100B508B8, v71, *j);
          v45 = sub_1000E2738();
          v46 = (*(*v45 + 88))(v45, v8, 2, *j);
          v47 = qword_100BCE960;
          if (v46)
          {
            if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_141;
            }

            sub_1000C23E0(v8, __p);
            v48 = v78 >= 0 ? __p : *__p;
            *buf = 141558531;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *v73 = v48;
            *&v73[8] = 1024;
            v74 = v46;
            _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Failed to store IRK to storage for device %{private, mask.hash}s with error %d", buf, 0x1Cu);
            if ((v78 & 0x80000000) == 0)
            {
              goto LABEL_141;
            }

            v49 = *__p;
            goto LABEL_182;
          }

          if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_INFO))
          {
LABEL_141:
            v42 = *(j - 4);
            goto LABEL_142;
          }

          sub_1000C23E0(v8, buf);
          v64 = buf;
          if (v73[9] < 0)
          {
            v64 = *buf;
          }

          *__p = 141558275;
          *&__p[4] = 1752392040;
          v76 = 2081;
          v77 = v64;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Successfully stored IRK to storage for device %{private, mask.hash}s ", __p, 0x16u);
        }

        if ((v73[9] & 0x80000000) != 0)
        {
          v49 = *buf;
LABEL_182:
          operator delete(v49);
          goto LABEL_141;
        }

        goto LABEL_141;
      }

LABEL_24:
      v71[0] = 0;
      *&v71[1] = *a2;
      *&v71[5] = *(a2 + 4);
      if (qword_100B508C0 != -1)
      {
        sub_10081AD54();
      }

      v12 = sub_1007CA58C(off_100B508B8, v71, &v81);
      v13 = 0;
      v14 = v5;
      for (k = (a4 + 8); ; k += 2)
      {
        v16 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(k - 4);
          v18 = *(k - 3);
          sub_1000C23E0(v8, __p);
          v19 = __p;
          if (v78 < 0)
          {
            v19 = *__p;
          }

          *buf = 67109634;
          *&buf[4] = v17;
          *&buf[8] = 1024;
          *&buf[10] = v18;
          *v73 = 2080;
          *&v73[2] = v19;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device received non-magic Key update with keyType = %x, keyLength = %d from device%s ", buf, 0x18u);
          if (v78 < 0)
          {
            operator delete(*__p);
          }
        }

        v20 = *(k - 4);
        if (!((v20 != 1) | v12 & 1))
        {
          break;
        }

LABEL_65:
        if (v20 != 4)
        {
          goto LABEL_97;
        }

        if (v82 == **k && v83 == *(*k + 8))
        {
          v31 = qword_100BCE960;
          if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_97;
          }

          sub_1000C23E0(v8, buf);
          v32 = buf;
          if (v73[9] < 0)
          {
            v32 = *buf;
          }

          *__p = 136315138;
          *&__p[4] = v32;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Receive invalid non-magic Enc Key from %s", __p, 0xCu);
          if ((v73[9] & 0x80000000) == 0)
          {
            goto LABEL_97;
          }

          v33 = *buf;
          goto LABEL_90;
        }

        if (qword_100B51078 != -1)
        {
          sub_10081C0CC();
        }

        sub_10079E618(off_100B51070, v71, *k);
        if (v10)
        {
          v30 = (*sub_1000E2738() + 112);
LABEL_83:
          v13 = (*v30)();
          goto LABEL_84;
        }

        if (v69 & 1) == 0 || (v8[65].n128_u8[6] & 1) != 0 || (v8[65].n128_u8[5])
        {
          goto LABEL_82;
        }

        if (v8[65].n128_u8[4] == 1)
        {
          if (qword_100B50AB0 != -1)
          {
            sub_10081A1B0();
          }

          if ((sub_1000E2570(off_100B50AA8, v8) & 1) == 0)
          {
LABEL_82:
            v30 = (*sub_1000E2738() + 88);
            goto LABEL_83;
          }
        }

LABEL_84:
        v34 = qword_100BCE960;
        if (!v13)
        {
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_INFO))
          {
            sub_1000C23E0(v8, buf);
            v36 = buf;
            if (v73[9] < 0)
            {
              v36 = *buf;
            }

            *__p = 141558275;
            *&__p[4] = 1752392040;
            v76 = 2081;
            v77 = v36;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Successfully stored non-magic Enc Key to storage for device %{private, mask.hash}s ", __p, 0x16u);
            if ((v73[9] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          v13 = 0;
          goto LABEL_97;
        }

        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
        {
          sub_1000C23E0(v8, __p);
          v35 = __p;
          if (v78 < 0)
          {
            v35 = *__p;
          }

          *buf = 141558531;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *v73 = v35;
          *&v73[8] = 1024;
          v74 = v13;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to store non-magic Enc Key to storage for device %{private, mask.hash}s with error %d", buf, 0x1Cu);
          if (v78 < 0)
          {
            v33 = *__p;
LABEL_90:
            operator delete(v33);
          }
        }

LABEL_97:
        if (!--v14)
        {
          return sub_1000088CC(v70);
        }
      }

      if (v81 == **k && *(&v81 + 1) == *(*k + 8))
      {
        v23 = qword_100BCE960;
        if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        sub_1000C23E0(v8, buf);
        v24 = buf;
        if (v73[9] < 0)
        {
          v24 = *buf;
        }

        *__p = 136315138;
        *&__p[4] = v24;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Received invalid non-magic key from %s", __p, 0xCu);
        if ((v73[9] & 0x80000000) == 0)
        {
          goto LABEL_64;
        }

        v25 = *buf;
        goto LABEL_57;
      }

      if (qword_100B508C0 != -1)
      {
        sub_10081AD54();
      }

      sub_1007BE07C(off_100B508B8, v71, *k);
      if (v10)
      {
        v22 = (*sub_1000E2738() + 112);
      }

      else
      {
        if ((v69 & 1) != 0 && (v8[65].n128_u8[6] & 1) == 0 && (v8[65].n128_u8[5] & 1) == 0)
        {
          if (v8[65].n128_u8[4] != 1)
          {
            goto LABEL_51;
          }

          if (qword_100B50AB0 != -1)
          {
            sub_10081A1B0();
          }

          if (sub_1000E2570(off_100B50AA8, v8))
          {
            goto LABEL_51;
          }
        }

        v22 = (*sub_1000E2738() + 88);
      }

      v13 = (*v22)();
LABEL_51:
      v26 = qword_100BCE960;
      if (!v13)
      {
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_INFO))
        {
          sub_1000C23E0(v8, buf);
          v28 = buf;
          if (v73[9] < 0)
          {
            v28 = *buf;
          }

          *__p = 141558275;
          *&__p[4] = 1752392040;
          v76 = 2081;
          v77 = v28;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Successfully stored non-magic key to storage for device %{private, mask.hash}s ", __p, 0x16u);
          if ((v73[9] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        v13 = 0;
        goto LABEL_64;
      }

      if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      sub_1000C23E0(v8, __p);
      v27 = __p;
      if (v78 < 0)
      {
        v27 = *__p;
      }

      *buf = 141558531;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *v73 = v27;
      *&v73[8] = 1024;
      v74 = v13;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to store non-magic key to storage for device %{private, mask.hash}s with error %d", buf, 0x1Cu);
      if ((v78 & 0x80000000) == 0)
      {
LABEL_64:
        v20 = *(k - 4);
        goto LABEL_65;
      }

      v25 = *__p;
LABEL_57:
      operator delete(v25);
      goto LABEL_64;
    }
  }

  return sub_1000088CC(v70);
}

void sub_100346F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100346F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  LOWORD(v28) = *(a2 + 4);
  result = sub_1000E6554(off_100B508E8, buf, 1);
  v11 = result;
  if (result)
  {
    v26[0] = 0;
    v26[1] = 0;
    sub_100007F88(v26, a1 + 360);
    v12 = *(a1 + 336);
    v13 = *(a1 + 344);
    while (v12 != v13)
    {
      v14 = *v12;
      if (**v12 == v11)
      {
        goto LABEL_9;
      }

      ++v12;
    }

    v14 = 0;
LABEL_9:
    v15 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v23 = sub_100304810(a2, v16, v17, v18, v19, v20, v21, v22);
      *buf = 136315906;
      v28 = v23;
      v29 = 1024;
      v30 = a3;
      v31 = 1024;
      v32 = a4;
      v33 = 1024;
      v34 = a5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Receive command status from device %s, commandType = %d, result -> %d, reason -> %d", buf, 0x1Eu);
    }

    v24 = sub_1000E2140(v11, 32);
    v25 = a3 == 20 && v24;
    if (v14)
    {
      if (v25)
      {
        sub_10034714C(v14, a4, a5);
      }
    }

    return sub_1000088CC(v26);
  }

  return result;
}

void sub_10034714C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 672);
  if (v3)
  {
    v7 = *(a1 + 664);
    v8 = *(*(*(a1 + 640) + ((v7 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v7 & 0x3FF));
    *(a1 + 672) = v3 - 1;
    *(a1 + 664) = v7 + 1;
    sub_100362700(a1 + 632, 1);
    if (v8 == 1)
    {
      v9 = qword_100BCE8C0;
      if (*(a1 + 618))
      {
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(*a1, __p);
          v10 = v14 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v16 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Acknowledgement request TiPi connection priority list update for device %{public}s", buf, 0xCu);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        *(a1 + 618) = 0;
        if (qword_100B508E0 != -1)
        {
          sub_10081A1D8();
        }

        sub_100518ECC(off_100B508D8, *a1, 1, a2, a3);
        v11 = *(a1 + 624);
        if (v11)
        {
          [v11 invalidate];
          v12 = *(a1 + 624);
          *(a1 + 624) = 0;
        }
      }

      else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081C0F4();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081C130();
  }
}

uint64_t sub_10034731C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000C5E0(a4);
  v9 = sub_10000C5F8(a4);

  return sub_100347390(a1, a2, a3, v8, v9);
}

uint64_t sub_100347390(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v46 = a4;
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  result = sub_1000E6554(off_100B508E8, buf, 1);
  v14 = result;
  if (result)
  {
    if (a3 <= 127)
    {
      if (a3 == 2 || a3 == 4)
      {
        goto LABEL_66;
      }

      if (a3 != 32)
      {
LABEL_26:
        v23 = qword_100BCE8C0;
        if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          return sub_100348258(a1 + 560, v14, a3);
        }

        sub_1000E5A58(v14, __p);
        if (v50 >= 0)
        {
          v24 = __p;
        }

        else
        {
          v24 = *__p;
        }

        *buf = 136446722;
        *&buf[4] = v24;
        *&buf[12] = 1024;
        *&buf[14] = a3;
        *&buf[18] = 1024;
        v52 = a4;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received custom message from %{public}s: type 0x%x, len %u", buf, 0x18u);
LABEL_31:
        if (v50 < 0)
        {
          operator delete(*__p);
        }

        return sub_100348258(a1 + 560, v14, a3);
      }

      v15 = sub_10000C798();
      if (((*(*v15 + 352))(v15) & 1) == 0)
      {
        v16 = sub_10000C798();
        if (((*(*v16 + 416))(v16) & 1) == 0)
        {
          v17 = sub_10000C798();
          if (!(*(*v17 + 456))(v17))
          {
            goto LABEL_66;
          }
        }
      }

      v44 = 0;
      v45 = 0;
      sub_100007F88(&v44, a1 + 360);
      for (i = *(a1 + 336); i != *(a1 + 344); ++i)
      {
        v19 = *i;
        if (**i == v14)
        {
          v42 = *(v19 + 85);
          v43 = *(v19 + 93);
          if (!(*(&v42 + 3) | BYTE5(v42)))
          {
            *(&v42 + 3) = *(a5 + 48);
            BYTE5(v42) = *(a5 + 50);
            LOWORD(v42) = *(a5 + 36);
            BYTE2(v42) = *(a5 + 38);
            *(&v43 + 1) = *(a5 + 54);
            HIBYTE(v43) = *(a5 + 56);
            if (100 * v42 + 10 * BYTE1(v42) + BYTE2(v42) >= 0x174 && *(v19 + 20) == 8194)
            {
              v29 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(v14, buf);
                v30 = v52 >= 0 ? buf : *buf;
                v31 = *(v19 + 20);
                *__p = 136446466;
                *&__p[4] = v30;
                v48 = 1024;
                v49 = v31;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Enabling enhanced double tap feature support on device %{public}s (pid = 0x%x)", __p, 0x12u);
                if (SHIBYTE(v52) < 0)
                {
                  operator delete(*buf);
                }
              }

              sub_10053E4FC(v14, 14, 1);
            }

            v32 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *&buf[4] = BYTE3(v42);
              *&buf[8] = 1024;
              *&buf[10] = BYTE4(v42);
              *&buf[14] = 1024;
              *&buf[16] = BYTE5(v42);
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "case F/W version from Headset  %d, %d, %d", buf, 0x14u);
              v32 = qword_100BCE8C0;
            }

            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *&buf[4] = BYTE1(v43);
              *&buf[8] = 1024;
              *&buf[10] = BYTE2(v43);
              *&buf[14] = 1024;
              *&buf[16] = HIBYTE(v43);
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "case H/W version from Headset  %d, %d, %d", buf, 0x14u);
              v32 = qword_100BCE8C0;
            }

            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = *(a5 + 36);
              v34 = *(a5 + 37);
              v35 = *(a5 + 38);
              *buf = 67109632;
              *&buf[4] = v33;
              *&buf[8] = 1024;
              *&buf[10] = v34;
              *&buf[14] = 1024;
              *&buf[16] = v35;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Active Bud F/W version from Headset  %d, %d, %d", buf, 0x14u);
              v32 = qword_100BCE8C0;
            }

            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v36 = *(a5 + 39);
              v37 = *(a5 + 40);
              v38 = *(a5 + 41);
              *buf = 67109632;
              *&buf[4] = v36;
              *&buf[8] = 1024;
              *&buf[10] = v37;
              *&buf[14] = 1024;
              *&buf[16] = v38;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Pending Bud F/W version from Headset  %d, %d, %d", buf, 0x14u);
            }

            *(v19 + 85) = v42;
            *(v19 + 93) = v43;
            if (qword_100B540C0 != -1)
            {
              sub_10081C1F4();
            }

            v39 = (*(*off_100B540B8 + 120))(off_100B540B8, *v19);
            if (v39)
            {
              sub_100347B74(v39, v19);
            }
          }

          sub_10000801C(&v44);
          sub_1000088CC(&v44);
          goto LABEL_66;
        }
      }
    }

    else
    {
      if (a3 < 0x40000)
      {
        if (a3 != 128 && a3 != 1024)
        {
          goto LABEL_26;
        }

LABEL_66:
        if (qword_100B51308 != -1)
        {
          sub_10081AC08();
        }

        sub_1004B5068(qword_100B51300, a2, a3, v46, a5);
        return sub_100348258(a1 + 560, v14, a3);
      }

      if (a3 != 0x40000)
      {
        if (a3 == 0x100000)
        {
          v20 = sub_10018176C(a5, (a4 - 2), v11, v12, v13);
          if (v20 == 1)
          {
            *buf = 0;
            *&buf[8] = 0;
            v21 = sub_100007F88(buf, a1 + 360);
            for (j = *(a1 + 336); ; ++j)
            {
              if (j == *(a1 + 344))
              {
                v27 = buf;
                return sub_1000088CC(v27);
              }

              if (**j == v14)
              {
                break;
              }
            }

            sub_10034811C(v21, *j, v14, &v46, a5);
            sub_1000088CC(buf);
          }

          v40 = qword_100BCE8C0;
          if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEBUG))
          {
            return sub_100348258(a1 + 560, v14, a3);
          }

          sub_1000E5A58(v14, __p);
          if (v50 >= 0)
          {
            v41 = __p;
          }

          else
          {
            v41 = *__p;
          }

          *buf = 136446722;
          *&buf[4] = v41;
          *&buf[12] = 1024;
          *&buf[14] = v20;
          *&buf[18] = 1024;
          v52 = v46;
          _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Received AACP_CUSTOM_MESSAGE_TYPE_SENSOR_WX message from %{public}s: protocol %u, len %u", buf, 0x18u);
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      v44 = 0;
      v45 = 0;
      v25 = sub_100007F88(&v44, a1 + 360);
      for (k = *(a1 + 336); k != *(a1 + 344); ++k)
      {
        if (**k == v14)
        {
          sub_10034811C(v25, *k, v14, &v46, a5);
          v28 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEBUG))
          {
            sub_1000E5A58(v14, buf);
            sub_10081C16C(buf, &v46, __p, v28);
          }

          sub_1000088CC(&v44);
          return sub_100348258(a1 + 560, v14, a3);
        }
      }
    }

    v27 = &v44;
    return sub_1000088CC(v27);
  }

  return result;
}

void sub_100347B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100347B74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 80) == 8194)
    {
      v3 = *a2;
      if (*a2)
      {
        v4 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000C23E0(v3, __p);
          v5 = __p[23] >= 0 ? __p : *__p;
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2081;
          *&buf[14] = v5;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "publishW1RemoteFirmware: Publishing F/W version for %{private, mask.hash}s", buf, 0x16u);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        v31 = 0;
        cStr = 0;
        v29 = 0;
        v28 = 0;
        v16 = *(a2 + 85);
        v17 = *(a2 + 93);
        if (*(&v16 + 3) | BYTE5(v16))
        {
          sub_1000BE6F8((v3 + 128), __p);
          if (__p[23] >= 0)
          {
            v6 = __p;
          }

          else
          {
            v6 = *__p;
          }

          v7 = CFStringCreateWithCString(kCFAllocatorDefault, v6, 0x8000100u);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if (v7)
          {
            sprintf(&cStr, "%d.%d.%d", BYTE3(v16), BYTE4(v16), BYTE5(v16));
            v8 = CFStringCreateWithCString(kCFAllocatorDefault, &cStr, 0x8000100u);
            if (v8)
            {
              sprintf(&v28, "%d.%d.%d", BYTE1(v17), BYTE2(v17), HIBYTE(v17));
              v9 = CFStringCreateWithCString(kCFAllocatorDefault, &v28, 0x8000100u);
              if (v9)
              {
                Connection = acc_transportClient_createConnection();
                if (Connection)
                {
                  Endpoint = acc_transportClient_createEndpoint();
                  v12 = qword_100BCE8C0;
                  if (Endpoint)
                  {
                    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
                    {
                      *__p = 138412546;
                      *&__p[4] = Connection;
                      *&__p[12] = 2112;
                      *&__p[14] = Endpoint;
                      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "publishW1RemoteFirmware: connection %@ endpoint %@", __p, 0x16u);
                    }

                    *(a2 + 112) = Connection;
                    *(a2 + 120) = Endpoint;
                    *__p = kCFACCInfo_Name;
                    *&__p[8] = __PAIR128__(kCFACCInfo_Model, kCFACCInfo_Manufacturer);
                    v24 = kCFACCInfo_SerialNumber;
                    v25 = kCFACCInfo_HardwareVersion;
                    v26 = kCFACCInfo_FirmwareVersionActive;
                    v27 = kCFACCInfo_FirmwareVersionPending;
                    *buf = @"AirPods Case";
                    *&buf[8] = @"Apple Inc";
                    *&buf[16] = @"A1602";
                    v19 = kCFNull;
                    v20 = v9;
                    v21 = v8;
                    v22 = kCFNull;
                    v13 = CFDictionaryCreate(kCFAllocatorDefault, __p, buf, 7, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                    acc_transportClient_setAccessoryInfo();
                    CFRelease(v13);
                    acc_transportClient_setPropertyForConnectionWithUUID();
                    acc_transportClient_publishConnection();
                    CFRelease(v7);
                    CFRelease(v8);
                    CFRelease(v9);
                  }

                  else
                  {
                    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
                    {
                      sub_10081C21C();
                    }

                    CFRelease(Connection);
                    CFRelease(v9);
                    CFRelease(v8);
                    CFRelease(v7);
                  }
                }

                else
                {
                  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
                  {
                    sub_10081C2B8();
                  }

                  CFRelease(v9);
                  CFRelease(v8);
                  CFRelease(v7);
                }
              }

              else
              {
                if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
                {
                  sub_10081C354();
                }

                CFRelease(v8);
                CFRelease(v7);
              }
            }

            else
            {
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
              {
                sub_10081C3F0();
              }

              CFRelease(v7);
            }
          }

          else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            sub_10081C48C();
          }
        }

        else
        {
          v14 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000C23E0(v3, __p);
            v15 = __p[23] >= 0 ? __p : *__p;
            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Warning: publishW1RemoteFirmware: No case version info available for %{private, mask.hash}s", buf, 0x16u);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081C528();
  }
}

void sub_1003480F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034811C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
  if (*a4 >= 2u && (sub_1000E3218(a3, 0xE0u) != 2 || *(a2 + 16) != 1))
  {
    v9 = *a4 - 2;
    v10 = *(a5 + v9);
    if (v10 != *(a2 + 760))
    {
      v11 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 67109120;
        v12[1] = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received new sensor data v2 JB: %u", v12, 8u);
      }

      *(a2 + 760) = v10;
      if (qword_100B50940 != -1)
      {
        sub_10081BECC();
      }

      sub_10062D068(off_100B50938, a3, v10);
    }

    *a4 = v9;
  }
}

uint64_t sub_100348258(uint64_t a1, uint64_t a2, int a3)
{
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 24);
  v5 = *a1;
  if (*a1 == *(a1 + 8))
  {
    v17 = 106;
  }

  else
  {
    do
    {
      if (qword_100B50B88 != -1)
      {
        sub_10081C564();
      }

      if (sub_100076290(qword_100B50B80, *v5))
      {
        v5 += 4;
        v6 = *(a1 + 8);
      }

      else
      {
        v7 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: AACPDebugUtils, Invalid BTAccessoryManager handle - removing associated callbacks", buf, 2u);
        }

        v8 = *(a1 + 8);
        if (v5 + 4 == v8)
        {
          v6 = v5;
        }

        else
        {
          v9 = v5;
          v6 = v5;
          do
          {
            v10 = *(v6 + 32);
            v6 += 32;
            v11 = *(v9 + 40);
            *v9 = v10;
            *(v9 + 8) = v11;
            *(v9 + 16) = *(v9 + 48);
            *(v9 + 24) = *(v9 + 56);
            v12 = (v9 + 64);
            v9 = v6;
          }

          while (v12 != v8);
        }

        *(a1 + 8) = v6;
      }
    }

    while (v5 != v6);
    v13 = *a1;
    v14 = (v6 - *a1) >> 5;
    *buf = 0;
    v21 = 0;
    v22 = 0;
    sub_100362C7C(buf, v13, v6, v14);
    sub_10000801C(v23);
    v16 = *buf;
    v15 = v21;
    if (*buf != v21)
    {
      do
      {
        if (qword_100B50B88 != -1)
        {
          sub_10081C564();
        }

        sub_100076290(qword_100B50B80, *v16);
        if (qword_100B508F0 != -1)
        {
          sub_10081A4E4();
        }

        sub_10056A4C4(off_100B508E8, *v16, a2);
        if ((a3 & ~*(v16 + 16)) == 0)
        {
          if (qword_100B540D0 != -1)
          {
            sub_10081C58C();
          }

          operator new();
        }

        v16 += 32;
      }

      while (v16 != v15);
      v16 = *buf;
    }

    if (v16)
    {
      v21 = v16;
      operator delete(v16);
    }

    v17 = 0;
  }

  sub_1000088CC(v23);
  return v17;
}

void sub_10034852C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a15);
  _Unwind_Resume(a1);
}

void sub_100348584(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, __p, 1);
  v6 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(v5, __p);
    if (v9 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315394;
    v11 = v7;
    v12 = 1024;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "received tap interval info from device %s, tapInterval = %d", buf, 0x12u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1003486B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  *v31 = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, buf, 1);
  v9 = v8;
  if (v8)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == v8)
      {
        v11 = qword_100BCE8C0;
        v12 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          sub_100333C10(a1, a3, a4, v28);
          v13 = v29;
          v14 = v28[0];
          sub_1000E5A58(v9, __p);
          if (v13 >= 0)
          {
            v14 = v28;
          }

          v16 = sub_100333BE4(v15, a3);
          if (v27 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          *buf = 136446978;
          *v31 = v16;
          *&v31[8] = 1024;
          *v32 = a3;
          *&v32[4] = 2082;
          v33 = v14;
          v34 = 2082;
          v35 = v17;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received %{public}s (control cmd 0x%02X) as %{public}s from device %{public}s", buf, 0x26u);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }

          if (v29 < 0)
          {
            operator delete(v28[0]);
          }
        }

        switch(a3)
        {
          case 6:
            v18 = a4 == 0;
            v19 = a4 != 0;
            v20 = v18;
            sub_100349058(a1, v9, v20);
            sub_100548A1C(v9, v19);
            if (qword_100B508E0 != -1)
            {
              goto LABEL_99;
            }

            goto LABEL_92;
          case 10:
            sub_10033DF90(a1, v9, a4 != 1, 2u);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 13:
            v23 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v31 = a4;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Set ListeningMode device setting : ListeningMode value %d", buf, 8u);
            }

            v24 = sub_100546AA8(v9, a4);
            sub_100338DBC(v24, v9);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 22:
            v22 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109888;
              *v31 = a4;
              *&v31[4] = 1024;
              *&v31[6] = BYTE1(a4);
              *v32 = 1024;
              *&v32[2] = BYTE2(a4);
              LOWORD(v33) = 1024;
              *(&v33 + 2) = BYTE3(a4);
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Received ClickHoldMode device setting: right 0x%02X, left 0x%02X, prevRight 0x%02X, prevLeft 0x%02X", buf, 0x1Au);
            }

            sub_1005470CC(v9, a4);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 23:
            sub_1005471A8(v9, a4);
            if (qword_100B508E0 != -1)
            {
              sub_10081A1D8();
            }

            sub_100519EFC(off_100B508D8, v9, 16, "Double Click Interval");
            return;
          case 24:
            sub_10054723C(v9, a4);
            if (qword_100B508E0 != -1)
            {
              sub_10081A1D8();
            }

            sub_100519EFC(off_100B508D8, v9, 18, "Click and Hold Interval");
            return;
          case 27:
            sub_1005472D0(v9, a4);
            if (qword_100B508E0 != -1)
            {
              sub_10081A1D8();
            }

            sub_100519EFC(off_100B508D8, v9, 21, "One Bud ANC Mode");
            return;
          case 28:
            sub_100547364(v9, a4);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 30:
            sub_1005473AC(v9, a4);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 31:
            sub_1005473F4(v9, a4);
            if (qword_100B508E0 != -1)
            {
              sub_10081A1D8();
            }

            sub_100519738(off_100B508D8, v9);
            if (qword_100B508E0 != -1)
            {
              sub_10081A1D8();
            }

            sub_100519EFC(off_100B508D8, v9, 17, "Chime Volume");
            return;
          case 35:
            sub_100547518(v9, a4);
            if (qword_100B508E0 != -1)
            {
              sub_10081A1D8();
            }

            sub_100519EFC(off_100B508D8, v9, 20, "Volume Swipe Interval");
            return;
          case 36:
            v21 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v31 = a4;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Prox Card Status: Received Call Management: 0x%x", buf, 8u);
            }

            sub_100547688(v9, a4);
            sub_100338AC0(a1, v9, 36, a4);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 37:
            sub_100547484(v9, a4);
            if (qword_100B508E0 != -1)
            {
              sub_10081A1D8();
            }

            sub_100519EFC(off_100B508D8, v9, 19, "Volume Swipe Mode");
            return;
          case 38:
            sub_1005475AC(v9, a4);
            if (qword_100B50AE0 != -1)
            {
              sub_10081A23C();
            }

            sub_1004DBB68(qword_100B50AD8, v9, a4);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 39:
            sub_10054775C(v9, a4);
            sub_100338CE0(a1);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 40:
            sub_1003336B8(v12, v9, a4);
            sub_1005477F8(v9, a4);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

            goto LABEL_99;
          case 41:
            sub_1005478DC(v9, a4);
            if (qword_100B508E0 == -1)
            {
              goto LABEL_92;
            }

LABEL_99:
            sub_10081A1D8();
LABEL_92:
            sub_100519738(off_100B508D8, v9);
            break;
          case 44:
            sub_10054FBF8(v9, a4);
            sub_10054FCD0(v9, BYTE1(a4));
            break;
          case 46:
            sub_1005479C0(v9, a4);
            break;
          case 47:
            sub_100548150(v9, a4);
            break;
          case 48:
            sub_100547A5C(v9, a4);
            break;
          case 49:
            sub_100547978(v9, a4);
            if (qword_100B508E0 != -1)
            {
              sub_10081A1D8();
            }

            sub_100519EFC(off_100B508D8, v9, 24, "In Case Tone");
            break;
          case 50:
            sub_100547E04(v9, a4);
            break;
          case 51:
            sub_1005481EC(v9, a4);
            break;
          case 52:
            sub_100548288(v9, a4);
            break;
          case 53:
            sub_100547EA0(v9, a4);
            break;
          case 55:
            sub_100548324(v9, a4);
            break;
          case 56:
            sub_100547AF8(v9, a4);
            break;
          case 57:
            sub_100547F3C(v9, a4);
            break;
          case 59:
            sub_100547B94(v9, a4);
            break;
          case 61:
            sub_100547C30(v9, a4);
            break;
          case 62:
            sub_100547FD8(v9, a4);
            break;
          case 63:
            sub_1005480B4(v9, a4);
            break;
          case 64:
            sub_100547D68(v9, a4);
            break;
          case 65:
            sub_100547CCC(v9, a4);
            break;
          default:
            v25 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v31 = a3;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Unsupported control type = %d", buf, 8u);
            }

            break;
        }

        return;
      }
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081C5B4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081C5F0();
  }
}

void sub_100349034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100349058(uint64_t a1, uint64_t a2, char a3)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == a2)
      {
        v8 = sub_1000D999C();
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10035BE18;
        v14[3] = &unk_100AE15D8;
        v14[4] = a2;
        v15 = a3;
        sub_10000CA94(v8, v14);
        v9 = sub_1000DAB84();
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10035BE70;
        v12[3] = &unk_100AE15D8;
        v12[4] = a2;
        v13 = a3;
        sub_10000CA94(v9, v12);
        goto LABEL_9;
      }
    }
  }

  v7 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setHijackAudioRoute unable to find AACP connection", v11, 2u);
  }

LABEL_9:
  sub_1000088CC(v16);
  return 0;
}

uint64_t sub_1003491D8(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned __int8 *a5)
{
  v101 = a5;
  LODWORD(v100) = a3;
  v102 = a1;
  if (qword_100B508F0 != -1)
  {
    v89 = a2;
    sub_100819FC0();
    a2 = v89;
  }

  *v124 = *a2;
  v99 = a2;
  *&v124[4] = *(a2 + 4);
  result = sub_1000E6554(off_100B508E8, v124, 1);
  v7 = result;
  if (!result)
  {
    return result;
  }

  v121[0] = 0;
  v121[1] = 0;
  v8 = sub_100007F88(v121, v102 + 360);
  v9 = *(v102 + 336);
  v10 = *(v102 + 344);
  if (v9 == v10)
  {
LABEL_7:
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v7, v124);
      sub_10081C968();
    }

    return sub_1000088CC(v121);
  }

  while (1)
  {
    v11 = *v9;
    if (**v9 == v7)
    {
      break;
    }

    if (++v9 == v10)
    {
      goto LABEL_7;
    }
  }

  if ((v100 - 3) <= 0xFFFFFFFD)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081C8F8();
    }

    return sub_1000088CC(v121);
  }

  v94 = &v90;
  v12 = byte_1008A5F68[v100];
  __chkstk_darwin(v8, v12 << 8);
  bzero(&v90 - 32 * v12, v13);
  if (v12 + 2 > a4)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081C888();
    }

    return sub_1000088CC(v121);
  }

  if (*v101 > 0x1Fu)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081C818();
    }

    return sub_1000088CC(v121);
  }

  v96 = *v101;
  v16 = 0;
  v95 = (&v90 - 32 * v12 + 320);
  v91 = v12;
  if (v12 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v12;
  }

  v97 = (&v90 - 32 * v12);
  v98 = v17;
  v18 = 2;
  *&v15 = 136446466;
  v93 = v15;
  *&v15 = 67109632;
  v92 = v15;
  while (1)
  {
    if (v18 >= a4)
    {
      v23 = qword_100BCE8C0;
      v14 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        *v124 = v92;
        *&v124[4] = v16;
        *&v124[8] = 1024;
        *&v124[10] = v18;
        *v125 = 1024;
        *&v125[2] = a4;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "versionInfoEvent: Reached end of strings in version info, count %d, %d >= %d", v124, 0x14u);
      }

      v97[256 * v16] = 0;
      goto LABEL_49;
    }

    v19 = &v101[v18];
    if (v16 == 10)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = v19[v20];
        if ((v22 - 48) > 9)
        {
          break;
        }

        if (v21 > 0x19999999 || 10 * v21 > 47 - v22)
        {
          v21 = 0;
          break;
        }

        v21 = 10 * v21 + v22 - 48;
        ++v20;
      }

      while (v20 != 10);
      v28 = sub_100340A44(v14, v21);
      v29 = v28;
      v30 = [v28 UTF8String];
      v31 = v96 == 4;
      strcpy(v95, v30);

      v14 = strlen(v19);
      v18 += v14 + 1;
      if (v31)
      {
        sub_100543C80(v7, v21);
        v32 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v7, v124);
          v33 = v124;
          if (v125[9] < 0)
          {
            v33 = *v124;
          }

          *buf = v93;
          *&buf[4] = v95;
          *&buf[12] = 2082;
          *&buf[14] = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Identification - Apple Audio Device firmware version of %{public}s for device %{public}s received.", buf, 0x16u);
          if ((v125[9] & 0x80000000) != 0)
          {
            operator delete(*v124);
          }
        }

        sub_100538900(v7);
      }

      goto LABEL_49;
    }

    v14 = strlen(&v101[v18]);
    if (v14 != 1 || *v19 != 48)
    {
      break;
    }

    v97[256 * v16] = 0;
    v18 += 2;
LABEL_49:
    if (++v16 == v98)
    {
      v35 = v96;
      if (v96 == 13)
      {
        sub_100007E30(&v103, v95);
        sub_100541E60(v7, &v103);
        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }
      }

      else if (v96 == 4)
      {
        memset(buf, 0, sizeof(buf));
        v118 = 0;
        v119 = 0;
        v120 = 0;
        sub_1000DFC04(v7, &v118);
        v115 = 0;
        v116 = 0;
        v117 = 0;
        sub_10003E428(&v115, v118, v119, 0xAAAAAAAAAAAAAAABLL * ((v119 - v118) >> 3));
        v36 = v100;
        if (0xAAAAAAAAAAAAAAABLL * ((v116 - v115) >> 3) < 4)
        {
          LODWORD(v92) = 0;
        }

        else
        {
          v37 = *(v115 + 95);
          if ((v37 & 0x8000000000000000) != 0)
          {
            v37 = *(v115 + 80);
          }

          LODWORD(v92) = v37 > 1;
        }

        *v124 = &v115;
        sub_1000161FC(v124);
        sub_100007E30(v124, "");
        sub_10034A52C(buf, v124);
        if ((v125[9] & 0x80000000) != 0)
        {
          operator delete(*v124);
        }

        if ((v36 - 1) <= 1)
        {
          if (v91 <= 2)
          {
            v39 = 2;
          }

          else
          {
            v39 = v91;
          }

          v40 = v97 + 256;
          v41 = v39 - 1;
          do
          {
            sub_100007E30(v124, v40);
            sub_10034A52C(buf, v124);
            if ((v125[9] & 0x80000000) != 0)
            {
              operator delete(*v124);
            }

            v40 += 256;
            --v41;
          }

          while (v41);
        }

        memset(v114, 0, sizeof(v114));
        sub_10003E428(v114, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
        memset(v113, 0, sizeof(v113));
        v42 = sub_10003E428(v113, v118, v119, 0xAAAAAAAAAAAAAAABLL * ((v119 - v118) >> 3));
        v43 = sub_10034A65C(v42, v114, v113);
        *v124 = v113;
        sub_1000161FC(v124);
        *v124 = v114;
        sub_1000161FC(v124);
        if ((v43 & 1) == 0)
        {
          v44 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            *v124 = 0;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "versionInfoEvent: New version information received", v124, 2u);
          }

          v45 = [CBProductInfo productInfoWithProductID:*(v11 + 20)];
          v46 = ([v45 flags] & 0x100000) == 0;
          if ((v46 | v92))
          {

            goto LABEL_83;
          }

          v110 = 0;
          v111 = 0;
          v112 = 0;
          sub_10003E428(&v110, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
          if (0xAAAAAAAAAAAAAAABLL * ((v111 - v110) >> 3) < 4)
          {
            *v124 = &v110;
            sub_1000161FC(v124);

LABEL_83:
            v35 = v96;
          }

          else
          {
            v47 = *(v110 + 95);
            if ((v47 & 0x8000000000000000) != 0)
            {
              v47 = *(v110 + 80);
            }

            v48 = v47 > 1;
            *v124 = &v110;
            sub_1000161FC(v124);

            v35 = v96;
            if (v48)
            {
              v49 = sub_100007EE8();
              v108[0] = _NSConcreteStackBlock;
              v108[1] = 3321888768;
              v108[2] = sub_10034A864;
              v108[3] = &unk_100AEC150;
              v108[4] = v7;
              memset(v109, 0, sizeof(v109));
              sub_10003E428(v109, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
              sub_10000CA94(v49, v108);
              *v124 = v109;
              sub_1000161FC(v124);
            }
          }

          memset(v107, 0, sizeof(v107));
          sub_10003E428(v107, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
          sub_100541A24(v7, v107);
          *v124 = v107;
          sub_1000161FC(v124);
          sub_1000DFC04(v7, buf);
        }

        if (qword_100B50AB0 != -1)
        {
          sub_10081A1B0();
          v35 = v96;
        }

        sub_100561C34(off_100B50AA8, v7);
        v50 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v7, v122);
          v51 = v123;
          v52 = v122[0];
          v53 = sub_1000E2C2C(v7);
          v54 = v122;
          v55 = *(v11 + 20);
          if (v51 < 0)
          {
            v54 = v52;
          }

          v56 = "no";
          *v124 = 136446978;
          *&v124[4] = v54;
          *&v124[12] = 2082;
          if (v53)
          {
            v56 = "yes";
          }

          *v125 = v56;
          *&v125[8] = 1024;
          *&v125[10] = v55;
          v126 = 2082;
          v127 = v95;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "versionInfoEvent: Device %{public}s dev-fused: %{public}s pId: 0x%x FW version: %{public}s", v124, 0x26u);
          if (v123 < 0)
          {
            operator delete(v122[0]);
          }
        }

        if (strlen(v97 + 768) <= 1)
        {
          v104 = 0;
          v105 = 0;
          v106 = 0;
          sub_10003E428(&v104, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
          if (0xAAAAAAAAAAAAAAABLL * ((v105 - v104) >> 3) < 4)
          {
            goto LABEL_101;
          }

          v57 = *(v104 + 95);
          if ((v57 & 0x8000000000000000) != 0)
          {
            v57 = *(v104 + 80);
          }

          if (v57 < 2)
          {
LABEL_101:
            v58 = "?";
          }

          else
          {
            v58 = (*buf + 72);
            if (*(*buf + 95) < 0)
            {
              v58 = *v58;
            }
          }

          snprintf(v97 + 768, 0x100uLL, "%s", v58);
          *v124 = &v104;
          sub_1000161FC(v124);
        }

        v59 = sub_10000E92C();
        v60 = (*(*v59 + 160))(v59);
        if (v60)
        {
          v61 = sub_10033F3C8(v60, v99);
          v62 = v61;
          v63 = [v61 UTF8String];
          v64 = v97;
          v65 = fopen(v63, "w");
          if (v65)
          {
            fwrite("App Version Info Collected from Accessory Device\n\n", 0x32uLL, 1uLL, v65);
            fwrite("New Features Enabled: 1\n", 0x18uLL, 1uLL, v65);
            v73 = sub_100304810(v99, v66, v67, v68, v69, v70, v71, v72);
            fprintf(v65, "Device Bluetooth Address: %s\n", v73);
            fprintf(v65, "Device Product ID: %d\n", *(v11 + 20));
            v74 = sub_1000E2C2C(v7);
            v100 = v61;
            v75 = "Prod-fused";
            if (v74)
            {
              v75 = "Dev-fused";
            }

            fprintf(v65, "Fusing: %s\n\n", v75);
            v76 = 0;
            v77 = 8 * v98;
            do
            {
              v78 = strlen(v64);
              if (v76 == 32 && (v80 = v78, v78 >= 20))
              {
                __chkstk_darwin(v78, v79);
                v81 = &v90 - ((v80 + 9) & 0xFFFFFFFFFFFFFFF0);
                if (v82 >= 4)
                {
                  v83 = v80 - 9;
                }

                else
                {
                  v83 = 0;
                }

                bzero(v81 + 3, v83);
                *v81 = *(v64 + 3);
                v81[2] = *(v64 + 5);
                v81[3] = 46;
                *(v81 + 2) = *(v64 + 3);
                v81[6] = *(v64 + 8);
                v81[7] = 46;
                *(v81 + 4) = *(v64 + 9);
                v81[10] = *(v64 + 11);
                v81[11] = 126;
                memcpy(v81 + 12, v64 + 19, v80 - 19);
                v81[v80 - 7] = 0;
                fprintf(v65, "%s: %s (%s)\n", off_100B54018[0], &v90 - ((v80 + 9) & 0xFFFFFFFFFFFFFFF0), v64);
              }

              else
              {
                fprintf(v65, "%s: %s\n", off_100B53FF8[v76 / 8], v64);
              }

              v76 += 8;
              v64 += 32;
            }

            while (v77 != v76);
            fclose(v65);
            v61 = v100;
          }

          else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            v84 = __error();
            sub_10081C70C(v61, v84, v122);
          }

          v35 = v96;
        }

        if (qword_100B508D0 != -1)
        {
          sub_10081AB8C();
          v35 = v96;
        }

        sub_100790AA4();
        *v124 = &v118;
        sub_1000161FC(v124);
        *v124 = buf;
        sub_1000161FC(v124);
        v38 = 1;
LABEL_123:
        v100 = v11 + 20;
        v85 = v11[v35 + 20];
        if (v85)
        {
          v86 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v7, buf);
            v87 = (buf[23] & 0x80u) == 0 ? buf : *buf;
            v88 = v11[16];
            *v124 = 136446722;
            *&v124[4] = v87;
            *&v124[12] = 1024;
            *v125 = v35;
            *&v125[4] = 2112;
            *&v125[6] = v88;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "versionInfoEvent: Overwriting already existing version info for device %{public}s (index = %d); destroying old CoreAcc connection %@", v124, 0x1Cu);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          sub_10035C394(v85);
          operator delete();
        }

        LODWORD(v98) = v38;
        operator new();
      }

      v38 = 0;
      goto LABEL_123;
    }
  }

  if ((v16 - 11) <= 1)
  {
    v24 = [[NSUUID alloc] initWithUUIDBytes:v19];
    v25 = [v24 UUIDString];
    v26 = v25;
    v27 = [v25 UTF8String];
    strcpy(&v97[256 * v16], v27);

    v18 += 17;
    goto LABEL_49;
  }

  if (strnlen(v19, 0x100uLL) < 0x100)
  {
    v34 = strcpy(&v97[256 * v16], v19);
    v14 = strlen(v34);
    v18 += v14 + 1;
    goto LABEL_49;
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081C690();
  }

  return sub_1000088CC(v121);
}

void sub_10034A390(_Unwind_Exception *a1)
{
  *(v2 - 176) = v1;
  sub_1000161FC((v2 - 176));
  *(v2 - 176) = v2 - 248;
  sub_1000161FC((v2 - 176));
  *(v2 - 176) = v2 - 128;
  sub_1000161FC((v2 - 176));
  sub_1000088CC(v2 - 224);
  _Unwind_Resume(a1);
}

BOOL sub_10034A4D4(uint64_t a1, void *a2, unsigned int a3)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= a3)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v3 = *a2 + 24 * a3;
  v4 = *(v3 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(v3 + 8);
  }

  return v4 > 1;
}

uint64_t sub_10034A52C(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000C7698();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_10035FDB8(result, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(result + 8) - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_100360AC8(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  v3[1] = v7;
  return result;
}

uint64_t sub_10034A65C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = a2[1];
  if (v6 - v5 != a3[1] - *a3)
  {
    return 0;
  }

  if (v6 != v5)
  {
    v8 = 0;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3);
    v10 = 23;
    do
    {
      if (v10 != 23)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        sub_10003E428(&v31, v5, v6, v9);
        if (0xAAAAAAAAAAAAAAABLL * ((v32 - v31) >> 3) <= v8)
        {
          goto LABEL_10;
        }

        v11 = *(v31 + v10);
        if ((v11 & 0x8000000000000000) != 0)
        {
          v11 = *(v31 + v10 - 15);
        }

        if (v11 < 2)
        {
LABEL_10:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          sub_10003E428(&v28, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
          if (0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3) <= v8)
          {
            v34 = &v28;
            sub_1000161FC(&v34);
            v34 = &v31;
            sub_1000161FC(&v34);
            goto LABEL_29;
          }

          v12 = *(v28 + v10);
          if ((v12 & 0x8000000000000000) != 0)
          {
            v12 = *(v28 + v10 - 15);
          }

          v34 = &v28;
          sub_1000161FC(&v34);
          v34 = &v31;
          sub_1000161FC(&v34);
          if (v12 < 2)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v34 = &v31;
          sub_1000161FC(&v34);
        }

        v13 = (*a2 + v10);
        v14 = (*a3 + v10);
        v15 = *v13;
        if (v15 >= 0)
        {
          v16 = *v13;
        }

        else
        {
          v16 = *(v13 - 15);
        }

        v17 = *v14;
        v18 = v17;
        if ((v17 & 0x80u) != 0)
        {
          v17 = *(v14 - 15);
        }

        if (v16 != v17)
        {
          return 0;
        }

        v21 = *(v13 - 23);
        v19 = (v13 - 23);
        v20 = v21;
        v22 = v15 >= 0 ? v19 : v20;
        v25 = *(v14 - 23);
        v24 = v14 - 23;
        v23 = v25;
        v26 = v18 >= 0 ? v24 : v23;
        if (memcmp(v22, v26, v16))
        {
          return 0;
        }
      }

LABEL_29:
      ++v8;
      v5 = *a2;
      v6 = a2[1];
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
      v10 += 24;
    }

    while (v9 > v8);
  }

  return 1;
}

void sub_10034A848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  sub_1000161FC(&a16);
  _Unwind_Resume(a1);
}

void sub_10034A864(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = 0;
  if (qword_100B51078 != -1)
  {
    sub_10081B02C();
  }

  v2 = *(a1 + 32);
  v3 = sub_1000AF8E0(off_100B51070, (v2[128] << 40) | (v2[129] << 32) | (v2[130] << 24) | (v2[131] << 16) | (v2[132] << 8) | v2[133], v13);
  v4 = qword_100BCE8C0;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = (v5 + 72);
      if (*(v5 + 95) < 0)
      {
        v6 = *v6;
      }

      v11 = 136315138;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "versionInfoEvent: Setting key for %s", &v11, 0xCu);
    }

    if (qword_100B51078 != -1)
    {
      sub_10081C0CC();
    }

    v7 = *(a1 + 40);
    v8 = (v7 + 72);
    if (*(v7 + 95) < 0)
    {
      v8 = *v8;
    }

    v9 = off_100B51070;
    v10 = [NSString stringWithUTF8String:v8];
    sub_1007B0C38(v9, v10, v13);
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081C9BC();
  }
}

uint64_t sub_10034AA10(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return sub_10003E428(v2, *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
}

void sub_10034AA64(uint64_t a1, int *a2, unsigned int a3, unsigned int a4, const UInt8 *a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  v14 = *a2;
  v15 = *(a2 + 2);
  v10 = sub_1000E6554(off_100B508E8, &v14, 1);
  if (v10)
  {
    for (i = *(a1 + 336); ; ++i)
    {
      if (i == *(a1 + 344))
      {
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          sub_10081CB28();
        }

        return;
      }

      if (**i == v10)
      {
        break;
      }
    }

    if (a3 <= 0x1F && (v12 = (*i)[a3 + 20]) != 0 && *(v12 + 97) == 1 && *(v12 + 88))
    {
      v13 = CFDataCreate(kCFAllocatorDefault, a5, a4);
      if ((acc_transportClient_processIncomingData() & 1) != 0 || !os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        if (!v13)
        {
          return;
        }

        goto LABEL_17;
      }

      sub_10081C9F8();
      if (v13)
      {
LABEL_17:
        CFRelease(v13);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081CA90();
    }
  }
}

void sub_10034ABFC(uint64_t a1, uint64_t a2, unsigned int a3, const UInt8 *a4)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v8 = sub_1000E6554(off_100B508E8, __p, 1);
  if (v8)
  {
    v9 = v8;
    for (i = *(a1 + 336); ; i += 8)
    {
      if (i == *(a1 + 344))
      {
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          sub_10081CCF0();
        }

        return;
      }

      if (**i == v8)
      {
        break;
      }
    }

    v11 = qword_100BCE8C0;
    if (*(*i + 136))
    {
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v9, __p);
        if (v15 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *buf = 67109378;
        v17 = a3;
        v18 = 2082;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "authenticationDataEvent: Processing %d bytes received from device %{public}s", buf, 0x12u);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v13 = CFDataCreate(kCFAllocatorDefault, a4, a3);
      if ((acc_transportClient_processIncomingData() & 1) != 0 || !os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        if (!v13)
        {
          return;
        }

        goto LABEL_21;
      }

      sub_10081CBC0();
      if (v13)
      {
LABEL_21:
        CFRelease(v13);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081CC58();
    }
  }
}

void sub_10034AE18(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  *v21 = *(a2 + 4);
  v11 = sub_1000E6554(off_100B508E8, buf, 1);
  if (v11)
  {
    v12 = v11;
    v13 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(v12, __p);
      v14 = v19 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *v21 = v14;
      *&v21[8] = 1024;
      v22 = a3;
      v23 = 1024;
      v24 = a4;
      v25 = 1024;
      v26 = a5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "received setup command from device %s, setupType = %d, opType = %d, pldLen = %d", buf, 0x1Eu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (a3 == 1)
    {
      if (a5 >= 2)
      {
        if (!a6)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/aacp/AACPClient.mm", 5939, "pldData");
        }

        v15 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *a6;
          *buf = 67109376;
          *v21 = a4;
          *&v21[4] = 1024;
          *&v21[6] = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "received seal setup operation opType = %d result = %d", buf, 0xEu);
        }
      }

      if (qword_100B508E0 != -1)
      {
        sub_10081A1D8();
      }

      sub_100518DD4(off_100B508D8, v12, 1, a4, a5, a6);
    }

    else
    {
      v17 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v21 = a3;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unsupported setup type = %d", buf, 8u);
      }
    }
  }
}

void sub_10034B07C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  *buf = *a2;
  LOWORD(v27) = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, buf, 1);
  if (v5)
  {
    v6 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a3;
      v8 = *(a3 + 1);
      v9 = *(a3 + 3);
      v10 = *(a3 + 7);
      v11 = a3[9];
      v12 = *(a3 + 10);
      v13 = *(a3 + 18);
      v14 = *(a3 + 22);
      if (!v14)
      {
        v14 = "";
      }

      *buf = 67110914;
      v27 = v7;
      v28 = 1024;
      v29 = v8;
      v30 = 1024;
      v31 = v9;
      v32 = 1024;
      v33 = v10;
      v34 = 1024;
      v35 = v11;
      v36 = 2048;
      v37 = v12;
      v38 = 1024;
      v39 = v13;
      v40 = 2082;
      v41 = v14;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "caseInfoResponseEvent: messageVersion = %u, vendorID = %u, productID = %u, vendorIDSource = %u, caseColor = %u, caseVersion = %llu, reserved = %u, caseName = %{public}s", buf, 0x3Au);
    }

    v15 = *a3;
    v16 = *(a3 + 1);
    v17 = *(a3 + 3);
    v18 = *(a3 + 7);
    v19 = a3[9];
    v20 = *(a3 + 10);
    v21 = *(a3 + 18);
    if (*(a3 + 22))
    {
      v22 = *(a3 + 22);
    }

    else
    {
      v22 = "";
    }

    sub_100007E30(&__p, v22);
    sub_100541F64(v5, v15, v16, v17, v18, v19, v20, v21, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (sub_1000E356C(v5))
    {
      v23 = 0xFFFFLL;
    }

    else
    {
      v23 = 65533;
    }

    sub_1003393C0(a1, v5, 0xFFFFLL, v23);
    if (qword_100B50AB0 != -1)
    {
      sub_10081A1B0();
    }

    sub_100562F10(off_100B50AA8, v5);
  }
}

void sub_10034B2BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034B2E0(uint64_t a1, uint64_t a2, int a3, int a4, char *a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  v15 = *a2;
  LOWORD(v16) = *(a2 + 4);
  v9 = sub_1000E6554(off_100B508E8, &v15, 1);
  if (v9)
  {
    v10 = v9;
    v11 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *a5;
      v15 = 67109632;
      v16 = a3;
      v17 = 1024;
      v18 = a4;
      v19 = 1024;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "deviceInfoEvent: devInfoType = %u, devInfoLen = %u, devInfoData=%d", &v15, 0x14u);
    }

    if (a3 == 1)
    {
      v13 = sub_10054B004(v10, *a5);
      sub_10034B464(v13, v10);
    }

    else
    {
      v14 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 67109120;
        v16 = a3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unsupported device info type = %d", &v15, 8u);
      }
    }
  }
}

void sub_10034B464(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(a2, __p);
    if (v10 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notify EU region bit change for device %s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = sub_1000D999C();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100354FC4;
  v8[3] = &unk_100ADF8F8;
  v8[4] = a2;
  sub_10000CA94(v5, v8);
  v6 = sub_1000DAB84();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100355024;
  v7[3] = &unk_100ADF8F8;
  v7[4] = a2;
  sub_10000CA94(v6, v7);
}

uint64_t sub_10034B5E0(uint64_t a1, uint64_t a2, unsigned int *a3, int a4, unsigned __int8 *a5)
{
  v9 = *a5;
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  v22 = *a2;
  LOWORD(v23) = *(a2 + 4);
  result = sub_1000E6554(off_100B508E8, &v22, 1);
  if (result)
  {
    v11 = result;
    v12 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v20 = sub_100304810(a2, v13, v14, v15, v16, v17, v18, v19);
      v21 = "Unknown";
      v22 = 136315650;
      v23 = v20;
      if (v9 == 1)
      {
        v21 = "Audio Arbitration";
      }

      v24 = 2080;
      v25 = v21;
      v26 = 1024;
      v27 = a4 - 1;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Receive relay message from device %s, relayMessageType -> %s, relayMessageLen -> %d", &v22, 0x1Cu);
    }

    if (qword_100B508E0 != -1)
    {
      sub_10081A1D8();
    }

    return sub_100518DD8(off_100B508D8, v11, a3, v9, (a4 - 1), (a5 + 1));
  }

  return result;
}

uint64_t sub_10034B768(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, char *a7, unsigned int a8, char *__src)
{
  v27[0] = 0;
  v27[1] = 0;
  sub_100007F88(v27, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  *buf = *a2;
  LOWORD(v29) = *(a2 + 4);
  v17 = sub_1000E6554(off_100B508E8, buf, 1);
  if (!v17 || (v18 = *(a1 + 336), v19 = *(a1 + 344), v18 == v19))
  {
LABEL_7:
    v21 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      if (a7[23] < 0)
      {
        a7 = *a7;
      }

      *buf = 67110402;
      v29 = a3;
      v30 = 1024;
      v31 = a4;
      v32 = 1024;
      v33 = a5;
      v34 = 1024;
      v35 = a6;
      v36 = 2080;
      v37 = a7;
      v38 = 1024;
      v39 = a8;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "AACPClient::getCertificatesResponseEvent (not handled, connection is gone) - certSeqNum == %d, responseInfo == %d, endpointType == %d, serialNumberLength == %d, serialNumber == %s, certificateLength == %d", buf, 0x2Au);
    }
  }

  else
  {
    while (1)
    {
      v20 = *v18;
      if (**v18 == v17)
      {
        break;
      }

      if (++v18 == v19)
      {
        goto LABEL_7;
      }
    }

    v22 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v23 = a7;
      if (a7[23] < 0)
      {
        v23 = *a7;
      }

      *buf = 67110402;
      v29 = a3;
      v30 = 1024;
      v31 = a4;
      v32 = 1024;
      v33 = a5;
      v34 = 1024;
      v35 = a6;
      v36 = 2080;
      v37 = v23;
      v38 = 1024;
      v39 = a8;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "AACPClient::getCertificatesResponseEvent - certSeqNum == %d, responseInfo == %d, endpointType == %d, serialNumberLength == %d, serialNumber == %s, certificateLength == %d", buf, 0x2Au);
    }

    if (a7[23] < 0)
    {
      sub_100008904(__p, *a7, *(a7 + 1));
    }

    else
    {
      *__p = *a7;
      v26 = *(a7 + 2);
    }

    sub_10034BA34(v20, a2, a3, a4, a5, a6, __p, a8, __src);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_1000088CC(v27);
}

uint64_t sub_10034BA34(uint64_t a1, int *a2, int a3, int a4, int a5, int a6, int a7, unsigned int a8, char *__src)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 536);
  if (*(a1 + 528))
  {
    v14 = *(a1 + 532);
    goto LABEL_3;
  }

  if (a3)
  {
    v14 = *(a1 + 532);
    if (v14 != -1)
    {
LABEL_3:
      if (v14 == a3)
      {
        if (!a3)
        {
          operator new();
        }

        sub_10035FB3C(*(*(a1 + 512) - 8), *(*(*(a1 + 512) - 8) + 8), __src, &__src[a8], a8);
        switch(a4)
        {
          case 2:
            *(a1 + 528) = 0;
            *(a1 + 532) = -1;
            sub_100355E1C(a1);
            v15 = sub_10000F034();
            v17 = *a2;
            v18 = *(a2 + 2);
            (*(*v15 + 392))(v15, &v17, 3, 0);
            break;
          case 1:
            *(a1 + 528) = 1;
            *(a1 + 532) = 0;
            break;
          case 0:
            *(a1 + 528) = 0;
            ++*(a1 + 532);
            break;
        }
      }

      else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081CD88();
      }

      goto LABEL_19;
    }
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081CE04();
  }

LABEL_19:
  sub_10000801C(v19);
  return sub_1000088CC(v19);
}

uint64_t sub_10034BD5C(uint64_t a1, int *a2, void *a3, int a4)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  __p = *a2;
  __p_4 = *(a2 + 2);
  sub_1000E6554(off_100B508E8, &__p, 1);
  if (a4 == 1)
  {
    if (a3[1] - *a3 == 1)
    {
      operator new();
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081CEB0();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081CE40();
  }

  return sub_1000088CC(v10);
}

void sub_10034BF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10034BF9C(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t *a5)
{
  v40[0] = 0;
  v40[1] = 0;
  sub_100007F88(v40, a1 + 360);
  if (a3 < 2)
  {
    v9 = *a5;
    v8 = a5[1];
    v10 = +[NSDate date];
    [v10 timeIntervalSince1970];
    v12 = v11;

    v13 = v8 - v9;
    v14 = v13 / 0x11u;
    v15 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v42 = v13 / 0x11u;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "AACPClient::getBTEventHistoryListMessageEvent - Last %u BT Events \n", buf, 8u);
    }

    if (v13 >= 0x11u)
    {
      v16 = 0;
      v17 = v13;
      if (v14 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v14;
      }

      v19 = v18 + 16 * v18;
      v20 = 1;
      while (v16 + 17 <= v17)
      {
        memset(v39, 0, 17);
        v21 = *a5 + v16;
        v22 = *(v21 + 16);
        v39[0] = *v21;
        LOBYTE(v39[1]) = v22;
        v38 = 0;
        v37 = 0;
        v23 = sub_1000075EC(&v37, v39 + 8, 6uLL);
        v24 = sub_10034C2A0(v12, v23, a4, *&v39[0]);
        v25 = sub_10034C3AC(a1, BYTE14(v39[0]), *(v39 + 15));
        v33 = sub_100304810(&v37, v26, v27, v28, v29, v30, v31, v32);
        v34 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109890;
          v42 = v20;
          v43 = 2114;
          v44 = v24;
          v45 = 2082;
          v46 = v33;
          v47 = 2114;
          v48 = v25;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "BTEventHistory: %2d. Time: %{public}@, BT Addr: %{public}s, Event: %{public}@", buf, 0x26u);
        }

        v16 += 17;
        ++v20;
        if (v19 == v16)
        {
          return sub_1000088CC(v40);
        }
      }

      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081CF20();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081CF5C();
  }

  return sub_1000088CC(v40);
}

void sub_10034C258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

id sub_10034C2A0(double a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = [[NSDate alloc] initWithTimeIntervalSince1970:a1 - a3 / 1000000.0 + a4 / 1000000.0];
  v5 = objc_alloc_init(NSDateFormatter);
  [v5 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS zzz"];
  v6 = [v5 stringFromDate:v4];
  v7 = [NSString stringWithFormat:@"%@", v6];

  return v7;
}

void sub_10034C380(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_10034C3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        [NSString stringWithFormat:@"Pairing, Status: %u", a3, v7];
      }

      else if (a2 == 4)
      {
        [NSString stringWithFormat:@"Unpairing, Status: %u", a3, v7];
      }

      else
      {
        [NSString stringWithFormat:@"UTP Connect, Status: %u", a3, v7];
      }

      goto LABEL_29;
    }

    if (a2 == 1)
    {
      if (a3 == 2)
      {
        [NSString stringWithFormat:@"Connect, Direction: Source initiated, Status %u", 2, v7];
      }

      else if (a3 == 1)
      {
        [NSString stringWithFormat:@"Connect, Direction: Accessory initiated, Status %u", 1, v7];
      }

      else
      {
        [NSString stringWithFormat:@"Connect, Invalid direction: %u", a3, v7];
      }

      goto LABEL_29;
    }

    if (a2 != 2)
    {
      goto LABEL_26;
    }

    [NSString stringWithFormat:@"Disconnect, Reason: %u", a3, v7];
  }

  else
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        [NSString stringWithFormat:@"UTP Disconnect, Reason: %u", a3, v7];
      }

      else if (a2 == 7)
      {
        [NSString stringWithFormat:@"LE Connect, Status: %u", a3, v7];
      }

      else
      {
        [NSString stringWithFormat:@"LE Disconnect, Reason: %u", a3, v7];
      }

      goto LABEL_29;
    }

    switch(a2)
    {
      case 9:
        [NSString stringWithFormat:@"Connect, Accessory Initiated, Status: %u", a3, v7];
        break;
      case 0xA:
        [NSString stringWithFormat:@"Connect, Source Initiated, Status: %u", a3, v7];
        break;
      case 0xB:
        v4 = sub_10035532C(a1, a3);
        v5 = [NSString stringWithFormat:@"Disconnect Req, Reason: %@ (%u)", v4, a3];

        goto LABEL_30;
      default:
LABEL_26:
        [NSString stringWithFormat:@"Unknown: %X, Status: %u", a2, a3];
        break;
    }
  }

  v5 = LABEL_29:;
LABEL_30:

  return v5;
}

uint64_t sub_10034C5FC(uint64_t a1, uint64_t a2, void *a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, __p, 1);
  if (v5)
  {
    v6 = a3[1] - *a3;
    v7 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v5, __p);
      v8 = v11 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v14 = v8;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Conversation Detect Message Received from device %{public}s, len -> %u", buf, 0x12u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B508E0 != -1)
    {
      sub_10081A1D8();
    }

    sub_100518E5C(off_100B508D8, v5, v6, *a3);
  }

  return sub_1000088CC(v12);
}

void sub_10034C78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034C7B0(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  *buf = *a2;
  LOWORD(v24) = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, buf, 1);
  v7 = *a3;
  v8 = **a3;
  if (v8 == 1)
  {
    v13 = *(v7 + 1);
    v14 = *(v7 + 2);
    v15 = *(v7 + 3);
    v16 = *(v7 + 4);
    v17 = *(v7 + 6);
    v18 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      v24 = v13;
      v25 = 1024;
      v26 = v14;
      v27 = 1024;
      v28 = v15;
      v29 = 1024;
      v30 = v16;
      v31 = 1024;
      v32 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "AACPClient::adaptiveVolumeMessageRecvEvent: setAdaptiveVolumeRequestTargets media: %u, telephony: %u, voiceCommand: %u, rampUpRate: %u ms, rampDownRate: %u ms", buf, 0x20u);
    }

    v19 = sub_10034CB08(a1, v13 | (v14 << 8) | (v15 << 16) | (v16 << 24) | (v17 << 40));
    if (qword_100B50AE0 != -1)
    {
      sub_10081A23C();
    }

    sub_1004DAFF4(qword_100B50AD8, v6, v19);
  }

  else if (v8 == 4)
  {
    v9 = *(v7 + 1);
    v10 = *(v7 + 2);
    v11 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v24 = v9;
      v25 = 1024;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "AACPClient::adaptiveVolumeMessageRecvEvent: setDRC mode: %u, version: %u", buf, 0xEu);
    }

    if (v10 == 1)
    {
      if (qword_100B540B0 != -1)
      {
        sub_10081B958();
      }

      sub_1006C214C(qword_100B540A8, v6, v9);
      if (qword_100B50AE0 != -1)
      {
        sub_10081A23C();
      }

      v12 = v9 != 0;
      goto LABEL_25;
    }

    if (!v10)
    {
      if (qword_100B540B0 != -1)
      {
        sub_10081B958();
      }

      v12 = v9 == 1;
      sub_1006C20F8(qword_100B540A8, v6, v12);
      if (qword_100B50AE0 != -1)
      {
        sub_10081A23C();
      }

LABEL_25:
      sub_1004DB094(qword_100B50AD8, v6, v12);
    }
  }

  else
  {
    v20 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "AACPClient::adaptiveVolumeMessageRecvEvent: invalid message type", buf, 2u);
    }
  }

  return sub_1000088CC(v22);
}

id sub_10034CB08(uint64_t a1, unint64_t a2)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 360);
  v3 = objc_alloc_init(NSMutableDictionary);
  *&v4 = a2 / 100.0;
  v5 = [NSNumber numberWithFloat:v4];
  [v3 setObject:v5 forKey:@"kCBMsgArgParamAutoVolumeMediaTarget"];
  *&v6 = BYTE1(a2) / 100.0;
  v7 = [NSNumber numberWithFloat:v6];
  [v3 setObject:v7 forKey:@"kCBMsgArgParamAutoVolumeTelephonyTarget"];
  *&v8 = BYTE2(a2) / 100.0;
  v9 = [NSNumber numberWithFloat:v8];
  [v3 setObject:v9 forKey:@"kCBMsgArgParamAutoVolumeVoiceTarget"];
  *&v10 = (a2 >> 24);
  v11 = [NSNumber numberWithFloat:v10];
  [v3 setObject:v11 forKey:@"kCBMsgArgParamAutoVolumeRampUpRate"];
  *&v12 = (HIDWORD(a2) >> 8);
  v13 = [NSNumber numberWithFloat:v12];
  [v3 setObject:v13 forKey:@"kCBMsgArgParamAutoVolumeRampDownRate"];

  sub_1000088CC(v15);

  return v3;
}

void sub_10034CCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = v12;

  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10034CD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  *buf = *a2;
  LOWORD(v10) = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, buf, 1);
  v6 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Prox Card Status: Received Prox Card Features: 0x%llx", buf, 0xCu);
  }

  sub_1005393CC(v5, a3);
  return sub_1000088CC(v8);
}

void sub_10034CE58(uint64_t a1, uint64_t a2, int a3, unsigned __int8 **a4)
{
  v6 = qword_100BCE8C0;
  v7 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
  if (a3 <= 1)
  {
    if (!a3)
    {
      if (!v7)
      {
        return;
      }

      v21 = (*a4)[8];
      v22 = (*a4)[7];
      v23 = (*a4)[6];
      v24 = (*a4)[5];
      v25 = (*a4)[4];
      v26 = (*a4)[3];
      v27 = *(*a4 + 1);
      v28 = **a4;
      v33 = 67110912;
      v34 = v28;
      v35 = 1024;
      v36 = v27;
      v37 = 1024;
      v38 = v26;
      v39 = 1024;
      v40 = v25;
      v41 = 1024;
      v42 = v24;
      v43 = 1024;
      v44 = v23;
      v45 = 1024;
      v46 = v22;
      v47 = 1024;
      v48 = v21;
      v14 = "PerfStats: Connection Record | Direction: %u, Baseband time: %u, BBFC Scan Req Received: %u, Num 2.4G connections: %u, Num hrb connections: %u, UTP state: %u, RSSI: %u, Audio state: %u";
      v15 = v6;
      v16 = 50;
      goto LABEL_17;
    }

    if (a3 == 1)
    {
      if (!v7)
      {
        return;
      }

      v8 = *(*a4 + 9);
      v9 = *(*a4 + 7);
      v10 = *(*a4 + 5);
      v11 = *(*a4 + 3);
      v12 = *(*a4 + 1);
      v13 = **a4;
      v33 = 67110400;
      v34 = v13;
      v35 = 1024;
      v36 = v12;
      v37 = 1024;
      v38 = v11;
      v39 = 1024;
      v40 = v10;
      v41 = 1024;
      v42 = v9;
      v43 = 1024;
      v44 = v8;
      v14 = "PerfStats: Boot time Record | Boot type: %u, Boot time total: %u, Boot time end: %u, Boot time nvram init: %u, Boot time core loading: %u, UTP setup time: %u";
      v15 = v6;
      v16 = 38;
      goto LABEL_17;
    }

LABEL_10:
    if (!v7)
    {
      return;
    }

    v33 = 67109120;
    v34 = a3;
    v14 = "Invalid subtype %d";
    v15 = v6;
    v16 = 8;
    goto LABEL_17;
  }

  if (a3 == 2)
  {
    if (!v7)
    {
      return;
    }

    v29 = *(*a4 + 3);
    v30 = *(*a4 + 2);
    v31 = *(*a4 + 1);
    v32 = **a4;
    v33 = 67109888;
    v34 = v32;
    v35 = 1024;
    v36 = v31;
    v37 = 1024;
    v38 = v30;
    v39 = 1024;
    v40 = v29;
    v14 = "PerfStats: A2dp Record | AM setup: %u, DSP setup: %u, UTP config: %u, Snoop setup: %u";
  }

  else
  {
    if (a3 != 3)
    {
      goto LABEL_10;
    }

    if (!v7)
    {
      return;
    }

    v17 = *(*a4 + 3);
    v18 = *(*a4 + 2);
    v19 = *(*a4 + 1);
    v20 = **a4;
    v33 = 67109888;
    v34 = v20;
    v35 = 1024;
    v36 = v19;
    v37 = 1024;
    v38 = v18;
    v39 = 1024;
    v40 = v17;
    v14 = "PerfStats: Sco Record | AM setup: %u, DSP setup: %u, UTP config: %u, Snoop setup: %u";
  }

  v15 = v6;
  v16 = 26;
LABEL_17:
  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v33, v16);
}

uint64_t sub_10034D0FC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 360);
  if (qword_100B508D0 != -1)
  {
    sub_10081AB8C();
  }

  sub_1000CC438(off_100B508C8, a2, v11);
  v7 = sub_10004DF60(v11);
  v8 = sub_100432610();
  (*(*v8 + 208))(v8, v7, a3, a4);

  return sub_1000088CC(v10);
}

void sub_10034D1F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034D218(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 360);
  if (sub_100341598(a1, a2))
  {
    if (qword_100B508F0 != -1)
    {
      sub_10081A4E4();
    }

    LODWORD(__p[0]) = *a2;
    WORD2(__p[0]) = *(a2 + 4);
    v6 = sub_1000E6554(off_100B508E8, __p, 1);
    if (v6)
    {
      v7 = a3[1] - *a3;
      v8 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v6, __p);
        v9 = v12 >= 0 ? __p : __p[0];
        *buf = 136446466;
        v15 = v9;
        v16 = 1024;
        v17 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Multimodal Context Message Received from device %{public}s, len -> %u", buf, 0x12u);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (qword_100B508E0 != -1)
      {
        sub_10081A1D8();
      }

      sub_100515048(off_100B508D8, v6, v7, *a3);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081CFCC();
  }

  return sub_1000088CC(v13);
}

void sub_10034D3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034D404(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  *buf = *a2;
  LOWORD(v16) = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, buf, 1);
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1] - *a3;
    v8 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v6;
      sub_1000E5A58(v5, __p);
      v10 = v13 >= 0 ? __p : __p[0];
      *buf = 67109634;
      v16 = v9;
      v17 = 2082;
      v18 = v10;
      v19 = 1024;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PME Config Message, subtype %d received from device %{public}s, len -> %u", buf, 0x18u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B508E0 != -1)
    {
      sub_10081A1D8();
    }

    sub_1005155B8(off_100B508D8, v5, v7, *a3);
  }

  return sub_1000088CC(v14);
}

void sub_10034D5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034D5C8(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v38[0] = 0;
  v38[1] = 0;
  sub_100007F88(v38, a1 + 360);
  v8 = sub_100341598(a1, a2);
  v9 = qword_100BCE8C0;
  if (v8)
  {
    v33 = a2;
    v34 = v8;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (a4[1] - *a4) >> 3;
      *buf = 67109376;
      v40 = a3;
      v41 = 2048;
      v42 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "tipiTableEvent: Setting state %d and table of size %zu", buf, 0x12u);
    }

    v35 = a3;
    v12 = *a4;
    v11 = a4[1];
    if (v11 != *a4)
    {
      v13 = 0;
      v14 = qword_100BCE8C0;
      do
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v22 = sub_100304810(v12 + 8 * v13, v15, v16, v17, v18, v19, v20, v21);
          v23 = *a4 + 8 * v13;
          v24 = *(v23 + 6);
          LODWORD(v23) = *(v23 + 7);
          *buf = 67109891;
          v40 = v13 + 1;
          v41 = 2081;
          v42 = v22;
          v43 = 1024;
          v44 = v24;
          v45 = 1024;
          v46 = v23;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "tipiTableEvent:   Entry %d: addr %{private}s, connectionStatus %u, stateFlags 0x%02x", buf, 0x1Eu);
          v14 = qword_100BCE8C0;
          ++v13;
          v12 = *a4;
          v11 = a4[1];
        }

        else
        {
          ++v13;
        }
      }

      while (v13 < (v11 - v12) >> 3);
    }

    *(v34 + 729) = v35;
    sub_100361EA4(&__p, a4);
    if (v34 + 92 != &__p)
    {
      sub_100362760(v34 + 92, __p, v37, (v37 - __p) >> 3);
    }

    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }

    sub_10000801C(v38);
    v25 = objc_alloc_init(CBDevice);
    v26 = [[NSData alloc] initWithBytes:v33 length:6];
    [v25 setBtAddressData:v26];

    v27 = objc_alloc_init(NSMutableArray);
    for (i = *a4; i != a4[1]; i += 8)
    {
      v29 = objc_alloc_init(CBDevice);
      v30 = [[NSData alloc] initWithBytes:i length:6];
      [v29 setBtAddressData:v30];

      [v29 setTipiConnectionStatus:*(i + 6)];
      [v29 setTipiState:*(i + 7)];
      [v27 addObject:v29];
    }

    [v25 setTipiDevices:v27];
    v31 = +[NSNotificationCenter defaultCenter];
    [v31 postNotificationName:@"com.apple.bluetooth.TipiChanged" object:v25 userInfo:0];
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081D008();
  }

  return sub_1000088CC(v38);
}

void sub_10034D910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_10034D99C(uint64_t a1, uint64_t a2, int a3, unsigned __int8 **a4)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 360);
  if (sub_100341598(a1, a2))
  {
    if (qword_100B508F0 != -1)
    {
      sub_10081A4E4();
    }

    LODWORD(__p[0]) = *a2;
    WORD2(__p[0]) = *(a2 + 4);
    v8 = sub_1000E6554(off_100B508E8, __p, 1);
    if (v8)
    {
      if (qword_100B50940 != -1)
      {
        sub_10081BECC();
      }

      sub_10062D0F4(off_100B50938, v8, **a4);
      v9 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v8, __p);
        v10 = v13 >= 0 ? __p : __p[0];
        *buf = 136446466;
        v16 = v10;
        v17 = 1024;
        v18 = a3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sensor Streaming Config Message received from device %{public}s, version -> %u", buf, 0x12u);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (qword_100B508E0 != -1)
      {
        sub_10081A1D8();
      }

      sub_100518E60(off_100B508D8, v8);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081D044();
  }

  return sub_1000088CC(v14);
}

void sub_10034DB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034DBBC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, __p, 1);
  if (v5)
  {
    v6 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v5, __p);
      v7 = v11 >= 0 ? __p : __p[0];
      v8 = (a3[2] - *a3);
      *buf = 136446466;
      v14 = v7;
      v15 = 1024;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sleep Detection Message Received from device %{public}s, len -> %u", buf, 0x12u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B508E0 != -1)
    {
      sub_10081A1D8();
    }

    sub_100518EB8(off_100B508D8, v5, (*(a3 + 4) - *a3));
  }

  return sub_1000088CC(v12);
}

void sub_10034DD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10034DD74(uint64_t a1, uint64_t a2, int a3, char *a4, unsigned int a5)
{
  if (_os_feature_enabled_impl())
  {
    if (qword_100B508F0 != -1)
    {
      sub_100819FC0();
    }

    v12 = *a2;
    LOWORD(v13) = *(a2 + 4);
    v9 = sub_1000E6554(off_100B508E8, &v12, 1);
    v10 = qword_100BCE8C0;
    if (v9)
    {
      v11 = v9;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 68158978;
        v13 = 6;
        v14 = 2096;
        v15 = a2;
        v16 = 1024;
        v17 = a3;
        v18 = 1024;
        v19 = a5;
        v20 = 1040;
        v21 = 8;
        v22 = 2096;
        v23 = a4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "amp from device %.6P subType=%d len=%u data=%.8P", &v12, 0x2Eu);
      }

      if (a3)
      {
        if (a3 == 1)
        {
          if (qword_100B540B0 != -1)
          {
            sub_10081B958();
          }

          sub_1006C0E50(qword_100B540A8, v11, a4, a5);
        }
      }

      else
      {
        if (qword_100B540B0 != -1)
        {
          sub_10081B958();
        }

        sub_1006C16AC(qword_100B540A8, v11, a4);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081D080();
    }
  }
}

uint64_t sub_10034DF58(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, __p, 1);
  if (v5)
  {
    v6 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v5, __p);
      v7 = v11 >= 0 ? __p : __p[0];
      v8 = (a3[2] - *a3);
      *buf = 136446466;
      v14 = v7;
      v15 = 1024;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dynamic End of Charge Message Received from device %{public}s, len -> %u", buf, 0x12u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B508E0 != -1)
    {
      sub_10081A1D8();
    }

    sub_100518EC8(off_100B508D8, v5, (*(a3 + 4) - *a3));
  }

  return sub_1000088CC(v12);
}

void sub_10034E0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10034E110(uint64_t a1, unsigned __int8 *a2, unsigned __int16 a3, const void *a4, unsigned int a5)
{
  if (qword_100B508D0 != -1)
  {
    sub_10081AF28();
  }

  sub_1000CC438(off_100B508C8, a2, &v14);
  v9 = sub_10004DF60(&v14);
  v14 = 0;
  v15 = 0;
  sub_10000C704(&v14, a4, a5);
  v10 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEBUG))
  {
    sub_10081D0BC(a2, a3, v10);
  }

  v11 = sub_100432718();
  v12 = &off_100AE0A78;
  v13 = v15;
  if (v15)
  {
    sub_10000C69C(v15);
  }

  (*(*v11 + 40))(v11, 8, "com.apple.bluetoothd.aap", v9, &v12);
  v12 = &off_100AE0A78;
  if (v13)
  {
    sub_10000C808(v13);
  }

  v14 = &off_100AE0A78;
  if (v15)
  {
    sub_10000C808(v15);
  }
}

void sub_10034E2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11, uint64_t a12, atomic_uint *a13)
{
  if (a11)
  {
    sub_10000C808(a11);
  }

  if (a13)
  {
    sub_10000C808(a13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10034E314(uint64_t a1, uint64_t a2, void *a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 360);
  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  *buf = *a2;
  LOWORD(v12) = *(a2 + 4);
  v5 = sub_1000E6554(off_100B508E8, buf, 1);
  if (v5)
  {
    v6 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a3;
      v8 = a3[1] - *a3;
      *buf = 68158722;
      v12 = 6;
      v13 = 2096;
      v14 = a2;
      v15 = 2048;
      v16 = v8;
      v17 = 1040;
      v18 = 8;
      v19 = 2096;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Personal Translation Message received from device %.6P len=%zu data=%.8P", buf, 0x2Cu);
    }

    if (qword_100B508E0 != -1)
    {
      sub_10081A1D8();
    }

    sub_100518EC0(off_100B508D8, v5, (*(a3 + 4) - *a3));
  }

  return sub_1000088CC(v10);
}

void sub_10034E4B8(uint64_t a1, uint64_t a2, const UInt8 *a3, unsigned int a4, int a5, int a6)
{
  v12 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68159234;
    v24 = 6;
    v25 = 2096;
    v26 = a2;
    v27 = 1024;
    v28 = a5;
    v29 = 1024;
    v30 = a6;
    v31 = 1024;
    v32 = a4;
    v33 = 1040;
    v34 = 72;
    v35 = 2096;
    v36 = a3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received GAPA signature response from %.6P version=%u endpointType=%u dataLen=%u data=%.72P", buf, 0x34u);
  }

  v13 = sub_100341598(a1, a2);
  if (v13)
  {
    v14 = *v13;
    if (*v13)
    {
      *(v13 + 150) = 3;
      v15 = sub_10000F034();
      *buf = *(v14 + 128);
      LOWORD(v24) = *(v14 + 132);
      (*(*v15 + 392))(v15, buf, 5, 0);
      v16 = CFDataCreate(kCFAllocatorDefault, a3, a4);
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionaryAddValue(Mutable, kCFACCProperties_Endpoint_AudioProduct_AuthData, v16);
      *buf = a6;
      v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
      CFDictionaryAddValue(Mutable, kCFACCProperties_Endpoint_AudioProduct_AuthInfoType, v18);
      v19 = CFArrayCreateMutable(0, 0, 0);
      CFArrayAppendValue(v19, Mutable);
      v20 = acc_transportClient_setPropertyForEndpointWithUUID();
      v21 = qword_100BCE8C0;
      if (v20)
      {
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "gapaResponseEvent: Published kCFACCProperties_Endpoint_AudioProduct_AuthResponse", v22, 2u);
        }
      }

      else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081D158();
      }

      CFArrayRemoveAllValues(v19);
      CFRelease(v19);
      CFRelease(Mutable);
      CFRelease(v16);
    }

    else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081D194();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081D204();
  }
}

void sub_10034E7B8(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v16 = a4;
  v8 = qword_100BCE8C0;
  v9 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v10 = sub_10034EA64(v9, a3);
    if ((a4 - 1) > 3u)
    {
      v11 = "Unknown";
    }

    else
    {
      v11 = off_100AED388[(a4 - 1)];
    }

    buf = 136315394;
    *buf_4 = v10;
    v19 = 2080;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "rawGestureEvent: %s, %s", &buf, 0x16u);
  }

  if (qword_100B508F0 != -1)
  {
    sub_10081A4E4();
  }

  buf = *a2;
  *buf_4 = *(a2 + 4);
  v12 = sub_1000E6554(off_100B508E8, &buf, 1);
  if (v12)
  {
    v15[0] = 0;
    v15[1] = 0;
    sub_100007F88(v15, a1 + 360);
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == v12)
      {
        v14 = sub_10000C798();
        if ((*(*v14 + 352))(v14))
        {
          operator new();
        }

        goto LABEL_19;
      }
    }

    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081D274();
    }

LABEL_19:
    sub_1000088CC(v15);
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081D2B0();
  }
}

const char *sub_10034EA64(uint64_t a1, int a2)
{
  if ((a2 - 1) > 8)
  {
    return "Unknown";
  }

  else
  {
    return off_100AED340[(a2 - 1)];
  }
}

void sub_10034EA90(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 4098)
  {
    v7[8] = v3;
    v7[9] = v4;
    if (qword_100B540A0 != -1)
    {
      sub_10081A91C();
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10034EB3C;
    v7[3] = &unk_100AE0860;
    v7[4] = a1;
    v7[5] = a2;
    sub_1005897E0(off_100B54098, v7);
  }
}

uint64_t sub_10034EB3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v29[0] = 0;
  v29[1] = 0;
  sub_100007F88(v29, v2 + 360);
  v3 = *(a1 + 40);
  if (v3)
  {
    for (i = *(v2 + 336); ; ++i)
    {
      if (i == *(v2 + 344))
      {
        return sub_1000088CC(v29);
      }

      v5 = *i;
      if (**i == v3)
      {
        break;
      }
    }

    sub_1000C23E0(v3, &__p);
    if (*(v5 + 79) < 0)
    {
      sub_100008904(__dst, v5[7], v5[8]);
    }

    else
    {
      *__dst = *(v5 + 7);
      v31 = v5[9];
    }

    v6 = SHIBYTE(v31);
    v8 = __dst[0];
    v7 = __dst[1];
    v9 = v28;
    v10 = v28;
    if ((v28 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      v9 = v27;
      p_p = __p;
    }

    if (v31 < 0)
    {
      v12 = __dst[0];
    }

    else
    {
      v7 = SHIBYTE(v31);
      v12 = __dst;
    }

    if (v7 >= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v7;
    }

    v14 = v7 == v9;
    if (memcmp(p_p, v12, v13))
    {
      v14 = 0;
    }

    if (v6 < 0)
    {
      operator delete(v8);
      if ((v28 & 0x80) == 0)
      {
LABEL_22:
        if (v14)
        {
          return sub_1000088CC(v29);
        }

LABEL_26:
        sub_1000C23E0(*(a1 + 40), &__p);
        if ((v28 & 0x80u) == 0)
        {
          v15 = v28;
        }

        else
        {
          v15 = v27;
        }

        v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
        if (v28 < 0)
        {
          operator delete(__p);
        }

        sub_1000C23E0(*(a1 + 40), &__p);
        v17 = v28;
        v18 = __p;
        sub_1000C23E0(*(a1 + 40), __dst);
        if (v17 >= 0)
        {
          v19 = &__p;
        }

        else
        {
          v19 = v18;
        }

        if (v31 >= 0)
        {
          v20 = HIBYTE(v31);
        }

        else
        {
          v20 = __dst[1];
        }

        memcpy(v16, v19, v20);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v28 < 0)
        {
          operator delete(__p);
        }

        v21 = *(a1 + 40);
        sub_1000C23E0(v21, &__p);
        v22 = v28;
        if ((v28 & 0x80u) != 0)
        {
          v22 = v27;
        }

        v23 = sub_100331204(v2, v21, v22, v16);
        if (v28 < 0)
        {
          operator delete(__p);
        }

        if (v23 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          sub_1000C23E0(*(a1 + 40), &__p);
          sub_10081D2EC();
        }

        sub_1000C23E0(*(a1 + 40), &v25);
        std::string::operator=((v5 + 7), &v25);
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        free(v16);
        return sub_1000088CC(v29);
      }
    }

    else if ((v10 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    operator delete(__p);
    if (v14)
    {
      return sub_1000088CC(v29);
    }

    goto LABEL_26;
  }

  return sub_1000088CC(v29);
}

void sub_10034EE70(uint64_t a1, int a2)
{
  v4 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2 ? "Voice Trigger Enabled for Siri" : "Voice Trigger Disabled";
    sub_100007E30(__p, v5);
    v6 = v15 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Siri VoiceTriggerSetting changed to %{public}s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = *(a1 + 336);
  for (i = *(a1 + 344); v7 != i; ++v7)
  {
    v9 = *v7;
    v10 = **v7;
    if ((v10[63].n128_u8[8] & 1) == 0)
    {
      v11 = v10[64].n128_i8[8];
      v12 = sub_1000E2140(**v7, 22);
      if (v12 || *(v9 + 20) == 8209)
      {
        v13 = sub_10033A804(v12, v11);
        sub_100331844(a1, v10, 18, v13, 2u);
      }
    }
  }
}

uint64_t sub_10034EFE8(uint64_t result)
{
  v1 = *(result + 336);
  v2 = *(result + 344);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = **v1;
      result = sub_1000E2140(v4, 22);
      if (result)
      {
        v5 = qword_100BCE8C0;
        v6 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          v7 = sub_10033A858(v6, v4);
          v15 = "unknown";
          if (v7 == 1)
          {
            v15 = "Enabled";
          }

          if (v7 == 2)
          {
            v16 = "Disabled";
          }

          else
          {
            v16 = v15;
          }

          v17 = sub_100304810(&v4[8], v8, v9, v10, v11, v12, v13, v14);
          sub_1000C23E0(v4, __p);
          v18 = __p;
          if (v21 < 0)
          {
            v18 = __p[0];
          }

          *buf = 136315650;
          v23 = v16;
          v24 = 2080;
          v25 = v17;
          v26 = 2080;
          v27 = v18;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AACPClient::siriModeChanged. Sending system_siri_mode = %s, to %s (%s)", buf, 0x20u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v19 = sub_10033A858(v6, v4);
        result = sub_100331844(v3, v4, 60, v19, 2u);
      }

      ++v1;
    }

    while (v1 != v2);
  }

  return result;
}

void sub_10034F194(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 80) == 8194)
    {
      v3 = *a2;
      if (*a2)
      {
        v4 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000C23E0(v3, __p);
          v5 = v13 >= 0 ? __p : *__p;
          v6 = *(a2 + 112);
          v7 = *(a2 + 120);
          *buf = 141558787;
          *&buf[4] = 1752392040;
          v15 = 2081;
          v16 = v5;
          v17 = 2112;
          v18 = v6;
          v19 = 2112;
          v20 = v7;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "unPublishW1RemoteFirmware: Un-Publishing F/W version for %{private, mask.hash}s (connection %@ endpoint %@)", buf, 0x2Au);
          if (v13 < 0)
          {
            operator delete(*__p);
          }
        }

        if ((*(a2 + 85) >> 24) | (WORD2(*(a2 + 85)) >> 8))
        {
          if (*(a2 + 112))
          {
            if ((acc_transportClient_destroyConnection() & 1) == 0 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              sub_10081D3C4();
            }

            CFRelease(*(a2 + 120));
            *(a2 + 120) = 0;
            CFRelease(*(a2 + 112));
            *(a2 + 112) = 0;
          }
        }

        else
        {
          v8 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000C23E0(v3, buf);
            v9 = v17 >= 0 ? buf : *buf;
            *__p = 141558275;
            *&__p[4] = 1752392040;
            v11 = 2081;
            v12 = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: unPublishW1RemoteFirmware: No case version info available for %{private, mask.hash}s", __p, 0x16u);
            if (SHIBYTE(v17) < 0)
            {
              operator delete(*buf);
            }
          }
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081D400();
  }
}