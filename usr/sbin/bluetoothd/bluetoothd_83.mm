void sub_1005E48A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void ***a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  a17 = &a23;
  sub_1000D6BD4(&a17);
  a23 = (v24 - 96);
  sub_1000D6BD4(&a23);
  sub_1000088CC(&a15);
  _Unwind_Resume(a1);
}

void sub_1005E4980(uint64_t a1, uint64_t a2, int a3)
{
  v4 = qword_100BCE8F8;
  v5 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (!v5)
    {
      return;
    }

    v9 = 0;
    v6 = "Call Screening Property is set.";
    v7 = &v9;
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v8 = 0;
    v6 = "Call Screening Property is cleared.";
    v7 = &v8;
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
}

void sub_1005E4A14()
{
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084EB50();
  }
}

_BYTE *sub_1005E4A5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100320D9C(a2 + 400);
  v4 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v3, __p);
    if (v9 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Transitioning HFP audio to unidirectional for device %{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = sub_100320D94(a2 + 400);
  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  sub_10021181C(v6);
  return sub_10002249C(__p);
}

void sub_1005E4B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E4B8C(uint64_t result, uint64_t a2, int a3)
{
  if (a2)
  {
    v5 = result;
    if ((_os_feature_enabled_impl() & 1) != 0 || (result = _os_feature_enabled_impl(), result))
    {
      v6 = sub_10000C798();
      result = (*(*v6 + 248))(v6);
      if (result)
      {
        result = sub_1000E2140(a2, 49);
        if (result)
        {
          v7 = qword_100BCE8F8;
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
          {
            v8 = "off";
            if (a3)
            {
              v8 = "on";
            }

            *buf = 136315138;
            *&buf[4] = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notify AAoS is %s", buf, 0xCu);
          }

          *buf = 0uLL;
          sub_100007F88(buf, v5 + 760);
          v9 = sub_1005D09A8(v5, a2);
          v10 = v9;
          if (v9)
          {
            sub_1003211F0(v9 + 400, a3);
            if ((a3 & 1) == 0)
            {
              if (sub_1003211E8(v10 + 400))
              {
                sub_1003211E0(v10 + 400, 0);
                v11 = sub_1000D999C();
                v12[0] = _NSConcreteStackBlock;
                v12[1] = 3221225472;
                v12[2] = sub_1005E4D8C;
                v12[3] = &unk_100AE0860;
                v12[4] = v5;
                v12[5] = a2;
                sub_10000CA94(v11, v12);
              }
            }
          }

          return sub_1000088CC(buf);
        }
      }
    }
  }

  return result;
}

void sub_1005E4D98(uint64_t a1, uint64_t a2, int a3)
{
  sub_100320F64(a2 + 400, a3);
  v4 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HandsfreeGateway setAudioTransport to advanced sniff %d", v5, 8u);
  }
}

void sub_1005E4E4C(uint64_t a1, uint64_t a2, int a3)
{
  if (_os_feature_enabled_impl())
  {
    sub_100320F6C(a2 + 400, a3);
    v5 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HandsfreeGateway setAudioInputConfig to %d", v6, 8u);
    }
  }
}

void sub_1005E4F1C(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v10 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v28 = a4;
    v29 = 1024;
    *v30 = a5;
    *&v30[4] = 1024;
    *&v30[6] = sub_100320F4C(a2 + 400);
    *v31 = 1024;
    *&v31[2] = sub_100320F5C(a2 + 400);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setAudioCodec updateStereoCodec %d, inputCodecID %d callcodec %d AoS %d", buf, 0x1Au);
  }

  if (a2)
  {
    v11 = sub_100320D9C(a2 + 400);
    if (v11)
    {
      v12 = v11;
      v13 = a5;
      if ((a4 & 1) == 0)
      {
        v13 = sub_100320F4C(a2 + 400);
      }

      if (a3 == 48000 && v13 == 130)
      {
        v14 = 0;
        v15 = 130;
      }

      else if (a3 == 48000 && v13 == 129)
      {
        v14 = 0;
        v15 = 129;
      }

      else if (a3 == 48000 && v13 == 255)
      {
        v14 = 0;
        v15 = 255;
      }

      else if (a3 == 24000 && v13 == 128)
      {
        v14 = 0;
        v15 = 128;
      }

      else
      {
        v16 = sub_1005D09A8(a1, v12);
        if (v16 && (v17 = sub_100320EDC(v16 + 400), a3 == 24000) && (v17 & 1) != 0)
        {
          v14 = 0;
          v15 = 127;
        }

        else
        {
          v18 = sub_1005D2D34(a1, v12);
          if (a3 == 24000 && (v18 & 1) != 0)
          {
            v14 = 0;
            v15 = 256;
          }

          else
          {
            v19 = sub_1005D2CFC(a1, v12);
            if (a3 == 16000 && (v19 & 1) != 0)
            {
              v14 = 0;
              v15 = 2;
            }

            else if (a3 == 8000)
            {
              v14 = 0;
              v15 = 1;
            }

            else
            {
              if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
              {
                sub_10084EB8C();
              }

              v15 = 0;
              v14 = 1;
            }
          }
        }
      }

      if (a5 || (a4 & 1) != 0 || (v20 = sub_100320F5C(a2 + 400), a3 != 48000) || !v20)
      {
        if (v14)
        {
          v15 = 0;
          goto LABEL_46;
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_10084EC00();
        }

        v15 = 130;
      }

      sub_100320F54(a2 + 400, v15);
LABEL_46:
      v21 = qword_100BCE8F8;
      v22 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        v23 = sub_1005D264C(v22, v15);
        sub_1000C23E0(v12, __p);
        if (v26 >= 0)
        {
          v24 = __p;
        }

        else
        {
          v24 = __p[0];
        }

        *buf = 67110147;
        v28 = v13;
        v29 = 2080;
        *v30 = v23;
        *&v30[8] = 1024;
        *v31 = a3;
        *&v31[4] = 2160;
        v32 = 1752392040;
        v33 = 2081;
        v34 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "setAudioCodec stereoCodecID %d, new codec %s sampleRate %d for device %{private, mask.hash}s", buf, 0x2Cu);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }
      }

      return;
    }
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084EC3C();
  }
}

void sub_1005E52CC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_100320D9C(a2 + 400);
  v7 = qword_100BCE8F8;
  if (a3 > 1935827570)
  {
    if (a3 == 1935827571)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000C23E0(v6, &__p);
        if (SBYTE3(v26) >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *v18 = 141558275;
        *&v18[4] = 1752392040;
        v19 = 2081;
        v20 = p_p;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sco data source selected for baseband to PCM for device %{private, mask.hash}s", v18, 0x16u);
        if (SBYTE3(v26) < 0)
        {
          operator delete(__p);
        }

        v7 = qword_100BCE8F8;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Highland Park I2S to PCM route selected. Forcing CVSD.", &__p, 2u);
      }

      v10 = 1;
      sub_100320F54(a2 + 400, 1);
      v9 = 3;
      goto LABEL_44;
    }

    if (a3 == 1936221033)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000C23E0(v6, &__p);
        v11 = SBYTE3(v26) >= 0 ? &__p : __p;
        *v18 = 141558275;
        *&v18[4] = 1752392040;
        v19 = 2081;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sco data source selected for HCI for device %{private, mask.hash}s", v18, 0x16u);
        if (SBYTE3(v26) < 0)
        {
          operator delete(__p);
        }
      }

      v9 = 2;
      v10 = 2;
      goto LABEL_44;
    }
  }

  else
  {
    if (a3 == 1935765619)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000C23E0(v6, &__p);
        v13 = SBYTE3(v26) >= 0 ? &__p : __p;
        *v18 = 141558275;
        *&v18[4] = 1752392040;
        v19 = 2081;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sco data source selected for AP I2S 8kHz for device %{private, mask.hash}s", v18, 0x16u);
        if (SBYTE3(v26) < 0)
        {
          operator delete(__p);
        }
      }

      v9 = 3;
      v10 = 3;
      goto LABEL_44;
    }

    if (a3 == 1935765620)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000C23E0(v6, &__p);
        if (SBYTE3(v26) >= 0)
        {
          v8 = &__p;
        }

        else
        {
          v8 = __p;
        }

        *v18 = 141558275;
        *&v18[4] = 1752392040;
        v19 = 2081;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sco data source selected for AP I2S 16kHz for device %{private, mask.hash}s", v18, 0x16u);
        if (SBYTE3(v26) < 0)
        {
          operator delete(__p);
        }
      }

      v9 = 4;
      v10 = 4;
LABEL_44:
      v15 = sub_10000C7D0();
      sub_100413390(v15, v6, v10);
      sub_100320FAC(a2 + 400, v9);
      v16 = sub_100320F4C(a2 + 400);
      sub_1005E2DFC(a1, v6, v16, a2);
      return;
    }
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_1000C23E0(v6, &__p);
    if (SBYTE3(v26) >= 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p;
    }

    *v18 = 141558275;
    *&v18[4] = 1752392040;
    v19 = 2081;
    v20 = v17;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unknown SCO data source selected for device %{private, mask.hash}s", v18, 0x16u);
    if (SBYTE3(v26) < 0)
    {
      operator delete(__p);
    }

    v7 = qword_100BCE8F8;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000C23E0(v6, v18);
    v12 = v21 >= 0 ? v18 : *v18;
    LODWORD(__p) = 67109635;
    HIDWORD(__p) = a3;
    v23 = 2160;
    v24 = 1752392040;
    v25 = 2081;
    v26 = v12;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Sco route and audio channel not set because an unknown datasource of %d selected for device %{private, mask.hash}s", &__p, 0x1Cu);
    if (v21 < 0)
    {
      operator delete(*v18);
    }
  }
}

void sub_1005E5794(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v9 = sub_100320D94(a2 + 400);
  v10 = sub_1000D999C();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1005E5844;
  v11[3] = &unk_100B00C18;
  v11[4] = a1;
  v15 = v9;
  v12 = a4;
  v13 = a5;
  v14 = a3;
  sub_10000CA94(v10, v11);
}

uint64_t sub_1005E5844(uint64_t a1)
{
  v2 = *(a1 + 32);
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, v2 + 760);
  v3 = sub_1005D0048(v2, *(a1 + 52));
  v4 = v3;
  if (!v3)
  {
    v14 = qword_100BCE8F8;
    if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      return sub_1000088CC(v30);
    }

    v15 = *(a1 + 52);
    *buf = 67109120;
    *&buf[4] = v15;
    v16 = "No AudioDevice found for handle %d, not handling selectScoDataSource";
    v17 = v14;
    v18 = 8;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    return sub_1000088CC(v30);
  }

  v5 = sub_100320D9C(v3 + 400);
  if (!v5)
  {
    return sub_1000088CC(v30);
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    v19 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v5, buf);
      v20 = (SBYTE7(v40) & 0x80u) == 0 ? buf : *buf;
      *v31 = 136446210;
      v32 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sco route is disabled for device %{public}s", v31, 0xCu);
      if (SBYTE7(v40) < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_100320DC4(v4 + 400))
    {
      v21 = sub_100320D94(v4 + 400);
      sub_1005DCA18(v2, v21, 0, 116);
      return sub_1000088CC(v30);
    }

    v26 = qword_100BCE8F8;
    if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      return sub_1000088CC(v30);
    }

    *buf = 0;
    v16 = "already disconnected no need disconnect audio";
    v17 = v26;
    v18 = 2;
    goto LABEL_8;
  }

  sub_10032117C(v4 + 400, v6);
  v7 = sub_100320D94(v4 + 400);
  v29 = 0;
  sub_1000216B4(&v29);
  v8 = sub_100248E88(0);
  v9 = sub_100216A60(v7);
  v10 = sub_1002168F8(v7);
  sub_100022214(&v29);
  v41 = 0;
  *buf = 0u;
  v40 = 0u;
  v11 = *(a1 + 44);
  v12 = sub_1005D09A8(v2, v5);
  if (v12)
  {
    v13 = sub_100320EAC(v12 + 400);
  }

  else
  {
    v13 = 0;
  }

  sub_1005E5CEC(v11, v13, buf);
  if (v9)
  {
    *v31 = sub_100320F4C(v4 + 400);
    v22 = sub_1005EB1F4(buf, v31) == 0;
  }

  else
  {
    v22 = 0;
  }

  if (((v8 | v22) & 1) != 0 || v10 == 4)
  {
    v23 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(v5, __p);
      if (v28 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      *v31 = 136446978;
      v32 = v24;
      v33 = 1024;
      v34 = v8;
      v35 = 1024;
      v36 = v22;
      v37 = 1024;
      v38 = v10 == 4;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Deferring route change to %{public}s, will retry when disconnect stack event fires - possibleSCOActivity:%d sampleRateChangedWhileScoWasOpen:%d isHandsfreeAoSDisconnecting:%d", v31, 0x1Eu);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100320408(v2 + 360);
  }

  (*(*v2 + 144))(v2, v4, *(a1 + 48), *(a1 + 40), *(a1 + 44));
  sub_1001392B8(buf);
  sub_10002249C(&v29);
  return sub_1000088CC(v30);
}

void sub_1005E5C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_1001392B8(&a22);
  sub_10002249C(&a15);
  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E5CEC@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (a1 <= 23999)
  {
    if (a1 == 8000)
    {
      LODWORD(v8) = 1;
LABEL_19:
      v4 = a3;
      v5 = 1;
      return sub_1005EB2A8(v4, &v8, v5);
    }

    if (a1 != 16000)
    {
      goto LABEL_14;
    }

    v6 = 2;
LABEL_18:
    LODWORD(v8) = v6;
    goto LABEL_19;
  }

  if (a1 == 24000)
  {
    if (a2)
    {
      v6 = 128;
    }

    else
    {
      v6 = 256;
    }

    goto LABEL_18;
  }

  if (a1 == 32000)
  {
    v6 = 127;
    goto LABEL_18;
  }

  if (a1 != 48000)
  {
LABEL_14:
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084EC78();
    }

    goto LABEL_16;
  }

  if (!a2)
  {
LABEL_16:
    LODWORD(v8) = 0;
    goto LABEL_19;
  }

  v8 = 0x8200000081;
  v4 = a3;
  v5 = 2;
  return sub_1005EB2A8(v4, &v8, v5);
}

uint64_t sub_1005E5E28(uint64_t a1, int a2)
{
  result = 24000;
  if (a2 > 128)
  {
    if ((a2 - 129) < 2 || a2 == 255)
    {
      return 48000;
    }

    if (a2 == 256)
    {
      return result;
    }
  }

  else
  {
    if ((a2 - 127) < 2)
    {
      return result;
    }

    if (a2 == 1)
    {
      return 8000;
    }

    if (a2 == 2)
    {
      return 16000;
    }
  }

  result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10084ECE8();
    return 0;
  }

  return result;
}

uint64_t sub_1005E5ED8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 760);
  if (sub_1003A42E4(a2))
  {
    if (a2)
    {
      v10 = sub_100320D9C(a2 + 400);
    }

    else
    {
      v10 = 0;
    }

    v17 = 0;
    sub_1000216B4(&v17);
    sub_1005E28B8();
    sub_100022214(&v17);
    (*(*a1 + 264))(a1, a2, a5, 0, 0);
    (*(*a1 + 288))(a1, a2, a3);
    switch(a4)
    {
      case 1918989668:
        v15 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v20 = a5;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sco route reason is kBluetoothAudioDeviceSCOEnableReasonAudioIO:%d", buf, 8u);
        }

        sub_1005E29D0(a1, v10, a2);
        break;
      case 1919115628:
        v13 = qword_100BCE8F8;
        v14 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          *buf = 67109120;
          v20 = a5;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sco route reason is kBluetoothAudioDeviceSCOEnableReasonCall:%d", buf, 8u);
        }

        sub_1005E2930(v14, v10, a2);
        break;
      case 1920364387:
        v12 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v20 = a5;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sco route reason is kBluetoothAudioDeviceSCOEnableReasonVoiceCommand:%d", buf, 8u);
        }

        sub_1005E2C1C(a1, v10, a2);
        break;
    }

    sub_10002249C(&v17);
  }

  else
  {
    v11 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not setting sco data source", buf, 2u);
    }
  }

  return sub_1000088CC(v18);
}

void sub_1005E61BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E61F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005D09A8(a1, a2);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v9 = 0;
  if (qword_100B50950 != -1)
  {
    sub_10084C8CC();
  }

  v5 = sub_10033C1E4(off_100B50948, a2, &v9 + 1, &v9);
  sub_1003A35C4(v4, BYTE4(v9), v9);
  v8 = 3;
  if (qword_100B50950 != -1)
  {
    sub_10084C87C();
  }

  sub_10033C47C(off_100B50948, a2, &v8);
  sub_1003A35D4(v4, v8);
  v6 = sub_1000E3314(a2);
  sub_1003A35E4(v4, v6);
  return v5;
}

uint64_t sub_1005E62DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005D09A8(a1, a2);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = sub_1000E3284(a2);
  sub_1003A3614(v4, v5);
  return 0;
}

uint64_t sub_1005E6328(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005D09A8(a1, a2);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  if (qword_100B50950 != -1)
  {
    sub_10084C8CC();
  }

  v5 = sub_10033C0B8(off_100B50948, a2);
  sub_1003A359C(v4, v5);
  return 0;
}

uint64_t sub_1005E6394(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_1005D09A8(a1, a2);
  if (!v4)
  {
    return 1;
  }

  sub_1003A35F4(v4, a3);
  return 0;
}

uint64_t sub_1005E63D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005D09A8(a1, a2);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = sub_10054B04C(a2);
  sub_1003A3BF4(v4, v5);
  return 0;
}

uint64_t sub_1005E641C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005D09A8(a1, a2);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = sub_1005493C4(a2);
  sub_1003A3950(v4, v5);
  return 0;
}

uint64_t sub_1005E6468(uint64_t a1, uint64_t a2, _WORD *a3, _WORD *a4)
{
  v4 = sub_100216DD0(a2, 8, a3, a4, 0);
  if (v4 && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084ED58();
  }

  return v4;
}

_BYTE *sub_1005E64C8(void *a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v8 = sub_1005D492C(a1, *a4);
  if (v8)
  {
    sub_1005D3DD0(a1, v8, *a4);
  }

  v10 = 0;
  sub_1000216B4(&v10);
  sub_100211CE8(a2, *a3, *a4);
  return sub_10002249C(&v10);
}

uint64_t sub_1005E6558(uint64_t a1, uint64_t a2, unint64_t a3, __int16 *a4, unsigned __int16 *a5, int a6)
{
  v27 = 0;
  v26 = 0;
  *&__src[3] = 33621253;
  *__src = 84082945;
  *&v24[3] = 0;
  *v24 = 0;
  v11 = sub_100216DC0();
  sub_1002123A0(*a5, &v26);
  sub_100212428(*a5, __src, 7u);
  sub_1002123B8(*a5, v24, 7u);
  sub_100212478(*a5, &v27);
  if (qword_100B54090 != -1)
  {
    sub_10084D27C();
  }

  v12 = sub_100389744(qword_100B54088, a3);
  sub_10057C6D0(a2, 3);
  sub_10057C6D0(a2, 2);
  sub_10057C70C(a2, 104);
  sub_10057C6D0(a2, 16);
  sub_10057C6D0(a2, 4);
  sub_10057C75C(a2, v26);
  sub_10057C6D0(a2, 18);
  sub_10057C6D0(a2, 7);
  sub_10057C6B8(a2, __src, 7);
  sub_10057C6D0(a2, 19);
  sub_10057C6D0(a2, 7);
  sub_10057C6B8(a2, v24, 7);
  sub_10057C6D0(a2, 21);
  sub_10057C6D0(a2, 2);
  sub_10057C70C(a2, v27);
  sub_10057C6D0(a2, 27);
  sub_10057C6D0(a2, 2);
  if (v12)
  {
    v13 = 15;
  }

  else
  {
    v13 = 7;
  }

  sub_10057C70C(a2, v13);
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v14 = sub_1000C0D40(*a4, &v21, &v23, &v22);
  if (v14)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084ED94();
    }
  }

  else
  {
    sub_10057C6D0(a2, 1);
    sub_10057C6D0(a2, 7);
    sub_10057C70C(a2, *a4);
    sub_10057C70C(a2, v21);
    sub_10057C70C(a2, v23);
    sub_10057C6D0(a2, v22);
  }

  sub_10057C6D0(a2, 26);
  sub_10057C6D0(a2, 6);
  sub_10057C6D0(a2, 8);
  sub_10057C6D0(a2, 1);
  sub_10057C6D0(a2, 255);
  sub_10057C6D0(a2, 0);
  sub_10057C70C(a2, v11);
  if (a6)
  {
    v20 = 0;
    v19 = 0;
    v18 = 0;
    v15 = sub_100308E80(a3 + 128);
    v16 = v15;
    v14 = sub_1000C0D40(v15, &v18, &v20, &v19);
    if (v14)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084EDD0();
      }
    }

    else
    {
      sub_10057C6D0(a2, 28);
      sub_10057C6D0(a2, 7);
      sub_10057C70C(a2, v16);
      sub_10057C70C(a2, v18);
      sub_10057C70C(a2, v20);
      sub_10057C6D0(a2, v19);
    }
  }

  return v14;
}

uint64_t sub_1005E68C0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 *a5, _BYTE *a6, _BYTE *a7, _BYTE *a8)
{
  v48[0] = 0;
  v48[1] = 0;
  sub_100007F88(v48, a1 + 760);
  v9 = sub_10000C5E0(a2 + 8) - *(a2 + 24);
  *(v47 + 3) = 0;
  v47[0] = 0;
  v46 = 0;
  *a8 = 0;
  if (v9 >= 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = sub_10057C548(a2);
      if (v11 < 0)
      {
        v12 = sub_10057C598(a2);
        v13 = -3;
      }

      else
      {
        v12 = sub_10057C548(a2);
        v13 = -2;
      }

      v14 = v11 & 0x7F;
      if (v14 > 0x16)
      {
        if ((v11 & 0x7Fu) > 0x19)
        {
          if (v14 == 26)
          {
            v16 = v12;
            if (v12 >= 6)
            {
              v23 = sub_10057C548(a2);
              v24 = sub_10057C548(a2);
              v25 = sub_10057C548(a2);
              sub_10057C548(a2);
              v26 = sub_10057C598(a2);
              buf[0] = 0;
              sub_1000216B4(buf);
              v10 = sub_1002F5018(a4, v23, v26, v25, v24);
              sub_100022214(buf);
              sub_10002249C(buf);
              v16 = v12 - 6;
            }

            goto LABEL_58;
          }

          if (v14 == 27)
          {
            v16 = v12 - 8;
            if (v12 < 8)
            {
              goto LABEL_57;
            }

            sub_10057C598(a2);
            sub_10057C598(a2);
            sub_10057C598(a2);
            v28 = sub_10057C598(a2);
            *(a3 + 582) = (v28 & 0x8000) != 0;
            v29 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
            {
              v30 = "not supported";
              if (v28 < 0)
              {
                v30 = "supported";
              }

              *buf = 136446210;
              *&buf[4] = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "FC XAPL Feature: Audio Input Config is %{public}s", buf, 0xCu);
            }

            *(a3 + 580) = 257;
            goto LABEL_58;
          }

          if (v14 != 28)
          {
LABEL_55:
            v31 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *&buf[4] = v11 & 0x7F;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "parseHFPDescriptor Key not recognized %d", buf, 8u);
            }

            goto LABEL_57;
          }

          v16 = v12 - 7;
          if (v12 < 7)
          {
            goto LABEL_57;
          }

          v17 = sub_10057C598(a2);
          sub_10057C598(a2);
          v18 = sub_10057C598(a2);
          sub_10057C548(a2);
          *buf = 0;
          v43 = 0;
          sub_1000216B4(&v43);
          v19 = sub_100308E80(a3 + 128);
          if (sub_1000ABC7C(v19, buf) || !sub_1000B12AC(*buf))
          {
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
            {
              sub_10084EE40(&v41, v42);
            }

            v10 = 114;
          }

          else
          {
            *(sub_1000B12AC(*buf) + 8) = v17;
            *(sub_1000B12AC(*buf) + 32) = v18;
          }

          v33 = &v43;
LABEL_71:
          sub_10002249C(v33);
          goto LABEL_58;
        }

        switch(v14)
        {
          case 0x17u:
            if (v12 != 1)
            {
              goto LABEL_57;
            }

            *a7 = sub_10057C548(a2);
            break;
          case 0x18u:
            v16 = v12 - 7;
            if (v12 >= 7)
            {
              sub_10057C50C(a2, v47, 7uLL);
              buf[0] = 0;
              sub_1000216B4(buf);
              sub_1002121F8(*a5, v47, 7u);
              sub_100022214(buf);
              goto LABEL_67;
            }

LABEL_57:
            v16 = v12;
LABEL_58:
            if (v16)
            {
              v32 = qword_100BCE8F8;
              if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109632;
                *&buf[4] = v14;
                *&buf[8] = 1024;
                *&buf[10] = v16;
                v50 = 1024;
                v51 = v12;
                _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "parseHFPDescriptor Key:%d Dumped %d of %d bytes ", buf, 0x14u);
              }

              sub_10057C660(a2, v16);
            }

            break;
          case 0x19u:
            if (v12 != 1)
            {
              goto LABEL_57;
            }

            sub_10057C548(a2);
            *a8 = 1;
            break;
          default:
            goto LABEL_55;
        }
      }

      else if ((v11 & 0x7Fu) > 0x10)
      {
        if (v14 == 17)
        {
          v22 = sub_100007618(v12, 0x100004077774924uLL);
          if (!v22)
          {
            goto LABEL_57;
          }

          sub_10057C50C(a2, v22, v12);
          buf[0] = 0;
          sub_1000216B4(buf);
          sub_100211EA4(*a5, v22, v12);
          sub_100022214(buf);
          sub_10000C1E8(v22);
LABEL_48:
          sub_10002249C(buf);
          goto LABEL_62;
        }

        if (v14 == 20)
        {
          if (v12 != 1)
          {
            goto LABEL_57;
          }

          v27 = sub_10057C548(a2);
          buf[0] = 0;
          sub_1000216B4(buf);
          sub_100211E38(*a5, v27 == 1);
          sub_100022214(buf);
          goto LABEL_48;
        }

        if (v14 != 22)
        {
          goto LABEL_55;
        }

        if (v12 != 1)
        {
          goto LABEL_57;
        }

        *a6 = sub_10057C548(a2) + 1;
      }

      else
      {
        if (v14 == 1)
        {
          v16 = v12 - 7;
          if (v12 < 7)
          {
            goto LABEL_57;
          }

          v20 = sub_10057C598(a2);
          sub_10057C598(a2);
          v21 = sub_10057C598(a2);
          sub_10057C548(a2);
          buf[0] = 0;
          sub_1000216B4(buf);
          if (sub_1000ABC7C(a4, &v46) || !sub_1000B12AC(v46))
          {
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
            {
              sub_10084EE7C(&v44, v45);
            }
          }

          else
          {
            *(sub_1000B12AC(v46) + 8) = v20;
            *(sub_1000B12AC(v46) + 32) = v21;
            sub_1002F03E8(a3 + 128, a4);
          }

          sub_100022214(buf);
LABEL_67:
          v33 = buf;
          goto LABEL_71;
        }

        if (v14 != 3)
        {
          if (v14 != 16)
          {
            goto LABEL_55;
          }

          if (v12 != 4)
          {
            goto LABEL_57;
          }

          v15 = sub_10057C600(a2);
          buf[0] = 0;
          sub_1000216B4(buf);
          sub_100212350(*a5, v15);
          sub_100022214(buf);
          goto LABEL_48;
        }

        if (v12 != 2)
        {
          goto LABEL_57;
        }

        sub_10057C598(a2);
      }

LABEL_62:
      LOWORD(v9) = v9 + v13 - v12;
      if (v9 <= 0)
      {
        goto LABEL_73;
      }
    }
  }

  v10 = 0;
LABEL_73:
  sub_1000088CC(v48);
  return v10;
}

void sub_1005E7028(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fast Connect HFP Report Connection attempt for %{public}s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10057D9B0(a1, a2);
}

void sub_1005E7124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = a7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fast Connect HFP Setup Complete result %d", v13, 8u);
  }

  if (a7)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_10084CC80();
    }

    v11 = sub_1000DD584(off_100B50A98, a7, 20000);
    sub_10057DA84(a1, a2, v11);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_10084CC80();
  }

  v12 = sub_1000DD584(off_100B50A98, 0, 20000);
  sub_10057DA84(a1, a2, v12);
}

void sub_1005E72E4(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, (a1 + 8));
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

uint64_t sub_1005E741C(uint64_t a1, uint64_t (***a2)(void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 50);
  v5 = *(a1 + 32);
  v6 = sub_1003211B8(*(a1 + 40) + 400);
  v7 = **a2;

  return v7(a2, v5, v3, v4, v6);
}

uint64_t sub_1005E74B0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_1005D09A8(a1, a2);
  v6 = qword_100BCE8F8;
  if (v5)
  {
    v7 = v5;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v8 = __p[0];
      v9 = "No";
      if (v12 >= 0)
      {
        v8 = __p;
      }

      if (a3)
      {
        v9 = "Yes";
      }

      *buf = 136446466;
      v14 = v8;
      v15 = 2082;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setAllowsAutoRoute: %{public}s, allows %{public}s", buf, 0x16u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1003A4008(v7, a3);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084EEB8();
    }

    return 1;
  }
}

uint64_t sub_1005E75FC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_1005D09A8(a1, a2);
  v6 = qword_100BCE8F8;
  if (v5)
  {
    v7 = v5;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v8 = __p[0];
      v9 = "No";
      if (v12 >= 0)
      {
        v8 = __p;
      }

      if (a3)
      {
        v9 = "Yes";
      }

      *buf = 136446466;
      v14 = v8;
      v15 = 2082;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setAudioRouteHidden: %{public}s, %{public}s", buf, 0x16u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1003A407C(v7, a3);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084EEF4();
    }

    return 1;
  }
}

uint64_t sub_1005E7748(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_1005D09A8(a1, a2);
  if (v4)
  {
    sub_1003A3F94(v4, a3);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084EF30();
    }

    return 1;
  }
}

uint64_t sub_1005E77AC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_1005D09A8(a1, a2);
  v5 = qword_100BCE8F8;
  if (v4)
  {
    v6 = v4;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "No";
      if (a3)
      {
        v7 = "Yes";
      }

      v9 = 136315138;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Smart Route: [HFP] Tipi Connection status : %s", &v9, 0xCu);
    }

    sub_1003A325C(v6, a3);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084EF6C();
    }

    return 1;
  }
}

void sub_1005E78B0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_1005D09A8(a1, a2);
  if (v5)
  {
    v6 = v5;
    if ((a3 - 1) > 4)
    {
      v7 = 0;
    }

    else
    {
      v7 = dword_1008AA7A8[a3 - 1];
    }

    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      if (v13 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 67109634;
      v15 = a3;
      v16 = 1024;
      v17 = v7;
      v18 = 2082;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User selected device type is %d. Setting category as %d for device %{public}s.", buf, 0x18u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10069BFD4(v6, v7);
    v11 = sub_1005D2A98(v10, a2);
    sub_10069BD7C(v6, v11);
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084EFA8();
  }
}

void sub_1005E7A24(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_1000D999C();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005E7ABC;
  v9[3] = &unk_100AE0EF8;
  v9[4] = a1;
  v9[5] = a3;
  v10 = a4;
  v11 = a2;
  sub_10000CA94(v8, v9);
}

void sub_1005E7ABC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_1005D4A04(v2, *(a1 + 40));
  v4 = sub_1005D0048(v2, v3);
  if (v4)
  {
    v5 = v4;
    v19 = sub_100320DC4(v4 + 400);
    v6 = sub_100320D9C(v5 + 400);
    v7 = sub_1003211B8(v5 + 400);
    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v6, __p);
      v9 = v18 >= 0 ? __p : __p[0];
      v10 = sub_10041163C(*(a1 + 48));
      v11 = *(a1 + 49);
      v12 = sub_100320114(&v19);
      *buf = 136447234;
      v21 = v9;
      v22 = 2080;
      v23 = v10;
      v24 = 1024;
      v25 = v11;
      v26 = 2080;
      v27 = v12;
      v28 = 1024;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "advancedSniffModeChanged - device:%{public}s mode:%s status:%d audioState:%s isInAdvancedSniff:%d", buf, 0x2Cu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (*(a1 + 48) == 240)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    if ((v13 & 1) == 0)
    {
      sub_1003211B0(v5 + 400, (*(a1 + 48) == 240) & ~v7);
      if (v19 == 1)
      {
        if (*(a1 + 49))
        {
          sub_1005E7D70(v2, v5);
          return;
        }

        if (*(a1 + 48) == 240)
        {
          v15 = sub_1003211D0(v5 + 400);
          sub_1005E7F30(v15, *(a1 + 40));
          buf[0] = 0;
          sub_1000216B4(buf);
          v16 = sub_100320184(v5 + 400);
          sub_100211538(v3, v16);
          sub_10002249C(buf);
          if (v19 == 1)
          {
            v14 = 3;
          }

          else
          {
            v14 = 1;
          }
        }

        else
        {
          v14 = 3;
        }
      }

      else
      {
        v14 = 1;
      }

      if (qword_100B50940 != -1)
      {
        sub_10084C8A4();
      }

      sub_10063A688(off_100B50938, v6, v14);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084EFE4();
  }
}

void sub_1005E7D70(uint64_t a1, uint64_t a2)
{
  sub_1003211C0(a2 + 400);
  v4 = sub_1003211D8(a2 + 400);
  v5 = sub_100320D9C(a2 + 400);
  v6 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v5, __p);
    v7 = v12 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v14 = v7;
    v15 = 1024;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "retryHandsfreeAoSCall - device:%{public}s handsfreeAoSRetryCount:%d", buf, 0x12u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v4 == 2)
  {
    sub_10069BC6C(a2, 0, 114);
    sub_100320DCC(a2 + 400, 0);
    sub_1003211D0(a2 + 400);
    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
    {
      sub_10084F054(v8);
    }
  }

  else
  {
    v9 = sub_1000D999C();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005E8070;
    v10[3] = &unk_100AE0860;
    v10[4] = a1;
    v10[5] = v5;
    sub_10008E008(v9, 250, v10);
  }
}

_BYTE *sub_1005E7F30(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  sub_1000216B4(&v7);
  v3 = sub_1000E1FE8(a2);
  sub_100022214(&v7);
  v4 = *v3;
  v5 = sub_10000C7D0();
  (*(*v5 + 1880))(v5, v4, 1, 1);
  return sub_10002249C(&v7);
}

void sub_1005E7FD8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v7 = a1 - 296;
  v8 = sub_1000D999C();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005E7ABC;
  v9[3] = &unk_100AE0EF8;
  v9[4] = v7;
  v9[5] = a3;
  v10 = a4;
  v11 = a2;
  sub_10000CA94(v8, v9);
}

uint64_t sub_1005E807C(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 760);
  v4 = sub_1005D09A8(a1, a2);
  if (v4)
  {
    v5 = *(v4 + 628);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_1005E80F4(uint64_t a1)
{
  *a1 = off_100B007D8;
  *(a1 + 256) = off_100B00970;
  *(a1 + 264) = off_100B009B0;
  *(a1 + 272) = &off_100B009E0;
  *(a1 + 280) = off_100B009F8;
  *(a1 + 288) = &off_100B00A98;
  *(a1 + 296) = off_100B00AC0;
  *(a1 + 304) = off_100B00B30;
  *(a1 + 312) = off_100B00B70;
  *(a1 + 320) = &off_100B00BA0;
  sub_10000CEDC(a1 + 824, *(a1 + 832));
  sub_10007A068(a1 + 760);
  sub_100320110(a1 + 360);
  v2 = *(a1 + 336);
  if (v2)
  {
    *(a1 + 344) = v2;
    operator delete(v2);
  }

  return sub_10032F580(a1);
}

void sub_1005E8290(uint64_t a1)
{
  *a1 = off_100B007D8;
  *(a1 + 256) = off_100B00970;
  *(a1 + 264) = off_100B009B0;
  *(a1 + 272) = &off_100B009E0;
  *(a1 + 280) = off_100B009F8;
  *(a1 + 288) = &off_100B00A98;
  *(a1 + 296) = off_100B00AC0;
  *(a1 + 304) = off_100B00B30;
  *(a1 + 312) = off_100B00B70;
  *(a1 + 320) = &off_100B00BA0;
  sub_10000CEDC(a1 + 824, *(a1 + 832));
  sub_10007A068(a1 + 760);
  sub_100320110(a1 + 360);
  v2 = *(a1 + 336);
  if (v2)
  {
    *(a1 + 344) = v2;
    operator delete(v2);
  }

  sub_10032F580(a1);

  operator delete();
}

uint64_t sub_1005E8498(uint64_t a1)
{
  v2 = a1 - 304;
  *(a1 - 304) = off_100B007D8;
  *(a1 - 48) = off_100B00970;
  *(a1 - 40) = off_100B009B0;
  *(a1 - 32) = &off_100B009E0;
  *(a1 - 24) = off_100B009F8;
  *(a1 - 16) = &off_100B00A98;
  *(a1 - 8) = off_100B00AC0;
  *a1 = off_100B00B30;
  *(a1 + 8) = off_100B00B70;
  *(a1 + 16) = &off_100B00BA0;
  sub_10000CEDC(a1 + 520, *(a1 + 528));
  sub_10007A068(a1 + 456);
  sub_100320110(a1 + 56);
  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  return sub_10032F580(v2);
}

void sub_1005E8648(uint64_t a1, uint64_t a2)
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
    sub_1005E8714((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1005E8714(void *a1, char *__src, char *a3)
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

void sub_1005E88B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005E88E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(a1 + 8) = 1;
  *a1 = off_100B00CA8;
  sub_1000DA9C4(a1 + 16);
  *(a1 + 40) = v4;
  return a1;
}

uint64_t sub_1005E8964(uint64_t a1)
{
  *a1 = off_100B00CA8;

  v3 = (a1 + 16);
  sub_1000D6BD4(&v3);
  return a1;
}

void sub_1005E89C4(uint64_t a1)
{
  *a1 = off_100B00CA8;

  v2 = (a1 + 16);
  sub_1000D6BD4(&v2);
  operator delete();
}

void sub_1005E8A38(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 40);

  sub_1000D7348(v2, (a1 + 16), v3);
}

void sub_1005E8A90(uint64_t a1, uint64_t a2)
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

void sub_1005E8B68(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  LOBYTE(v3) = *(a1 + 50);
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  sub_1005CF90C(off_100B50AC8, *(a1 + 48), *(a1 + 51), a1 + 32, &v2);
}

void sub_1005E8BD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 32) = &off_100AE0A78;
  *(a1 + 40) = v3;
  if (v3)
  {
    sub_10000C69C(v3);
  }
}

void sub_1005E8C08(uint64_t a1)
{
  *(a1 + 32) = &off_100AE0A78;
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_10000C808(v1);
  }
}

uint64_t sub_1005E8C38(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 1;
  *a1 = off_100B00D10;
  *(a1 + 16) = 0;
  v4 = malloc_type_malloc(0x18uLL, 0x10320400E551A55uLL);
  *(a1 + 16) = v4;
  if (v4)
  {
    v5 = *a2;
    v4[2] = *(a2 + 2);
    *v4 = v5;
    v6 = *a2;
    if (*a2 < 2u)
    {
      *(*(a1 + 16) + 8) = malloc_type_malloc(6uLL, 0x1000040274DC3F3uLL);
      v12 = *(*(a1 + 16) + 8);
      v13 = *(a2 + 1);
      v14 = *(v13 + 4);
      *v12 = *v13;
      *(v12 + 4) = v14;
    }

    else
    {
      if (v6 == 7)
      {
        *(*(a1 + 16) + 8) = malloc_type_malloc(*(a2 + 8), 0x100004077774924uLL);
        v10 = *(*(a1 + 16) + 8);
        v11 = *(a2 + 1);
        v9 = *(a2 + 8);
        goto LABEL_9;
      }

      if (v6 == 10)
      {
        v7 = strlen(*(a2 + 1));
        *(*(a1 + 16) + 8) = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
        v8 = *(a2 + 1);
        v9 = strlen(v8) + 1;
        v10 = *(*(a1 + 16) + 8);
        v11 = v8;
LABEL_9:
        memmove(v10, v11, v9);
      }
    }
  }

  else
  {
    v16 = 0;
    sub_1000216B4(&v16);
    sub_10020F948(*(a2 + 2), 2701);
    sub_10002249C(&v16);
  }

  return a1;
}

void sub_1005E8DE0(uint64_t a1)
{
  sub_1005E8E6C(a1);

  operator delete();
}

uint64_t sub_1005E8E18(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 16);

  return sub_1005D7C3C(v2, v3);
}

uint64_t sub_1005E8E6C(uint64_t a1)
{
  *a1 = off_100B00D10;
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*v2 <= 0xAu && ((1 << *v2) & 0x483) != 0)
    {
      free(*(v2 + 8));
    }

    free(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1005E8EE4(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(a1 + 8) = 1;
  *a1 = off_100B00D48;
  *(a1 + 10) = a2;
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  v6 = malloc_type_malloc(0x28uLL, 0x103004048DB3EE6uLL);
  *v5 = v6;
  *v6 = *a3;
  v6[8] = *(a3 + 16);
  v7 = strlen(*(a3 + 8));
  v8 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  *(*v5 + 8) = v8;
  if (!v8)
  {
    v9 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
    {
      v17 = strlen(*(a3 + 8));
      *v19 = 134217984;
      *&v19[4] = v17 + 1;
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Could not allocate %lu bytes", v19, 0xCu);
      v8 = *(*v5 + 8);
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = strlen(*(a3 + 8));
  strlcpy(v8, *(a3 + 8), v10 + 1);
  v11 = malloc_type_malloc(0x18uLL, 0x10900404FFA3EDEuLL);
  *(*v5 + 32) = v11;
  if (!v11)
  {
    sub_10084F0D4(v5, v19);
    v11 = *v19;
  }

  v12 = *(a3 + 32);
  v13 = *v12;
  v11[2] = *(v12 + 2);
  *v11 = v13;
  v14 = malloc_type_malloc(*(*(a3 + 32) + 18), 0x100004077774924uLL);
  *(*(*v5 + 32) + 8) = v14;
  if (!v14)
  {
    v15 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
    {
      v18 = *(*(a3 + 32) + 18);
      *v19 = 67109120;
      *&v19[4] = v18;
      _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Could not allocate %d bytes", v19, 8u);
      v14 = *(*(*v5 + 32) + 8);
    }

    else
    {
      v14 = 0;
    }
  }

  memcpy(v14, *(*(a3 + 32) + 8), *(*(a3 + 32) + 18));
  *(*(a1 + 16) + 24) = *(*(*(a1 + 16) + 32) + 8) + *(a3 + 24) - *(*(a3 + 32) + 8);
  return a1;
}

void sub_1005E9174(uint64_t a1)
{
  sub_1005E9204(a1);

  operator delete();
}

_BYTE *sub_1005E91AC(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 10);

  return sub_1005DD358(v2, v3);
}

uint64_t sub_1005E9204(uint64_t a1)
{
  *a1 = off_100B00D48;
  free(*(*(a1 + 16) + 8));
  free(*(*(*(a1 + 16) + 32) + 8));
  free(*(*(a1 + 16) + 32));
  free(*(a1 + 16));
  return a1;
}

uint64_t sub_1005E9274(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v2 = off_100B50AC8;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  *a1 = off_100B00D80;
  return a1;
}

void *sub_1005E92F8(void *result)
{
  if (*(result[3] + 80) == 1)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_1005E9338(uint64_t a1, __int16 a2, char a3)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v6 = off_100B50AC8;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *a1 = off_100B00DC0;
  *(a1 + 32) = a2;
  *(a1 + 34) = a3;
  return a1;
}

void sub_1005E93E8(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);

  sub_1005E0618(v2, v4, v3, v5);
}

uint64_t sub_1005E945C()
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v1 = off_100B50AC8;

  return sub_1005E3360(v1, 0);
}

void sub_1005E94A4()
{
  v0 = sub_1000D999C();

  sub_10000CA94(v0, &stru_100B00E28);
}

void sub_1005E94D4(uint64_t a1, char a2, const void *a3, unsigned int a4, uint64_t a5, uint64_t *a6)
{
  v18 = 0;
  v19 = 0;
  sub_10000C704(&v18, a3, a4);
  LOWORD(a1) = sub_100216C4C(a1);
  v9 = *(a6 + 8);
  v10 = *a6;
  v11 = sub_1000D999C();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3321888768;
  v12[2] = sub_1005E983C;
  v12[3] = &unk_100B00E48;
  v16 = v9;
  v15 = a1;
  v17 = a2;
  v12[4] = v10;
  v13 = &off_100AE0A78;
  v14 = v19;
  if (v19)
  {
    sub_10000C69C(v19);
  }

  sub_10000CA94(v11, v12);
  v13 = &off_100AE0A78;
  if (v14)
  {
    sub_10000C808(v14);
  }

  v18 = &off_100AE0A78;
  if (v19)
  {
    sub_10000C808(v19);
  }
}

void sub_1005E9614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, atomic_uint *a15, uint64_t a16, uint64_t a17, atomic_uint *a18)
{
  if (a15)
  {
    sub_10000C808(a15);
  }

  if (a18)
  {
    sub_10000C808(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E9668()
{
  v0 = sub_1000D999C();

  sub_10000CA94(v0, &stru_100B00E78);
}

void sub_1005E9698(uint64_t a1, __int16 a2)
{
  v3 = sub_100216C4C(a1);
  v4 = sub_1000D999C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005E98F4;
  v5[3] = &unk_100AE0900;
  v6 = v3;
  v7 = a2;
  sub_10000CA94(v4, v5);
}

void sub_1005E9720(int a1, uint64_t a2, char a3, char a4, __int16 a5, __int16 a6, char a7)
{
  v14 = sub_100216C4C(a2);
  v15 = sub_1000D999C();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1005E9944;
  v16[3] = &unk_100AEDA80;
  v17 = a1;
  v18 = v14;
  v16[4] = a2;
  v21 = a3;
  v22 = a4;
  v19 = a5;
  v20 = a6;
  v23 = a7;
  sub_10000CA94(v15, v16);
}

void sub_1005E97F4(id a1)
{
  if (qword_100B50AD0 == -1)
  {
  }

  else
  {
    sub_10084E6E8();
  }

  sub_1005CF8A4();
}

void sub_1005E983C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0;
  LOBYTE(v3) = *(a1 + 58);
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  sub_1005CF90C(off_100B50AC8, *(a1 + 56), *(a1 + 59), a1 + 40, &v2);
}

void sub_1005E98AC(id a1)
{
  if (qword_100B50AD0 == -1)
  {
  }

  else
  {
    sub_10084E6E8();
  }

  sub_1005D0500();
}

void sub_1005E98F4(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v2 = *(a1 + 34);

  sub_1005D0568(a1, 0, v2);
}

uint64_t sub_1005E9944(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  return sub_1005D060C(off_100B50AC8, *(a1 + 40), *(a1 + 44), *(a1 + 32), *(a1 + 50), *(a1 + 51), *(a1 + 46), *(a1 + 48), *(a1 + 52));
}

_BYTE *sub_1005EA138(_BYTE *a1, unsigned __int16 a2, uint64_t a3)
{
  result = sub_100320E64(a3 + 400);
  if (result)
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v6 = sub_1005D492C(off_100B50AC8, a2);
    v7 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      if (*a1)
      {
        v8 = "call active";
      }

      else
      {
        v8 = "no call active";
      }

      if (v6)
      {
        sub_1000E5A58(v6, __p);
        if (v12 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        *buf = 136446466;
        v14 = v8;
        v15 = 2082;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending call status %{public}s to device %{public}s", buf, 0x16u);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446466;
        v14 = v8;
        v15 = 2082;
        v16 = "NULL";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending call status %{public}s to device %{public}s", buf, 0x16u);
      }
    }

    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    v10 = sub_10020FE14(a2, *a1);
    sub_100022214(__p);
    if (v10)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084F190();
      }
    }

    return sub_10002249C(__p);
  }

  return result;
}

uint64_t sub_1005EA344(void *a1, uint64_t *a2, unsigned __int16 *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_1005EA3E0(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1005EA3E0(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 16), v6 < v7))
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
    if (*(v10 + 16) < v15)
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
          v18 = *(v16 + 32);
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

  if (a4 != v5 && v6 >= *(a4 + 16))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
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

void sub_1005EA588(unsigned __int8 *a1, unsigned __int16 a2, uint64_t a3)
{
  v6 = sub_100320E24(a3 + 400);
  if (sub_100320E64(a3 + 400))
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v7 = sub_1005D492C(off_100B50AC8, a2);
    if (v6)
    {
      v8 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = a1[1];
        v9 = v23;
        sub_1000DAB54(&v22, v23);
        if (v24 < 0)
        {
          v9 = v23[0];
        }

        if (v7)
        {
          sub_1000E5A58(v7, __p);
          if (v21 >= 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = __p[0];
          }

          *buf = 136446466;
          v26 = v9;
          v27 = 2082;
          v28 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending call held status %{public}s to device %{public}s", buf, 0x16u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446466;
          v26 = v9;
          v27 = 2082;
          v28 = "NULL";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending call held status %{public}s to device %{public}s", buf, 0x16u);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }
      }

      v19 = 0;
      sub_1000216B4(&v19);
      v14 = sub_1002100B0(a2, a1[1]);
      if (!v14)
      {
        v15 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *a1;
          v16 = v23;
          sub_1000DAB24(&v22, v23);
          if (v24 < 0)
          {
            v16 = v23[0];
          }

          if (v7)
          {
            sub_1000E5A58(v7, __p);
            if (v21 >= 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = __p[0];
            }

            *buf = 136446466;
            v26 = v16;
            v27 = 2082;
            v28 = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
            if (v21 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = 136446466;
            v26 = v16;
            v27 = 2082;
            v28 = "NULL";
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
          }

          if (v24 < 0)
          {
            operator delete(v23[0]);
          }
        }

        v14 = sub_10020FF34(a2, *a1);
      }

      v18 = &v19;
    }

    else
    {
      if (a1[2] != 1)
      {
        return;
      }

      v11 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *a1;
        v12 = v23;
        sub_1000DAB24(&v22, v23);
        if (v24 < 0)
        {
          v12 = v23[0];
        }

        if (v7)
        {
          sub_1000E5A58(v7, __p);
          if (v21 >= 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          *buf = 136446466;
          v26 = v12;
          v27 = 2082;
          v28 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446466;
          v26 = v12;
          v27 = 2082;
          v28 = "NULL";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }
      }

      LOBYTE(v23[0]) = 0;
      sub_1000216B4(v23);
      v14 = sub_10020FF34(a2, *a1);
      v18 = v23;
    }

    sub_10002249C(v18);
    if (v14)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084E6FC();
      }
    }
  }
}

void sub_1005EAA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a12);
  _Unwind_Resume(a1);
}

void sub_1005EAA6C(unsigned __int8 *a1, unsigned __int16 a2, uint64_t a3)
{
  v6 = sub_100320E24(a3 + 400);
  if (sub_100320E64(a3 + 400))
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v7 = sub_1005D492C(off_100B50AC8, a2);
    if (v6)
    {
      v8 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *a1;
        v9 = v23;
        sub_1000DAB24(&v22, v23);
        if (v24 < 0)
        {
          v9 = v23[0];
        }

        if (v7)
        {
          sub_1000E5A58(v7, __p);
          if (v21 >= 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = __p[0];
          }

          *buf = 136446466;
          v26 = v9;
          v27 = 2082;
          v28 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446466;
          v26 = v9;
          v27 = 2082;
          v28 = "NULL";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }
      }

      if (a1[2] == 1 && a1[1] != 1)
      {
        LOBYTE(v23[0]) = 0;
        sub_1000216B4(v23);
        if (sub_10020FF34(a2, 1u) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_10084E6FC();
        }

        sub_10002249C(v23);
      }

      v19 = 0;
      sub_1000216B4(&v19);
      v14 = sub_10020FF34(a2, *a1);
      if (!v14)
      {
        v15 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          v22 = a1[1];
          v16 = v23;
          sub_1000DAB54(&v22, v23);
          if (v24 < 0)
          {
            v16 = v23[0];
          }

          if (v7)
          {
            sub_1000E5A58(v7, __p);
            if (v21 >= 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = __p[0];
            }

            *buf = 136446466;
            v26 = v16;
            v27 = 2082;
            v28 = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending call held status %{public}s to device %{public}s", buf, 0x16u);
            if (v21 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = 136446466;
            v26 = v16;
            v27 = 2082;
            v28 = "NULL";
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending call held status %{public}s to device %{public}s", buf, 0x16u);
          }

          if (v24 < 0)
          {
            operator delete(v23[0]);
          }
        }

        v14 = sub_1002100B0(a2, a1[1]);
      }

      v18 = &v19;
    }

    else
    {
      if (a1[3] != 1)
      {
        return;
      }

      v11 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *a1;
        v12 = v23;
        sub_1000DAB24(&v22, v23);
        if (v24 < 0)
        {
          v12 = v23[0];
        }

        if (v7)
        {
          sub_1000E5A58(v7, __p);
          if (v21 >= 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          *buf = 136446466;
          v26 = v12;
          v27 = 2082;
          v28 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446466;
          v26 = v12;
          v27 = 2082;
          v28 = "NULL";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }
      }

      LOBYTE(v23[0]) = 0;
      sub_1000216B4(v23);
      v14 = sub_10020FF34(a2, *a1);
      v18 = v23;
    }

    sub_10002249C(v18);
    if (v14)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084E6FC();
      }
    }
  }
}

void sub_1005EAF50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a12);
  _Unwind_Resume(a1);
}

_BYTE *sub_1005EAFB4(unsigned __int8 *a1, unsigned __int16 a2, uint64_t a3)
{
  result = sub_100320E64(a3 + 400);
  if (result)
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v6 = sub_1005D492C(off_100B50AC8, a2);
    v7 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *a1;
      v8 = v14;
      sub_1000DAB24(&v13, v14);
      if (v15 < 0)
      {
        v8 = v14[0];
      }

      if (v6)
      {
        sub_1000E5A58(v6, __p);
        if (v12 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        *buf = 136446466;
        v17 = v8;
        v18 = 2082;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446466;
        v17 = v8;
        v18 = 2082;
        v19 = "NULL";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }
    }

    LOBYTE(v14[0]) = 0;
    sub_1000216B4(v14);
    v10 = sub_10020FF34(a2, *a1);
    sub_100022214(v14);
    if (v10)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084F200();
      }
    }

    return sub_10002249C(v14);
  }

  return result;
}

void sub_1005EB1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1005EB1F4(void *a1, unsigned int *a2)
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
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
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

uint64_t sub_1005EB2A8(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      sub_1005EB320(a1, a2++);
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

uint64_t *sub_1005EB320(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1005EB554(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 4) = a3;
  *(a2 + 8) = 2080;
  *(a2 + 10) = v3;
}

void sub_1005EB578(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 4) = a3;
  *(a2 + 8) = 2082;
  *(a2 + 10) = v3;
}

uint64_t sub_1005EB58C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(result + 4) = a3;
  *(result + 12) = 1024;
  *(result + 14) = a2;
  return result;
}

void *sub_1005EB5A0(void *a1)
{
  *a1 = &off_100B010E8;
  v2 = +[CloudPairing sharedInstance];
  return a1;
}

void sub_1005EB5F4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CloudPairing start", buf, 2u);
  }

  if (NSClassFromString(@"UMUserManager"))
  {
    v4 = +[UMUserManager sharedManager];
    if ([v4 isMultiUser])
    {
      v5 = qword_100BCE8E8;
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Disabling cloud pairing for multi-user mode", buf, 2u);
      }

      goto LABEL_19;
    }
  }

  else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_10084F270();
  }

  v6 = objc_autoreleasePoolPush();
  v7 = +[NSMutableArray array];
  v8 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v2;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 UUIDString];
        [v7 addObject:v14];

        v15 = [v9 objectForKeyedSubscript:v13];
        [v8 addObject:v15];
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = +[CloudPairing sharedInstance];
  [v16 registerWithCloudPairedDevices:v7 identifiers:v8];

  objc_autoreleasePoolPop(v6);
LABEL_19:
}

void sub_1005EB8EC()
{
  v0 = +[CloudPairing sharedInstance];
  [v0 printDebug];
}

void sub_1005EB950()
{
  v0 = +[CloudPairing sharedInstance];
  [v0 sendCloudKitPush];
}

void sub_1005EB9B4()
{
  v0 = +[CloudPairing sharedInstance];
  [v0 fetchManateeStatus];
}

id sub_1005EBA18()
{
  v0 = +[CloudPairing sharedInstance];
  v1 = [v0 getAccountStatus];

  return v1;
}

void sub_1005EBA68(uint64_t a1, uint64_t *a2)
{
  v5 = +[CloudPairing sharedInstance];
  v3 = [v5 cloudClient];
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v4 = [NSString stringWithUTF8String:a2];
  [v3 deviceRecord:v4 completion:&stru_100B01160];
}

void sub_1005EBB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1005EBB34(id a1, BTCloudDevice *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  v7 = qword_100BCE8E8;
  if (!v4 || v5)
  {
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_10084F2AC();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Inquiry] fetched cloud device: %@", buf, 0xCu);
    }

    v8 = sub_100432918();
    v9 = [(BTCloudDevice *)v4 bluetoothAddress];
    v10 = v9;
    sub_100007E30(v15, [v9 UTF8String]);
    v11 = [(BTCloudDevice *)v4 nickname];
    v12 = v11;
    sub_100007E30(__p, [v11 UTF8String]);
    (*(*v8 + 176))(v8, v15, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }
  }
}

void sub_1005EBCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1005EBD3C(uint64_t a1, uint64_t a2)
{
  v3 = +[CloudPairing sharedInstance];
  [v3 multipleAdvInstancesInitialized:a2];
}

void sub_1005EBDA8(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (!a2[1])
    {
      return;
    }
  }

  else if (!*(a2 + 23))
  {
    return;
  }

  v3 = +[CloudPairing sharedInstance];
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  v4 = [NSString stringWithUTF8String:v2];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 sendCloudpairingRetry:v5];
}

void sub_1005EBE8C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1005EBEC0(id a1)
{
  v1 = objc_alloc_init(CloudPairing);
  v2 = qword_100B6F660;
  qword_100B6F660 = v1;
}

void sub_1005EBF40(id a1)
{
  v1 = objc_alloc_init(BTCloudServicesClient);
  v2 = qword_100B6F670;
  qword_100B6F670 = v1;

  [qword_100B6F670 setInterruptionHandler:&stru_100B011C0];
  v3 = qword_100B6F670;

  [v3 setInvalidationHandler:&stru_100B011E0];
}

void sub_1005EBFA4(id a1)
{
  v1 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Cloud InterruptionHandler", v2, 2u);
  }
}

void sub_1005EC00C(id a1)
{
  v1 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Cloud InvalidationHandler", v2, 2u);
  }
}

uint64_t sub_1005EC650(uint64_t a1, int a2)
{
  v4 = qword_100BCE8E8;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = MKBDeviceUnlockedSinceBoot();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received first unlock notification. returns : %d", v7, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startUpServices];

  return notify_cancel(a2);
}

id sub_1005EC928(uint64_t a1)
{
  v2 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BTAudioCloudSyncMonitor: BTCloudSoundProfileChangedNotification Received", v4, 2u);
  }

  return [*(a1 + 32) soundProfileChanged];
}

void sub_1005ECC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1005ECC20(uint64_t a1)
{
  result = [*(a1 + 32) _generateKeys];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1005ED274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  v19 = v16;

  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1005ED2D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMsg:v3];
}

void sub_1005F2FFC(_Unwind_Exception *a1)
{
  if (*(v1 + 1655) < 0)
  {
    operator delete(*(v1 + 1632));
  }

  if (*(v1 + 2055) < 0)
  {
    operator delete(*(v1 + 2032));
  }

  _Unwind_Resume(a1);
}

id sub_1005F3F5C(uint64_t a1)
{
  result = [*(a1 + 32) handleXPCUnpairCommand:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_1005F3F94(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_10084F448();
  }

  v2 = off_100B508B8;
  sub_100007E30(__p, [*(a1 + 32) UTF8String]);
  sub_1007C2828(v2, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1005F4010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F402C(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_10084F448();
  }

  v2 = off_100B508B8;
  v3 = *(a1 + 32);

  sub_1007C2AA4(v2, v3);
}

void sub_1005F4080(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v8 = sub_1000DFC04(*(a1 + 40), &v36);
    memset(&__dst, 0, sizeof(__dst));
    v9 = [v5 modelNumber];
    if ([v9 length] < 2)
    {
      if (v8)
      {
        if (SHIBYTE(v36[1].__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100008904(&__dst, v36[1].__r_.__value_.__l.__data_, v36[1].__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = v36[1];
        }
      }

      else
      {
        sub_100007E30(&__dst, "");
      }
    }

    else
    {
      v10 = [v5 modelNumber];
      sub_100007E30(&__dst, [v10 UTF8String]);
    }

    memset(&v34, 0, sizeof(v34));
    v11 = [v5 manufacturer];
    if ([v11 length] < 2)
    {
      if (v8)
      {
        if (SHIBYTE(v36[2].__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100008904(&v34, v36[2].__r_.__value_.__l.__data_, v36[2].__r_.__value_.__l.__size_);
        }

        else
        {
          v34 = v36[2];
        }
      }

      else
      {
        sub_100007E30(&v34, "");
      }
    }

    else
    {
      v12 = [v5 manufacturer];
      sub_100007E30(&v34, [v12 UTF8String]);
    }

    memset(&v33, 0, sizeof(v33));
    v13 = [*(a1 + 32) caseSerialNumber];
    if ([v13 length] < 2)
    {
      if (v8)
      {
        if (SHIBYTE(v36[3].__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100008904(&v33, v36[3].__r_.__value_.__l.__data_, v36[3].__r_.__value_.__l.__size_);
        }

        else
        {
          v33 = v36[3];
        }
      }

      else
      {
        sub_100007E30(&v33, "");
      }
    }

    else
    {
      v14 = [*(a1 + 32) caseSerialNumber];
      sub_100007E30(&v33, [v14 UTF8String]);
    }

    memset(&v32, 0, sizeof(v32));
    v15 = [*(a1 + 32) hardwareVersion];
    if ([v15 length] < 2)
    {
      if (v8)
      {
        if (SHIBYTE(v36[6].__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100008904(&v32, v36[6].__r_.__value_.__l.__data_, v36[6].__r_.__value_.__l.__size_);
        }

        else
        {
          v32 = v36[6];
        }
      }

      else
      {
        sub_100007E30(&v32, "");
      }
    }

    else
    {
      v16 = [*(a1 + 32) hardwareVersion];
      sub_100007E30(&v32, [v16 UTF8String]);
    }

    memset(&v31, 0, sizeof(v31));
    v17 = [*(a1 + 32) leftBudSerialNumber];
    if ([v17 length] < 2)
    {
      if (v8)
      {
        if (SHIBYTE(v36[8].__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100008904(&v31, v36[8].__r_.__value_.__l.__data_, v36[8].__r_.__value_.__l.__size_);
        }

        else
        {
          v31 = v36[8];
        }
      }

      else
      {
        sub_100007E30(&v31, "");
      }
    }

    else
    {
      v18 = [*(a1 + 32) leftBudSerialNumber];
      sub_100007E30(&v31, [v18 UTF8String]);
    }

    memset(&v30, 0, sizeof(v30));
    v19 = [*(a1 + 32) rightBudSerialNumber];
    if ([v19 length] < 2)
    {
      if (v8)
      {
        if (SHIBYTE(v36[9].__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100008904(&v30, v36[9].__r_.__value_.__l.__data_, v36[9].__r_.__value_.__l.__size_);
        }

        else
        {
          v30 = v36[9];
        }
      }

      else
      {
        sub_100007E30(&v30, "");
      }
    }

    else
    {
      v20 = [*(a1 + 32) rightBudSerialNumber];
      sub_100007E30(&v30, [v20 UTF8String]);
    }

    memset(&v29, 0, sizeof(v29));
    v21 = [*(a1 + 32) budsFirmwareVersion];
    if ([v21 length] < 2)
    {
      if (v8)
      {
        if (SHIBYTE(v36[10].__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100008904(&v29, v36[10].__r_.__value_.__l.__data_, v36[10].__r_.__value_.__l.__size_);
        }

        else
        {
          v29 = v36[10];
        }
      }

      else
      {
        sub_100007E30(&v29, "");
      }
    }

    else
    {
      v22 = [*(a1 + 32) budsFirmwareVersion];
      sub_100007E30(&v29, [v22 UTF8String]);
    }

    v26 = 0;
    v27 = 0;
    v28 = 0;
    sub_100007E30(&__p, "");
    sub_10034A52C(&v26, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_100338878(&v26, &__dst);
    sub_100338878(&v26, &v34);
    sub_100338878(&v26, &v33);
    if (v8)
    {
      if (SHIBYTE(v36[4].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100008904(&__p, v36[4].__r_.__value_.__l.__data_, v36[4].__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v36[4];
      }
    }

    else
    {
      sub_100007E30(&__p, "");
    }

    sub_10034A52C(&v26, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v8)
      {
LABEL_63:
        if (SHIBYTE(v36[5].__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100008904(&__p, v36[5].__r_.__value_.__l.__data_, v36[5].__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v36[5];
        }

        goto LABEL_68;
      }
    }

    else if (v8)
    {
      goto LABEL_63;
    }

    sub_100007E30(&__p, "");
LABEL_68:
    sub_10034A52C(&v26, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_100338878(&v26, &v32);
    if (v8)
    {
      if (SHIBYTE(v36[7].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100008904(&__p, v36[7].__r_.__value_.__l.__data_, v36[7].__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v36[7];
      }
    }

    else
    {
      sub_100007E30(&__p, "");
    }

    sub_10034A52C(&v26, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_100338878(&v26, &v31);
    sub_100338878(&v26, &v30);
    sub_100338878(&v26, &v29);
    if (v8 && 0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 3) >= 0xF)
    {
      sub_100338878(&v26, &v36[11]);
      sub_100338878(&v26, &v36[12]);
      sub_100338878(&v26, &v36[13]);
      sub_100338878(&v26, &v36[14]);
    }

    v23 = *(a1 + 40);
    memset(v24, 0, sizeof(v24));
    sub_10003E428(v24, v26, v27, 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3));
    sub_100541A24(v23, v24);
    __p.__r_.__value_.__r.__words[0] = v24;
    sub_1000161FC(&__p);
    __p.__r_.__value_.__r.__words[0] = &v26;
    sub_1000161FC(&__p);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    __dst.__r_.__value_.__r.__words[0] = &v36;
    sub_1000161FC(&__dst);
    goto LABEL_95;
  }

  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_10084F990();
  }

LABEL_95:
}

void sub_1005F483C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (*(v50 - 153) < 0)
  {
    operator delete(*(v50 - 176));
  }

  if (*(v50 - 121) < 0)
  {
    operator delete(*(v50 - 144));
  }

  if (*(v50 - 89) < 0)
  {
    operator delete(*(v50 - 112));
  }

  *(v50 - 112) = v50 - 88;
  sub_1000161FC((v50 - 112));

  _Unwind_Resume(a1);
}

void sub_1005F4A24(id a1, BTCloudDevice *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    v6 = [(BTCloudDevice *)v4 nickname];
    v7 = [v6 length];

    if (v7)
    {
      v8 = qword_100BCE960;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(BTCloudDevice *)v4 bluetoothAddress];
        v10 = [(BTCloudDevice *)v4 nickname];
        *buf = 138412546;
        v21 = v9;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud: Magic Settings Update Fetch Name for device: %@ - %@", buf, 0x16u);
      }

      v11 = sub_100432918();
      v12 = [(BTCloudDevice *)v4 bluetoothAddress];
      v13 = v12;
      sub_100007E30(v18, [v12 UTF8String]);
      v14 = [(BTCloudDevice *)v4 nickname];
      v15 = v14;
      sub_100007E30(__p, [v14 UTF8String]);
      (*(*v11 + 176))(v11, v18, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      if (v19 < 0)
      {
        operator delete(v18[0]);
      }
    }
  }
}

void sub_1005F4D64(id a1, BTCloudSoundProfileRecord *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = qword_100BCE8E8;
  v7 = os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT);
  if (!v4 || v5)
  {
    if (v7)
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BTAudioCloudSyncMonitor: Unable to fetch Spatial Profile:Error: %@", &v12, 0xCu);
    }

    if (qword_100B50940 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v7)
  {
    v12 = 138412546;
    v13 = 0;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BTAudioCloudSyncMonitor: fetched Spatial Profile:Error: %@ Profile %@", &v12, 0x16u);
  }

  v8 = [(BTCloudSoundProfileRecord *)v4 soundProfileData];
  v9 = v8 == 0;

  if (v9)
  {
    if (qword_100B50940 == -1)
    {
LABEL_15:
      sub_100639BFC(off_100B50938, 0);
      goto LABEL_16;
    }

LABEL_14:
    sub_10084FA10();
    goto LABEL_15;
  }

  if (qword_100B50940 != -1)
  {
    sub_10084FA10();
  }

  v10 = off_100B50938;
  v11 = [(BTCloudSoundProfileRecord *)v4 soundProfileData];
  sub_100639BFC(v10, v11);

LABEL_16:
}

void sub_1005F4F0C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1005F5224(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1005F5750(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[30];
    v6 = qword_100BCE8E8;
    v7 = os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Already Registered cloudkit.xpc service", buf, 2u);
      }
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Register cloudkit.xpc service", buf, 2u);
      }

      mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.cloudkit.xpc", *(v4 + 43), 1uLL);
      v9 = *(v4 + 30);
      *(v4 + 30) = mach_service;

      v10 = *(v4 + 30);
      if (v10)
      {
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1005F5900;
        handler[3] = &unk_100AE0B10;
        v12 = v4;
        xpc_connection_set_event_handler(v10, handler);
        xpc_connection_resume(*(v4 + 30));
      }

      else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
      {
        sub_10084FB00();
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1005F5C08(id a1, NSString *a2, NSDictionary *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump:        Address: %@ - Dict: %@", &v8, 0x16u);
  }
}

void sub_1005F6BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1005F6C40(uint64_t a1)
{
  v2 = [*(a1 + 32) _generateCloudPairingIDWithResponse:*(a1 + 40) localKeys:*(a1 + 48) from:*(a1 + 56) forProtocolID:*(a1 + 64)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1005F8788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, atomic_uint *a52)
{
  if (a52)
  {
    sub_10000C808(a52);
  }

  _Unwind_Resume(a1);
}

void *sub_1005F8D00(void *a1)
{
  *a1 = &off_100B01470;
  v2 = a1[1];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return a1;
}

void sub_1005F942C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  _Block_object_dispose((v18 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_1005F94A4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v9 = [a3 objectForKeyedSubscript:@"IDSLocalID"];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v11 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MUC - RSA found: %@", &v13, 0xCu);
    }

    *a4 = 1;
  }
}

void sub_1005F97C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  sub_10002249C(&a13);

  _Block_object_dispose(&a20, 8);
  _Unwind_Resume(a1);
}

void sub_1005F980C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v9 = [a3 objectForKeyedSubscript:@"IDSLocalID"];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v11 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MUC - RSA found: %@", &v13, 0xCu);
    }

    *a4 = 1;
  }
}

void sub_1005F9A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1005F9AA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:*(a1 + 32)])
  {
    v7 = [v6 objectForKeyedSubscript:@"IRK"];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = qword_100BCE8E8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 objectForKeyedSubscript:@"IRK"];
      v12 = *(a1 + 32);
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MUC - IRK: %@ found for RSA: %@", &v13, 0x16u);
    }
  }
}

void sub_1005F9DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10002249C(&a13);

  _Unwind_Resume(a1);
}

void sub_1005FA0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002249C(va);

  _Unwind_Resume(a1);
}

void sub_1005FA28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1005FA2C8(uint64_t a1)
{
  v2 = [*(a1 + 32) _getPairedDeviceForIDSIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1005FA974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40)
{
  _Block_object_dispose((v43 - 160), 8);

  _Unwind_Resume(a1);
}

void sub_1005FAA84(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v9 = [a3 objectForKeyedSubscript:@"IDSLocalID"];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v11 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MUC - RSA found: %@", &v13, 0xCu);
    }

    *a4 = 1;
  }
}

void sub_1005FAD88(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_1005FBA94(uint64_t a1)
{
  *a1 = &off_100B01390;
  sub_100046348(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_1005FBAE0(uint64_t a1)
{
  *a1 = &off_100B01390;
  sub_100046348(a1 + 16, *(a1 + 24));

  operator delete();
}

void sub_1005FBDBC(void *a1)
{
  *a1 = &off_100B01470;
  v1 = a1[1];
  if (v1)
  {
    sub_10000C808(v1);
  }

  operator delete();
}

uint64_t sub_1005FC878()
{
  if (qword_100B6F680 != -1)
  {
    sub_100850268();
  }

  return byte_100B6F688;
}

uint64_t sub_1005FC8F4()
{
  if (qword_100B6F690 != -1)
  {
    sub_10085027C();
  }

  return byte_100B6F698;
}

uint64_t sub_1005FC95C()
{
  if (qword_100B6F6A0 != -1)
  {
    sub_100850290();
  }

  return byte_100B6F6A8;
}

uint64_t sub_1005FC9D8()
{
  if (qword_100B6F6B0 != -1)
  {
    sub_1008502A4();
  }

  return byte_100B6F6B8;
}

uint64_t sub_1005FCA90()
{
  if (qword_100B6F6C0 != -1)
  {
    sub_1008502B8();
  }

  return byte_100B6F6C8;
}

uint64_t sub_1005FCB28()
{
  if (qword_100B6F6E0 != -1)
  {
    sub_1008502E0();
  }

  return byte_100B6F6E8;
}

void sub_1005FCB60(id a1)
{
  v1 = NSClassFromString(@"BMDeviceBluetoothGATTSession");
  byte_100B6F6E8 = v1 != 0;
  if (!v1 && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_1008502F4();
  }
}

void sub_1005FCBC4(id a1)
{
  v1 = NSClassFromString(@"BMDeviceBluetooth");
  byte_100B6F6F8 = v1 != 0;
  if (!v1 && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_10085033C();
  }
}

uint64_t sub_1005FCC28()
{
  if (qword_100B6F700 != -1)
  {
    sub_100850370();
  }

  return byte_100B6F708;
}

void sub_1005FCC60(id a1)
{
  v1 = NSClassFromString(@"BMDeviceBluetoothPowerEnabled");
  byte_100B6F708 = v1 != 0;
  if (!v1 && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_100850384();
  }
}

uint64_t sub_1005FCCC4()
{
  if (qword_100B6F710 != -1)
  {
    sub_1008503B8();
  }

  return byte_100B6F718;
}

uint64_t sub_1005FCD2C()
{
  if (qword_100B6F720 != -1)
  {
    sub_1008503CC();
  }

  return byte_100B6F728;
}

uint64_t sub_1005FCD94()
{
  if (qword_100B6F730 != -1)
  {
    sub_1008503E0();
  }

  return byte_100B6F738;
}

void sub_1005FCDCC(id a1)
{
  v1 = NSClassFromString(@"RDEstimate");
  byte_100B6F738 = v1 != 0;
  if (!v1 && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_1008503F4();
  }
}

uint64_t sub_1005FCE30()
{
  if (qword_100B6F740 != -1)
  {
    sub_100850428();
  }

  return byte_100B6F748;
}

void sub_1005FCE68(id a1)
{
  v1 = NSClassFromString(@"APSubject");
  byte_100B6F748 = v1 != 0;
  if (!v1 && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_10085043C();
  }
}

uint64_t sub_1005FCECC()
{
  if (qword_100B6F750 != -1)
  {
    sub_100850470();
  }

  return byte_100B6F758;
}

void sub_1005FCF04(id a1)
{
  v1 = NSClassFromString(@"MOSystemEffectiveSettingsStore");
  byte_100B6F758 = v1 != 0;
  if (!v1 && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_100850484();
  }
}

uint64_t sub_1005FCF68()
{
  if (qword_100B6F760 != -1)
  {
    sub_1008504B8();
  }

  return byte_100B6F768;
}

uint64_t sub_1005FCFD0()
{
  if (qword_100B6F770 != -1)
  {
    sub_1008504CC();
  }

  return byte_100B6F778;
}

uint64_t sub_1005FD038()
{
  if (qword_100B6F780 != -1)
  {
    sub_1008504E0();
  }

  return byte_100B6F788;
}

void sub_1005FD070(id a1)
{
  v1 = NSClassFromString(@"AVSystemController");
  byte_100B6F788 = v1 != 0;
  if (!v1 && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_1008504F4();
  }
}

uint64_t sub_1005FD0D4(uint64_t a1, char a2, char a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  *(a1 + 56) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a2;
  *(a1 + 1) = a3;
  v16 = [[NSUUID alloc] initWithUUIDString:v15];
  v17 = *(a1 + 56);
  *(a1 + 56) = v16;

  *(a1 + 48) = a7;
  v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v19 = dispatch_queue_create(0, v18);
  *(a1 + 32) = 0;
  *(a1 + 8) = v19;
  *(a1 + 40) = 0;
  if (v13)
  {
    operator new();
  }

  if (v14)
  {
    operator new();
  }

  return a1;
}

void sub_1005FD64C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t sub_1005FD6F8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    operator delete();
  }

  if (*(a1 + 40))
  {
    operator delete();
  }

  return a1;
}

void sub_1005FD764(unsigned __int8 *a1)
{
  v2 = [gCBDaemonServer stackAdaptor];
  v3 = [v2 isoStreamClass];

  v11 = 0;
  sub_1000216B4(&v11);
  v4 = sub_10025581C(*a1, a1[1]);
  sub_100022214(&v11);
  if (v4)
  {
    if (*(a1 + 4))
    {
      v5 = [objc_msgSend(v3 "alloc")];
      v6 = *(a1 + 2);
      *(a1 + 2) = v5;
    }

    v7 = qword_100BCEA50;
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 7) UUIDString];
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Activating Input ISO Stream", buf, 0xCu);
    }

    v9 = *(a1 + 2);
    if (v9)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1005FD968;
      v10[3] = &unk_100AFC848;
      v10[4] = a1;
      [v9 activateWithCompletion:v10];
    }
  }

  else if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
  {
    sub_100850528();
  }

  sub_10002249C(&v11);
}

void sub_1005FD930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_10002249C(&a17);

  _Unwind_Resume(a1);
}

void sub_1005FD968(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCEA50;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
    {
      sub_100850568();
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successful activation of Input ISO Stream", v6, 2u);
    }

    *(v5 + 2) = 1;
  }
}

void sub_1005FDA18(unsigned __int8 *a1)
{
  v2 = [gCBDaemonServer stackAdaptor];
  v3 = [v2 isoStreamClass];

  v12 = 0;
  sub_1000216B4(&v12);
  v4 = sub_10025581C(*a1, a1[1]);
  sub_100022214(&v12);
  if (v4 && *(a1 + 5))
  {
    v5 = [objc_msgSend(v3 "alloc")];
    v6 = *(a1 + 3);
    *(a1 + 3) = v5;

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1005FDC50;
    v11[3] = &unk_100B016C0;
    v11[4] = a1;
    [*(a1 + 3) setReadHandler:v11];
  }

  v7 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 7) UUIDString];
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Activating Output ISO Stream", buf, 0xCu);
  }

  v9 = *(a1 + 3);
  if (v9)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005FDD5C;
    v10[3] = &unk_100AFC848;
    v10[4] = a1;
    [v9 activateWithCompletion:v10];
  }

  sub_10002249C(&v12);
}

void sub_1005FDC18(_Unwind_Exception *a1)
{
  sub_10002249C((v2 - 81));

  _Unwind_Resume(a1);
}

void sub_1005FDC50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    sub_1005FDCD8(*(a1 + 32), [v3 bytes], objc_msgSend(v3, "length"));
  }
}

unint64_t sub_1005FDCD8(unint64_t result, char *a2, size_t a3)
{
  if (*(result + 2) == 1)
  {
    v3 = result;
    result = *(*(result + 48) + 24);
    if (result)
    {
      result = sub_10077EA1C(result);
      if (result)
      {
        v6 = *(*(v3 + 48) + 24);

        return sub_1003A3150(v6, a2, a3, 0);
      }
    }
  }

  return result;
}

void sub_1005FDD5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCEA50;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
    {
      sub_1008505DC();
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successful activation of Output ISO Stream", v6, 2u);
    }

    *(v5 + 2) = 1;
  }
}

id sub_1005FDE0C(uint64_t a1)
{
  v2 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 56) UUIDString];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ Deactivating ISO Stream", &v6, 0xCu);
  }

  *(a1 + 2) = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    [v4 invalidate];
  }

  result = *(a1 + 16);
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

void sub_1005FDEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 2) == 1)
  {
    v6 = objc_alloc_init(CBISOWriteRequest);
    v7 = [NSData dataWithBytes:a2 length:a3];
    [v6 setData:v7];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1005FE014;
    v8[3] = &unk_100ADF8F8;
    v8[4] = a3;
    [v6 setCompletionHandler:v8];
    [*(a1 + 16) writeWithRequest:v6];
  }

  else if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
  {
    sub_100850650();
  }
}

void sub_1005FE014(uint64_t a1)
{
  v2 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEBUG))
  {
    sub_100850690(a1, v2);
  }
}

uint64_t sub_1005FE060(uint64_t a1, const unsigned __int8 *a2)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 72) = 0;
  uuid_copy((a1 + 80), a2);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_100044BBC(a1 + 224);
  return a1;
}

void sub_1005FE0D8(_Unwind_Exception *a1)
{
  v5 = v3;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 176) = v7;
    operator delete(v7);
  }

  sub_10000CEDC(v2, *(v1 + 64));
  if (*(v1 + 55) < 0)
  {
    operator delete(*v4);
  }

  sub_10000CEDC(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1005FE12C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = (a1 + 8);
    v3 = *a1;
    if (*a1 != a1 + 8)
    {
      do
      {
        v4 = v3[5];
        if (v4)
        {
          sub_1005FD6F8(v4);
          operator delete();
        }

        v5 = v3[1];
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = v3[2];
            v7 = *v6 == v3;
            v3 = v6;
          }

          while (!v7);
        }

        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  sub_10007A068(a1 + 224);
  v8 = *(a1 + 168);
  if (v8)
  {
    *(a1 + 176) = v8;
    operator delete(v8);
  }

  sub_10000CEDC(a1 + 56, *(a1 + 64));
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_10000CEDC(a1, *(a1 + 8));
  return a1;
}

void sub_1005FE210(uint64_t a1, void *a2)
{
  v15 = a2;
  v16 = [v15 objectForKeyedSubscript:@"kCodecIDArray"];
  v20 = [v15 objectForKeyedSubscript:@"kSinkCodecConfigArray"];
  v17 = [v15 objectForKeyedSubscript:@"kSourceCodecConfigArray"];
  v23 = [v15 objectForKeyedSubscript:@"kSinkAudioLocations"];
  v22 = [v15 objectForKeyedSubscript:@"kSourceAudioLocations"];
  v21 = [v15 objectForKeyedSubscript:@"kCoordinatedSetSize"];
  v19 = [v15 objectForKeyedSubscript:@"kDeviceIdentifier"];
  v18 = [v15 objectForKeyedSubscript:@"kDeviceName"];
  sub_100007E30(&v30, [v18 UTF8String]);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 32) = v30;
  *(a1 + 48) = v31;
  if (v20)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v3 = v20;
    v4 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v4)
    {
      v5 = *v27;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v27 != v5)
          {
            objc_enumerationMutation(v3);
          }

          switch([*(*(&v26 + 1) + 8 * i) unsignedIntValue])
          {
            case 0u:
              LODWORD(v30) = 513;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 1u:
              LODWORD(v30) = 514;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 2u:
              LODWORD(v30) = 515;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 3u:
              LODWORD(v30) = 516;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 4u:
              LODWORD(v30) = 517;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 5u:
              LODWORD(v30) = 518;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 6u:
              LODWORD(v30) = 519;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 7u:
              LODWORD(v30) = 520;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 8u:
              LODWORD(v30) = 521;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 9u:
              LODWORD(v30) = 522;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 0xAu:
              LODWORD(v30) = 523;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 0xBu:
              LODWORD(v30) = 524;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 0xCu:
              LODWORD(v30) = 525;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 0xDu:
              LODWORD(v30) = 526;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 0xEu:
              LODWORD(v30) = 527;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 0xFu:
              LODWORD(v30) = 528;
              sub_10036F480((a1 + 168), &v30);
              break;
            default:
              v7 = qword_100BCEA50;
              if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
              {
                sub_10085070C(&buf, v25, v7);
              }

              break;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v4);
    }
  }

  if ([v23 unsignedIntValue])
  {
    if (!v23 || [v23 unsignedIntValue] == -1)
    {
      v10 = 0;
    }

    else
    {
      v8.i32[0] = [v23 unsignedIntValue];
      v9 = vcnt_s8(v8);
      v9.i16[0] = vaddlv_u8(v9);
      v10 = v9.i32[0];
    }
  }

  else
  {
    v10 = 1;
  }

  if ([v22 unsignedIntValue])
  {
    if (!v22 || [v22 unsignedIntValue] == -1)
    {
      v13 = 0;
    }

    else
    {
      v11.i32[0] = [v22 unsignedIntValue];
      v12 = vcnt_s8(v11);
      v12.i16[0] = vaddlv_u8(v12);
      v13 = v12.i32[0];
    }
  }

  else
  {
    v13 = 1;
  }

  if (v21 && v23 && v10 < [v21 unsignedIntValue])
  {
    v10 *= [v21 unsignedIntValue];
  }

  *(a1 + 152) = v10;
  *(a1 + 156) = v13;
  v14 = [[NSUUID alloc] initWithUUIDString:v19];
  sub_1005FE828(a1, v14);
}

void sub_1005FE828(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 224);
  v4 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper((a1 + 80), out);
    sub_100007E30(__p, out);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 138412546;
    v10 = v3;
    v11 = 2080;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding LECA Device %@ to Session %s", buf, 0x16u);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10004DFB4(out, v3);
  sub_100506A24(a1 + 56, out);
  sub_1000088CC(v8);
}

void sub_1005FE968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1005FE994(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_1005FECF8(a1);
  [v3 valueForKey:@"kLEAudioXPCMsgArgCISProperties"];
  obj = memset(v5, 0, sizeof(v5));
  if ([obj countByEnumeratingWithState:v5 objects:v6 count:16])
  {
    operator new();
  }
}

void sub_1005FECF8(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      v4 = v3[5];
      if (v4)
      {
        sub_1005FD6F8(v4);
        operator delete();
      }

      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  sub_10000CEDC(a1, *(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v2;
}

void sub_1005FEDA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 224);
  v5 = *(a1 + 56);
  v4 = (a1 + 56);
  if (v5 == v4 + 1)
  {
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
    {
      sub_10085078C();
    }
  }

  else
  {
    sub_10004DFB4(v7, v3);
    sub_1005FF2F0(v4, v7);
  }

  sub_1000088CC(v6);
}

void sub_1005FEEA8(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a1[2];
  if (v3)
  {
    v4 = a1 + 1;
    v5 = *a1;
    if (*a1 != a1 + 1)
    {
      v7 = 0;
      v8 = a3 / v3;
      do
      {
        v9 = v5[5];
        if (v9)
        {
          sub_1005FDEE8(v9, a2 + v7 * v8, v8);
        }

        v10 = v5[1];
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
            v11 = v5[2];
            v12 = *v11 == v5;
            v5 = v11;
          }

          while (!v12);
        }

        ++v7;
        v5 = v11;
      }

      while (v11 != v4);
    }
  }
}

void sub_1005FEF4C(void *a1)
{
  v2 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "void BT::LEConnectedAudioSession::removeISODataPaths()";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v5 = *a1;
  v3 = a1 + 1;
  v4 = v5;
  if (v5 != v3)
  {
    do
    {
      sub_1005FDE0C(v4[5]);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v3);
  }
}

void sub_1005FF044(void *a1, int a2, int a3, int a4)
{
  v8 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "void BT::LEConnectedAudioSession::createISODataPaths(BOOL, uint8_t, uint8_t)";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s", &v16, 0xCu);
  }

  v11 = *a1;
  v10 = a1 + 1;
  v9 = v11;
  if (v11 != v10)
  {
    while (1)
    {
      v12 = v9[5];
      if (*v12 == a3 && v12[1] == a4)
      {
        break;
      }

      v13 = v9[1];
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
          v14 = v9[2];
          v15 = *v14 == v9;
          v9 = v14;
        }

        while (!v15);
      }

      v9 = v14;
      if (v14 == v10)
      {
        return;
      }
    }

    if (a2)
    {
      sub_1005FD764(v12);
    }

    else
    {
      sub_1005FDA18(v12);
    }
  }
}

uint64_t *sub_1005FF21C(uint64_t a1, unsigned int *a2)
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

uint64_t sub_1005FF2F0(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_1005FF344(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10002717C(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t sub_1005FF344(uint64_t a1, unsigned __int8 *uu2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = uuid_compare((v3 + 25), uu2);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || uuid_compare(uu2, (v5 + 25)) < 0)
  {
    return v2;
  }

  return v5;
}

void *sub_1005FF3C0(void *a1)
{
  v2 = sub_100589578(a1, "HandsfreeService", 1);
  *v2 = off_100B016F0;
  sub_100044BBC(v2 + 41);
  a1[49] = 0;
  sub_100044BBC(a1 + 50);
  a1[58] = 0;
  a1[59] = 0;
  a1[62] = 0;
  a1[63] = 0;
  a1[60] = 0;
  a1[61] = a1 + 62;
  sub_100044BBC(a1 + 64);
  if (qword_100B50AD0 != -1)
  {
    sub_1008507CC();
  }

  v3 = off_100B50AC8;
  a1[49] = off_100B50AC8;
  sub_100589880(a1, v3);
  return a1;
}

void sub_1005FF470(_Unwind_Exception *a1)
{
  sub_10007A068(v1 + 512);
  sub_10000CEDC(v1 + 488, *v2);
  v4 = *(v1 + 464);
  if (v4)
  {
    *(v1 + 472) = v4;
    operator delete(v4);
  }

  sub_10007A068(v1 + 400);
  sub_10007A068(v1 + 328);
  sub_100589670(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005FF4D4(uint64_t a1, uint64_t a2)
{
  v15 = xmmword_1008AA7C0;
  memset(v17, 0, sizeof(v17));
  v14 = 0;
  v13 = 0;
  if (sub_10053C3E8(a2))
  {
    if (sub_10053A020(a2, &v15, 4u))
    {
      v4 = 4;
    }

    else
    {
      v4 = 1;
    }

    goto LABEL_24;
  }

  v5 = sub_10054BE34(a2, v17, &v14);
  if (v14)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = sub_10024A9C0(v17, 4382, &v13) == 0;
LABEL_20:
    v9 = v7;
    v4 = 4 * v9;
    goto LABEL_24;
  }

  if (qword_100B508E0 != -1)
  {
    sub_1008507E0();
  }

  if (!sub_100518294(off_100B508D8, a2))
  {
    v7 = sub_1000DFB74(a2, 1u) == 4;
    goto LABEL_20;
  }

  LODWORD(v12) = 0;
  sub_1005379CC(a2, &v12);
  if ((v12 & 0x1F00) == 0x400)
  {
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  if (v12)
  {
    v4 = v8;
  }

  else
  {
    v4 = 0;
  }

LABEL_24:
  v10 = *(a1 + 32);
  v16 = 0;
  sub_100016250(&v16);
  *&v12 = v16;
  *(&v12 + 1) = SWORD2(v16);
  return sub_100539554(a2, v10, v4, &v12, 0);
}

uint64_t sub_1005FF688(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v10 = 0;
  v11 = xmmword_1008AA7C0;
  memset(v12, 0, sizeof(v12));
  v9 = 0;
  v8 = 0;
  *a3 = 0;
  if (sub_10053C3E8(a2))
  {
    result = sub_10053A020(a2, &v11, 4u);
    if ((result & 1) == 0)
    {
      return result;
    }

LABEL_17:
    *a3 = 1;
    return result;
  }

  if (sub_10054BE34(a2, v12, &v9))
  {
    if (v9)
    {
      result = sub_10024A9C0(v12, 4382, &v8);
      if (!result)
      {
        goto LABEL_17;
      }
    }
  }

  result = sub_1005379CC(a2, &v10);
  if (result && (v10 & 0x200000) != 0)
  {
    v6 = v10 & 0x1F00;
    v7 = (v10 & 0xFC) != 0x1C && v6 == 1024;
    if (v7 || (v10 & 0x1FFC) == 0x118 || v6 == 1792 && ((v10 & 0xF4) == 4 || (v10 & 0xF8) == 0x10))
    {
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t sub_1005FF7E8(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  result = sub_10058BB40(a1, a2, a3, a4, a5);
  if (!a4)
  {
    if (sub_10053F310(a2))
    {
      sub_10053F420(a2);
    }

    if (*(a2 + 580) == 1)
    {
      *(a2 + 580) = 0;
    }

    if (qword_100B508E0 != -1)
    {
      sub_100850808();
    }

    result = sub_100518294(off_100B508D8, a2);
    if (result)
    {
      if (qword_100B508E0 != -1)
      {
        sub_100850808();
      }

      v8 = off_100B508D8;

      return sub_100518C44(v8, a2);
    }
  }

  return result;
}

uint64_t sub_1005FF8A8(uint64_t a1, uint64_t a2, char *__s1, _BYTE *a4)
{
  if (__s1 && a4)
  {
    if (!strncmp(__s1, "com.apple.BT.VoiceCommand.State", 0x1FuLL))
    {
      result = *(a1 + 392);
      if (!result)
      {
        return result;
      }

      sub_1005D7B4C(result, a2, a4);
    }

    else if (!strncmp(__s1, "BT_KEY_ALLOW_SCO_FOR_TBT", 0x18uLL))
    {
      sub_10054288C(a2, *a4 != 0);
    }

    return 0;
  }

  else
  {
    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10083C3D4(v8);
    }

    return 1;
  }
}

uint64_t sub_1005FF974(uint64_t a1, unint64_t a2, char *__s1, __int16 *a4)
{
  if (!__s1 || !a4)
  {
    v9 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10083C3D4(v9);
    }

    return 1;
  }

  if (!strncmp(__s1, "BT_KEY_HFP_AG_ECNR_STATE", 0x18uLL))
  {
    v11 = sub_1005D09A8(*(a1 + 392), a2);
    if (v11)
    {
      v8 = sub_100320DF4(v11 + 400);
      goto LABEL_19;
    }

    return 1;
  }

  if (!strncmp(__s1, "BT_KEY_SIRI_EYESFREE_MODE", 0x19uLL))
  {
    if (qword_100B54090 != -1)
    {
      sub_10085081C();
    }

    v8 = sub_100389FF8(qword_100B54088, a2);
    goto LABEL_19;
  }

  if (!strncmp(__s1, "BT_KEY_SIRI_AUDIO_STATE", 0x17uLL))
  {
    if (qword_100B54090 != -1)
    {
      sub_10085081C();
    }

    v8 = sub_10038A088(qword_100B54088, a2);
    goto LABEL_19;
  }

  if (strncmp(__s1, "BT_KEY_ALLOW_SCO_FOR_TBT", 0x18uLL))
  {
    return 1;
  }

  v8 = sub_100542884(a2);
LABEL_19:
  v12 = v8;
  result = 0;
  if (v12)
  {
    v13 = 49;
  }

  else
  {
    v13 = 48;
  }

  *a4 = v13;
  return result;
}

void sub_1005FFAD8(uint64_t a1)
{
  sub_1005FFB10(a1);

  operator delete();
}

uint64_t sub_1005FFB10(uint64_t a1)
{
  *a1 = off_100B016F0;
  sub_10007A068(a1 + 512);
  sub_10000CEDC(a1 + 488, *(a1 + 496));
  v2 = *(a1 + 464);
  if (v2)
  {
    *(a1 + 472) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 400);
  sub_10007A068(a1 + 328);

  return sub_100589670(a1);
}

void sub_1005FFD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = BTVCLinkScanner;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1005FFFBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_10060018C(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 184), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 192);

  objc_storeStrong(v3, v2);
}

double sub_100600248(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;
  }

  result = *(a1 + 40);
  *(*(a1 + 32) + 224) = result;
  return result;
}

void sub_10060088C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006008B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[BTVCLinkScanner _scanEnable:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s startRetrier\n", &v3, 0xCu);
  }

  [WeakRetained _restartIfNeeded:1];
}

_BYTE *sub_100600D28(uint64_t a1)
{
  *(*(a1 + 32) + 72) = 0;
  result = *(a1 + 32);
  if (result[9] == 1 && (result[11] & 1) == 0)
  {
    return [result _restartIfNeeded];
  }

  return result;
}

void sub_100600E28(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

_BYTE *sub_100600E44(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  result = *(a1 + 32);
  if ((result[72] & 1) == 0)
  {

    return [result _restartIfNeeded];
  }

  return result;
}

const char *sub_100600EAC(unint64_t a1)
{
  if (a1 > 5)
  {
    return "?";
  }

  else
  {
    return off_100B01858[a1];
  }
}

void sub_1006017D4(uint64_t *a1)
{
  v5 = 0;
  sub_1003A5864(*a1, &v5);
  if (!v5 || ((v2 = *(a1[1] + 8)) != 0 ? (v3 = v2 == 2) : (v3 = 1), v3))
  {
    operator new();
  }

  if (v2 == 1)
  {
    operator new();
  }

  v4 = a1[3];
  if (v4)
  {
    sub_10036470C(v4);
  }
}

const char *sub_1006018C8(unsigned int a1)
{
  if (a1 > 5)
  {
    return "??";
  }

  else
  {
    return off_100B01E98[a1];
  }
}

uint64_t sub_1006018EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != 2)
  {
    if (v2 != 3 || *v1 != 83)
    {
      return 0;
    }

    v3 = v1[1];
    if (v3 != 214)
    {
      if (v3 == 213)
      {
        v4 = v1[2];
        goto LABEL_11;
      }

      return 0;
    }

    v8 = v1[2];
LABEL_22:
    result = 1;
    if (v8 > 44)
    {
      if (v8 != 45 && v8 != 48)
      {
        return 0;
      }

      return result;
    }

    if (v8)
    {
      if (v8 != 10)
      {
        return 0;
      }

      return result;
    }

    return 2;
  }

  if (*a1 != 5)
  {
    return 0;
  }

  v5 = *v1;
  if (v5 == 214)
  {
    v8 = v1[1];
    goto LABEL_22;
  }

  if (v5 != 213)
  {
    return 0;
  }

  v4 = v1[1];
LABEL_11:
  result = 1;
  if (v4 > 11)
  {
    if (v4 != 12 && v4 != 15)
    {
      return 0;
    }

    return result;
  }

  if (!v4)
  {
    return 2;
  }

  if (v4 != 7)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1006019C4(uint64_t a1)
{
  sub_10032F49C(a1, 10);
  *a1 = off_100B01898;
  *(a1 + 256) = off_100B019B8;
  *(a1 + 264) = off_100B019F0;
  *(a1 + 272) = off_100B01A18;
  *(a1 + 280) = &off_100B01A58;
  *(a1 + 288) = off_100B01A70;
  *(a1 + 296) = off_100B01AA0;
  *(a1 + 304) = &off_100B01B60;
  *(a1 + 312) = off_100B01B78;
  *(a1 + 320) = &off_100B01BB8;
  *(a1 + 328) = &off_100B01BD0;
  *(a1 + 336) = off_100B01BE8;
  sub_100044BBC(a1 + 344);
  *(a1 + 408) = 0;
  *(a1 + 508) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 512) = 0u;
  sub_100044BBC(a1 + 544);
  sub_100364534((a1 + 608));
  *(a1 + 664) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 656) = 0;
  *(a1 + 660) = 0;
  *(a1 + 672) = a1 + 680;
  return a1;
}

void sub_100601BC4(_Unwind_Exception *a1)
{
  sub_10007A068(v1 + 544);

  sub_1003617DC((v1 + 440));
  v3 = *(v1 + 416);
  if (v3)
  {
    *(v1 + 424) = v3;
    operator delete(v3);
  }

  sub_10007A068(v1 + 344);
  sub_10032F580(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100601C24(uint64_t a1)
{
  *a1 = off_100B01898;
  *(a1 + 256) = off_100B019B8;
  *(a1 + 264) = off_100B019F0;
  *(a1 + 272) = off_100B01A18;
  *(a1 + 280) = &off_100B01A58;
  *(a1 + 288) = off_100B01A70;
  *(a1 + 296) = off_100B01AA0;
  *(a1 + 304) = &off_100B01B60;
  *(a1 + 312) = off_100B01B78;
  *(a1 + 320) = &off_100B01BB8;
  *(a1 + 328) = &off_100B01BD0;
  *(a1 + 336) = off_100B01BE8;
  sub_10060F8E8(a1 + 672, *(a1 + 680));

  sub_1003645A0(a1 + 608);
  sub_10007A068(a1 + 544);

  sub_1003617DC((a1 + 440));
  v2 = *(a1 + 416);
  if (v2)
  {
    *(a1 + 424) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 344);

  return sub_10032F580(a1);
}

void sub_100601E3C(uint64_t a1)
{
  sub_100601C24(a1);

  operator delete();
}

void sub_100601E74(uint64_t a1)
{
  sub_100601C24(a1 - 264);

  operator delete();
}

void sub_100601EB0(uint64_t a1)
{
  sub_100601C24(a1 - 272);

  operator delete();
}

uint64_t sub_100601EEC(uint64_t a1)
{
  v2 = os_log_create("com.apple.bluetooth", "HIDProfileDispatch");
  v3 = *(a1 + 512);
  *(a1 + 512) = v2;

  *(a1 + 528) = os_signpost_id_make_with_pointer(*(a1 + 512), a1);
  v4 = os_log_create("com.apple.bluetooth", "HIDProfileMutex");
  v5 = *(a1 + 520);
  *(a1 + 520) = v4;

  *(a1 + 536) = os_signpost_id_make_with_pointer(*(a1 + 520), a1);
  if (qword_100B50F88 != -1)
  {
    sub_100851110();
  }

  sub_1006DC960(off_100B50F80, a1 + 272);
  if (qword_100B50AC0 != -1)
  {
    sub_100851124();
  }

  sub_1005907D4(off_100B50AB8, a1 + 320);
  sub_100602170(a1);
  v6 = sub_100017E6C();
  sub_10060E7A8(v6 + 944, a1 + 328);
  if (qword_100B508B0 != -1)
  {
    sub_100851138();
  }

  sub_100749B80(off_100B508A8, a1 + 296, 0);
  if (qword_100B50900 != -1)
  {
    sub_10085114C();
  }

  sub_1000F125C(qword_100B508F8 + 40, a1 + 312);
  v7 = sub_100017E6C();
  sub_100532818(v7 + 744, a1 + 280);
  v8 = sub_100017E6C();
  (*(*v8 + 160))(v8, a1 + 658);
  v9 = sub_100017E6C();
  sub_1003128B0(v9 + 384, a1 + 288);
  v10 = *sub_10000C798();
  if ((*(v10 + 304))())
  {
    v11 = sub_100017E6C();
    sub_10060EA48(v11 + 1264, a1 + 304);
    v12 = sub_100017E6C();
    (*(*v12 + 208))(v12, a1 + 659);
  }

  else
  {
    v13 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Low Latency Gaming not eligible for this device", v15, 2u);
    }
  }

  if (qword_100B508C0 != -1)
  {
    sub_100851160();
  }

  sub_1007BF384(off_100B508B8, a1 + 336);
  return 0;
}

void sub_100602170(uint64_t a1)
{
  v2 = CFPreferencesCopyValue(@"enableGameControllerAutoSwitchMode", @"com.apple.bluetooth", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 BOOLValue];
    }

    else
    {
      v3 = 0;
    }

    *(a1 + 508) = v3;
  }

  else
  {
    v4 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "void BT::HIDProfile::getSystemSettingForEnableClassicGCAutoSwitchMode()";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: enableGameControllerAutoSwitchMode does not exist in plist; by default is ON", &v8, 0xCu);
    }

    *(a1 + 508) = 1;
  }

  v5 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 508);
    v7 = "not present";
    v9 = "void BT::HIDProfile::getSystemSettingForEnableClassicGCAutoSwitchMode()";
    v8 = 136315650;
    if (v6)
    {
      v7 = "present";
    }

    v10 = 2080;
    v11 = v7;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Defaults write to enable Classic GC Auto Switch Mode is %s and current setting is %d.", &v8, 0x1Cu);
  }
}

uint64_t sub_100602334()
{
  v2 = 0;
  sub_1000216B4(&v2);
  v0 = sub_10021B0F0(&dword_1008AA830, off_100B01C00);
  sub_100022214(&v2);
  if (v0)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100851188();
    }

    v0 = 1;
  }

  sub_10002249C(&v2);
  return v0;
}

uint64_t sub_1006023D8()
{
  v2 = 0;
  sub_1000216B4(&v2);
  v0 = sub_10021B574();
  if (v0)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_1008511F8();
    }

    v0 = 1;
  }

  sub_10002249C(&v2);
  return v0;
}

uint64_t sub_100602464(uint64_t a1)
{
  if (qword_100B508C0 != -1)
  {
    sub_100851268();
  }

  sub_1007BF4C0(off_100B508B8, a1 + 336);
  if (qword_100B50AC0 != -1)
  {
    sub_100851124();
  }

  sub_1005908D4(off_100B50AB8, a1 + 320);
  v2 = sub_100017E6C();
  sub_10036F1AC(v2 + 384, a1 + 288);
  v3 = sub_100017E6C();
  sub_100532AB8(v3 + 744, a1 + 280);
  v4 = sub_100017E6C();
  sub_10060F5F8(v4 + 1264, a1 + 304);
  v5 = sub_100017E6C();
  sub_10060F6D0(v5 + 944, a1 + 328);
  if (qword_100B50F88 != -1)
  {
    sub_100851110();
  }

  sub_1006DCA90(off_100B50F80, a1 + 272);
  return 0;
}

_BYTE *sub_100602548(uint64_t a1, unint64_t a2, int a3)
{
  v6 = qword_100BCEAA0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000C0348(a2);
    sub_1000E5A58(a2, __p);
    v8 = "Not Connected";
    if (v7)
    {
      v8 = "Connected";
    }

    if (v20 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136446466;
    v22 = v8;
    v23 = 2082;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s HID device %{public}s will unpair", buf, 0x16u);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v18 = 0;
  sub_1000216B4(&v18);
  v10 = sub_100219518(a2 + 128);
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 7);
  }

  else
  {
    v12 = 0;
  }

  sub_100022214(&v18);
  if (!a3 && !(v12 & 1 | !sub_1000C0348(a2)))
  {
    sub_1000618AC(&v18);
    sub_1006027B0(a1, a2);
    sub_100022214(&v18);
    if (!v11)
    {
LABEL_22:
      *(a1 + 656) = 0;
      return sub_10002249C(&v18);
    }

    __p[0] = 0;
    __p[1] = 0;
    sub_100007F88(__p, a1 + 544);
    v13 = sub_10002220C((a1 + 608), __p, 0x7D0uLL);
    v14 = qword_100BCEAA0;
    v15 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        *buf = 0;
        v16 = "HID recanted Successfully";
LABEL_20:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
      }
    }

    else if (v15)
    {
      *buf = 0;
      v16 = "HID timedout waiting to recant";
      goto LABEL_20;
    }

    sub_1000088CC(__p);
    goto LABEL_22;
  }

  return sub_10002249C(&v18);
}

void sub_10060276C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, char a13)
{
  sub_1000088CC(&a13);
  sub_10002249C(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1006027B0(uint64_t a1, unint64_t a2)
{
  if ((sub_10000C240() & 1) == 0)
  {
    v4 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_FAULT))
    {
      sub_10085127C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_10057E30C(a1, a2);
  v13 = sub_100219518(a2 + 128);
  if (v13)
  {
    *(v13 + 7) = 1;
  }

  v14 = qword_100BCEAA0;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
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

      *buf = 136446210;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unplugging virtual cable to device %{public}s", buf, 0xCu);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      v26 = "NULL";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unplugging virtual cable to device %{public}s", buf, 0xCu);
    }
  }

  if (sub_10053C854(a2))
  {
    v16 = sub_10053C860(a2);
    if (v16)
    {
      v17 = &unk_1008AA834;
    }

    else
    {
      v17 = &unk_1008AA836;
    }

    *(a1 + 656) = v12;
    if (v16)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v19 = sub_10021BC0C(v12, 3, v17, v18);
  }

  else
  {
    v19 = sub_10021B6D0(v12, 5u, sub_100603B60);
  }

  v20 = v19;
  if (!v19)
  {
    return 0;
  }

  v21 = qword_100BCEAA0;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    if (a2)
    {
      sub_1000E5A58(a2, __p);
      sub_1008512F4();
    }

    else
    {
      sub_100851344(buf, v20);
    }
  }

  return 1;
}

uint64_t sub_100602A1C(uint64_t a1, unint64_t a2)
{
  v17 = 0;
  sub_1000216B4(&v17);
  v16 = 0;
  v4 = sub_10053CB38(a2);
  if (v4)
  {
    v5 = qword_100BCEAA0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v6 = v15 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connecting to device %{public}s using Type S connection policy", buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = &unk_100B01CA8;
LABEL_9:

    v8 = sub_10021B6AC(a2 + 128, &off_100B01C88, &v16, v7);
    goto LABEL_26;
  }

  if (sub_100602D24(v4, a2) && sub_10053C974(a2))
  {
    v5 = qword_100BCEAA0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v9 = v15 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connecting to device %{public}s using Apple Mouse/TP connection policy", buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = &unk_100B54C18;
    goto LABEL_9;
  }

  v10 = qword_100BCEAA0;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v11 = v15 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Connecting to device %{public}s using default connection policy", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = sub_10021B6AC(a2 + 128, &off_100B01C88, &v16, 0);
LABEL_26:
  if (v8)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_10085139C();
    }

    v12 = 1;
  }

  else
  {
    sub_10057E218(a1, a2, v16);
    v12 = 0;
  }

  sub_10002249C(&v17);
  return v12;
}

uint64_t sub_100602D24(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_1008514DC(buf);
    return buf[0];
  }

  v12 = 0;
  v13 = 0;
  if ((sub_1000C2364(a2, &v13 + 1, &v13, &v12 + 1, &v12) & 1) == 0)
  {
    v10 = qword_100BCEAA0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, buf);
      sub_10085140C();
    }

    goto LABEL_26;
  }

  if (v13 != 76 && v13 != 1452)
  {
    v10 = qword_100BCEAA0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, buf);
      sub_100851474();
    }

LABEL_26:

    return 0;
  }

  v3 = qword_100BCEAA0;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v4 = v15 >= 0 ? __p : __p[0];
    *buf = 136316418;
    v17 = "MIDSupports15msFeatureBit";
    v18 = 2082;
    v19 = v4;
    v20 = 1024;
    v21 = v13;
    v22 = 1024;
    v23 = HIDWORD(v12);
    v24 = 1024;
    v25 = HIDWORD(v13);
    v26 = 1024;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: %{public}s is vid(0x%x), pid(0x%x), vidSrc(0x%x), fwver(0x%x)", buf, 0x2Eu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (((HIDWORD(v12) - 803) < 2 || HIDWORD(v12) == 617 || HIDWORD(v12) == 613) && (v12 & 0xFFF) - 768 < 0x11)
  {
    return 1;
  }

  v5 = sub_10054AED0(a2);
  v6 = qword_100BCEAA0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v15 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315650;
    v17 = "MIDSupports15msFeatureBit";
    v18 = 2082;
    v19 = v7;
    v20 = 1024;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: %{public}s is MIDFeatureBits 0x%x", buf, 0x1Cu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v5)
  {
    return 1;
  }

  v8 = sub_10000C798();
  if ((*(*v8 + 352))(v8))
  {
    return 1;
  }

  v11 = sub_10000C798();
  return (*(*v11 + 456))(v11);
}

uint64_t sub_100603094(void *a1, unint64_t a2)
{
  v12 = 0;
  v11 = 0;
  sub_1000216B4(&v11);
  if (!sub_10023E4C8(a2 + 128, &v12) && v12 == 97 && sub_100538D24(a2))
  {
    v4 = qword_100BCEAA0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v5 = v14 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Forcing disconnect for unauthorized Type S device %{public}s", buf, 0xCu);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = sub_10023BD60(a2 + 128);
    if (!v6)
    {
      v9 = 0;
      goto LABEL_17;
    }

    v7 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to force disconnect unauthorized Type S device with result %{bluetooth:OI_STATUS}u", __p, 8u);
    }

    goto LABEL_16;
  }

  v8 = sub_10057E30C(a1, a2);
  v9 = sub_10021B6CC(v8);
  if (v9)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100851590();
    }

LABEL_16:
    v9 = 1;
  }

LABEL_17:
  sub_10002249C(&v11);
  return v9;
}

void sub_100603298(uint64_t a1, uint64_t a2)
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
    sub_10060FB6C((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

uint64_t sub_10060332C(void *a1, int a2, int a3, int a4)
{
  v37 = a2;
  v8 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *&buf[4] = a3;
    *&buf[8] = 1024;
    *&buf[10] = a2;
    *&buf[14] = 1024;
    *&buf[16] = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sendControlOpCfm for op 0x%x with handle 0x%x returned status %d", buf, 0x14u);
  }

  v36[0] = 0;
  v36[1] = 0;
  sub_100007F88(v36, (a1 + 43));
  v9 = a1[85];
  if (!v9)
  {
LABEL_8:
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_1008516AC();
    }

    return sub_1000088CC(v36);
  }

  while (1)
  {
    v10 = *(v9 + 16);
    if (v37 >= v10)
    {
      break;
    }

LABEL_7:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  if (v10 < v37)
  {
    ++v9;
    goto LABEL_7;
  }

  if (!sub_10057E420(a1, v37) || (sub_10002223C() & 1) == 0)
  {
    v12 = sub_1004D0684((a1 + 84), &v37);
    v13 = v12;
    if (*(v12 + 72) == 1)
    {
      v14 = *(v12 + 73);
      v15 = *(v12 + 74);
      v16 = *(v12 + 19);
      v17 = v12[10];
      v18 = v12[11];
      if (v14)
      {
        v19 = sub_10021BAF4(v37, *(v12 + 74), *(v12 + 19), 0xFFFF);
        goto LABEL_40;
      }

      v28 = *(v12 + 19);
      *buf = 0u;
      v21 = v37;
      buf[0] = 5;
      *&buf[2] = v37;
      *&buf[4] = 255;
      *&buf[16] = v18;
      if (v17 && v18)
      {
        operator new[]();
      }

      buf[24] = 0;
      if (*(v12 + 64) != 1)
      {
LABEL_26:
        v34 = 1;
        v29[0] = 5;
        v30 = v21;
        v31 = 255;
        v32 = 0;
        v33 = v18;
        if (v18)
        {
          operator new[]();
        }

        v16 = v28;
        LOBYTE(v34) = 0;
        sub_10060F7A8((v13 + 4), v29);
        if (v34 == 1 && v32)
        {
          operator delete[]();
        }

        if (v15 == 2)
        {
          v24 = sub_10021BD98(v37, 2, v17, 0);
        }

        else
        {
          if (v15 != 3)
          {
            v19 = 101;
            goto LABEL_40;
          }

          v24 = sub_10021BC0C(v37, 3, v17, 0);
        }

        v19 = v24;
        goto LABEL_40;
      }

      v22 = sub_1006018EC(buf);
      v23 = qword_100BCEAA0;
      if (v22 == 2)
      {
        if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_INFO))
        {
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "HID Perf Mode is stopping", v35, 2u);
        }

        *(v13 + 64) = 0;
        goto LABEL_26;
      }

      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
      {
        sub_100851600();
        v16 = v28;
        v19 = 104;
      }

      else
      {
        v19 = 104;
        v16 = v28;
      }

LABEL_40:
      v25 = qword_100BCEAA0;
      if (v19)
      {
        if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
        {
          sub_10085163C();
        }
      }

      else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
      {
        v26 = "set";
        *buf = 136316674;
        if (v14)
        {
          v26 = "get";
        }

        *&buf[4] = v26;
        *&buf[12] = 1024;
        *&buf[14] = v37;
        *&buf[18] = 1024;
        *&buf[20] = v15;
        *&buf[24] = 1024;
        *&buf[26] = v16;
        *&buf[30] = 2048;
        v39 = v18;
        v40 = 1040;
        v41 = v18;
        v42 = 2098;
        v43 = v17;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Sent queued %s report {handle: 0x%x, type: %d, ID: %d, size: %zu, {%{public}.*P}", buf, 0x38u);
      }

      *(v13 + 72) = 0;
      v27 = v13[10];
      if (v27)
      {
        free(v27);
      }

      v13[10] = 0;
    }

    else
    {
      v20 = qword_100BCEAA0;
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "sendControlOpCfm No pending reports", buf, 2u);
      }
    }
  }

  return sub_1000088CC(v36);
}

void sub_1006037F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100603878(void *a1, unsigned int a2, unsigned int a3)
{
  v18 = a2;
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, (a1 + 43));
  v6 = a1[85];
  if (!v6)
  {
LABEL_6:
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_1008517FC();
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  while (1)
  {
    v7 = *(v6 + 16);
    if (v7 <= a2)
    {
      break;
    }

LABEL_5:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  if (v7 < a2)
  {
    ++v6;
    goto LABEL_5;
  }

  v10 = sub_1004D0684((a1 + 84), &v18);
  v11 = v10;
  if ((*(v10 + 9) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_10085171C();
    }

    goto LABEL_8;
  }

  if (v10[1])
  {
    v12 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = a3;
      v20 = 1024;
      v21 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device already suspended with reason %d for handle 0x%x, do nothing", buf, 0xEu);
    }

    goto LABEL_29;
  }

  v13 = sub_10057E420(a1, v18);
  if (!sub_10053C854(v13))
  {
    goto LABEL_29;
  }

  v14 = qword_100BCEAA0;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v13, buf);
    v15 = v22 >= 0 ? buf : *buf;
    v16 = a3 > 3 ? "??" : off_100B01EC8[a3];
    *v23 = 136446466;
    v24 = v15;
    v25 = 2082;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending SUSPEND command to device %{public}s due to reason %{public}s", v23, 0x16u);
    if (v22 < 0)
    {
      operator delete(*buf);
    }
  }

  v8 = sub_10021B6D0(v18, 3u, sub_100603B60);
  if (v8)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_10085178C();
    }

LABEL_29:
    v8 = 0;
  }

  else
  {
    *(v11 + 8) = 1;
    *(v11 + 17) = 0;
  }

LABEL_9:
  sub_1000088CC(v17);
  return v8;
}

void sub_100603B30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100603B60(int a1, int a2, int a3)
{
  if (qword_100B54398 != -1)
  {
    sub_1008518A0();
  }

  v6 = off_100B54390;

  return sub_10060332C(v6, a1, a2, a3);
}

uint64_t sub_100603BCC(void *a1, unsigned int a2, unsigned int a3)
{
  v23 = a2;
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, (a1 + 43));
  v6 = a1[85];
  if (!v6)
  {
LABEL_6:
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100851994();
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  while (1)
  {
    v7 = *(v6 + 16);
    if (v7 <= a2)
    {
      break;
    }

LABEL_5:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  if (v7 < a2)
  {
    ++v6;
    goto LABEL_5;
  }

  v10 = sub_1004D0684((a1 + 84), &v23);
  v11 = v10;
  if ((*(v10 + 9) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_1008518B4();
    }

    goto LABEL_8;
  }

  if (*(v10 + 8) != 1)
  {
    goto LABEL_24;
  }

  v12 = sub_10057E420(a1, v23);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  if (!sub_10053C854(v12))
  {
    goto LABEL_24;
  }

  v14 = qword_100BCEAA0;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = __p;
    sub_1000E5A58(v13, __p);
    if (v21 < 0)
    {
      v15 = __p[0];
    }

    v16 = sub_1006018C8(*(v11 + 17));
    v17 = sub_1006018C8(a3);
    *buf = 136446722;
    v25 = v15;
    v26 = 2082;
    v27 = v16;
    v28 = 2082;
    v29 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending EXIT_SUSPEND command to device %{public}s, reason %{public}s -> %{public}s", buf, 0x20u);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v18 = sub_10021B6D0(v23, 4u, sub_100603B60);
  v19 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v25) = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Exit Suspend returned status: %{bluetooth:OI_STATUS}u", buf, 8u);
  }

  if (v18)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100851924();
    }

LABEL_24:
    v8 = 0;
  }

  else
  {
    *(v11 + 8) = 0;
    *(v11 + 17) = a3;
    v8 = 335;
  }

LABEL_9:
  sub_1000088CC(v22);
  return v8;
}

void sub_100603E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_100603E9C(uint64_t a1, unsigned int a2)
{
  v10 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 344);
  v4 = *(a1 + 680);
  if (!v4)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  while (1)
  {
    v5 = *(v4 + 16);
    if (v5 <= a2)
    {
      break;
    }

LABEL_5:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (v5 < a2)
  {
    ++v4;
    goto LABEL_5;
  }

  v6 = sub_1004D0684(a1 + 672, &v10);
  if (*(a1 + 658))
  {
    goto LABEL_8;
  }

  v7 = *(v6 + 17) == 2;
LABEL_9:
  sub_1000088CC(v9);
  return v7;
}

void sub_100603F38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_100603F54(uint64_t a1, int a2)
{
  v7 = 0;
  sub_1000216B4(&v7);
  v4 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "Off";
    if (a2)
    {
      v5 = "On";
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Screen state changed to %{public}s", buf, 0xCu);
  }

  *(a1 + 658) = a2;
  if (a2)
  {
    sub_100604070(a1, 1);
  }

  else
  {
    sub_100604194(a1, 1u);
  }

  return sub_10002249C(&v7);
}

uint64_t sub_100604070(uint64_t a1, int a2)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 344);
  v4 = *(a1 + 672);
  if (v4 != (a1 + 680))
  {
    do
    {
      v5 = *(v4 + 16);
      v6 = sub_100017F4C();
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100605D18;
      v11[3] = &unk_100AF9DB0;
      v11[4] = a1;
      v13 = v5;
      v12 = a2;
      sub_10000CA94(v6, v11);
      v7 = v4[1];
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
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
    }

    while (v8 != (a1 + 680));
  }

  sub_1000088CC(v14);
  return 1;
}

void sub_100604180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100604194(void *a1, unsigned int a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, (a1 + 43));
  v4 = a1[84];
  if (v4 != a1 + 85)
  {
    do
    {
      sub_100603878(a1, *(v4 + 16), a2);
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != a1 + 85);
  }

  sub_1000088CC(v9);
  return 1;
}

uint64_t sub_100604258(uint64_t a1)
{
  v5 = 0;
  sub_1000216B4(&v5);
  v2 = qword_100BCEAA0;
  if (*(a1 + 658))
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100851A08();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "System can sleep and screen state is off, suspending HID", v4, 2u);
    }

    sub_100604194(a1, 2u);
  }

  sub_10002249C(&v5);
  return 1;
}

void sub_10060433C(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006043CC;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v2, block);
}

uint64_t sub_1006043CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v31[0] = 0;
  v31[1] = 0;
  sub_100007F88(v31, v1 + 344);
  v2 = *(v1 + 672);
  if (v2 != (v1 + 680))
  {
    do
    {
      v3 = *(v2 + 32);
      v4 = sub_10000E92C();
      if (((*(*v4 + 8))(v4) & 1) != 0 || (v5 = sub_10000E92C(), (*(*v5 + 488))(v5)))
      {
        v6 = sub_1000ABB80(v3);
        v7 = sub_10000F034();
        (*(*v7 + 592))(v7, v6, v3);
        if ((byte_100B6F790 & 1) == 0)
        {
          v8 = sub_10000C7D0();
          if ((*(*v8 + 1032))(v8, v3, 1, 0))
          {
            v9 = qword_100BCEAA0;
            if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
            {
              LODWORD(__p[0]) = 67109120;
              HIDWORD(__p[0]) = v3;
              _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to disable HID Latency Statistics for connection handle 0x%02x", __p, 8u);
            }
          }
        }
      }

      v10 = sub_10000E92C();
      if (((*(*v10 + 8))(v10) & 1) == 0)
      {
        v11 = sub_10000E92C();
        if (!(*(*v11 + 480))(v11))
        {
          goto LABEL_32;
        }
      }

      v12 = sub_1000ABB80(v3);
      if (!v12)
      {
        goto LABEL_32;
      }

      v13 = sub_100255A78(v12);
      if (qword_100B508F0 != -1)
      {
        sub_100851A44();
      }

      v14 = *v13;
      WORD2(__p[0]) = *(v13 + 4);
      LODWORD(__p[0]) = v14;
      v15 = sub_1000E6554(off_100B508E8, __p, 1);
      v16 = qword_100BCEAA0;
      if (v15)
      {
        v17 = qword_100BCEAA0;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v15, __p);
          v18 = __p;
          if (v33 < 0)
          {
            v18 = __p[0];
          }

          *buf = 136446210;
          v35 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PowerManagementEventSystemWillSleep: device %{public}s", buf, 0xCu);
          if (v33 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v19 = sub_1000295DC(v15);
        v20 = qword_100BCEAA0;
        v21 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          if (v21)
          {
            LODWORD(__p[0]) = 67109120;
            HIDWORD(__p[0]) = v3;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Disabling phy stats for HCI LM Handle 0x%02X", __p, 8u);
          }

          v22 = sub_10000C7D0();
          (*(*v22 + 320))(v22, 0, 1, (v15[128] << 40) | (v15[129] << 32) | (v15[130] << 24) | (v15[131] << 16) | (v15[132] << 8) | v15[133], 1);
          v15[1178] = 0;
          v23 = qword_100BCEAA0;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            if (qword_100B508F0 != -1)
            {
              sub_100851A44();
            }

            v24 = sub_10056D550(off_100B508E8);
            LODWORD(__p[0]) = 67109120;
            HIDWORD(__p[0]) = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "disablePhyStats, current number of devices %d", __p, 8u);
          }

          goto LABEL_32;
        }

        if (v21)
        {
          LOWORD(__p[0]) = 0;
          v25 = v20;
          v26 = "disablePhyStats: device is not paired!!!";
          goto LABEL_31;
        }
      }

      else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        v25 = v16;
        v26 = "PowerManagementEventSystemWillSleep: device is NULL";
LABEL_31:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, __p, 2u);
      }

LABEL_32:
      v27 = v2[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v2[2];
          v29 = *v28 == v2;
          v2 = v28;
        }

        while (!v29);
      }

      v2 = v28;
    }

    while (v28 != (v1 + 680));
  }

  return sub_1000088CC(v31);
}

void sub_1006048C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100604914(uint64_t a1)
{
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006049A4;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v2, block);
}

uint64_t sub_1006049A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v38[0] = 0;
  v38[1] = 0;
  sub_100007F88(v38, v1 + 344);
  __p = 0;
  v36 = 0;
  v37 = 0;
  v2 = *(v1 + 672);
  v3 = (v1 + 680);
  if (v2 != (v1 + 680))
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 16);
      if (v4 >= v37)
      {
        v6 = (v4 - __p) >> 2;
        if ((v6 + 1) >> 62)
        {
          sub_1000C7698();
        }

        v7 = (v37 - __p) >> 1;
        if (v7 <= v6 + 1)
        {
          v7 = v6 + 1;
        }

        if (v37 - __p >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v8 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        if (v8)
        {
          sub_10036F560(&__p, v8);
        }

        v9 = (4 * v6);
        *v9 = v5;
        v4 = (4 * v6 + 4);
        v10 = v9 - (v36 - __p);
        memcpy(v10, __p, v36 - __p);
        v11 = __p;
        __p = v10;
        v36 = v4;
        v37 = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      else
      {
        *v4 = v5;
        v4 += 4;
      }

      v36 = v4;
      v12 = v2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v14 = *v13 == v2;
          v2 = v13;
        }

        while (!v14);
      }

      v2 = v13;
    }

    while (v13 != v3);
  }

  sub_10000801C(v38);
  v15 = __p;
  if (__p != v36)
  {
    do
    {
      v16 = sub_10000E92C();
      if (((*(*v16 + 8))(v16) & 1) != 0 || (v17 = sub_10000E92C(), (*(*v17 + 488))(v17)))
      {
        v18 = sub_1000ABB80(*v15);
        if (v18)
        {
          v19 = v15[1];
          v20 = sub_10000F034();
          (*(*v20 + 576))(v20, *v15, v18, 1, v19);
          if ((byte_100B6F790 & 1) == 0)
          {
            v21 = sub_10000C7D0();
            if ((*(*v21 + 1032))(v21, *v15, 1, 1))
            {
              v22 = qword_100BCEAA0;
              if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
              {
                v33 = *v15;
                *v39 = 67109120;
                *&v39[4] = v33;
                _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to enable HID Latency Statistics for connection handle 0x%02x", v39, 8u);
              }
            }
          }
        }
      }

      v23 = sub_10000E92C();
      if (((*(*v23 + 8))(v23) & 1) != 0 || (v24 = sub_10000E92C(), (*(*v24 + 480))(v24)))
      {
        v25 = sub_1000ABB80(*v15);
        if (v25)
        {
          v26 = sub_100255A78(v25);
          if (qword_100B508F0 != -1)
          {
            sub_100851A44();
          }

          v27 = *v26;
          *&v39[4] = *(v26 + 4);
          *v39 = v27;
          v28 = sub_1000E6554(off_100B508E8, v39, 1);
          v29 = qword_100BCEAA0;
          if (v28)
          {
            v30 = qword_100BCEAA0;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v28, v39);
              v31 = v39;
              if (v40 < 0)
              {
                v31 = *v39;
              }

              *buf = 136446210;
              v42 = v31;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "PowerManagementEventSystemWillSleep: device %{public}s", buf, 0xCu);
              if (v40 < 0)
              {
                operator delete(*v39);
              }
            }

            sub_100604E9C(v32, v28);
          }

          else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
          {
            *v39 = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "PowerManagementEventSystemWillSleep: device is NULL", v39, 2u);
          }
        }
      }

      v15 += 2;
    }

    while (v15 != v36);
    v15 = __p;
  }

  if (v15)
  {
    v36 = v15;
    operator delete(v15);
  }

  return sub_1000088CC(v38);
}

void sub_100604E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a17);
  _Unwind_Resume(a1);
}

void sub_100604E9C(uint64_t a1, uint64_t a2)
{
  sub_10000C7D0();
  v3 = sub_100413560();
  v4 = sub_10000C7D0();
  if (sub_1000ABD54(v4) && v3)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100851A6C();
    }

    v5 = sub_10056D550(off_100B508E8);
    v6 = qword_100BCEAA0;
    v7 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
    if (v5 >= v3)
    {
      if (v7)
      {
        *buf = 67109376;
        v11 = v5;
        v12 = 1024;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Max HID GCs reached, not adding current %d max %d", buf, 0xEu);
      }
    }

    else
    {
      if (v7)
      {
        *buf = 67109376;
        v11 = v5;
        v12 = 1024;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "HID GCs connected, enabling stat, current number of devices %d max %d", buf, 0xEu);
      }

      v8 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10060D634;
      block[3] = &unk_100ADF8F8;
      block[4] = a2;
      dispatch_async(v8, block);
    }
  }
}

uint64_t sub_100605058(void *a1, unint64_t a2)
{
  result = sub_10057E30C(a1, a2);
  v7 = result;
  if (result)
  {
    v6[0] = 0;
    v6[1] = 0;
    sub_100007F88(v6, (a1 + 43));
    v5 = sub_1004D0684((a1 + 84), &v7);
    (*(**v5 + 24))(*v5, a2);
    return sub_1000088CC(v6);
  }

  return result;
}

void sub_1006050E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006050F4(uint64_t a1, unsigned __int16 a2, uint64_t a3, unsigned int a4)
{
  v10 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 344);
  v7 = sub_1004D0684(a1 + 672, &v10);
  sub_1006051B0(a1);
  (*(**v7 + 64))(*v7, a3, a4);
  sub_100605240(a1);
  return sub_1000088CC(v9);
}

void sub_100605198(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1006051B0(uint64_t a1)
{
  if (IsAppleInternalBuild())
  {
    v2 = *(a1 + 512);
    v3 = v2;
    v4 = *(a1 + 528);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "HIDInterruptData", "", v5, 2u);
    }
  }
}

void sub_100605240(uint64_t a1)
{
  if (IsAppleInternalBuild())
  {
    v2 = *(a1 + 512);
    v3 = v2;
    v4 = *(a1 + 528);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "HIDInterruptData", "", v5, 2u);
    }
  }
}

_BYTE *sub_1006052D0(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  sub_1000216B4(&v12);
  v3 = sub_1002192EC(a2);
  v4 = v3;
  if (v3)
  {
    if (*(v3 + 76))
    {
      v5 = qword_100BCEAA0;
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v4 + 77);
        v7 = *(v4 + 76);
        *buf = 67109376;
        v14 = v6;
        v15 = 1024;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Could not send pending control channel operation 0x%x due to pending operation 0x%x", buf, 0xEu);
      }
    }

    else
    {
      v8 = (v3 + 77);
      if (*(v3 + 77) == 5)
      {
        v9 = qword_100BCEAA0;
        if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *v8;
          *buf = 67109376;
          v14 = a2;
          v15 = 1024;
          v16 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending pending control virtual cable unpluged for handle 0x%x, queued operation 0x%x", buf, 0xEu);
        }

        if (sub_10021B6D0(a2, 5u, sub_100603B60))
        {
          if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
          {
            sub_100851A80();
          }
        }

        else
        {
          *v8 &= 0xFAu;
        }
      }
    }
  }

  return sub_10002249C(&v12);
}

uint64_t sub_1006054A8(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v14 = a2;
  v10 = sub_1004D0684(a1 + 672, &v14);
  v11 = qword_100BCEAA0;
  v12 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    *buf = 67109376;
    v16 = v14;
    v17 = 1024;
    v18 = a3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "getReportResponse for handle 0x%x success %d", buf, 0xEu);
  }

  sub_1006052D0(v12, v14);
  return (*(**v10 + 72))(*v10, a3, a4, a5, a6);
}

uint64_t sub_1006055CC(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  v6 = sub_1004D0684(a1 + 672, &v11);
  v7 = qword_100BCEAA0;
  v8 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    *buf = 67109376;
    v13 = v11;
    v14 = 1024;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setReportResponse for handle 0x%x success %d", buf, 0xEu);
  }

  if (*(v6 + 9))
  {
    sub_1006052D0(v8, v11);
    return (*(**v6 + 80))(*v6, a3, a4);
  }

  else
  {
    v10 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device start pending on setReportResponse - starting device with status %d", buf, 8u);
    }

    *(v6 + 9) = 1;
    return (*(**v6 + 32))();
  }
}

uint64_t sub_100605764(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 344);
  v4 = *(a1 + 672);
  if (v4 == (a1 + 680))
  {
LABEL_9:
    v8 = 0;
  }

  else
  {
    while (*(v4 + 32) != a2)
    {
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
      if (v6 == (a1 + 680))
      {
        goto LABEL_9;
      }
    }

    v8 = *(v4 + 16);
  }

  sub_1000088CC(v10);
  return v8;
}

uint64_t sub_10060580C(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 344);
  v4 = *(a1 + 672);
  if (v4 == (a1 + 680))
  {
LABEL_9:
    v8 = 0;
  }

  else
  {
    while (v4[5] != a2)
    {
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
      if (v6 == (a1 + 680))
      {
        goto LABEL_9;
      }
    }

    v8 = *(v4 + 16);
  }

  sub_1000088CC(v10);
  return v8;
}

uint64_t sub_1006058B4(void *a1, uint64_t a2, unsigned __int16 a3)
{
  v26 = a3;
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, (a1 + 43));
  v5 = sub_1004D0684((a1 + 84), &v26);
  if (!sub_10053C3E8(a2))
  {
    v6 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_FAULT))
    {
      sub_100851B04(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = qword_100BCEAA0;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000DEEA4(a2, &__p);
    v15 = v24 >= 0 ? &__p : __p;
    *buf = 136446210;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Performing HID handshake for device %{public}s", buf, 0xCu);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }
  }

  if ((sub_10002223C() & 1) != 0 || (*(**v5 + 16))(*v5, a2))
  {
    *buf = xmmword_1008AA820;
    __p = 0;
    v23 = 0;
    v24 = 0;
    if (!sub_10053BFB4(a2, buf, 0x20Eu, &__p))
    {
      goto LABEL_24;
    }

    v17 = __p;
    v16 = v23;
    v18 = v23 - __p == 16 && (*(__p + 1) == 1) & *(__p + 8);
    while (v17 != v16)
    {
      v21 = *v17;
      sub_10037D4F4(&v21);
      ++v17;
      v16 = v23;
    }

    if (v18)
    {
      v19 = sub_10021BCBC(v26, 1);
      if (v19)
      {
        if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
        {
          sub_100851B7C();
        }

        v19 = 1;
      }
    }

    else
    {
LABEL_24:
      sub_100605B68(a1, v26);
      v19 = 0;
    }

    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v19 = 1;
  }

  sub_1000088CC(v25);
  return v19;
}

void sub_100605B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

void sub_100605B68(void *a1, int a2)
{
  v11 = a2;
  v4 = sub_10057E420(a1, a2);
  if (sub_10053C974(v4) && (sub_10053C984(v4) & 1) == 0 && sub_10053C990(v4))
  {
    if (sub_10053C968(v4))
    {
      v5 = qword_100BCEAA0;
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Delaying setting sniff rate for 250ms", v8, 2u);
      }

      v6 = sub_100017F4C();
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100608A84;
      v9[3] = &unk_100AEB940;
      v9[4] = a1;
      v10 = a2;
      sub_10008E008(v6, 250, v9);
    }

    else
    {
      sub_100608020(a1, a2);

      sub_100850FB0(a1, a2);
    }
  }

  else
  {
    v8[0] = 0;
    v8[1] = 0;
    sub_100007F88(v8, (a1 + 43));
    v7 = sub_1004D0684((a1 + 84), &v11);
    *(v7 + 9) = 1;
    (*(**v7 + 32))(*v7);
    sub_1000088CC(v8);
  }
}

_BYTE *sub_100605D18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  sub_1000216B4(&v4);
  sub_100603BCC(v2, *(a1 + 44), *(a1 + 40));
  return sub_10002249C(&v4);
}

uint64_t sub_100605D7C(uint64_t a1, unint64_t a2, int a3, int a4, char a5)
{
  v10 = sub_10057DFAC(a1, a2);
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if ((v11 & 1) == 0)
  {
    v12 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Denying connection attempt", __p, 2u);
    }
  }

  v13 = sub_10053CB38(a2);
  if (v13)
  {
    v14 = qword_100BCEAA0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v15 = v23 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Accepting connection from device %{public}s using Type S connection policy", buf, 0xCu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    result = sub_10021B6C8(a3, &off_100B01C88, &unk_100B01CA8, v11);
  }

  else if (sub_100602D24(v13, a2) && sub_10053C974(a2))
  {
    v17 = qword_100BCEAA0;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v18 = v23 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Accepting connection from device %{public}s using Apple Mouse/TP connection policy", buf, 0xCu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    result = sub_10021B6C8(a3, &off_100B01C88, &unk_100B54C18, v11);
  }

  else
  {
    v19 = qword_100BCEAA0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v20 = v23 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Accepting connection from device %{public}s using default connection policy", buf, 0xCu);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }
    }

    result = sub_10021B6C8(a3, &off_100B01C88, 0, v11);
  }

  v21 = v11 ^ 1;
  if (result)
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    result = sub_10057E218(a1, a2, a3);
    if ((a5 & 1) == 0)
    {
      sub_10057D9B0(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1006060B4(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100851A6C();
  }

  LODWORD(__p[0]) = *a2;
  WORD2(__p[0]) = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, __p, 1);
  v7 = qword_100BCEAA0;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v6, __p);
    v8 = v15 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received incoming connection attempt from HID device %{public}s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!sub_10053C3E8(v6))
  {
    if (sub_10057E1F0(a1))
    {
      v10 = qword_100BCEAA0;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v6, __p);
        if (v15 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 136446210;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Outgoing attempt already exists, withdraw outgoing attempt for device %{public}s", buf, 0xCu);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10057DA84(a1, v6, 314);
    }

    v12 = qword_100BCEAA0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v6, __p);
      v13 = v15 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Delaying response to incoming HID connection request for device %{public}s as SDP is missing", buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B54670 != -1)
    {
      sub_100851BEC();
    }

    sub_100587D6C(qword_100B54668, v6);
  }

  return sub_100605D7C(a1, v6, a3, 0, 0);
}

void sub_100606394(void *a1, int a2, uint64_t a3)
{
  v12 = a2;
  v6 = sub_10057E420(a1, a2);
  if (v6)
  {
    v7 = v6;
    v8 = qword_100BCEAA0;
    v9 = v8;
    if (a3)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v7, buf);
        sub_100851C14();
      }

      if (qword_100B50AA0 != -1)
      {
        sub_100851C64();
      }

      v10 = sub_1000DD584(off_100B50A98, a3, 20000);
      sub_10057DA84(a1, v7, v10);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v7, v18);
      v11 = v19 >= 0 ? v18 : *v18;
      *buf = 67109634;
      *&buf[4] = a2;
      v14 = 2082;
      v15 = v11;
      v16 = 1024;
      v17 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "HID connection on handle 0x%x for device %{public}s with status %d", buf, 0x18u);
      if (v19 < 0)
      {
        operator delete(*v18);
      }
    }

    sub_10057DA84(a1, v7, 0);
  }

  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_100851D60();
  }
}

void sub_100607008(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (sub_1000DEB14(a2) == 26)
    {
      if (qword_100B54C90 != -1)
      {
        sub_100851E7C();
      }

      v3 = qword_100B54C88;

      sub_1005CD824(v3, a2, 1);
    }

    else
    {
      sub_100851DD4();
    }
  }

  else
  {
    sub_100851E90();
  }
}

void sub_10060708C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Overriding connection packet type to single slot", v11, 2u);
  }

  if (sub_10024DD74(a3, 13080, v5, v6, v7, v8, v9, v10))
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100851F24();
    }
  }
}

uint64_t sub_100607138(uint64_t a1)
{
  v2 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v7 = 136315394;
    v8 = "connectionCallback_block_invoke";
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s -- Enable HID Latency Statistics event for connection handle 0x%02x", &v7, 0x12u);
  }

  v4 = sub_10000C7D0();
  result = (*(*v4 + 1032))(v4, *(a1 + 40), 1, 1);
  if (result)
  {
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100851F94();
    }

    result = sub_10000F034();
    if (result)
    {
      v6 = sub_10000F034();
      return (*(*v6 + 568))(v6, *(a1 + 32), *(a1 + 40));
    }
  }

  return result;
}

uint64_t sub_1006072AC()
{
  v0 = *(*sub_10000C7D0() + 3992);

  return v0();
}

void sub_100607310(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCEAA0;
  if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting active mode check timer", buf, 2u);
  }

  v5 = dispatch_time(0, 6000000000);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10060AC24;
  v6[3] = &unk_100AE0860;
  v6[4] = a1;
  v6[5] = a2;
  dispatch_after(v5, &_dispatch_main_q, v6);
}

void sub_1006073FC(uint64_t a1)
{
  v2 = qword_100BCEAA0;
  v3 = os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Evaluating Low Latency Gaming Topology", buf, 2u);
  }

  v47 = a1;
  if (*(a1 + 659) == 1)
  {
    *buf = 0;
    v56 = 0;
    v57 = 0;
    v54[0] = 0;
    v54[1] = 0;
    sub_100007F88(v54, a1 + 344);
    v4 = *(a1 + 672);
    v5 = (a1 + 680);
    if (v4 != (a1 + 680))
    {
      v6 = v56;
      do
      {
        if (v6 >= v57)
        {
          v7 = *buf;
          v8 = v6 - *buf;
          v9 = (v6 - *buf) >> 1;
          if (v9 <= -2)
          {
            sub_1000C7698();
          }

          if (v57 - *buf <= v9 + 1)
          {
            v10 = v9 + 1;
          }

          else
          {
            v10 = v57 - *buf;
          }

          if (v57 - *buf >= 0x7FFFFFFFFFFFFFFELL)
          {
            v11 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v11 = v10;
          }

          if (v11)
          {
            sub_1003705C4(buf, v11);
          }

          v12 = (v6 - *buf) >> 1;
          v13 = (2 * v9);
          v14 = (2 * v9 - 2 * v12);
          *v13 = *(v4 + 16);
          v6 = v13 + 1;
          memcpy(v14, v7, v8);
          v15 = *buf;
          *buf = v14;
          v56 = v6;
          v57 = 0;
          if (v15)
          {
            operator delete(v15);
          }

          a1 = v47;
        }

        else
        {
          *v6++ = *(v4 + 16);
        }

        v56 = v6;
        v16 = v4[1];
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
            v17 = v4[2];
            v18 = *v17 == v4;
            v4 = v17;
          }

          while (!v18);
        }

        v4 = v17;
      }

      while (v17 != v5);
    }

    sub_10000801C(v54);
    v19 = *buf;
    v20 = v56;
    if (*buf == v56)
    {
      v48 = 0;
      v21 = 0;
    }

    else
    {
      v21 = 0;
      v48 = 0;
      do
      {
        v22 = sub_10057E420(a1, *v19);
        v23 = v22;
        if (v22 && sub_1000DEB14(v22) == 26)
        {
          v24 = sub_10053C8DC(v23);
          ++v21;
          v25 = v48;
          if (v24)
          {
            v25 = v23;
          }

          v48 = v25;
        }

        ++v19;
      }

      while (v19 != v20);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    if (qword_100B508B0 != -1)
    {
      sub_100852018();
    }

    sub_100029630(off_100B508A8);
    v30 = v29 = v48;
    v31 = [v30 countByEnumeratingWithState:&v50 objects:v60 count:16];
    v32 = v31;
    if (v31)
    {
      v49 = 0;
      v33 = 0;
      v34 = *v51;
      do
      {
        v35 = 0;
        do
        {
          if (*v51 != v34)
          {
            objc_enumerationMutation(v30);
          }

          v36 = *(*(&v50 + 1) + 8 * v35);
          if (sub_10060AEB0(v31, v36))
          {
            ++v21;
            if (!v29)
            {
              v37 = v36;

              v49 = v37;
              v29 = v48;
            }
          }

          if (qword_100B508D0 != -1)
          {
            sub_100852040();
            v29 = v48;
          }

          v31 = sub_10078DEFC(off_100B508C8, v36);
          v33 += v31;
          ++v35;
        }

        while (v32 != v35);
        v31 = [v30 countByEnumeratingWithState:&v50 objects:v60 count:16];
        v32 = v31;
      }

      while (v31);
    }

    else
    {
      v49 = 0;
      v33 = 0;
    }

    if (qword_100B508D0 != -1)
    {
      sub_100852040();
    }

    v38 = sub_10079162C(off_100B508C8);
    v39 = v33 - v21 - v38 + ((v56 - *buf) >> 1);
    if (v21 != 1)
    {
      v40 = qword_100BCEAA0;
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
      {
        *v58 = 67109120;
        v59 = v21;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Low Latency Gaming not eligible, due to %d connected game controllers", v58, 8u);
      }
    }

    if (v39 >= 3u)
    {
      v41 = qword_100BCEAA0;
      if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
      {
        *v58 = 67109120;
        v59 = v39;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Low Latency Gaming not eligible, due to %d non-GC HIDs", v58, 8u);
      }

      v42 = v49;
      if (!v48)
      {
LABEL_73:
        if (!v42)
        {
          goto LABEL_76;
        }

        goto LABEL_74;
      }

LABEL_72:
      *(v47 + 660) = 0;
      sub_10060C2E0(v47, v48, 0);
      goto LABEL_73;
    }

    v42 = v49;
    if (v48)
    {
      if (v21 != 1)
      {
        goto LABEL_72;
      }

      *(v47 + 660) = sub_10057E30C(v47, v48);
      sub_10060C2E0(v47, v48, 1);
    }

    if (!v49)
    {
      goto LABEL_76;
    }

    if (v21 == 1)
    {
      v43 = v49;
      v44 = *(v47 + 664);
      *(v47 + 664) = v43;
      v45 = 1;
LABEL_75:

      v42 = v49;
      sub_10060C588(v46, v49, v45);
LABEL_76:

      sub_1000088CC(v54);
      if (*buf)
      {
        v56 = *buf;
        operator delete(*buf);
      }

      return;
    }

LABEL_74:
    v45 = 0;
    v44 = *(v47 + 664);
    *(v47 + 664) = 0;
    goto LABEL_75;
  }

  if (*(a1 + 660))
  {
    v26 = sub_10057E420(a1, *(a1 + 660));
    sub_10060C2E0(a1, v26, 0);
    *(a1 + 660) = 0;
  }

  else
  {
    v27 = *(a1 + 664);
    if (v27)
    {
      sub_10060C588(v3, v27, 0);
      v28 = *(a1 + 664);
      *(a1 + 664) = 0;
    }
  }
}