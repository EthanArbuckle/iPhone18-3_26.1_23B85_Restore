uint64_t sub_1002CF218(uint64_t a1)
{
  v3 = a1;
  if (dword_100B6A5B4)
  {
    v2[1] = &v3;
    v2[0] = 8;
    result = sub_10002195C(sub_1002D3E6C, v2, ((dword_100B6A5B4 + 99) / 0x64u), 0);
    if (!result)
    {
      return result;
    }

    a1 = v3;
  }

  return sub_1002DBE90(a1);
}

void sub_1002CF290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (*(a1 + 140) && *(a1 + 132) == 6)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Link disconnected readyStateReason:%!, readyStatus:LE_READY_DISCONNECTING, overriding", v8, v9, v10, v11, v12, v13, v14, *(a1 + 140));
      v15 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v20 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    a2 = *(a1 + 140);
  }

  if (mach_continuous_time() <= a4)
  {
    v16 = 0;
  }

  else
  {
    mach_continuous_time();
    v16 = UpTicksToMilliseconds();
  }

  if (word_100B66270)
  {
    v17 = 0;
    do
    {
      v18 = *(qword_100B66278[v17] + 8);
      if (v18)
      {
        v18(a1, a2, a3, v16);
        if (*(a1 + 127) == 1)
        {
          sub_1002C0B70(a1, 7);
        }
      }

      ++v17;
    }

    while (word_100B66270 > v17);
  }

  if (off_100B66308)
  {
    if (!sub_1000C0E38())
    {
      off_100B66308();
      off_100B66308 = 0;
    }
  }
}

uint64_t sub_1002CF444(uint64_t result)
{
  v1 = word_100B66270;
  if (word_100B66270)
  {
    v2 = result;
    v3 = 0;
    do
    {
      v4 = *(qword_100B66278[v3] + 16);
      if (v4)
      {
        result = v4(v2);
        v1 = word_100B66270;
      }

      ++v3;
    }

    while (v1 > v3);
  }

  return result;
}

uint64_t sub_1002CF4B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = word_100B66270;
  if (word_100B66270)
  {
    v14 = result;
    v15 = 0;
    do
    {
      v16 = *(qword_100B66278[v15] + 24);
      if (v16)
      {
        result = v16(v14, a2, a3, a4, a5, a6, a7);
        v7 = word_100B66270;
      }

      ++v15;
    }

    while (v7 > v15);
  }

  return result;
}

uint64_t sub_1002CF564(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = word_100B66270;
  if (word_100B66270)
  {
    v12 = result;
    v13 = 0;
    do
    {
      v14 = *(qword_100B66278[v13] + 32);
      if (v14)
      {
        result = v14(v12, a2, a3, a4, a5, a6);
        v6 = word_100B66270;
      }

      ++v13;
    }

    while (v6 > v13);
  }

  return result;
}

void sub_1002CF610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_10000C240())
  {
    sub_1002BE488(*(a2 + 132));
    sub_10000AF54("ReadRemoteVersionInformationCB LMPVersion=%d mfgName=%d LMPSubVersion=%d status %!, ready: %s, role %d", v13, v14, v15, v16, v17, v18, v19, a3);
    v20 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v51 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!a1)
  {
    if (*(a2 + 132) != 1)
    {
      sub_1000D660C();
    }

    *(a2 + 132) = 5;
    if (a3 <= 6)
    {
      v38 = 0;
      *(a2 + 126) = 0;
LABEL_21:
      sub_1002CE094(a2, v38);
      return;
    }

    if (!*(a2 + 70) || (byte_100BCDFFC & 8) != 0)
    {
      if ((*(a2 + 356) & 1) == 0)
      {
        v40 = sub_1002C1E34(a2, v6, v7, v8, v9, v10, v11, v12);
        if (!v40)
        {
          *(a2 + 132) = 2;
          *(a2 + 126) = 0;
          return;
        }

        v38 = v40;
        if (sub_10000C240())
        {
          sub_10000AF54("ReadRemoteUsedFeatures failed %!", v41, v42, v43, v44, v45, v46, v47, v38);
          v48 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

LABEL_18:
        v39 = *(a2 + 132);
        *(a2 + 126) = 0;
        if (v39 != 5)
        {
          return;
        }

        goto LABEL_21;
      }

      *(a2 + 132) = 2;
      if (sub_10000C240())
      {
        sub_10000AF54("FastLEConnection:LE_GAP_ReadRemoteVersionInformationCompleteCallback skipping LE_ReadRemoteUsedFeatures due to FastLEConnection", v29, v30, v31, v32, v33, v34, v35, v49);
        v36 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = sub_10000C0FC();
          *buf = 136446210;
          v51 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }

    v38 = 0;
    goto LABEL_18;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("ReadRemoteVersionInformationCB %!, waiting for disconnection event", v21, v22, v23, v24, v25, v26, v27, a1);
    v28 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002CF894(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = a3[1];
  *(a2 + 322) = (a3[4] & 0x60) != 0;
  if (a1 && *(a2 + 140) == 5300)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("ReadRemoteUsedFeaturesCB %!, waiting for disconnection event", v8, v9, v10, v11, v12, v13, v14, a1);
      v15 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return;
  }

  if (*(a2 + 132) != 2)
  {
    sub_1000D660C();
  }

  if (a1)
  {
    if (a1 == 726)
    {
      v16 = 0;
    }

    else
    {
      v16 = a1;
    }

    sub_1002CE094(a2, v16);
    return;
  }

  if ((v7 & 1) != 0 && sub_10023DE54() && (sub_10024E40C() & 1) == 0)
  {
    v17 = *(a2 + 152) ^ 1;
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = 0;
    if ((v6 & 0x20) == 0)
    {
LABEL_19:
      v18 = 0;
      goto LABEL_22;
    }
  }

  v18 = sub_10023DE44();
LABEL_22:
  if (sub_10000C240())
  {
    sub_1002BE488(*(a2 + 132));
    sub_10023DE44();
    sub_10023DE54();
    sub_10023DE64();
    sub_10000AF54("Remote Features: %@ , handle %x, ready: %s, EDL [remote %d, local %d], 2M [remote %d, local %d], ChanSel2 [remote %d, local %d] PHYReady:%s, SupportsSubrating: %d", v19, v20, v21, v22, v23, v24, v25, a3);
    v26 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v38 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (((v17 | v18) & 1) != 0 && (v17 & 1 | ((v18 & 1) == 0) || *(a2 + 136) != 1))
  {
    if (*(a2 + 153) != 1)
    {
      sub_1002C2EBC(a2, v18, v17 & 1, 0);
      return;
    }

    v27 = sub_1002BFF20(a2, 4u);
    if (v27)
    {
      v28 = v27;
      if (v27 != 4000)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("PhyUpdateComplete LE scaling completed with error %!", v29, v30, v31, v32, v33, v34, v35, v28);
          v36 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }
    }
  }

  sub_1002CE094(a2, 0);
}

uint64_t sub_1002CFBA4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = word_100B662B8;
  if (word_100B662B8)
  {
    v6 = result;
    v7 = 0;
    do
    {
      v8 = **(&unk_100B662C0 + v7);
      if (v8)
      {
        result = v8(v6, a2, a3);
        v3 = word_100B662B8;
      }

      ++v7;
    }

    while (v3 > v7);
  }

  return result;
}

uint64_t sub_1002CFC28(uint64_t result, uint64_t a2)
{
  v2 = word_100B662B8;
  if (word_100B662B8)
  {
    v4 = result;
    v5 = 0;
    do
    {
      v6 = *(qword_100B662C0[v5] + 8);
      if (v6)
      {
        result = v6(v4, a2);
        v2 = word_100B662B8;
      }

      ++v5;
    }

    while (v2 > v5);
  }

  return result;
}

uint64_t sub_1002CFCA4(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, __int16 a9, char a10, char a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  v20 = result;
  v15 = word_100B662B8;
  if (word_100B662B8)
  {
    v16 = 0;
    do
    {
      v17 = *(qword_100B662C0[v16] + 16);
      if (v17)
      {
        LOBYTE(v19) = a15;
        BYTE4(v18) = a12;
        BYTE3(v18) = a11;
        BYTE2(v18) = a10;
        LOWORD(v18) = a9;
        result = v17(v20, a2, a3, a4, a5, a6, a7, a8, v18, a13, a14, v19);
        v15 = word_100B662B8;
      }

      ++v16;
    }

    while (v15 > v16);
  }

  return result;
}

uint64_t sub_1002CFDF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9)
{
  v9 = word_100B662B8;
  if (word_100B662B8)
  {
    v13 = result;
    v14 = 0;
    do
    {
      v15 = *(qword_100B662C0[v14] + 24);
      if (v15)
      {
        result = v15(v13, a2, a3, a4, a5, a6, a7, a8, a9);
        v9 = word_100B662B8;
      }

      ++v14;
    }

    while (v9 > v14);
  }

  return result;
}

uint64_t sub_1002CFED0(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, __int16 a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = word_100B662B8;
  if (word_100B662B8)
  {
    v15 = result;
    v16 = 0;
    do
    {
      v17 = *(qword_100B662C0[v16] + 32);
      if (v17)
      {
        BYTE2(v18) = a10;
        LOWORD(v18) = a9;
        result = v17(v15, a2, a3, a4, a5, a6, a7, a8, v18, a11, a12, a13, a14);
        v14 = word_100B662B8;
      }

      ++v16;
    }

    while (v14 > v16);
  }

  return result;
}

uint64_t sub_1002CFFA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = word_100B662B8;
  if (word_100B662B8)
  {
    v16 = result;
    v17 = 0;
    do
    {
      v18 = qword_100B662C0[v17];
      if (*(v18 + 32))
      {
        result = (*(v18 + 40))(v16, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
        v11 = word_100B662B8;
      }

      ++v17;
    }

    while (v11 > v17);
  }

  return result;
}

uint64_t sub_1002D007C(uint64_t a1, _WORD *a2)
{
  if (!a2)
  {
    return 101;
  }

  if (!dword_100BCE338)
  {
    return 103;
  }

  if (!sub_1000ABD24(a1))
  {
    return 4051;
  }

  result = 0;
  *a2 = *(a1 + 80);
  return result;
}

uint64_t sub_1002D00E4(uint64_t a1, __int16 *a2)
{
  if (!a2)
  {
    return 101;
  }

  if (!dword_100BCE338)
  {
    return 103;
  }

  if (!sub_1000ABD24(a1))
  {
    return 149;
  }

  result = 0;
  v5 = *(a1 + 86);
  if (!v5)
  {
    v5 = 12;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1002D0158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  if (!sub_1000ABD24(a1))
  {
    return 4052;
  }

  if (a3)
  {
    v6 = a1 + 48;
    if (*(a1 + 55) == 1)
    {
      v7 = *(a1 + 56);
      v8 = *(a1 + 60);
      *(a3 + 6) = *(a1 + 62);
      *(a3 + 4) = v8;
      *a3 = v7;
    }

    else
    {
      *(a3 + 3) = 0;
      *a3 = 0;
    }
  }

  else
  {
    v10 = 48;
    if (*(a1 + 55))
    {
      v10 = 56;
    }

    v6 = a1 + v10;
  }

  result = 0;
  v11 = *v6;
  v12 = *(v6 + 4);
  *(a2 + 6) = *(v6 + 6);
  *(a2 + 4) = v12;
  *a2 = v11;
  return result;
}

uint64_t sub_1002D0224(uint64_t a1)
{
  result = 0;
  if (a1 && dword_100BCE338)
  {
    result = sub_1000ABD24(a1);
    if (result)
    {
      return *(a1 + 80);
    }
  }

  return result;
}

uint64_t sub_1002D026C(uint64_t a1)
{
  result = 0;
  if (a1 && dword_100BCE338)
  {
    result = sub_1000ABD24(a1);
    if (result)
    {
      return *(a1 + 82);
    }
  }

  return result;
}

uint64_t sub_1002D02B4(uint64_t a1)
{
  result = 0;
  if (a1 && dword_100BCE338)
  {
    result = sub_1000ABD24(a1);
    if (result)
    {
      return *(a1 + 84);
    }
  }

  return result;
}

uint64_t sub_1002D02FC()
{
  if (!off_100B66310)
  {
    return 121;
  }

  off_100B66310();
  return 0;
}

uint64_t sub_1002D0330(__int128 *a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, int a6, int a7, int a8, unsigned __int16 a9, unsigned int a10, char a11)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  if (a1 && sub_1000ABD24(a1))
  {
    if (a10 == 1)
    {

      return sub_1002C1240(a1, a2, a3, a4, a5, a6, a7, a8, a9, a11);
    }

    else if (a10)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid LE Connection Parameter Request Origin type: %d", v28, v29, v30, v31, v32, v33, v34, a10);
        v35 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 101;
    }

    else
    {

      return sub_1002DCD54(a1, a2, a3 ^ 1u, a4, a5, a6, a7, a8, a9);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This handle is not a LE connection.", v20, v21, v22, v23, v24, v25, v26, v36);
      v27 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1310;
  }
}

uint64_t sub_1002D0518(uint64_t a1)
{
  v2 = word_100B66318;
  v3 = word_100B66318;
  if (word_100B66318)
  {
    if (word_100B66318 == 8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Can't add anymore callbacks.", v4, v5, v6, v7, v8, v9, v10, v1);
        v11 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 4053;
    }

    else
    {
      v13 = 0;
      while (qword_100B66320[v13] != a1)
      {
        if (word_100B66318 <= ++v13)
        {
          v3 = v13;
          goto LABEL_11;
        }
      }

      return 0;
    }
  }

  else
  {
LABEL_11:
    v12 = 0;
    qword_100B66320[v3] = a1;
    word_100B66318 = v2 + 1;
  }

  return v12;
}

uint64_t sub_1002D05E8(uint64_t result)
{
  if (word_100B66318)
  {
    v1 = 0;
    while (qword_100B66320[v1] != result)
    {
      if (word_100B66318 <= ++v1)
      {
        return result;
      }
    }

    v3 = qword_100B66320[--word_100B66318];
    v2 = word_100B66318;
    qword_100B66320[v1] = v3;
    qword_100B66320[v2] = 0;
  }

  return result;
}

void sub_1002D063C()
{
  if (word_100B66318)
  {
    v0 = 0;
    do
    {
      v1 = v0;
      v2 = qword_100B66320[v0];
      if (v2 || (sub_1000D660C(), (v2 = qword_100B66320[v1]) != 0))
      {
        v2();
      }

      v0 = v1 + 1;
    }

    while (word_100B66318 > (v1 + 1));
  }
}

uint64_t sub_1002D06A4(uint64_t a1)
{
  v2 = word_100B66360;
  v3 = word_100B66360;
  if (word_100B66360)
  {
    if (word_100B66360 == 8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Can't add anymore callbacks.", v4, v5, v6, v7, v8, v9, v10, v1);
        v11 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 4053;
    }

    else
    {
      v13 = 0;
      while (qword_100B66368[v13] != a1)
      {
        if (word_100B66360 <= ++v13)
        {
          v3 = v13;
          goto LABEL_11;
        }
      }

      return 0;
    }
  }

  else
  {
LABEL_11:
    v12 = 0;
    qword_100B66368[v3] = a1;
    word_100B66360 = v2 + 1;
  }

  return v12;
}

void sub_1002D0774()
{
  if (word_100B66360)
  {
    v0 = 0;
    do
    {
      v1 = v0;
      v2 = qword_100B66368[v0];
      if (v2 || (sub_1000D660C(), (v2 = qword_100B66368[v1]) != 0))
      {
        v2();
      }

      v0 = v1 + 1;
    }

    while (word_100B66360 > (v1 + 1));
  }
}

uint64_t sub_1002D07DC(uint64_t (*a1)(void))
{
  if (off_100B66310)
  {
    if (off_100B66310 == a1)
    {
      return 0;
    }

    else
    {
      return 119;
    }
  }

  else
  {
    result = 0;
    off_100B66310 = a1;
  }

  return result;
}

uint64_t sub_1002D0808(void *a1)
{
  if (off_100B663A8)
  {
    if (off_100B663A8 == a1)
    {
      return 0;
    }

    else
    {
      return 119;
    }
  }

  else
  {
    result = 0;
    off_100B663A8 = a1;
  }

  return result;
}

uint64_t sub_1002D0844(uint64_t a1)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  if ((byte_100B663B8 & a1) != 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE Role 0x%x already set.", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4054;
  }

  else
  {
    result = 0;
    byte_100B663B8 |= a1;
  }

  return result;
}

uint64_t sub_1002D08F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  v8 = a1;
  v9 = byte_100B663B8;
  if ((byte_100B663B8 & a1) != 0)
  {
    byte_100B663B8 &= ~a1;
    v10 = (v9 & ~a1 & 0xA) == 0 && (v9 & 0xA) != 0;
    v11 = (v9 & ~a1 & 8) == 0;
    v12 = (v9 & ~a1 & 5) == 0 && (v9 & 5) != 0;
    if ((v9 & 4) != 0 && (v9 & ~a1 & 4) == 0)
    {
      a1 = sub_1002B1E80();
      v12 |= a1;
    }

    v13 = v11 & (v9 >> 3);
    if (v10)
    {
      a1 = sub_10007B570();
      if (!v13)
      {
LABEL_14:
        if (!v12)
        {
          return 0;
        }

        goto LABEL_22;
      }
    }

    else if (!v13)
    {
      goto LABEL_14;
    }

    sub_1002D0A0C(a1, a2, a3, a4, a5, a6, a7, a8);
    if (v12)
    {
LABEL_22:
      sub_10008D888(0);
    }

    return 0;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("LE Role 0x%x not set.", v15, v16, v17, v18, v19, v20, v21, v8);
    v22 = sub_10000C050(0x42u);
    result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1000E09C0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002D0A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1002BFA54(0, a2, a3, a4, a5, a6, a7, a8);
  if (sub_10000EFCC() && v8 == 1302)
  {
    sub_100256B30();
  }

  return v8;
}

void sub_1002D0A4C(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("LE_GAP_ConfigureAppleADVTypePowerAssertionMask mask:%llu", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v11 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  qword_100BCE1F0 = a1;
}

uint64_t sub_1002D0B18()
{
  result = sub_10008D2E4();
  dword_100B6A56C = 0;
  return result;
}

uint64_t sub_1002D0B38()
{
  sub_100304AF8("LE_GAP:\n");
  sub_100304AF8("gOverrideLocalAddress:%d gPrivateMode:%d gLePrivateAddressTimer:%d gHoldStableAddress=%d gLeHoldStablePrivateAddressTimer=%d callCount=%d\n", byte_100B6A5B1, byte_100B6A5B0, dword_100B6A5BC, byte_100B6A5C4, dword_100B6A5C0, word_100B6A5C6);
  sub_100304AF8("gNoAddressRotationWhileScanningOrConnecting=%d gRefreshLocalAddressOnConnectionComplete=%d gRefreshLocalAddressOnScanComplete=%d gAddressRefreshFirstDeferral=%ld.%d\n", byte_100B66300, byte_100B6A5CB, dword_100B6A5CC, word_100B6A5D0, v2);
  sub_100304AF8("gRefreshLocalAddressOnAdvertisingSettled=%d", byte_100B6A5C8);
  sub_100304AF8("supportedStates:%@ ADFlags:%x LeRoles:%x LeCurrentAddressType:%x discoveryType:%x\n", &qword_100B663B0, 8, byte_100B663B9, byte_100B663B8, byte_100B6A57D, byte_100B663D8);
  sub_100304AF8("gPeripheralPrivacyFlagEnabled:%x gLeBondable:%x gAutoAddressRefresh:%x\n", byte_100B6A5B2, byte_100B6A5B8, byte_100B53E24);
  sub_100304AF8("gPrivateAddressRotateInterval=%d gPrivateAddressRotateIntervalOverride=%d\n\n", 6000, word_100B6A5D4);
  sub_100304AF8("gAddressRotationInProgress=%d", byte_100B6A5C9);
  sub_100304AF8("gFastLeConnectionMaxSlots=%d gFastLeConnectionUsedSlots=%d MAX_FAST_LE_CONNECTION_LIST_SIZE=%d", byte_100B6A5E8, byte_100B6A5E9, 32);
  sub_100304AF8("Advertising TX Power:\n");
  if (sub_1002B16A8())
  {
    v0 = 0;
    do
    {
      sub_100304AF8("\tInstance:%d power:%d\n", v0, *(&dword_100B6A578 + v0));
      ++v0;
    }

    while (v0 < sub_1002B16A8());
  }

  sub_1002C3F04();
  sub_1002B43BC();
  sub_1002D9E4C();

  return sub_10021907C();
}

void sub_1002D0D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_10000C240())
  {
    sub_10000AF54("_initMultipleAdvertisingLocalCB", v6, v7, v8, v9, v10, v11, v12, *v14);
    v13 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 136446210;
      *&v14[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", v14, 0xCu);
    }
  }

  if (!a1)
  {
    sub_1002D0E2C();
  }

  if (off_100B6A570)
  {
    off_100B6A570(a1, a2, a3);
  }

  off_100B6A570 = 0;
}

void sub_1002D0E2C()
{
  byte_100B6A5B2 = byte_100B6A57D != 0;
  sub_1002D14F4((&dword_100B6A57E[2 * byte_100B6A57D] - byte_100B6A57D), 1);
  if (!byte_100B6A57D)
  {
    sub_1002BFDEC(0, v0, v1, v2, v3, v4, v5, v6);
    sub_1002B1E10(0);

    sub_1002D9C80(0);
  }
}

uint64_t sub_1002D0EB0(unsigned int a1, char a2, int a3, uint64_t (*a4)(void, void, void))
{
  byte_100B6A558 = 0;
  off_100B6A560 = 0;
  byte_100B6A568 = 0;
  dword_100B6A578 = 2139062143;
  byte_100B6A57C = 127;
  if (a1 >= 5)
  {
    sub_1000D660C();
    return 4062;
  }

  byte_100B6A57D = a1;
  byte_100B53E24 = a2;
  bzero(&unk_100B663E0, 0x4178uLL);
  v7 = sub_1002D10A0();
  if (v7)
  {
    v4 = v7;
    if (sub_10000C240())
    {
      sub_10000AF54("LE_GAP_GenerateAddress failed with status %!", v8, v9, v10, v11, v12, v13, v14, v4);
      v15 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_7:
        sub_1000E09C0();
      }
    }
  }

  else
  {
    off_100B6A570 = a4;
    if (a3)
    {
      v4 = sub_1002B2338(sub_1002D0D34);
      if (v4)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("LE_InitMultipleAdvertising failed with status %!", v17, v18, v19, v20, v21, v22, v23, v4);
          v24 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {
      sub_1002D0E2C();
      off_100B6A5A8 = a4;
      if (!a4)
      {
        return 0;
      }

      v4 = sub_10002195C(sub_1002D114C, 0, 0, 0);
      if (v4)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not register LE GAP Init Callback timer, status:%!", v25, v26, v27, v28, v29, v30, v31, v4);
          v32 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        return 4062;
      }
    }
  }

  return v4;
}

uint64_t sub_1002D10A0()
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  if (byte_100B6A57D != 3)
  {
    return 0;
  }

  v0 = sub_1002D2260(3);
  if (v0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("creaetAddress with address type %d failed with error %! in LE_GAP_GenerateAddress", v1, v2, v3, v4, v5, v6, v7, byte_100B6A57D);
      v8 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v0;
}

uint64_t sub_1002D1164(unint64_t a1)
{
  if (byte_100B6A5B0 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot override local address while in private mode", v1, v2, v3, v4, v5, v6, v7, v37);
      v8 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 408;
  }

  if (!a1)
  {
    byte_100B6A5B1 = 0;
    sub_1002CE968();
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("Going back to self rotating address", v21, v22, v23, v24, v25, v26, v27, v37);
    v28 = sub_10000C050(0x42u);
    result = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136446210;
    v39 = sub_10000C0FC();
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    return 0;
  }

  if ((a1 & 0xFF000000000000) != 0)
  {
    sub_1002D1404();
    byte_100B6A5B1 = 1;
    v11 = &dword_100B6A57E[2 * byte_100B6A57D] - byte_100B6A57D;
    v11[6] = a1;
    *(v11 + 2) = ((a1 << 16) & 0xFF00000000 | (BYTE1(a1) << 40)) >> 32;
    *v11 = a1 & 0xFF000000 | (a1 >> 16) & 0xFF0000 | WORD2(a1) & 0xFF00 | BYTE6(a1);
    if (sub_10000C240())
    {
      v19 = *(&dword_100B6A57E[2 * byte_100B6A57D] - byte_100B6A57D) ? "Random" : "Public";
      sub_10000AF54("Overriding address to %s:%:", v12, v13, v14, v15, v16, v17, v18, v19);
      v20 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v39 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    sub_1002D14F4((&dword_100B6A57E[2 * byte_100B6A57D] - byte_100B6A57D), 0);
    return 0;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Cannot set local public address !", v29, v30, v31, v32, v33, v34, v35, v37);
    v36 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 101;
}

uint64_t sub_1002D1404()
{
  if (sub_10000C240())
  {
    sub_10000AF54("Canceling PrivateAddressTimer gPrivateMode=%d gOverrideLocalAddress=%d gHoldStableAddress=%d", v0, v1, v2, v3, v4, v5, v6, byte_100B6A5B0);
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v10 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  result = dword_100B6A5BC;
  if (dword_100B6A5BC)
  {
    result = sub_10002242C(dword_100B6A5BC);
    dword_100B6A5BC = 0;
  }

  return result;
}

void sub_1002D14F4(int *a1, int a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("_refreshLeAddressHelper gNeedToStopAdvertisingWhenAddressChanges=%d gOverrideLocalAddress:%d gHoldStableAddress=%d callCount=%d gLeHoldStablePrivateAddressTimer=%d gLeCurrentAddress=%d gLeNonConnectableAddressType=%d gLeNonConnectableSecondaryAddressType=%d", v4, v5, v6, v7, v8, v9, v10, byte_100B6A568);
    v11 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  byte_100B6A5C9 = 1;
  if (byte_100B6A568 == 1)
  {
    byte_100B6A568 = 0;
    sub_1002B16B4(1);
  }

  sub_1002D0774();
  if (!sub_10008E070() || !a2)
  {
    goto LABEL_21;
  }

  if (*a1 == 1)
  {
    sub_1002B2304(a1, 0);
    sub_1002B213C(a1, 4u, 0);
  }

  v67 = 0;
  v66 = 0;
  v65 = 1;
  arc4random_buf(&v66, 6uLL);
  LOBYTE(v66) = v66 & 0x3F;
  if (byte_100B53E26 == 1)
  {
    if (byte_100B53E25 == 3)
    {
      v39 = sub_1002E8318();
      v64 = 0;
      v63 = 0;
      *&buf[5] = 0;
      *&buf[1] = 0;
      buf[0] = 1;
      do
      {
        arc4random_buf(&buf[1], 3uLL);
        v40 = *&buf[1] == v63 && buf[3] == BYTE2(v63);
      }

      while (v40 || !(*&buf[1] ^ 0xFF | buf[3]));
      buf[1] = buf[1] & 0x3F | 0x40;
      v41 = sub_1002E6664(&buf[1], 1);
      if (v41)
      {
        v42 = v41;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to generate a non connectable random address with status %! for address %:, falling back to non resolvable", v43, v44, v45, v46, v47, v48, v49, v42);
          v50 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }

      else
      {
        v62 = 0;
        v61 = 0;
        v51 = sub_1000457E4(v39, &buf[1], &v61);
        if (!v51)
        {
          v12 = buf;
          goto LABEL_14;
        }

        v52 = v51;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to resolve the non connectable random address with status %! for address %:, falling back to non resolvable", v53, v54, v55, v56, v57, v58, v59, v52);
          v60 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }

      sub_1002B213C(&v65, 1u, 0);
      return;
    }

    if (byte_100B53E25 == 2)
    {
      v12 = &v65;
LABEL_14:
      sub_1002B213C(v12, 1u, 0);
    }
  }

  if (sub_10000C240())
  {
    v20 = byte_100B53E26 ? "  Non Connectable:" : "";
    sub_10000AF54("_refreshLeAddressHelper %@%@%@%@", v13, v14, v15, v16, v17, v18, v19, v20);
    v21 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = sub_10000C0FC();
      *buf = 136446210;
      *&buf[4] = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

LABEL_21:
  if (sub_1002B338C())
  {
    sub_1002B3E70();
  }

  if (*a1)
  {
    sub_100018960(165, sub_1002D40C0, v23, v24, v25, v26, v27, v28, a1 + 1);
  }

  else
  {
    v29 = sub_10002195C(sub_1002D408C, 0, 0, 0);
    if (v29)
    {
      v30 = v29;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to register a fake GAPAddressTypeChangedCB status:%!", v31, v32, v33, v34, v35, v36, v37, v30);
        v38 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1002D1404();
      sub_1002D4144();
      byte_100B6A5C9 = 0;
      sub_1002D063C();
    }
  }

  sub_100256B30();
}

uint64_t sub_1002D19A8()
{
  if (sub_10000C240())
  {
    sub_10000AF54("LE_GAP_TerminateAdvertising", v0, v1, v2, v3, v4, v5, v6, *v17);
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 136446210;
      *&v17[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", v17, 0xCu);
    }
  }

  sub_10008D888(0);
  byte_100B6A558 = 0;
  off_100B6A560 = 0;
  byte_100B6A57D = 0;
  sub_1002B2118();
  return sub_1002B2A24(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1002D1A8C(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned __int8 a7, unsigned __int8 a8)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  if ((qword_100B663B0 & 0x40) != 0)
  {
    if ((byte_100B663B8 & 8) != 0)
    {
      if (sub_1002E9960())
      {
        if (a1)
        {
          v33 = a1;
        }

        else
        {
          v33 = 204;
        }

        if (a2)
        {
          v34 = a2;
        }

        else
        {
          v34 = 108;
        }

        if (a5)
        {
          v35 = a5;
        }

        else
        {
          v35 = 20;
        }

        v16 = sub_1002BEFAC(v33, v34, v35, a6, 0, 12, a3, a4, a7, a8);
        if (v16)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Could not start auto-connect : %!", v36, v37, v38, v39, v40, v41, v42, v16);
            v43 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }
        }
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("There are no devices in the filter accept list. Can't trigger auto-connection.", v44, v45, v46, v47, v48, v49, v50, v53);
          v51 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        return 4066;
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("We can only be in auto connection mode in Central role.", v17, v18, v19, v20, v21, v22, v23, v53);
        v24 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 4065;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Device does not support incoming connections.", v8, v9, v10, v11, v12, v13, v14, v53);
      v15 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1330;
  }

  return v16;
}

uint64_t sub_1002D1C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  if (a1 && sub_1000ABD24(a1))
  {
    if (*(a1 + 70) == 1)
    {

      return sub_1002DCF5C(a1, a2, a3, a4, a5);
    }

    else
    {

      return sub_1002C1774(a1, a2, a3, a4, a5, a6, a7);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This handle is not a LE connection.", v15, v16, v17, v18, v19, v20, v21, v23);
      v22 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1310;
  }
}

uint64_t sub_1002D1DC0(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  if (a1 && sub_1000ABD24(a1))
  {

    return sub_1002C1CB4(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This handle is not a LE connection.", v13, v14, v15, v16, v17, v18, v19, v21);
      v20 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1310;
  }
}

uint64_t sub_1002D1EAC(_DWORD *a1)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  v1 = sub_1000E5EA8(a1);

  return sub_1002CDF48(v1);
}

uint64_t sub_1002D1EEC(uint64_t (*a1)(void))
{
  v12 = 0;
  if (!dword_100BCE338)
  {
    return 103;
  }

  while (sub_1000C08D0(&v12))
  {
    if (*(v12 + 124) != 7)
    {
      if (sub_1002CDF48(v12))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to disconnect handle %x (address %:)", v2, v3, v4, v5, v6, v7, v8, v12);
          v9 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = sub_10000C0FC();
            *buf = 136446466;
            v14 = v10;
            v15 = 1024;
            v16 = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }
      }

      off_100B66308 = a1;
    }
  }

  if (off_100B66308)
  {
    return 0;
  }

  else
  {
    return 122;
  }
}

uint64_t sub_1002D2088(uint64_t a1, char a2)
{
  if (!sub_1000ABD24(a1))
  {
    return 414;
  }

  result = 0;
  *(a1 + 152) = a2;
  return result;
}

uint64_t sub_1002D20C8(char a1)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  result = 0;
  byte_100B6A5B8 = a1;
  return result;
}

uint64_t sub_1002D2100(uint64_t a1, int a2)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  if ((byte_100B663B8 & 0xC) != 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE_GAP is Asking to pair... because someone called StartBonding.", v4, v5, v6, v7, v8, v9, v10, *v21);
      v11 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 136446210;
        *&v21[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", v21, 0xCu);
      }
    }

    return sub_1002E73A0(a1, a2);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("We can only pair in Central or peripheral role.", v13, v14, v15, v16, v17, v18, v19, *v21);
      v20 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4068;
  }
}

uint64_t sub_1002D2260(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v2 = 0;
      LOBYTE(dword_100B6A57E[0]) = 0;
      *(dword_100B6A57E + 1) = xmmword_100BCDFD8;
      *(&word_100B6A582 + 1) = WORD2(xmmword_100BCDFD8);
      return v2;
    }

    if (a1 == 1)
    {
      byte_100B6A585 = 1;
      arc4random_buf(&byte_100B6A586, 6uLL);
      v2 = 0;
      byte_100B6A586 |= 0xC0u;
      return v2;
    }

    goto LABEL_14;
  }

  if (a1 == 2)
  {
    byte_100B6A58C = 1;
    while (1)
    {
      do
      {
        arc4random_buf(&dword_100B6A58D, 6uLL);
      }

      while (!(dword_100B6A58D | word_100B6A591));
      if (dword_100B6A58D ^ 0xFF | word_100B6A591)
      {
        if (dword_100B6A58D != xmmword_100BCDFD8 || word_100B6A591 != WORD2(xmmword_100BCDFD8))
        {
          break;
        }
      }
    }

    v2 = 0;
    LOBYTE(dword_100B6A58D) = dword_100B6A58D & 0x3F;
  }

  else
  {
    if (a1 != 3)
    {
LABEL_14:
      sub_1000D660C();
      v2 = 4069;
LABEL_15:
      if (sub_10000C240())
      {
        sub_10000AF54("Could not generate a new address of type %d with status %!.", v13, v14, v15, v16, v17, v18, v19, a1);
        v20 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return v2;
    }

    v3 = sub_1002E8314();
    byte_100B6A593 = 1;
    do
    {
      do
      {
        arc4random_buf(&word_100B6A594, 3uLL);
      }

      while (!(word_100B6A594 | byte_100B6A596));
    }

    while (!(word_100B6A594 ^ 0xFF | byte_100B6A596));
    LOBYTE(word_100B6A594) = word_100B6A594 & 0x3F | 0x40;
    v4 = sub_1002E6664(&word_100B6A594, 0);
    if (!v4)
    {
      v24 = 0;
      v23 = 0;
      v2 = sub_1000457E4(v3, &word_100B6A594, &v23);
      if (!v2)
      {
        return v2;
      }

      goto LABEL_15;
    }

    v2 = v4;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to generate a random address with status %! for address %:", v5, v6, v7, v8, v9, v10, v11, v2);
      v12 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v2;
}

void sub_1002D24BC(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("EnablePrivateMode:%d", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v11 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  byte_100B6A5B0 = a1;
  if ((a1 & 1) == 0)
  {
    sub_1002CE968();
  }
}

uint64_t sub_1002D2590(unsigned int a1, char a2)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  if (a1 < 5 && a1)
  {
    byte_100B53E25 = a1;
    byte_100B53E26 = a2;
    sub_1002D14F4((&dword_100B6A57E[2 * byte_100B6A57D] - byte_100B6A57D), 1);
    return 0;
  }

  else
  {
    sub_1000D660C();
    return 4071;
  }
}

uint64_t sub_1002D260C()
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  v0 = byte_100B6A57D;
  byte_100B6A5B2 = byte_100B6A57D != 0;
  if (byte_100B6A57D == 3)
  {
    v1 = sub_1002D2260(3);
    if (v1)
    {
      v2 = v1;
      if (sub_10000C240())
      {
        sub_10000AF54("createAddress with type %d failed with status %! in LE_GAP_RefreshAddress", v3, v4, v5, v6, v7, v8, v9, byte_100B6A57D);
        v10 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return v2;
    }

    v0 = byte_100B6A57D;
  }

  sub_1002D14F4((&dword_100B6A57E[2 * v0] - v0), 1);
  if (!byte_100B6A57D)
  {
    sub_1002BFDEC(0, v11, v12, v13, v14, v15, v16, v17);
    sub_1002B1E10(0);
    sub_1002D9C80(0);
  }

  return 0;
}

char *sub_1002D2704(int a1, uint64_t a2)
{
  if (a1)
  {
    result = sub_1002B2128(a1);
  }

  else
  {
    result = &dword_100B6A57E[2 * byte_100B6A57D] - byte_100B6A57D;
  }

  v4 = *result;
  v5 = *(result + 2);
  *(a2 + 6) = result[6];
  *(a2 + 4) = v5;
  *a2 = v4;
  return result;
}

uint64_t sub_1002D2760(uint64_t result)
{
  v1 = dword_100B6A57E[0];
  v2 = word_100B6A582;
  *(result + 6) = byte_100B6A584;
  *(result + 4) = v2;
  *result = v1;
  return result;
}

uint64_t sub_1002D2784()
{
  if (BYTE9(xmmword_100BCE038) != 1)
  {
    return 0;
  }

  if (dword_100BCE338)
  {
    return 140;
  }

  LOBYTE(dword_100B6A57E[0]) = 0;
  *(dword_100B6A57E + 1) = xmmword_100BCDFD8;
  *(&word_100B6A582 + 1) = WORD2(xmmword_100BCDFD8);
  sub_1002D2260(2);
  byte_100B6A585 = 1;
  arc4random_buf(&byte_100B6A586, 6uLL);
  byte_100B6A586 |= 0xC0u;
  byte_100B6A57D = 0;
  dword_100B6A5BC = 0;
  dword_100B6A5C0 = 0;
  v1 = (BYTE9(xmmword_100BCE038) & BYTE8(xmmword_100BCE038) & 1) != 0 ? 24 : 4;
  byte_100B663B9 |= v1;
  sub_1002DE54C(sub_1002D02FC);
  sub_1002DB89C(off_100AE9D78);
  sub_1002D9D0C();
  dword_100BCE338 = 1;
  off_100B66308 = 0;
  byte_100B6A5B0 = 0;
  byte_100B6A5B1 = 0;
  byte_100B6A5C4 = 0;
  word_100B6A5C6 = 0;
  byte_100B6A5C8 = 0;
  byte_100B6A5C9 = 0;
  if (byte_100B6A5CA)
  {
    return 0;
  }

  result = 0;
  byte_100B66300 = 0;
  byte_100B6A5CB = 0;
  dword_100B6A5CC = 0;
  word_100B6A5D0 = 0;
  return result;
}

uint64_t sub_1002D28F4(unsigned int a1, unsigned __int16 a2)
{
  if (dword_100B6A5C0)
  {
    sub_1002D430C();
  }

  v41 = 0;
  v4 = sub_100304E90(dword_100B6A5BC, &v41);
  if (v4)
  {
    v5 = v4;
    if (!sub_10000C240())
    {
      goto LABEL_7;
    }

    sub_10000AF54("Failed to read timeout value for private address refresh timer, status:%! gHoldStableAddress:%d gHoldStableAddressCount:%d ", v6, v7, v8, v9, v10, v11, v12, v5);
    v13 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v41 >= a1)
  {
    v5 = sub_10002195C(sub_1002D2B88, 0, a2, &dword_100B6A5C0);
    if (v5)
    {
      if (!sub_10000C240())
      {
        goto LABEL_7;
      }

      sub_10000AF54("Failed to register resetLeHoldStablePrivateAddress, status:%! gHoldStableAddress:%d gHoldStableAddressCount:%d ", v24, v25, v26, v27, v28, v29, v30, v5);
      v31 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

LABEL_6:
      sub_1000E09C0();
LABEL_7:
      sub_1002D430C();
      word_100B6A5C6 = 0;
      byte_100B6A5C4 = 0;
      return v5;
    }
  }

  else
  {
    v15 = sub_100304DC4(dword_100B6A5BC, a2);
    if (v15)
    {
      v5 = v15;
      if (!sub_10000C240())
      {
        goto LABEL_7;
      }

      sub_10000AF54("Failed to update private address refresh timer, status:%! gHoldStableAddress:%d gHoldStableAddressCount:%d", v16, v17, v18, v19, v20, v21, v22, v5);
      v23 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    ++word_100B6A5C6;
    v5 = 116;
  }

  byte_100B6A5C4 = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("EnableHoldStableAddress: gHoldStableAddressCount=%d gLeHoldStablePrivateAddressTimer=%d gLePrivateAddressTimer=%d", v32, v33, v34, v35, v36, v37, v38, word_100B6A5C6);
    v39 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = sub_10000C0FC();
      *buf = 136446210;
      v43 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return v5;
}

uint64_t sub_1002D2B88()
{
  if (sub_10000C240())
  {
    sub_10000AF54("LeHoldStablePrivateAddress expired:%d PrivateAddressTimer active:%s", v0, v1, v2, v3, v4, v5, v6, word_100B6A5C6);
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v10 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  result = sub_1002D430C();
  byte_100B6A5C4 = 0;
  word_100B6A5C6 = 0;
  return result;
}

uint64_t sub_1002D2C80(_DWORD *a1)
{
  v3 = 0;
  result = sub_100304E90(dword_100B6A5BC, &v3);
  if (!result)
  {
    *a1 = 100 * v3;
  }

  return result;
}

_BYTE *sub_1002D2CD0(_BYTE *result, _BYTE *a2, _BYTE *a3, _WORD *a4, _DWORD *a5, _DWORD *a6)
{
  *result = byte_100B6A5C4;
  *a2 = byte_100B6A5B1;
  *a3 = byte_100B6A5B0;
  *a4 = word_100B6A5C6;
  *a5 = dword_100B6A5BC;
  *a6 = dword_100B6A5C0;
  return result;
}

uint64_t sub_1002D2D1C(uint64_t result)
{
  v1 = 10 * result;
  if (result > 0xCCC)
  {
    v1 = 32766;
  }

  word_100B6A5D4 = v1;
  return result;
}

uint64_t sub_1002D2D48()
{
  if (BYTE9(xmmword_100BCE038) != 1)
  {
    return 0;
  }

  if (!dword_100BCE338)
  {
    return 103;
  }

  sub_1002D1404();
  sub_1002D430C();
  qword_100B663B0 = 0;
  sub_1002DB960(off_100AE9D78);
  sub_10028FDAC();
  sub_10029F160();
  byte_100B663B9 = 0;
  byte_100B663B8 = 0;
  byte_100B6A57D = 0;
  byte_100B663D8 = 0;
  off_100B66308 = 0;
  off_100B663C8 = 0;
  off_100B663D0 = 0;
  qword_100B663C0 = 0;
  byte_100B66300 = 0;
  byte_100B6A5CB = 0;
  byte_100B6A5C8 = 0;
  byte_100B6A5B0 = 0;
  byte_100B6A5B1 = 0;
  byte_100B6A5C4 = 0;
  word_100B6A5C6 = 0;
  byte_100B6A5C9 = 0;
  sub_1002D2F34();
  sub_1002D19A8();
  sub_1002E9A5C();
  sub_1001B9904();
  sub_1002E9060();
  sub_1002DEAB0();
  sub_1002D9DA8();
  sub_1002BE598();
  sub_1001B9450();
  sub_1002D2F7C();
  sub_1002D2FC0();
  if (dword_100B6A5D8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Canceling power assertion", v0, v1, v2, v3, v4, v5, v6, *v9);
      v7 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 136446210;
        *&v9[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", v9, 0xCu);
      }
    }

    sub_10002242C(dword_100B6A5D8);
    dword_100B6A5D8 = 0;
    qword_100B6A5E0 = 0;
    sub_1001BB87C();
  }

  result = 0;
  dword_100BCE338 = 0;
  return result;
}

uint64_t sub_1002D2F34()
{
  result = sub_1002B4224();
  if (result)
  {
    if (sub_1002B338C())
    {
      sub_1002B31C0();
    }

    return sub_1002B30C8(0, 0);
  }

  return result;
}

uint64_t sub_1002D2F7C()
{
  result = sub_100183954();
  if (result)
  {
    sub_100183188(result, v1, v2, v3, v4, v5, v6, v7);

    return sub_1001830C0(0, 0, 0);
  }

  return result;
}

uint64_t sub_1002D2FC0()
{
  result = sub_100183960();
  if (result)
  {
    sub_1001835C0(result, v1, v2, v3, v4, v5, v6, v7);

    return sub_1001834E8(0, 0, 0, 0, 0);
  }

  return result;
}

uint64_t sub_1002D300C(uint64_t (*a1)(void, void), uint64_t (*a2)(void, void))
{
  if (!sub_1002B4224())
  {
    return 0;
  }

  v4 = sub_1002B30C8(a1, a2);
  if (v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE_InitPeriodicAdvertising failed with status %!", v5, v6, v7, v8, v9, v10, v11, v4);
      v12 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v4;
}

uint64_t sub_1002D30A0(unsigned __int8 *a1)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  if (sub_1002B4224())
  {
    v2 = *a1;
    if (v2 >= sub_10008E070())
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid advHandle=%d", v20, v21, v22, v23, v24, v25, v26, *a1);
        v27 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 101;
    }

    else
    {
      v3 = sub_1002B3820(a1);
      if (v3)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("LE_StartPeriodicAdvertising failed with status %! advHandle=%d ", v4, v5, v6, v7, v8, v9, v10, v3);
          v11 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE GAP Periodic Advertising is not enabled", v12, v13, v14, v15, v16, v17, v18, v29);
      v19 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 117;
  }

  return v3;
}

uint64_t sub_1002D31E8(uint64_t a1)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  if ((sub_1002B4224() & 1) == 0)
  {
    if (!sub_10000C240())
    {
      return 117;
    }

    sub_10000AF54("LE GAP Periodic Advertising is not enabled", v11, v12, v13, v14, v15, v16, v17, v28);
    v18 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return 117;
    }

LABEL_14:
    sub_1000E09C0();
    return 117;
  }

  if (!sub_1002B338C())
  {
    if (!sub_10000C240())
    {
      return 117;
    }

    sub_10000AF54("LE_GAP_StopPeriodicAdvertising there is no active periodic advertising set.", v19, v20, v21, v22, v23, v24, v25, v28);
    v26 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      return 117;
    }

    goto LABEL_14;
  }

  v2 = sub_1002B3458(a1, 0);
  if (v2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE_StopPeriodicAdvertising failed with status %! advHandle=%d ", v3, v4, v5, v6, v7, v8, v9, v2);
      v10 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v2;
}

uint64_t sub_1002D331C(uint64_t a1)
{
  if ((byte_100B663B8 & 8) != 0)
  {

    return sub_100217AD4(a1);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("CIS central shall be enabled in the central role.", v2, v3, v4, v5, v6, v7, v8, v11);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 132;
  }
}

uint64_t sub_1002D3398(void **a1)
{
  if ((byte_100B663B8 & 4) != 0)
  {

    return sub_100218714(a1);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("CIS peripheral shall be enabled in the peripheral role.", v2, v3, v4, v5, v6, v7, v8, v11);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 132;
  }
}

uint64_t sub_1002D3414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a4)
  {
    return 101;
  }

  if ((byte_100B663B8 & 8) != 0)
  {

    return sub_1002183BC(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Only central can create CIS.", v8, v9, v10, v11, v12, v13, v14, v17);
      v15 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 132;
  }
}

uint64_t sub_1002D34A8(int a1, int a2, int a3)
{
  if ((byte_100B663B8 & 4) != 0)
  {

    return sub_100218728(a1, a2, a3);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Only peripheral can handle CIS request.", v4, v5, v6, v7, v8, v9, v10, v13);
      v11 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 132;
  }
}

void sub_1002D3528(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("LE_GAP_SetForceConnectionDelay Overriding Encryption and remote version information delay to %d", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  dword_100B6A5B4 = a1;
}

void sub_1002D35C4(int a1)
{
  if (a1)
  {
    dword_100BCE338 = 0;
    v1 = sub_1002D19A8();
    sub_1002E9800(v1, v2, v3, v4, v5, v6, v7, v8);
    sub_1002D9DA8();

    sub_1002BE4AC();
  }

  else
  {
    dword_100BCE338 = 1;
  }
}

uint64_t sub_1002D3634(unint64_t a1, char a2, char a3, char a4)
{
  if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
  {
    if (byte_100B6A5E8)
    {
      v4 = 0;
      v5 = byte_100B6A5E8 + 1;
      v6 = qword_100B6A5F0;
      v7 = byte_100B6A5E8 + 1;
      do
      {
        v9 = *v6;
        v6 += 2;
        v8 = v9;
        if (v5 >= byte_100B6A5E8 && v8 == 0)
        {
          v5 = v4;
        }

        if (v8 == a1)
        {
          v7 = v4;
        }

        ++v4;
      }

      while (byte_100B6A5E8 != v4);
      if (a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = 1;
      v5 = 1;
      if (a3)
      {
LABEL_14:
        if (byte_100B6A5E8 <= v5)
        {
          v21 = 106;
          goto LABEL_29;
        }

        if (byte_100B6A5E8 <= v7)
        {
          v11 = &qword_100B6A5F0[2 * v5];
          *v11 = a1;
          *(v11 + 8) = a2;
          *(v11 + 9) = a4;
          v12 = byte_100B6A5E9 + 1;
LABEL_25:
          v21 = 0;
          byte_100B6A5E9 = v12;
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    if (byte_100B6A5E8 <= v7)
    {
      v21 = 101;
      goto LABEL_29;
    }

    v22 = &qword_100B6A5F0[2 * v7];
    *v22 = 0;
    *(v22 + 4) = 0;
    if (byte_100B6A5E9)
    {
      v12 = byte_100B6A5E9 - 1;
      goto LABEL_25;
    }

LABEL_28:
    v21 = 0;
LABEL_29:
    v23 = (a1 << 32) & 0xFF0000000000 | (a1 << 48) | (a1 << 16) & 0xFF00000000 | a1 & 0xFF000000 | (a1 >> 16) & 0xFF0000 | WORD2(a1) & 0xFF00 | BYTE6(a1);
    if (sub_10000C240())
    {
      v31 = "Random";
      if (!v23)
      {
        v31 = "Public";
      }

      sub_10000AF54("FastLeConnection:LE_GAP_EnableFastLeConnectionForAddress %s:%: freeLocation:%d existingLocation:%d gFastLeConnectionMaxSlots:%d gFastLeConnectionUsedSlots:%d ret:%d", v24, v25, v26, v27, v28, v29, v30, v31);
      v32 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = sub_10000C0FC();
        *buf = 136446210;
        v37 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return v21;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("FastLeConnection:LE_GAP_IsFastLeConnectionEncryptionFakeEvent compare with zero address", v13, v14, v15, v16, v17, v18, v19, v35);
    v20 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 101;
}

void sub_1002D38AC(uint64_t a1, unsigned __int16 **a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("FastLEConnection:LE_GAP_FastLEConnectionReady status:%d role:%d address:%d localResolvableAddr:%d, peerResolvableAddr:%d interval:%d latency:%d timeout:%d centralClockAccuracy:%d LMPVersion:%d mfgr:%d LMPSubversion:%d featuresLength:%d txPHY:%d rxPHY:%d maxTxOctets:%d maxTxTime:%d maxRxOctets:%d maxRxTime:%d instantValue:%d", *(a2 + 62), *(a2 + 32), *(a2 + 33), *(a2 + 34), *(a2 + 35), *(a2 + 36), v4, a1);
    v5 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v53 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("FastLEConnection:LE_GAP_FastLEConnectionReady Fast LE Connection not succesful status:%d fastLEConnectEnabled:%d", v6, v7, v8, v9, v10, v11, v12, a1);
      v13 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_10000C0FC();
        *buf = 136446210;
        v53 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (*(*a2 + 356) == 1)
    {
      *(*a2 + 356) = 0;
      v15 = *a2;
      if (*(*a2 + 70))
      {
        v16 = sub_1002CDFF8(v15);
        if (v16)
        {
          v17 = v16;
          if (sub_10000C240())
          {
            sub_10000AF54("FastLEConnection:LE_GAP_ReadRemoteVersionInformation failed %!", v18, v19, v20, v21, v22, v23, v24, v17);
            v25 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }

          sub_1002CE094(*a2, v17);
        }

        else
        {
          *(*a2 + 33) = 1;
        }
      }

      else if (sub_1002CF218(v15))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("FastLEConnection:Encryption start fails with status %!", v36, v37, v38, v39, v40, v41, v42, a1);
          v43 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }

      else
      {
        *(*a2 + 125) = 1;
      }
    }
  }

  else
  {
    if (!sub_1000ABD24(*a2))
    {
      sub_1000D660C();
    }

    if ((*a2)[178] & 1) != 0 || (sub_1000D660C(), ((*a2)[178]))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("FastLEConnection:LE_GAP_FastLEConnectionReady Setting up connection fastLEConnectEncryptionPending:%d fastLEConnectionFakeEncryptEvent:%d", v26, v27, v28, v29, v30, v31, v32, *(*a2 + 357));
        v33 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = sub_10000C0FC();
          *buf = 136446210;
          v53 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      (*a2)[40] = *(a2 + 20);
      (*a2)[41] = *(a2 + 21);
      (*a2)[42] = *(a2 + 22);
      *(*a2 + 118) = *(a2 + 46);
      *(*a2 + 125) = *(*a2 + 357);
      v35 = *a2;
      if (*(*a2 + 125) == 1)
      {
        *(v35 + 169) = 16;
        *(*a2 + 171) = 1;
        v35 = *a2;
        if (*(*a2 + 358))
        {
          sub_1002DA3F0(0, v35, 1);
          v35 = *a2;
        }
      }

      *(v35 + 132) = 1;
      *(*a2 + 126) = 1;
      sub_1002C3894(0, *a2, *(a2 + 47), *(a2 + 24), *(a2 + 25));
      *(*a2 + 33) = 2;
      sub_1002C2AC8(0, **a2, (a2 + 52));
      *(*a2 + 33) = 3;
      *(*a2 + 34) = 0;
      sub_1002C3008(**a2, *(a2 + 32), *(a2 + 33), *(a2 + 34), *(a2 + 35));
      *(*a2 + 33) = 4;
      sub_1002C33F4(0, *a2, *(a2 + 61), *(a2 + 62));
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("FastLEConnection:LE_GAP_FastLEConnectionReady for invalid address %llu", v44, v45, v46, v47, v48, v49, v50, a2[2]);
        v51 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1000D660C();
    }
  }
}

void sub_1002D3D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_10000C240())
  {
    sub_10000AF54("AutoReconnect: state:%d scan:%d / %d ms numOfAddr:%d", v10, v11, v12, v13, v14, v15, v16, a1);
    v17 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v19 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (off_100B663A8)
  {
    off_100B663A8(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_1002D3E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  if (a2 % a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid UUID list length: (%u %% %u) != 0", v7, v8, v9, v10, v11, v12, v13, a2);
      v14 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4056;
  }

  if (a2)
  {
    v19 = 0;
    v20 = *a5;
    while (v20 < 0x7Du)
    {
      v21 = a4 + 20 * v20;
      sub_10006A0FC((a1 + v19), a3, 1, &v30);
      *v21 = v30;
      *(v21 + 16) = v31;
      v20 = *a5 + 1;
      *a5 = v20;
      v19 = (v19 + a3);
      if (v19 >= a2)
      {
        return 0;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Invalid index %u for UUIDs in parseADUuids", v22, v23, v24, v25, v26, v27, v28, *a5);
      v29 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4056;
  }

  return 0;
}

void sub_1002D3FFC()
{
  dword_100B6A5D8 = 0;
  v0 = sub_1000B11F4();
  v1 = v0 - qword_100B6A5E0;
  if (v0 - qword_100B6A5E0 < 0x3E8)
  {

    sub_10002195C(sub_1002D3FFC, 0, (1311 * (1099 - v1)) >> 17, &dword_100B6A5D8);
  }

  else
  {

    sub_1001BB87C();
  }
}

void sub_1002D408C()
{
  sub_1002D1404();
  sub_1002D4144();
  byte_100B6A5C9 = 0;

  sub_1002D063C();
}

void sub_1002D40C0(uint64_t a1)
{
  sub_1002D1404();
  sub_1002D4144();
  byte_100B6A5C9 = 0;
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to rotate or change the Address with status %! for address", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  sub_1002D063C();
}

void sub_1002D4144()
{
  LOWORD(v0) = word_100B6A5D4;
  if (!word_100B6A5D4)
  {
    v1 = arc4random();
    v0 = v1 - 6000 * (v1 / 0x1770u) + 6000;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Registering PrivateAddressTimer gPrivateMode=%d gOverrideLocalAddress=%d gLePrivateAddressTimer=%d gLeCurrentAddress=%d gAutoAddressRefresh=%d gPrivateAddressRotateInterval=%d gPrivateAddressRotateIntervalOverride=%d nextRandomAddressChange=%d seconds gHoldStableAddress=%d", v2, v3, v4, v5, v6, v7, v8, byte_100B6A5B0);
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v21 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (byte_100B53E24 == 1)
  {
    v10 = sub_10002195C(sub_1002CE968, 0, v0, &dword_100B6A5BC);
    if (v10)
    {
      v11 = v10;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to register a private address refresh timer, status:%!", v12, v13, v14, v15, v16, v17, v18, v11);
        v19 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }
}

uint64_t sub_1002D430C()
{
  if (sub_10000C240())
  {
    sub_10000AF54("Canceling LeHoldStablePrivateAddressTimer [%d]", v0, v1, v2, v3, v4, v5, v6, word_100B6A5C6);
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v10 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  result = dword_100B6A5C0;
  if (dword_100B6A5C0)
  {
    result = sub_10002242C(dword_100B6A5C0);
    dword_100B6A5C0 = 0;
  }

  return result;
}

void *sub_1002D43E8()
{
  sub_1002B842C();
  sub_1002B5460();
  result = qword_100B6A7F0;
  if (qword_100B6A7F0)
  {
    do
    {
      v1 = result[12];
      sub_10000C1E8(result);
      result = v1;
    }

    while (v1);
  }

  qword_100B6A7F0 = 0;
  return result;
}

uint64_t sub_1002D442C()
{
  v0 = sub_1002B51A0();
  if (v0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("ATT initialization failed with status %!", v1, v2, v3, v4, v5, v6, v7, v0);
      v8 = sub_10000C050(0x45u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    sub_1002B83C8(off_100AE9D90);
  }

  return v0;
}

uint64_t sub_1002D44B0(uint64_t a1)
{
  v1 = sub_1002B5C7C(a1);
  v2 = qword_100B6A7F0;
  if (qword_100B6A7F0)
  {
    while (*v2 != v1)
    {
      v2 = *(v2 + 96);
      if (!v2)
      {
        goto LABEL_4;
      }
    }

    return *(v2 + 8);
  }

  else
  {
LABEL_4:
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("Could not find GATT session with HCI handle", v4, v5, v6, v7, v8, v9, v10, v12);
      v11 = sub_10000C050(0x45u);
      result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_1000E09C0();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002D4538(uint64_t a1, uint64_t a2)
{
  v3 = sub_1002D4628(a1);
  if (v3)
  {
    LOWORD(v4) = *(v3 + 4);
  }

  else
  {
    v5 = sub_100007618(0x70uLL, 0x10B2040B13E4D0FuLL);
    if (v5)
    {
      *v5 = a2;
      *(a2 + 67) = 1;
      v6 = word_100B6A7F8;
      v4 = word_100B6A7F8++ + 1;
      v5[4] = v4;
      if ((v4 & 0x10000) != 0)
      {
        word_100B6A7F8 = v6 + 2;
        v5[4] = v6 + 2;
        LOWORD(v4) = 1;
      }

      *(v5 + 10) = 0;
      v5[44] = 0;
      *(v5 + 2) = 0;
      *(v5 + 3) = 0;
      v7 = qword_100B6A7F0;
      *(v5 + 12) = qword_100B6A7F0;
      *(v5 + 13) = 0;
      if (v7)
      {
        *(v7 + 104) = v5;
      }

      qword_100B6A7F0 = v5;
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to allocate a session.", v8, v9, v10, v11, v12, v13, v14, v17);
        v15 = sub_10000C050(0x45u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      LOWORD(v4) = 0;
    }
  }

  return v4;
}

void *sub_1002D4628(uint64_t a1)
{
  v1 = sub_1002B5C7C(a1);
  v2 = 0;
  if (v1)
  {
    v3 = qword_100B6A7F0;
    if (qword_100B6A7F0)
    {
      while (*v3 != v1)
      {
        v3 = v3[12];
        if (!v3)
        {
          return 0;
        }
      }

      return v3;
    }
  }

  return v2;
}

uint64_t sub_1002D4678(uint64_t a1, _WORD *a2)
{
  v3 = sub_1002D46C8(a1);
  if (!v3)
  {
    return 101;
  }

  v4 = sub_1002B5D50(*v3);
  if (!v4)
  {
    return 4100;
  }

  v5 = v4;
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t sub_1002D46C8(uint64_t a1)
{
  result = qword_100B6A7F0;
  if (qword_100B6A7F0)
  {
    while (*(result + 8) != a1)
    {
      result = *(result + 96);
      if (!result)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    if (sub_10000C240())
    {
      sub_10000AF54("Could not find session with handle %x", v3, v4, v5, v6, v7, v8, v9, a1);
      v10 = sub_10000C050(0x45u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1002D4758(uint64_t a1, __int16 a2)
{
  v3 = sub_1002D4628(a1);
  if (!v3)
  {
    return 101;
  }

  sub_1002B5D88(*v3, a2);
  return 0;
}

uint64_t sub_1002D4798(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = sub_1002D46C8(a1);
  result = 101;
  if (v7 && a2)
  {
    if (v7[2])
    {
      return 118;
    }

    else
    {
      result = sub_1002B60E8(*v7, sub_1002D4814, a3, v7);
      if (!result)
      {
        v7[2] = a2;
        v7[3] = a4;
      }
    }
  }

  return result;
}

uint64_t sub_1002D4814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    sub_1002B5D88(a1, a3);
  }

  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  *(a4 + 16) = 0;

  return v8(a2, a3, v7);
}

uint64_t sub_1002D4870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1002D46C8(a1);
  *v7 = xmmword_1008A4FC0;
  *(&v7[2] + 1) = *(&xmmword_1008A4FC0 + 9);
  result = 101;
  if (v5 && a2)
  {
    if (v5[2])
    {
      return 118;
    }

    else
    {
      result = sub_1002B6660(*v5, sub_1002D4948, v7, v5);
      if (!result)
      {
        v5[2] = a2;
        v5[3] = a3;
        v5[4] = 0;
        v5[5] = 0;
        v5[6] = 0xFFFF000100000000;
        v5[7] = 0;
        v5[8] = 0;
        v5[9] = 0;
      }
    }
  }

  return result;
}

void sub_1002D4948(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  if (a2 != 10)
  {
    v7 = a2;
    if (a2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Received error response for services discovery: %d", v24, v25, v26, v27, v28, v29, v30, v7);
        v31 = sub_10000C050(0x45u);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      goto LABEL_26;
    }

    v37 = *(a6 + 54);
    v11 = sub_100007618(24 * (*(a6 + 88) + a4), 0x1000040C4EE764BuLL);
    __dst = v11;
    v12 = 0;
    if (a4)
    {
      v13 = (a3 + 8);
      v14 = v11;
      v15 = a4;
      while (1)
      {
        v16 = *(a6 + 88);
        v17 = &v14[24 * *(a6 + 88)];
        *v17 = *(v13 - 2);
        if (a5 == 20)
        {
          break;
        }

        if (a5 == 6)
        {
          v18 = &v14[24 * v16];
          v19 = *v13;
          v20 = 2;
LABEL_9:
          sub_10006A0FC(v19, v20, 1, v38);
          v21 = *v38;
          *(v18 + 5) = *&v38[16];
          *(v18 + 4) = v21;
        }

        if (*(v17 + 1) <= v12)
        {
          v12 = v12;
        }

        else
        {
          v12 = *(v17 + 1);
        }

        v14 += 24;
        v13 += 2;
        if (!--v15)
        {
          goto LABEL_14;
        }
      }

      v18 = &v14[24 * v16];
      v19 = *v13;
      v20 = 16;
      goto LABEL_9;
    }

LABEL_14:
    v22 = *(a6 + 80);
    v23 = *(a6 + 88);
    if (v22)
    {
      memmove(__dst, v22, 24 * v23);
      sub_10000C1E8(*(a6 + 80));
      LOWORD(v23) = *(a6 + 88);
    }

    *(a6 + 80) = __dst;
    *(a6 + 88) = v23 + a4;
    if (v12)
    {
      v32 = v12;
    }

    else
    {
      v32 = -1;
    }

    if (v37 > v32)
    {
      v38[0] = 16;
      *&v38[1] = v32 + 1;
      *&v38[3] = v37;
      v39 = 0;
      *&v38[5] = xmmword_1008A4A80;
      v7 = sub_1002B6660(*a6, sub_1002D4948, v38, a6);
      if (!v7)
      {
        return;
      }

      goto LABEL_26;
    }
  }

  v7 = 0;
LABEL_26:
  v34 = *(a6 + 16);
  v33 = *(a6 + 24);
  *(a6 + 16) = 0;
  v34(v7, *(a6 + 80), *(a6 + 88), v33);
  v35 = *(a6 + 80);
  if (v35)
  {
    sub_10000C1E8(v35);
  }

  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
}

double sub_1002D4BB8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v7 = sub_1002D46C8(a1);
  v12 = *a3;
  v13 = *(a3 + 4);
  __chkstk_darwin(v7, *a3);
  v9 = &v12 - v8;
  bzero(&v12 - v8, v10);
  if (v7 && a2 && !*(v7 + 16))
  {
    sub_10007A978(v9, a3, 1);
    if (!sub_1002B651C(*v7, sub_1002D4CF8, 10240, 1, 0xFFFFu, v9, *a3, v7))
    {
      *(v7 + 16) = a2;
      *(v7 + 24) = a4;
      result = *&v12;
      *(v7 + 32) = v12;
      *(v7 + 48) = v13;
      *(v7 + 52) = -65535;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 56) = 0;
    }
  }

  return result;
}

void sub_1002D4CF8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a2 != 10)
  {
    v6 = a2;
    if (a2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Received error response for services matching UUID discovery: %d", v24, v25, v26, v27, v28, v29, v30, v6);
        v31 = sub_10000C050(0x45u);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      goto LABEL_21;
    }

    v9 = *(a5 + 48);
    v37 = *(a5 + 32);
    v38 = v9;
    v39 = *(a5 + 64);
    v35 = v37;
    v36 = *(a5 + 48);
    v10 = sub_100007618(24 * (*(a5 + 88) + a4), 0x1000040C4EE764BuLL);
    v11 = v10;
    v12 = 0;
    if (a4)
    {
      v13 = (a3 + 2);
      v14 = v10;
      v15 = a4;
      do
      {
        v16 = &v14[24 * *(a5 + 88)];
        *v16 = *(v13 - 1);
        v18 = *v13;
        v13 += 2;
        v17 = v18;
        *(v16 + 1) = v18;
        *(v16 + 5) = v36;
        *(v16 + 4) = v35;
        if (v18 <= v12)
        {
          v12 = v12;
        }

        else
        {
          v12 = v17;
        }

        v14 += 24;
        --v15;
      }

      while (v15);
    }

    v19 = *(a5 + 80);
    if (v19)
    {
      memmove(v10, v19, 24 * *(a5 + 88));
      sub_10000C1E8(*(a5 + 80));
    }

    *(a5 + 80) = v11;
    *(a5 + 88) += a4;
    if (v12)
    {
      v20 = v12;
    }

    else
    {
      v20 = -1;
    }

    if (WORD3(v38) > v20)
    {
      __chkstk_darwin(v10, v37);
      v22 = &v35 - v21;
      bzero(&v35 - v21, v23);
      sub_10007A978(v22, &v37, 1);
      v6 = sub_1002B651C(*a5, sub_1002D4CF8, 10240, v20 + 1, 0xFFFFu, v22, v37, a5);
      if (!v6)
      {
        return;
      }

      goto LABEL_21;
    }
  }

  v6 = 0;
LABEL_21:
  v33 = *(a5 + 16);
  v32 = *(a5 + 24);
  *(a5 + 16) = 0;
  v33(v6, *(a5 + 80), *(a5 + 88), v32);
  v34 = *(a5 + 80);
  if (v34)
  {
    sub_10000C1E8(v34);
  }

  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
}

uint64_t sub_1002D4F64(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5)
{
  v9 = sub_1002D46C8(a1);
  v11 = 8;
  v12 = a3;
  v13 = a4;
  v15 = 0;
  v14 = xmmword_1008A4AA8;
  result = 101;
  if (v9 && a2)
  {
    if (*(v9 + 16))
    {
      return 118;
    }

    else
    {
      result = sub_1002B6660(*v9, sub_1002D505C, &v11, v9);
      if (!result)
      {
        *(v9 + 16) = a2;
        *(v9 + 24) = a5;
        *(v9 + 32) = 0;
        *(v9 + 40) = 0;
        *(v9 + 48) = 0;
        *(v9 + 52) = a3;
        *(v9 + 54) = a4;
        *(v9 + 64) = 0;
        *(v9 + 72) = 0;
        *(v9 + 56) = 0;
      }
    }
  }

  return result;
}

void sub_1002D505C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  if (a2 == 10)
  {
    if (sub_1002D6F14(a6))
    {
      return;
    }
  }

  else
  {
    v7 = a2;
    if (a2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Received error response for included services discovery: %d", v27, v28, v29, v30, v31, v32, v33, v7);
        v34 = sub_10000C050(0x45u);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      goto LABEL_30;
    }

    v40 = *(a6 + 54);
    v11 = sub_100007618(28 * (*(a6 + 88) + a4), 0x10000403BABA674uLL);
    __dst = v11;
    v12 = 0;
    if (a4)
    {
      v13 = (a3 + 8);
      v14 = v11;
      for (i = a4; i; --i)
      {
        v16 = *(a6 + 88);
        v17 = 28 * v16;
        v18 = &v14[28 * v16];
        *v18 = *(v13 - 4);
        v19 = *v13;
        *(v18 + 1) = **v13;
        *(v18 + 2) = v19[1];
        if (a5 == 22)
        {
          v21 = &v14[28 * v16];
          v22 = (v19 + 2);
          v23 = 16;
        }

        else
        {
          if (a5 != 8)
          {
            if (a5 == 6)
            {
              v20 = &v14[28 * v16];
              v20[8] = 0;
              *(v20 + 6) = 0;
            }

            goto LABEL_12;
          }

          v21 = &v14[28 * v16];
          v22 = (v19 + 2);
          v23 = 2;
        }

        sub_10006A0FC(v22, v23, 1, v41);
        v24 = *v41;
        *(v21 + 6) = *&v41[16];
        *(v21 + 8) = v24;
LABEL_12:
        v13 += 2;
        if (*&v14[v17] <= v12)
        {
          v12 = v12;
        }

        else
        {
          v12 = *&v14[v17];
        }

        v14 += 28;
      }
    }

    v25 = *(a6 + 80);
    v26 = *(a6 + 88);
    if (v25)
    {
      memmove(__dst, v25, 28 * v26);
      sub_10000C1E8(*(a6 + 80));
      LOWORD(v26) = *(a6 + 88);
    }

    *(a6 + 80) = __dst;
    *(a6 + 88) = v26 + a4;
    if (v12)
    {
      v35 = v12;
    }

    else
    {
      v35 = -1;
    }

    if (v40 > v35)
    {
      v41[0] = 8;
      *&v41[1] = v35 + 1;
      *&v41[3] = v40;
      v42 = 0;
      *&v41[5] = xmmword_1008A4AA8;
      v7 = sub_1002B6660(*a6, sub_1002D505C, v41, a6);
      if (!v7)
      {
        return;
      }

      goto LABEL_30;
    }
  }

  v7 = 0;
LABEL_30:
  v37 = *(a6 + 16);
  v36 = *(a6 + 24);
  *(a6 + 16) = 0;
  v37(v7, *(a6 + 80), *(a6 + 88), v36);
  v38 = *(a6 + 80);
  if (v38)
  {
    sub_10000C1E8(v38);
  }

  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
}

uint64_t sub_1002D5310(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5)
{
  v9 = sub_1002D46C8(a1);
  v11 = 8;
  v12 = a3;
  v13 = a4;
  v15 = 0;
  v14 = xmmword_1008A4ABC;
  result = 101;
  if (v9 && a2)
  {
    if (*(v9 + 16))
    {
      return 118;
    }

    else
    {
      result = sub_1002B6660(*v9, sub_1002D5408, &v11, v9);
      if (!result)
      {
        *(v9 + 16) = a2;
        *(v9 + 24) = a5;
        *(v9 + 32) = 0;
        *(v9 + 40) = 0;
        *(v9 + 48) = 0;
        *(v9 + 52) = a3;
        *(v9 + 54) = a4;
        *(v9 + 64) = 0;
        *(v9 + 72) = 0;
        *(v9 + 56) = 0;
      }
    }
  }

  return result;
}

void sub_1002D5408(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  if (a2 != 10)
  {
    v7 = a2;
    if (a2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Received error response for characteristics discovery: %d", v21, v22, v23, v24, v25, v26, v27, v7);
        v28 = sub_10000C050(0x45u);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      goto LABEL_31;
    }

    LODWORD(v9) = a4;
    v35 = *(a6 + 54);
    v38 = *(a6 + 32);
    v39 = *(a6 + 48);
    v12 = sub_100007618(28 * (*(a6 + 88) + a4), 0x100004065C5FDEAuLL);
    if (v9)
    {
      LOWORD(v13) = 0;
      v14 = 0;
      v15 = (a3 + 8);
      v9 = v9;
      while (1)
      {
        v16 = v12 + 28 * *(a6 + 88) + 28 * v14;
        *v16 = *(v15 - 4);
        v17 = *v15;
        *(v16 + 2) = **v15;
        *(v16 + 4) = *(v17 + 1);
        if (a5 == 21)
        {
          v18 = (v17 + 3);
          v19 = 16;
        }

        else
        {
          if (a5 != 7)
          {
            goto LABEL_10;
          }

          v18 = (v17 + 3);
          v19 = 2;
        }

        sub_10006A0FC(v18, v19, 1, v36);
        v20 = *v36;
        *(v16 + 24) = *&v36[16];
        *(v16 + 8) = v20;
LABEL_10:
        if (!v38 || sub_10004E15C(&v38, (v16 + 8)))
        {
          ++v14;
        }

        if (*(v16 + 4) <= v13)
        {
          v13 = v13;
        }

        else
        {
          v13 = *(v16 + 4);
        }

        v15 += 2;
        if (!--v9)
        {
          goto LABEL_22;
        }
      }
    }

    v14 = 0;
    v13 = 0;
LABEL_22:
    v29 = *(a6 + 80);
    v30 = *(a6 + 88);
    if (v29)
    {
      memmove(v12, v29, 28 * v30);
      sub_10000C1E8(*(a6 + 80));
      LOWORD(v30) = *(a6 + 88);
    }

    *(a6 + 80) = v12;
    *(a6 + 88) = v30 + v14;
    if (v13)
    {
      v31 = v13;
    }

    else
    {
      v31 = -1;
    }

    if (v35 - 1 > v31)
    {
      v36[0] = 8;
      *&v36[1] = v31 + 1;
      *&v36[3] = v35;
      v37 = 0;
      *&v36[5] = xmmword_1008A4ABC;
      v7 = sub_1002B6660(a1, sub_1002D5408, v36, a6);
      if (!v7)
      {
        return;
      }

      goto LABEL_31;
    }
  }

  v7 = 0;
LABEL_31:
  v33 = *(a6 + 16);
  v32 = *(a6 + 24);
  *(a6 + 16) = 0;
  v33(v7, *(a6 + 80), *(a6 + 88), v32);
  v34 = *(a6 + 80);
  if (v34)
  {
    sub_10000C1E8(v34);
  }

  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
}

__n128 sub_1002D56BC(uint64_t a1, uint64_t a2, __n128 *a3, __int16 a4, __int16 a5, uint64_t a6)
{
  v11 = sub_1002D46C8(a1);
  v15 = 8;
  v16 = a4;
  v17 = a5;
  v19 = 0;
  v18 = xmmword_1008A4ABC;
  result = *a3;
  v13 = *a3;
  v14 = a3[1].n128_u32[0];
  if (v11 && a2 && !*(v11 + 16) && !sub_1002B6660(*v11, sub_1002D5408, &v15, v11))
  {
    *(v11 + 16) = a2;
    *(v11 + 24) = a6;
    result = v13;
    *(v11 + 32) = v13;
    *(v11 + 48) = v14;
    *(v11 + 52) = a4;
    *(v11 + 54) = a5;
    *(v11 + 64) = 0;
    *(v11 + 72) = 0;
    *(v11 + 56) = 0;
  }

  return result;
}

uint64_t sub_1002D57D0(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5)
{
  v9 = sub_1002D46C8(a1);
  v11 = 4;
  v12 = a3;
  v13 = a4;
  result = 101;
  if (v9 && a2)
  {
    if (*(v9 + 16))
    {
      return 118;
    }

    else
    {
      result = sub_1002B640C(*v9, sub_1002D5888, &v11, v9);
      if (!result)
      {
        *(v9 + 16) = a2;
        *(v9 + 24) = a5;
        *(v9 + 32) = 0;
        *(v9 + 40) = 0;
        *(v9 + 48) = 0;
        *(v9 + 52) = a3;
        *(v9 + 54) = a4;
        *(v9 + 64) = 0;
        *(v9 + 72) = 0;
        *(v9 + 56) = 0;
      }
    }
  }

  return result;
}

void sub_1002D5888(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a2 != 10)
  {
    v6 = a2;
    if (a2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Received error response for descriptors discovery: %u", v21, v22, v23, v24, v25, v26, v27, v6);
        v28 = sub_10000C050(0x45u);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      goto LABEL_21;
    }

    v9 = *(a5 + 54);
    v10 = sub_100007618(40 * (*(a5 + 88) + a4), 0x10100400A295A65uLL);
    v11 = v10;
    v12 = 0;
    if (a4)
    {
      v13 = (a3 + 4);
      v14 = v10;
      v15 = a4;
      do
      {
        v16 = &v14[40 * *(a5 + 88)];
        v17 = *(v13 - 2);
        *v16 = v17;
        v18 = *v13;
        *(v16 + 5) = *(v13 + 4);
        *(v16 + 4) = v18;
        *(v16 + 3) = 0;
        *(v16 + 16) = 0;
        if (v17 <= v12)
        {
          v12 = v12;
        }

        else
        {
          v12 = v17;
        }

        v14 += 40;
        v13 = (v13 + 24);
        --v15;
      }

      while (v15);
    }

    v19 = *(a5 + 80);
    if (v19)
    {
      memmove(v10, v19, 40 * *(a5 + 88));
      sub_10000C1E8(*(a5 + 80));
    }

    *(a5 + 80) = v11;
    *(a5 + 88) += a4;
    if (v12)
    {
      v20 = v12;
    }

    else
    {
      v20 = -1;
    }

    if (v9 > v20)
    {
      v32 = 4;
      v33 = v20 + 1;
      v34 = v9;
      v6 = sub_1002B640C(*a5, sub_1002D5888, &v32, a5);
      if (!v6)
      {
        return;
      }

      goto LABEL_21;
    }
  }

  v6 = 0;
LABEL_21:
  v30 = *(a5 + 16);
  v29 = *(a5 + 24);
  *(a5 + 16) = 0;
  v30(v6, *(a5 + 80), *(a5 + 88), v29);
  v31 = *(a5 + 80);
  if (v31)
  {
    sub_10000C1E8(v31);
  }

  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
}

uint64_t sub_1002D5A5C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v7 = sub_1002D46C8(a1);
  v9 = 10;
  v10 = a3;
  result = 101;
  if (v7 && a2)
  {
    if (*(v7 + 16))
    {
      return 118;
    }

    else
    {
      result = sub_1002B67D0(*v7, sub_1002D5B08, &v9, v7);
      if (!result)
      {
        *(v7 + 16) = a2;
        *(v7 + 24) = a4;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 52) = a3;
        *(v7 + 54) = 0;
        *(v7 + 70) = 0;
        *(v7 + 62) = 0;
        *(v7 + 78) = 0;
      }
    }
  }

  return result;
}

void sub_1002D5B08(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4, uint64_t a5)
{
  if (a2)
  {
    v6 = a2;
    if (sub_10000C240())
    {
      sub_10000AF54("LE_GATT_Handle_ReadLongCharacteristicValueResponse Received error response for characteristic read: %u", v7, v8, v9, v10, v11, v12, v13, v6);
      v14 = sub_10000C050(0x45u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v19 = *(a5 + 52);
    v20 = *(a5 + 56);
    v21 = a4;
    v22 = sub_100007618(*(a5 + 88) + a4, 0x100004077774924uLL);
    memmove(&v22[*(a5 + 88)], a3, v21);
    v23 = *(a5 + 80);
    if (v23)
    {
      memmove(v22, v23, *(a5 + 88));
      sub_10000C1E8(*(a5 + 80));
    }

    *(a5 + 80) = v22;
    v24 = *(a5 + 88) + a4;
    *(a5 + 88) = v24;
    v25 = sub_1002B5D50(*a5);
    if (!v24 || v20 + v24 > 0x1FF || v25 - 1 > a4)
    {
      v27 = *(a5 + 16);
      v26 = *(a5 + 24);
      *(a5 + 16) = 0;
      v27(0, *(a5 + 80), *(a5 + 88), v26);
      goto LABEL_12;
    }

    v29 = 12;
    v30 = v19;
    v31 = v20 + v24;
    v6 = sub_1002B68D0(*a5, sub_1002D5B08, &v29, a5);
    if (!v6)
    {
      return;
    }
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  *(a5 + 16) = 0;
  v16(v6, 0, 0, v15);
LABEL_12:
  v28 = *(a5 + 80);
  if (v28)
  {
    sub_10000C1E8(v28);
  }

  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
}

uint64_t sub_1002D5CB0(uint64_t a1, uint64_t a2, __int128 *a3, __int16 a4, unsigned int a5, __int16 a6, uint64_t a7)
{
  v13 = sub_1002D46C8(a1);
  v27 = 8;
  v28 = a4;
  v29 = a5;
  v30 = *a3;
  v31 = *(a3 + 4);
  v25 = *a3;
  v26 = *(a3 + 4);
  if (a5 <= (a4 - 1))
  {
    return 101;
  }

  v14 = v13;
  v15 = 101;
  if (v13 && a2)
  {
    if (v13[2])
    {
      return 118;
    }

    else
    {
      v15 = sub_1002B6660(*v13, sub_1002D5E34, &v27, v13);
      if (v15)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send discover all services request for bearer 0x%x %!", v17, v18, v19, v20, v21, v22, v23, v14);
          v24 = sub_10000C050(0x45u);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else
      {
        *(v14 + 16) = a2;
        *(v14 + 24) = a7;
        *(v14 + 32) = v25;
        *(v14 + 48) = v26;
        *(v14 + 52) = a4;
        *(v14 + 54) = a5;
        *(v14 + 56) = 0;
        *(v14 + 64) = 0;
        *(v14 + 72) = 0;
        *(v14 + 74) = a6;
        *(v14 + 76) = 0;
      }
    }
  }

  return v15;
}

void sub_1002D5E34(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  v9 = &qword_100B6A7F0;
  do
  {
    v10 = *v9;
    v9 = (*v9 + 96);
  }

  while (v10 != a6 && v10 != 0);
  if (v10)
  {
    v12 = *(a6 + 16);
    if (a2 == 10)
    {
      if (!v12)
      {
        return;
      }

      *(a6 + 16) = 0;
      v24 = *(a6 + 80);
      v14 = *(a6 + 88);
      v25 = *(a6 + 24);
      v26 = 10;
    }

    else if (a2)
    {
      if (sub_10000C240() && (sub_10000AF54("Received error response for read value %d", v27, v28, v29, v30, v31, v32, v33, a2), v34 = sub_10000C050(0x45u), os_log_type_enabled(v34, OS_LOG_TYPE_ERROR)))
      {
        sub_1000E09C0();
        if (!v12)
        {
          return;
        }
      }

      else if (!v12)
      {
        return;
      }

      *(a6 + 16) = 0;
      v25 = *(a6 + 24);
      v26 = a2;
      v24 = 0;
      v14 = 0;
    }

    else
    {
      v13 = sub_1002D73A8(a6, a3, a4, a5);
      v14 = *(a6 + 88);
      if (v14 >= *(a6 + 74) || v13 == 0xFFFF || (v15 = *(a6 + 54), v13 >= v15))
      {
        if (!v12)
        {
          return;
        }

        *(a6 + 16) = 0;
        v24 = *(a6 + 80);
      }

      else
      {
        v36 = 8;
        v37 = v13 + 1;
        v38 = v15;
        v39 = *(a6 + 32);
        v40 = *(a6 + 48);
        if (!sub_1002B6660(a1, sub_1002D5E34, &v36, a6))
        {
          return;
        }

        if (sub_10000C240() && (sub_10000AF54("Failed to send read characteristics value request for bearer 0x%x", v16, v17, v18, v19, v20, v21, v22, a1), v23 = sub_10000C050(0x45u), os_log_type_enabled(v23, OS_LOG_TYPE_ERROR)))
        {
          sub_1000E09C0();
          if (!v12)
          {
            return;
          }
        }

        else if (!v12)
        {
          return;
        }

        *(a6 + 16) = 0;
        v24 = *(a6 + 80);
        v14 = *(a6 + 88);
      }

      v25 = *(a6 + 24);
      v26 = 0;
    }

    v12(v26, v24, v14, v25);
    v35 = *(a6 + 80);
    if (v35)
    {
      sub_10000C1E8(v35);
    }

    *(a6 + 80) = 0;
    *(a6 + 88) = 0;
  }
}

uint64_t sub_1002D6054(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5)
{
  v9 = sub_1002D46C8(a1);
  v11 = 12;
  v12 = a3;
  v13 = a4;
  result = 101;
  if (v9 && a2)
  {
    if (*(v9 + 16))
    {
      return 118;
    }

    else
    {
      result = sub_1002B68D0(*v9, sub_1002D5B08, &v11, v9);
      if (!result)
      {
        *(v9 + 16) = a2;
        *(v9 + 24) = a5;
        *(v9 + 32) = 0;
        *(v9 + 40) = 0;
        *(v9 + 48) = 0;
        *(v9 + 52) = a3;
        *(v9 + 54) = 0;
        *(v9 + 56) = a4;
        *(v9 + 66) = 0;
        *(v9 + 58) = 0;
        *(v9 + 72) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002D6114(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  v11 = sub_1002D46C8(a1);
  if (a2)
  {
    v12 = 18;
  }

  else
  {
    v12 = 82;
  }

  v26 = v12;
  v27 = a3;
  v28 = a5;
  v29 = a4;
  if (!v11)
  {
    return 101;
  }

  v13 = v11;
  if (v11[2])
  {
    return 118;
  }

  v16 = *v11;
  if (a2)
  {
    v17 = sub_1002D6218;
  }

  else
  {
    v17 = 0;
  }

  v14 = sub_1002B69D0(v16, v17, &v26, v13);
  if (v14)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to write request for bearer 0x%x %!", v18, v19, v20, v21, v22, v23, v24, v13);
      v25 = sub_10000C050(0x45u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    *(v13 + 16) = a2;
    *(v13 + 24) = a6;
  }

  return v14;
}

void sub_1002D6218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &qword_100B6A7F0;
  do
  {
    v6 = *v5;
    v5 = (*v5 + 96);
  }

  while (v6 != a3 && v6 != 0);
  if (v6)
  {
    v8 = *(a3 + 16);
    *(a3 + 16) = 0;
    if (a2 && sub_10000C240() && (sub_10000AF54("Received error response for write value %d", v9, v10, v11, v12, v13, v14, v15, a2), v16 = sub_10000C050(0x45u), os_log_type_enabled(v16, OS_LOG_TYPE_ERROR)))
    {
      sub_1000E09C0();
      if (!v8)
      {
        return;
      }
    }

    else if (!v8)
    {
      return;
    }

    v8(a2, *(a3 + 24));
  }
}

uint64_t sub_1002D62D0(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, const void *a5, unsigned int a6, uint64_t a7)
{
  v13 = sub_1002D46C8(a1);
  v27 = 22;
  v28 = a3;
  v29 = a4;
  v30 = a6;
  v14 = 101;
  v31 = a5;
  if (v13 && a2)
  {
    v15 = v13;
    if (v13[2])
    {
      return 118;
    }

    else
    {
      if (a6 + 5 > sub_1002B5D50(*v13))
      {
        v30 = sub_1002B5D50(*v15) - 5;
      }

      v17 = sub_1002B6B34(*v15, sub_1002D6450, &v27, v15);
      if (v17)
      {
        v14 = v17;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to write request for bearer 0x%x %!", v18, v19, v20, v21, v22, v23, v24, v15);
          v25 = sub_10000C050(0x45u);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else
      {
        *(v15 + 16) = a2;
        *(v15 + 24) = a7;
        *(v15 + 32) = 0;
        *(v15 + 40) = 0;
        *(v15 + 48) = 0;
        *(v15 + 52) = a3;
        *(v15 + 54) = 0;
        *(v15 + 56) = a4;
        *(v15 + 66) = 0;
        *(v15 + 72) = 0;
        *(v15 + 58) = 0;
        *(v15 + 72) = a6;
        v26 = sub_100007618(a6, 0x100004077774924uLL);
        *(v15 + 64) = v26;
        if (v26)
        {
          memmove(v26, a5, a6);
        }

        return 0;
      }
    }
  }

  return v14;
}

void sub_1002D6450(int a1, uint64_t a2, uint64_t a3, int a4, void *__s2, size_t __n, uint64_t *a7)
{
  v10 = &qword_100B6A7F0;
  do
  {
    v11 = *v10;
    v10 = (*v10 + 96);
  }

  while (v11 != a7 && v11 != 0);
  if (!v11)
  {
    return;
  }

  v13 = *a7;
  *(*a7 + 96) = a2;
  v14 = a7[2];
  if (a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received error response %d for write long value - canceling execution", v15, v16, v17, v18, v19, v20, v21, a2);
      v22 = sub_10000C050(0x45u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v23 = sub_1002B6C50(*a7, sub_1002D7540, 0, a7);
    if (v23)
    {
      v24 = v23;
      if (!sub_10000C240() || (sub_10000AF54("Failed to execute write request %!", v25, v26, v27, v28, v29, v30, v31, v24), v32 = sub_10000C050(0x45u), !os_log_type_enabled(v32, OS_LOG_TYPE_ERROR)))
      {
        if (!v14)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      sub_1000E09C0();
      if (v14)
      {
LABEL_16:
        a7[2] = 0;
        v33 = a7[3];
        v34 = a2;
LABEL_17:
        v14(v34, v33);
      }

LABEL_18:
      v35 = a7[8];
      if (v35)
      {
        sub_10000C1E8(v35);
        a7[8] = 0;
      }

      return;
    }

    return;
  }

  if (*(a7 + 26) != a3)
  {
    if (sub_10000C240() && (sub_10000AF54("Invalid handle, got 0x%x, expecting 0x%x", v58, v59, v60, v61, v62, v63, v64, a3), v65 = sub_10000C050(0x45u), os_log_type_enabled(v65, OS_LOG_TYPE_ERROR)))
    {
      sub_1000E09C0();
      if (!v14)
      {
LABEL_34:
        v66 = a7[8];
        if (v66)
        {
          sub_10000C1E8(v66);
        }

        return;
      }
    }

    else if (!v14)
    {
      goto LABEL_34;
    }

    a7[2] = 0;
    v14(1, a7[3]);
    goto LABEL_34;
  }

  v36 = *(a7 + 27);
  v37 = v36 + __n;
  v38 = *(a7 + 36);
  if (v36 + __n <= v38)
  {
    v39 = a7[8];
    if (!memcmp((v39 + v36), __s2, __n))
    {
      *(a7 + 27) = v37;
      if (v37 == v38)
      {
        v67 = sub_1002B6C50(v13, sub_1002D75AC, 1, a7);
        if (!v67)
        {
          return;
        }

        v68 = v67;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to execute write request %!", v69, v70, v71, v72, v73, v74, v75, v68);
          v76 = sub_10000C050(0x45u);
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else
      {
        v77 = *(a7 + 28);
        v89 = 22;
        v90 = a3;
        v91 = v77 + v37;
        v92 = v38 - v37;
        v93 = v39 + v37;
        if ((v38 - v37) + 5 > sub_1002B5D50(v13))
        {
          v92 = sub_1002B5D50(*a7) - 5;
        }

        v78 = sub_1002B6B34(*a7, sub_1002D6450, &v89, a7);
        if (!v78)
        {
          return;
        }

        v68 = v78;
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to prepare write request %!", v79, v80, v81, v82, v83, v84, v85, v68);
          v86 = sub_10000C050(0x45u);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      v87 = a7[8];
      if (v87)
      {
        sub_10000C1E8(v87);
        a7[8] = 0;
      }

      if (v14)
      {
        a7[2] = 0;
        v14(v68, a7[3]);
      }

      return;
    }
  }

  *(v13 + 96) = 4;
  if (sub_10000C240())
  {
    sub_10000AF54("Data doesn't match.", v40, v41, v42, v43, v44, v45, v46, v88);
    v47 = sub_10000C050(0x45u);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  v48 = sub_1002B6C50(*a7, sub_1002D7540, 0, a7);
  if (!v48)
  {
    if (v14)
    {
      a7[2] = 0;
      v33 = a7[3];
      v34 = 0;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v49 = v48;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to execute write request %!", v50, v51, v52, v53, v54, v55, v56, v49);
    v57 = sub_10000C050(0x45u);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_1002D6870(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  v11 = sub_1002D46C8(a1);
  v23 = 18;
  v24 = a3;
  v25 = a5;
  v26 = a4;
  v12 = 101;
  if (v11 && a2)
  {
    v13 = v11;
    if (v11[2])
    {
      return 118;
    }

    else
    {
      v12 = sub_1002B69D0(*v11, sub_1002D6218, &v23, v11);
      if (v12)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to write characteristic descriptor %: %!", v15, v16, v17, v18, v19, v20, v21, v13);
          v22 = sub_10000C050(0x45u);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else
      {
        *(v13 + 16) = a2;
        *(v13 + 24) = a6;
      }
    }
  }

  return v12;
}

__n128 sub_1002D6964(__n128 *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (xmmword_100B6A800 != 0)
  {
    sub_1000D660C();
  }

  if (a1)
  {
    result = *a1;
    off_100B6A810 = a1[1].n128_u64[0];
    xmmword_100B6A800 = result;
  }

  return result;
}

void sub_1002D69D8(uint64_t a1, char a2)
{
  v4 = sub_1002B5C7C(a1);
  if (v4)
  {
    *(v4 + 67) = a2;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("bearer is null for connection 0x%08x - for:%d", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x45u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1002D6A58(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  if (sub_10000C240())
  {
    v13 = a1 ? *a1 : 0;
    sub_10000AF54("_GATT_LE_ConnectCompleteCB notification from lmHandle 0x%x with status %!", v6, v7, v8, v9, v10, v11, v12, v13);
    v14 = sub_10000C050(0x45u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v30 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v15 = sub_1002D4538(a1, a2);
  if (v15)
  {
    v16 = xmmword_100B6A800;
    if (xmmword_100B6A800)
    {
      v17 = v15;
      v18 = sub_1002B5DB4(a2);
      v19 = 1;
      if (a1)
      {
        if (*(a1 + 2) == 4)
        {
          v19 = 2;
        }

        else
        {
          v19 = 1;
        }
      }

      v16(a1, v17, v18, v19, a3);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Failed to create LE GATT session ", v20, v21, v22, v23, v24, v25, v26, v28);
    v27 = sub_10000C050(0x45u);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002D6BD8(uint64_t a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("_GATT_LE_DisconnectedCB on handle %p with reason %!", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0x45u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v21 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a1)
  {
    if (*(&xmmword_100B6A800 + 1))
    {
      (*(&xmmword_100B6A800 + 1))(a1, a2);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("_GATT_LE_DisconnectedCB handle is not valid with reason %!", v12, v13, v14, v15, v16, v17, v18, a2);
    v19 = sub_10000C050(0x45u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002D6D0C(unsigned __int16 *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (sub_10000C240())
  {
    v15 = a1 ? *a1 : 0;
    sub_10000AF54("_GATT_LE_LinkReadyCB notification from lmHandle 0x%x with status %!", v8, v9, v10, v11, v12, v13, v14, v15);
    v16 = sub_10000C050(0x45u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v27 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a4)
  {
    if (sub_10000C240())
    {
      if (a1)
      {
        v24 = *a1;
      }

      else
      {
        v24 = 0;
      }

      sub_10000AF54("GATT ready notification from lmHandle 0x%x (%x) with error %!", v17, v18, v19, v20, v21, v22, v23, v24);
      v25 = sub_10000C050(0x45u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else if (off_100B6A810)
  {
    off_100B6A810(a1, a2, a3, 0);
  }
}

void sub_1002D6E7C(uint64_t a1)
{
  v1 = qword_100B6A7F0;
  if (qword_100B6A7F0)
  {
    while (1)
    {
      v2 = v1[12];
      if (*v1 == a1)
      {
        break;
      }

      v1 = v1[12];
      if (!v2)
      {
        return;
      }
    }

    v3 = v1[13];
    if (v2)
    {
      *(v2 + 104) = v3;
    }

    if (v3)
    {
      v4 = (v3 + 96);
    }

    else
    {
      v4 = &qword_100B6A7F0;
    }

    *v4 = v2;
    v5 = v1[10];
    if (v5)
    {
      sub_10000C1E8(v5);
    }

    v1[10] = 0;
    *(v1 + 44) = 0;

    sub_10000C1E8(v1);
  }
}

BOOL sub_1002D6F14(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!*(a1 + 88))
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 80);
  if (*(v4 + 8))
  {
    v5 = 0;
    v6 = (v4 + 36);
    while (v1 - 1 != v5)
    {
      v7 = *v6;
      v6 += 28;
      ++v5;
      if (!v7)
      {
        v8 = v5 < v1;
        goto LABEL_9;
      }
    }

    return 0;
  }

  v5 = 0;
  v8 = 1;
LABEL_9:
  v9 = *(v4 + 28 * v5 + 2);
  v11 = 10;
  v12 = v9;
  if (sub_1002B67D0(*a1, sub_1002D7014, &v11, a1))
  {
    if (v3)
    {
      *(a1 + 16) = 0;
      v3();
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 52) = v9;
    *(a1 + 54) = v5;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
  }

  return v8;
}

void sub_1002D7014(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = &qword_100B6A7F0;
  do
  {
    v9 = *v8;
    v8 = (*v8 + 96);
  }

  while (v9 != a5 && v9 != 0);
  if (!v9)
  {
    return;
  }

  v11 = *(a5 + 16);
  if (a2 == 10)
  {
    if ((sub_1002D6F14(a5) & 1) == 0 && v11)
    {
      v12 = (a5 + 88);
      v26 = *(a5 + 88);
      *(a5 + 16) = 0;
      v11(0, *(a5 + 80), v26, *(a5 + 24));
      v27 = *(a5 + 80);
      if (!v27)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    return;
  }

  if (a2)
  {
    if (sub_10000C240() && (sub_10000AF54("Received error response for included service discovery 0x%x", v28, v29, v30, v31, v32, v33, v34, a2), v35 = sub_10000C050(0x45u), os_log_type_enabled(v35, OS_LOG_TYPE_ERROR)))
    {
      sub_1000E09C0();
      if (!v11)
      {
        return;
      }
    }

    else if (!v11)
    {
      return;
    }

    *(a5 + 16) = 0;
    v11(a2, 0, 0, *(a5 + 24));
    v36 = *(a5 + 80);
    if (v36)
    {
      sub_10000C1E8(v36);
    }

    *(a5 + 80) = 0;
    v12 = (a5 + 88);
    goto LABEL_39;
  }

  v12 = (a5 + 88);
  v13 = *(a5 + 54);
  if (*(a5 + 88) <= v13)
  {
    if (!sub_10000C240())
    {
      goto LABEL_32;
    }

    sub_10000AF54("Invalid position %d / %d", v37, v38, v39, v40, v41, v42, v43, v13);
    v44 = sub_10000C050(0x45u);
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v14 = *(a5 + 52);
  v15 = *(a5 + 80) + 28 * *(a5 + 54);
  if (*(v15 + 2) != v14)
  {
    if (!sub_10000C240())
    {
      goto LABEL_32;
    }

    sub_10000AF54("Handles don't match 0x%x 0x%x", v45, v46, v47, v48, v49, v50, v51, v14);
    v52 = sub_10000C050(0x45u);
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v17 = *(v15 + 8);
  v16 = v15 + 8;
  if (!v17)
  {
    if (a4 == 2 || a4 == 16)
    {
      sub_10006A0FC(a3, a4, 1, &v74);
      v64 = v74;
      *(v16 + 16) = v75;
      *v16 = v64;
      goto LABEL_44;
    }

    if (!sub_10000C240() || (sub_10000AF54("Invalid length %d", v65, v66, v67, v68, v69, v70, v71, a4), v72 = sub_10000C050(0x45u), !os_log_type_enabled(v72, OS_LOG_TYPE_ERROR)))
    {
LABEL_32:
      if (sub_10000C240() && (sub_10000AF54("Error parsing the read response", v53, v54, v55, v56, v57, v58, v59, v73), v60 = sub_10000C050(0x45u), os_log_type_enabled(v60, OS_LOG_TYPE_ERROR)))
      {
        sub_1000E09C0();
        if (!v11)
        {
          return;
        }
      }

      else if (!v11)
      {
        return;
      }

      *(a5 + 16) = 0;
      v61 = *(a5 + 24);
      v62 = 0;
      v63 = 0;
LABEL_36:
      v11(0, v62, v63, v61);
      v27 = *(a5 + 80);
      if (!v27)
      {
LABEL_38:
        *(a5 + 80) = 0;
LABEL_39:
        *v12 = 0;
        return;
      }

LABEL_37:
      sub_10000C1E8(v27);
      goto LABEL_38;
    }

LABEL_31:
    sub_1000E09C0();
    goto LABEL_32;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("UUID length is not 0 (%d) !", v18, v19, v20, v21, v22, v23, v24, *(*(a5 + 80) + 28 * v13 + 8));
    v25 = sub_10000C050(0x45u);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

LABEL_44:
  if ((sub_1002D6F14(a5) & 1) == 0 && v11)
  {
    *(a5 + 16) = 0;
    v62 = *(a5 + 80);
    v63 = *(a5 + 88);
    v61 = *(a5 + 24);
    goto LABEL_36;
  }
}

uint64_t sub_1002D73A8(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = a3;
  v9 = 260 * a3;
  __chkstk_darwin(a1, a2);
  v11 = &v21 - v10;
  bzero(&v21 - v10, v9);
  if (a3)
  {
    v12 = a4 - 2;
    v13 = (a2 + 8);
    v14 = v8;
    v15 = v11;
    do
    {
      v16 = *(v13 - 4);
      *v15 = v16;
      v15[129] = v12;
      v17 = *v13;
      v13 += 2;
      memmove(v15 + 1, v17, v12);
      v15 += 130;
      --v14;
    }

    while (v14);
    if (!a1)
    {
      return v16;
    }
  }

  else
  {
    v16 = 0xFFFFLL;
    if (!a1)
    {
      return v16;
    }
  }

  v18 = *(a1 + 80);
  v19 = sub_100007618(260 * (*(a1 + 88) + v8), 0x1000040ECEEAEAAuLL);
  *(a1 + 80) = v19;
  if (!v19)
  {
    return 0xFFFFLL;
  }

  if (v18)
  {
    memmove(v19, v18, 260 * *(a1 + 88));
    sub_10000C1E8(v18);
    v19 = *(a1 + 80);
  }

  memmove(&v19[260 * *(a1 + 88)], v11, v9);
  *(a1 + 88) += a3;
  return v16;
}

void sub_1002D7540(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = &qword_100B6A7F0;
  do
  {
    v5 = *v4;
    v4 = (*v4 + 96);
  }

  while (v5 != a3 && v5 != 0);
  if (v5)
  {
    v7 = a3[2];
    a3[2] = 0;
    if (v7)
    {
      v7(*(*a3 + 96), a3[3]);
    }

    v8 = a3[8];
    if (v8)
    {
      sub_10000C1E8(v8);
      a3[8] = 0;
    }
  }
}

void sub_1002D75AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = &qword_100B6A7F0;
  do
  {
    v5 = *v4;
    v4 = (*v4 + 96);
  }

  while (v5 != a3 && v5 != 0);
  if (v5)
  {
    v7 = a3[2];
    a3[2] = 0;
    if (v7)
    {
      v7(a2, a3[3]);
    }

    v8 = a3[8];
    if (v8)
    {

      sub_10000C1E8(v8);
    }
  }
}

const char *sub_1002D762C(char a1)
{
  if ((a1 + 1) > 0xBu)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_100AE9DB0[(a1 + 1)];
  }
}

uint64_t sub_1002D766C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1002D76E0(a1);
  v4 = 0;
  if (v3 && byte_100B6B158)
  {
    if (*(v3 + 7) == 240)
    {
      v5 = *(v3 + 1);
      *(a2 + 4) = *(v3 + 5);
      *a2 = v5;
      *(a2 + 24) = 5;
      *(a2 + 6) = *(v3 + 12);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

__int128 *sub_1002D76E0(uint64_t a1)
{
  result = &xmmword_100B6A828;
  v3 = 7;
  while (*result != 1 || *a1 != *(result + 1) || *(a1 + 4) != *(result + 5))
  {
    result += 21;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_1002D772C(uint64_t a1)
{
  if (!byte_100B6B158)
  {
    goto LABEL_19;
  }

  if (*a1 != *qword_100B6B160 || *(a1 + 4) != *(qword_100B6B160 + 4))
  {
    v2 = 0;
    v3 = qword_100B6B160 + 44;
    while (byte_100B6B158 - 1 != v2)
    {
      v4 = *a1 == *v3 && *(a1 + 4) == *(v3 + 4);
      v3 += 44;
      ++v2;
      if (v4)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_19;
  }

LABEL_15:
  v5 = sub_1002D78F8(a1);
  if (!v5)
  {
LABEL_19:
    v8 = 0;
    v7 = 0;
    goto LABEL_20;
  }

  v6 = (*(v5 + 7) - 1);
  v7 = v6 < 0xEF;
  if (v6 >= 0xEF)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v5 + 7);
  }

LABEL_20:
  if (sub_10000C240())
  {
    if (v7)
    {
      v9 = "";
    }

    else
    {
      v9 = "Not";
    }

    sub_1002D79AC(v8);
    sub_10000AF54("%s delaying security enforcement for Address=%: keys available ? %s pairing state :(%s)%d", v10, v11, v12, v13, v14, v15, v16, v9);
    v17 = sub_10000C050(0x55u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v20 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return v7;
}

__int128 *sub_1002D78F8(uint64_t a1)
{
  result = sub_1002D76E0(a1);
  if (!result)
  {
    result = &xmmword_100B6A828;
    v3 = 7;
    do
    {
      if ((*result & 1) == 0)
      {
        v12 = *a1;
        *(result + 5) = *(a1 + 4);
        *(result + 1) = v12;
        *result = 1;
        return result;
      }

      result += 21;
      --v3;
    }

    while (v3);
    if (sub_10000C240())
    {
      sub_10000AF54("No magic pairing slot available to allocate for address %:", v4, v5, v6, v7, v8, v9, v10, a1);
      v11 = sub_10000C050(0x55u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 0;
  }

  return result;
}

const char *sub_1002D79AC(int a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return "STATE_SENT_AES_SIV";
    }

    if (a1 != 240)
    {
      if (a1 == 255)
      {
        return "STATE_ERROR";
      }

      return "UNKNOWN";
    }

    return "STATE_SUCCESS";
  }

  else
  {
    if (!a1)
    {
      return "STATE_IDLE";
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return "STATE_SENT_HINT";
      }

      return "UNKNOWN";
    }

    return "STATE_CHANNEL_FOUND";
  }
}

void sub_1002D7A34(uint64_t a1)
{
  v2 = sub_1000E1FE8(a1);
  sub_1000CD5B8(v2);
  v3 = sub_1002D78F8(a1);
  if (v3)
  {
    v4 = v3;
    if (!*(v3 + 7))
    {
      sub_1002D7AA0(a1, 1);

      sub_1002D7B20(v4);
    }
  }
}

void sub_1002D7AA0(uint64_t a1, char a2)
{
  v4 = sub_1002D76E0(a1);
  if (v4)
  {
    *(v4 + 7) = a2;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54(" %: does not have a magic pairing device entry", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x55u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1002D7B20(uint64_t a1)
{
  if (*(a1 + 7) - 2 > 0xEE)
  {
    v10 = byte_100B6B158;
    if (byte_100B6B158)
    {
      v11 = 0;
      *(a1 + 269) = 0;
      v12 = qword_100B6B160;
      do
      {
        if (*(a1 + 1) == *v12 && *(a1 + 5) == *(v12 + 4))
        {
          *(a1 + 269) = v11;
          arc4random_buf((a1 + 28), 0x10uLL);
          arc4random_buf((a1 + 270), 0x10uLL);
          *v51 = 6;
          *&v51[8] = a1 + 1;
          v31 = sub_10002195C(sub_1002D8F3C, v51, 25, (a1 + 8));
          if (v31)
          {
            v32 = v31;
            if (sub_10000C240())
            {
              sub_10000AF54("Could not register timeout for magic pairing operation ret=%!", v33, v34, v35, v36, v37, v38, v39, v32);
              v40 = sub_10000C050(0x55u);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }
          }

          if (*(a1 + 7) >= 2u)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Invalid state %d trying to send address: %:", v41, v42, v43, v44, v45, v46, v47, *(a1 + 7));
              v48 = sub_10000C050(0x55u);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }
          }

          v56 = 0;
          *v51 = 268439555;
          v51[4] = 0;
          v49 = qword_100B6B160 + 44 * *(a1 + 269);
          *&v51[5] = *(v49 + 6);
          v52 = 1048608;
          v53 = *(a1 + 28);
          v54 = 262400;
          v55 = *(v49 + 40);
          if (!sub_1002D8BD0(a1 + 1, 1, v51, 0x33uLL))
          {
            sub_1002D7AA0(a1 + 1, 2);
          }

          return;
        }

        ++v11;
        v12 += 44;
      }

      while (v10 != v11);
      if (sub_10000C240())
      {
        sub_10000AF54("No hint for device %:. Aborting", v14, v15, v16, v17, v18, v19, v20, a1 + 1);
        v21 = sub_10000C050(0x55u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1002D7AA0(a1 + 1, 255);
      if (*(a1 + 334) == 1)
      {
        v22 = a1 + 1;
        goto LABEL_22;
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("No MagicPairing table found", v23, v24, v25, v26, v27, v28, v29, v50);
        v30 = sub_10000C050(0x55u);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10080FEE0();
        }
      }

      sub_1002D7AA0(a1 + 1, 255);
      if (*(a1 + 334) == 1)
      {
        v22 = a1 + 1;
LABEL_22:
        sub_1002D8AD0(v22, 8);
      }
    }

    *(a1 + 334) = 0;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("MagicPairing is currently in progress (%x) with device %:", v2, v3, v4, v5, v6, v7, v8, *(a1 + 7));
    v9 = sub_10000C050(0x55u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080FEE0();
    }
  }
}

uint64_t sub_1002D7E50(uint64_t a1, char a2)
{
  qword_100B6B160 = a1;
  byte_100B6B158 = a2;
  return 0;
}

uint64_t sub_1002D7E68()
{
  ccaes_ecb_encrypt_mode();
  if (ccecb_one_shot())
  {
    return 154;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D7EF0()
{
  v0 = sub_10028E64C(48, 1, 8, 7u, &qword_100B6A820, sub_1002D80EC);
  if (v0)
  {
    v1 = v0;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_ChanMan_AllocateFixedChannel returned %!", v2, v3, v4, v5, v6, v7, v8, v1);
      v9 = sub_10000C050(0x55u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_16:
        sub_1000E09C0();
      }
    }
  }

  else
  {
    **(qword_100B6A820 + 120) = 100;
    v10 = sub_1002FD540(nullsub_147);
    if (v10)
    {
      v1 = v10;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_SECMGR_RegisterAuditCb returned %!", v11, v12, v13, v14, v15, v16, v17, v1);
        v18 = sub_10000C050(0x55u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v19 = sub_1002958EC(sub_1002D7A34, 48);
      if (v19)
      {
        v1 = v19;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_ConnectMan_Register_FixedChannelInfo_callback returned %!", v20, v21, v22, v23, v24, v25, v26, v1);
          v27 = sub_10000C050(0x55u);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        v1 = sub_10023D840(&unk_100B53E30);
        if (!v1)
        {
          bzero(&qword_100B6A818, 0x940uLL);
          byte_100B6B158 = 0;
          qword_100B6B160 = 0;
          return v1;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("OI_DEVMGR_EXTRA_Register_Connect_CB returned %!", v28, v29, v30, v31, v32, v33, v34, v1);
          v35 = sub_10000C050(0x55u);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_16;
          }
        }
      }
    }
  }

  return v1;
}

void sub_1002D80EC(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v143 = 0;
    v142 = 0;
    if (!sub_10023DC00(a1, &v142))
    {
      v6 = *a2;
      if (v6 > 3)
      {
        if (v6 != 4)
        {
          if (v6 == 255)
          {
            if (a3 == 2)
            {
              v42 = 1;
            }

            else
            {
              v42 = a2[2];
            }

            if (sub_10000C240())
            {
              v43 = sub_1002D762C(v42);
              sub_10000AF54("Received status %s(%d) from device %:", v44, v45, v46, v47, v48, v49, v50, v43);
              v51 = sub_10000C050(0x55u);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                v52 = sub_10000C0FC();
                *buf = 136446210;
                *&buf[4] = v52;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            v7 = v42;
            goto LABEL_47;
          }

          if (v6 != 240)
          {
            goto LABEL_15;
          }

          v8 = sub_1000E1FE8(&v142);
          sub_1000CD5B8(v8);
          v9 = sub_1002D78F8(&v142);
          if (v9)
          {
            *(v9 + 334) = 1;
            sub_1002D7B20(v9);
          }
        }
      }

      else
      {
        switch(v6)
        {
          case 1u:
            v10 = sub_1000E1FE8(&v142);
            sub_1000CD5B8(v10);
            v11 = sub_1002D76E0(&v142);
            if (v11)
            {
              *buf = 384;
              buf[2] = 104;
              memset(&buf[3], 0, 105);
              sub_1002D8BD0(v11 + 1, 2, buf, 0x6CuLL);
            }

            else if (sub_10000C240())
            {
              sub_10000AF54(" %: does not have a magic pairing device entry", v53, v54, v55, v56, v57, v58, v59, &v142);
              v60 = sub_10000C050(0x55u);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            break;
          case 2u:
            v20 = sub_1002D76E0(&v142);
            if (!v20)
            {
              if (sub_10000C240())
              {
                sub_10000AF54(" %: does not have a magic pairing device entry", v61, v62, v63, v64, v65, v66, v67, &v142);
                v68 = sub_10000C050(0x55u);
                if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }

              v69 = 8;
              goto LABEL_77;
            }

            if (!v3)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/magicPairing/BT_MagicPairing.c", 823, "(length) > 0");
            }

            v21 = a2 + 2;
            v22 = a2[2];
            if (v22 != 2)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("Invalid number of paramerter = %d", v70, v71, v72, v73, v74, v75, v76, v22);
                v77 = sub_10000C050(0x55u);
                if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }

              v69 = 3;
              goto LABEL_77;
            }

            v23 = v20;
            v24 = a3 - 3;
            v25 = v3 - 53;
            v26 = v3 - 3;
            v27 = v20 + 168;
            v28 = 1;
            v29 = 2;
            do
            {
              if (v24 <= v28)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/magicPairing/BT_MagicPairing.c", 837, "ByteStream_NumReadBytesAvail(bs) >= 2");
              }

              if (v24 <= (v28 + 2))
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/magicPairing/BT_MagicPairing.c", 838, "ByteStream_NumReadBytesAvail(bs) >= 2");
              }

              v30 = *&v21[v28];
              v31 = *&v21[(v28 + 2)];
              v32 = v28 + 4;
              if (v30 == 128)
              {
                if (v31 != 54)
                {
                  if (sub_10000C240())
                  {
                    sub_10000AF54("ERROR AES_SIV key length mismatch, please file a sysdiagnose from all cloud paired devices", v89, v90, v91, v92, v93, v94, v95, v140);
                    v96 = sub_10000C050(0x55u);
                    if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
                    {
                      sub_100815B20(v96);
                    }
                  }

                  goto LABEL_76;
                }

                if (v25 <= v32)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/magicPairing/BT_MagicPairing.c", 852, "ByteStream_NumReadBytesAvail(bs) >= (keySize)");
                }

                memmove(v27, &v21[v32], 0x36uLL);
                v28 += 58;
                *(v23 + 268) = 54;
              }

              else if (v30 == 256)
              {
                if (v31 != 4)
                {
                  sub_1000D660C();
                }

                if (v26 <= v32)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/magicPairing/BT_MagicPairing.c", 843, "ByteStream_NumReadBytesAvail(bs) >= 4");
                }

                *(v23 + 164) = *&v21[(v28 + 4)];
                v28 += 8;
              }

              else
              {
                if (sub_10000C240())
                {
                  sub_10000AF54("Invalid opcode %x", v33, v34, v35, v36, v37, v38, v39, v140);
                  v40 = sub_10000C050(0x55u);
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                  {
                    v41 = sub_10000C0FC();
                    *buf = 136446466;
                    *&buf[4] = v41;
                    *&buf[12] = 1024;
                    *&buf[14] = 0xFFFF;
                    _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
                  }
                }

                sub_1002D8AD0(&v142, 3);
                v28 = v32;
              }

              --v29;
            }

            while (v29);
            v78 = (qword_100B6B160 + 44 * *(v23 + 269));
            v80 = *v78;
            v79 = v78[1];
            *&v147[12] = *(v78 + 28);
            v146 = v80;
            *v147 = v79;
            if (*&v147[24] < *(v23 + 164))
            {
              while (1)
              {
                v145 = 0uLL;
                *buf = 0;
                *&buf[8] = 0;
                ccaes_ecb_encrypt_mode();
                if (ccecb_one_shot())
                {
                  break;
                }

                *&v147[6] = v145;
                if (++*&v147[24] >= *(v23 + 164))
                {
                  goto LABEL_62;
                }
              }

              if (sub_10000C240())
              {
                sub_10000AF54("Error generating RatchetAccKey: %!", v109, v110, v111, v112, v113, v114, v115, 154);
                v116 = sub_10000C050(0x55u);
                if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                {
LABEL_75:
                  sub_1000E09C0();
                }
              }

LABEL_76:
              v69 = 1;
              goto LABEL_77;
            }

LABEL_62:
            ccaes_ecb_encrypt_mode();
            memset(&buf[32], 0, 68);
            qmemcpy(buf, "bt_aessivauthentbt_aessivencrypt", 32);
            if (ccecb_one_shot())
            {
              if (sub_10000C240())
              {
                sub_10000AF54("Error generating AES_SIV", v81, v82, v83, v84, v85, v86, v87, v140);
                v88 = sub_10000C050(0x55u);
                if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_75;
                }
              }

              goto LABEL_76;
            }

            ccaes_siv_decrypt_mode();
            v97 = ccsiv_plaintext_size();
            v98 = sub_100007618(v97, 0x5485F7D3uLL);
            bzero(v98, v97);
            v141 = v27;
            v99 = ccsiv_one_shot();
            if (v99)
            {
              v100 = v99;
              if (sub_10000C240())
              {
                sub_10000AF54("ccsiv_one_shot returned %d", v101, v102, v103, v104, v105, v106, v107, v100);
                v108 = sub_10000C050(0x55u);
                if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }

              goto LABEL_83;
            }

            *(v23 + 286) = *v98;
            if (*(v98 + 2) != *(v23 + 28) || *(v98 + 3) != *(v23 + 36))
            {
LABEL_83:
              sub_10000C1E8(v98);
LABEL_84:
              if (sub_10000C240())
              {
                sub_10000AF54("Remote keys verification failed, sending error", v118, v119, v120, v121, v122, v123, v124, v141);
                v125 = sub_10000C050(0x55u);
                if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
                {
                  sub_1000E09C0();
                }
              }

              v69 = 7;
LABEL_77:
              sub_1002D8AD0(&v142, v69);
              return;
            }

            v127 = *(v98 + 8) != *(v23 + 1) || *(v98 + 18) != *(v23 + 5);
            sub_10000C1E8(v98);
            if (v127)
            {
              goto LABEL_84;
            }

            if (!sub_1002D8FC4(v23))
            {
              if (sub_10000C240())
              {
                sub_10000AF54("Error generating AES_SIV", v132, v133, v134, v135, v136, v137, v138, v141);
                v139 = sub_10000C050(0x55u);
                if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_75;
                }
              }

              goto LABEL_76;
            }

            v129 = (qword_100B6B160 + 44 * *(v23 + 269));
            v130 = *&v147[12];
            v131 = *v147;
            *v129 = v146;
            v129[1] = v131;
            *(v129 + 28) = v130;
            sub_1002D9160(v23, v128);
            break;
          case 3u:
            v7 = 0;
LABEL_47:
            sub_1002D8D2C(&v142, v7);
            return;
          default:
LABEL_15:
            if (sub_10000C240())
            {
              sub_10000AF54("Received unknown opcode %x", v12, v13, v14, v15, v16, v17, v18, *a2);
              v19 = sub_10000C050(0x55u);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            v7 = 3;
            goto LABEL_47;
        }
      }
    }
  }
}

uint64_t sub_1002D898C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 < 0x10)
  {
    return 101;
  }

  ccaes_ecb_decrypt_mode();
  if (ccecb_one_shot())
  {
    return 154;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D89F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 < 0x10)
  {
    return 101;
  }

  ccaes_ecb_encrypt_mode();
  if (ccecb_one_shot())
  {
    return 154;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D8A64()
{
  qword_100B6A818 = 0;
  sub_100295954(sub_1002D7A34);
  if (qword_100B6A820)
  {
    sub_10028E908(qword_100B6A820);
  }

  v0 = &xmmword_100B6A828 + 1;
  v1 = 7;
  do
  {
    sub_1000DDCD8(v0);
    v0 += 336;
    --v1;
  }

  while (v1);
  return 0;
}

__int128 *sub_1002D8AD0(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  if (sub_10000C240())
  {
    v4 = sub_1002D762C(a2);
    sub_10000AF54("Sending status %s(%d) to device %:", v5, v6, v7, v8, v9, v10, v11, v4);
    v12 = sub_10000C050(0x55u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_1002D8BD0(a1, 255, &v14, 1uLL);
  return sub_1002D8D2C(a1, a2);
}

uint64_t sub_1002D8BD0(uint64_t a1, uint64_t a2, char *a3, size_t a4)
{
  v23 = 0;
  v22[0] = a2;
  v22[1] = 1;
  v7 = sub_10023DB58(a1, &v23);
  result = 101;
  if (v7 || !v23)
  {
    return result;
  }

  memset(&v21[1], 0, 96);
  if (a3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v21[0] = 0uLL;
  v10 = sub_10001FF10(v21, v9);
  if (v10)
  {
    v11 = v10;
LABEL_10:
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send PDU %u: %!", v13, v14, v15, v16, v17, v18, v19, a2);
      v20 = sub_10000C050(0x55u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return v11;
  }

  v12 = sub_10001F968(v21, v22, 2uLL, 0);
  if (v12)
  {
    v11 = v12;
    sub_1000B7B40(v21);
    goto LABEL_10;
  }

  if (!a3 || (v11 = sub_10001F968(v21, a3, a4, 2u), !v11))
  {
    v11 = sub_1000B7EDC(0, 48, v23, v21, 1);
  }

  sub_1000B7B40(v21);
  result = 0;
  if (v11 && v11 != 412)
  {
    goto LABEL_10;
  }

  return result;
}

__int128 *sub_1002D8D2C(uint64_t a1, uint64_t a2)
{
  result = sub_1002D76E0(a1);
  if (result)
  {
    v5 = result;
    if (sub_10000C240())
    {
      v6 = sub_1002D762C(a2);
      sub_1002D79AC(*(v5 + 7));
      sub_10000AF54("MP Complete Pairing with status:%s(%d) state:(%s)%d", v7, v8, v9, v10, v11, v12, v13, v6);
      v14 = sub_10000C050(0x55u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v15 = *(v5 + 2);
    if (v15)
    {
      sub_10002242C(v15);
      *(v5 + 2) = 0;
    }

    if (a2)
    {
      v16 = -1;
    }

    else
    {
      v16 = -16;
    }

    *(v5 + 7) = v16;
    if (a2)
    {
      if (!qword_100B6A818)
      {
        return sub_1000DDCD8(a1);
      }

      v17 = *qword_100B6A818;
      if (!*qword_100B6A818)
      {
        return sub_1000DDCD8(a1);
      }

      v18 = a1;
      v19 = a2;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
    }

    else
    {
      *buf = 0uLL;
      v27[0] = 0;
      v27[1] = 0;
      v26[0] = 0;
      v26[1] = 0;
      sub_1000456EC(v5 + 270, 0x10uLL, v5 + 286, 0x10u, buf, 0x10u);
      sub_1000456EC(v5 + 286, 0x10uLL, v26, 0x10u, v27, 0x10u);
      v24 = 0;
      v23 = v5 + 12;
      do
      {
        v23[v24] = *(v27 + v24) ^ buf[v24];
        ++v24;
      }

      while (v24 != 16);
      if (!qword_100B6A818)
      {
        return sub_1000DDCD8(a1);
      }

      v17 = *qword_100B6A818;
      if (!*qword_100B6A818)
      {
        return sub_1000DDCD8(a1);
      }

      v25 = qword_100B6B160 + 44 * *(v5 + 269);
      v22 = *(v25 + 40);
      v20 = v25 + 6;
      v21 = v25 + 22;
      v18 = a1;
      v19 = 0;
    }

    v17(v18, v19, v20, v21, v22, v23, 0);
    return sub_1000DDCD8(a1);
  }

  return result;
}

__int128 *sub_1002D8F3C(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("BT MagicPairing timeout.", v2, v3, v4, v5, v6, v7, v8, v13);
    v9 = sub_10000C050(0x55u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  v10 = *(a1 + 8);
  v11 = *(v10 + 2);
  v14 = *v10;
  v15 = v11;
  return sub_1002D8AD0(&v14, 6);
}

BOOL sub_1002D8FC4(uint64_t a1)
{
  ccaes_siv_encrypt_mode();
  v2 = qword_100B6B160 + 44 * *(a1 + 269);
  v3 = *(a1 + 270);
  v19[0] = *(a1 + 28);
  v19[1] = v3;
  memset(&v19[4], 0, 32);
  v20 = 0;
  v19[2] = *(a1 + 286);
  v19[3] = *(v2 + 6);
  v4 = ccsiv_ciphertext_size();
  __chkstk_darwin(v4, v5);
  v7 = v19 - v6;
  bzero(v19 - v6, v4);
  v8 = ccsiv_one_shot();
  if (v8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("ccsiv_one_shot returned %d", v9, v10, v11, v12, v13, v14, v15, v8);
      v16 = sub_10000C050(0x55u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    *(a1 + 144) = v4;
    if (v4 >= 0x64)
    {
      v17 = 100;
    }

    else
    {
      v17 = v4;
    }

    memmove((a1 + 44), v7, v17);
  }

  return v8 == 0;
}

__int128 *sub_1002D9160(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  __chkstk_darwin(a1, a2);
  v5 = &v7 - v4;
  bzero(&v7 - v4, v3 + 5);
  *v5 = -32767;
  v5[2] = 0;
  *(v5 + 3) = v3;
  memmove(v5 + 5, (a1 + 44), v3);
  result = sub_1002D8BD0(a1 + 1, 3, v5, (v3 + 5));
  if (result)
  {
    return sub_1002D8D2C(a1 + 1, 1);
  }

  return result;
}

uint64_t sub_1002D9264()
{
  v0 = sub_1002B9188();
  if (v0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to create init ATT database with result %!", v1, v2, v3, v4, v5, v6, v7, v0);
      v8 = sub_10000C050(0x45u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  return v0;
}

uint64_t sub_1002D92E0(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v8 = *a3;
  if (v8 != 16 && v8 != 2)
  {
    return 146;
  }

  if (a2)
  {
    v10 = &xmmword_1008A4A80;
  }

  else
  {
    v10 = &xmmword_1008A4A94;
  }

  *(a1 + 4) = *v10;
  *(a1 + 20) = *(v10 + 4);
  *(a1 + 32) = sub_1002D93AC;
  *(a1 + 40) = 0;
  *(a1 + 26) = 1;
  v11 = *a3;
  *(a1 + 64) = *(a3 + 4);
  *(a1 + 48) = v11;

  return sub_1002B930C(0, a1, a4);
}

uint64_t sub_1002D93AC(uint64_t a1, unsigned int a2, void *a3, int a4, _WORD *a5)
{
  v6 = *(a1 + 48);
  v7 = v6 >= a2;
  v8 = v6 - a2;
  if (!v7)
  {
    return 7;
  }

  v12[0] = 0;
  v12[1] = 0;
  if (v8 >= a4)
  {
    LOWORD(v8) = a4;
  }

  *a5 = v8;
  sub_10007A978(v12, (a1 + 48), 1);
  memmove(a3, v12 + a2, *a5);
  return 0;
}

void sub_1002D945C(unsigned __int16 *a1)
{
  if (a1)
  {
    sub_1002B9630(*a1, 0);
  }

  else
  {
    sub_1000D660C();
  }
}

uint64_t sub_1002D9470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  if (v3 != 16 && v3 != 2)
  {
    return 146;
  }

  *(a1 + 20) = 0;
  *(a1 + 4) = xmmword_1008A4AA8;
  *(a1 + 32) = sub_1002D94F0;
  *(a1 + 40) = 0;
  *(a1 + 26) = 1;
  *(a1 + 48) = *a3;
  *(a1 + 50) = *(a3 + 24);
  v5 = *(a3 + 64);
  *(a1 + 52) = *(a3 + 48);
  *(a1 + 68) = v5;
  return sub_1002B930C(a2, a1, 0);
}

uint64_t sub_1002D94F0(uint64_t a1, unsigned int a2, void *__dst, int a4, unsigned __int16 *a5)
{
  v6 = *(a1 + 52);
  if (v6 == 2)
  {
    v7 = 6;
  }

  else
  {
    v7 = 4;
  }

  v8 = v7 - a2;
  if (v7 < a2)
  {
    return 7;
  }

  v15 = 0;
  v14 = *(a1 + 48);
  if (v6 == 2)
  {
    sub_10007A978(&v15, (a1 + 52), 1);
  }

  if (v8 >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v8;
  }

  *a5 = v13;
  memmove(__dst, &v14 + a2, v13);
  return 0;
}

uint64_t sub_1002D95A0(uint64_t a1, unsigned __int16 *a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8)
{
  v9 = *a6;
  if (v9 != 16 && v9 != 2)
  {
    return 146;
  }

  if ((a3 & 2) == 0 || a7)
  {
    if ((a3 & 0x4C) == 0 || a8)
    {
      *(a2 + 2) = xmmword_1008A4ABC;
      *(a2 + 5) = 0;
      *(a2 + 4) = sub_1002D9744;
      *(a2 + 5) = 0;
      *(a2 + 26) = 1;
      *(a2 + 48) = a3;
      v33 = *a6;
      *(a2 + 17) = *(a6 + 4);
      *(a2 + 26) = v33;
      if (sub_1002B930C(a1, a2, a4))
      {
        return 4105;
      }

      else
      {
        v34 = *a6;
        *(a5 + 20) = *(a6 + 4);
        *(a5 + 4) = v34;
        *(a5 + 32) = a7;
        *(a5 + 40) = a8;
        result = sub_1002B930C(*a2, a5, 0);
        if (result)
        {
          sub_1002B9630(*a2, 0);
          return 4106;
        }

        else
        {
          a2[25] = *a5;
        }
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Set callback required since characteristic is writable.", v24, v25, v26, v27, v28, v29, v30, v8);
        v31 = sub_10000C050(0x45u);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 4104;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Get callback required since characteristic is readable", v16, v17, v18, v19, v20, v21, v22, v8);
      v23 = sub_10000C050(0x45u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4103;
  }

  return result;
}

uint64_t sub_1002D9744(uint64_t a1, unsigned int a2, void *a3, signed int a4, _WORD *a5)
{
  v6 = *(a1 + 52) + 3;
  v7 = v6 >= a2;
  v8 = v6 - a2;
  if (!v7)
  {
    return 7;
  }

  v14[0] = 0;
  v14[1] = 0;
  v12 = *(a1 + 48);
  v13 = *(a1 + 50);
  if (v8 >= a4)
  {
    LOWORD(v8) = a4;
  }

  *a5 = v8;
  sub_10007A978(v14, (a1 + 52), 1);
  memmove(a3, &v12 + a2, *a5);
  return 0;
}

uint64_t sub_1002D9808(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t (*a5)(uint64_t a1, unsigned int a2, void *a3, unsigned int a4, _WORD *a5), uint64_t a6)
{
  v7 = *a4;
  if (v7 != 16 && v7 != 2)
  {
    return 146;
  }

  v15 = *a4;
  *(a1 + 20) = *(a4 + 4);
  *(a1 + 4) = v15;
  if (sub_10004E15C(a4, &xmmword_1008A4AD0) || sub_10004E15C(a4, &xmmword_1008A4B20))
  {
    a6 = 0;
  }

  else
  {
    if (sub_10004E15C(a4, &xmmword_1008A4AE4))
    {
      goto LABEL_10;
    }

    if (sub_10004E15C(a4, &xmmword_1008A4AF8) || sub_10004E15C(a4, &xmmword_1008A4B0C))
    {
      a3 |= 3u;
      goto LABEL_11;
    }
  }

  a3 = 1;
LABEL_10:
  a5 = sub_1002D9940;
LABEL_11:
  *(a1 + 26) = a3;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;

  return sub_1002B930C(a2, a1, 0);
}

uint64_t sub_1002D9940(uint64_t a1, unsigned int a2, void *a3, unsigned int a4, _WORD *a5)
{
  if (!sub_10004E15C((a1 + 4), &xmmword_1008A4AD0))
  {
    if (sub_10004E15C((a1 + 4), &xmmword_1008A4B20))
    {
      v17[0] = *(a1 + 48);
      v18 = *(a1 + 52);
      if (a2 <= 7)
      {
        v17[1] = *(a1 + 50);
        v19 = *(a1 + 54);
        if ((7 - a2) >= a4)
        {
          v10 = a4;
        }

        else
        {
          v10 = (7 - a2);
        }

        *a5 = v10;
        v11 = v17;
        goto LABEL_13;
      }
    }

    else
    {
      sub_10004E15C((a1 + 4), &xmmword_1008A4AE4);
      v13 = *(a1 + 56);
      v14 = v13 >= a2;
      v15 = v13 - a2;
      if (v14)
      {
        if (v15 >= a4)
        {
          LOWORD(v15) = a4;
        }

        *a5 = v15;
        v12 = (*(a1 + 48) + a2);
        v10 = v15;
        goto LABEL_19;
      }
    }

    return 7;
  }

  if (a2 > 2)
  {
    return 7;
  }

  v20 = *(a1 + 48);
  if (2 - a2 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = 2 - a2;
  }

  *a5 = v10;
  v11 = &v20;
LABEL_13:
  v12 = v11 + a2;
LABEL_19:
  memmove(a3, v12, v10);
  return 0;
}

uint64_t sub_1002D9A70(uint64_t a1, unsigned __int8 *a2, int a3, const void *a4, int a5)
{
  if (sub_10004E15C(a2 + 4, &xmmword_1008A4ABC))
  {
    if (a3)
    {
      if ((a2[48] & 0x10) == 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Can't send notification to characteristic without notify property!", v10, v11, v12, v13, v14, v15, v16, v36);
          v17 = sub_10000C050(0x45u);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        return 4108;
      }

      goto LABEL_17;
    }

    if ((a2[48] & 0x20) != 0)
    {
LABEL_17:
      v35 = *(a2 + 25);

      return sub_1002B995C(a1, v35, a3, a4, a5);
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Can't send indication to characteristic without indicate property!", v27, v28, v29, v30, v31, v32, v33, v36);
      v34 = sub_10000C050(0x45u);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4109;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Attribute handle 0x%x is not a characteristic!", v19, v20, v21, v22, v23, v24, v25, *a2);
      v26 = sub_10000C050(0x45u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4107;
  }
}

double sub_1002D9BF4@<D0>(unsigned int a1@<W0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  if (a1 <= 3)
  {
    v3 = &xmmword_100B6B168 + a2;
    if (a1 == 1)
    {
      v4 = *v3;
    }

    else
    {
      v5 = v3[12];
      v3 += 12;
      v4 = v5;
    }

    if (v4 != -1)
    {
      *v3 = v4 + 1;
    }
  }

  v6 = *&dword_100B6B198;
  a3[2] = unk_100B6B188;
  a3[3] = v6;
  v7 = unk_100B6B1B8;
  a3[4] = xmmword_100B6B1A8;
  a3[5] = v7;
  result = *&xmmword_100B6B168;
  v9 = unk_100B6B178;
  *a3 = xmmword_100B6B168;
  a3[1] = v9;
  return result;
}

uint64_t sub_1002D9C80(int a1)
{
  result = memcmp(&unk_100B6B1C8, "", 0x40uLL);
  if (result)
  {
    if (byte_100B6B217 & 1) != 0 || a1 && BYTE13(xmmword_100B6B1E8) != 1 || (byte_100B6B210)
    {
      return 0;
    }

    else
    {
      result = sub_10007B570();
      if (!result)
      {
        byte_100B6B217 = 1;
      }
    }
  }

  return result;
}

void sub_1002D9D0C()
{
  xmmword_100B6B1E8 = 0u;
  *&byte_100B6B1F8 = 0u;
  unk_100B6B1C8 = 0u;
  *&qword_100B6B1D8 = 0u;
  if (!qword_100B6B208)
  {
    qword_100B6B208 = sub_1000BAE38(0, 0);
  }
}

uint64_t sub_1002D9D70(uint64_t result)
{
  byte_100B6B214 = result;
  byte_100B6B21A = 0;
  return result;
}

void sub_1002D9DA8()
{
  xmmword_100B6B1E8 = 0u;
  *&byte_100B6B1F8 = 0u;
  unk_100B6B1C8 = 0u;
  *&qword_100B6B1D8 = 0u;
  byte_100B6B217 = 0;
  byte_100B6B210 = 0;
  byte_100B6B212 = 0;
  v0 = qword_100B6B208;
  if (qword_100B6B208)
  {
    while (sub_10000C248(v0))
    {
      v1 = sub_1000BA5F8(qword_100B6B208);
      sub_1000BB054(qword_100B6B208, 0);
      sub_10000C1E8(v1[2]);
      sub_10000C1E8(v1);
      v0 = qword_100B6B208;
    }
  }

  sub_1000BBDD0(qword_100B6B208);
  qword_100B6B208 = 0;
}

uint64_t sub_1002D9E4C()
{
  sub_100304AF8("LE_Scanning:\n");
  sub_100304AF8("lRestartScanInProgress=%d lStopInProgress=%d lStartInProgress=%d", byte_100B6B217, byte_100B6B210, byte_100B6B212);
  if (!memcmp(&unk_100B6B1C8, "", 0x40uLL))
  {
    result = sub_100304AF8("No scan in progress\n");
  }

  else
  {
    sub_100304AF8("Current Scan Parameters: leScanType:%d leScanInterval:0x%x leScanWindow:0x%x scanningFilterPolicy:%d filterDuplicates:%d\n", xmmword_100B6B1E8, WORD1(xmmword_100B6B1E8), WORD2(xmmword_100B6B1E8), BYTE13(xmmword_100B6B1E8), BYTE14(xmmword_100B6B1E8));
    result = sub_100304AF8("scanStartedCb:%sset deviceFoundCb:%sset scanFinishedCb:%sset\n");
  }

  if (byte_100B6B216 == 1)
  {
    sub_100304AF8("Incomplete advertising packets:\n");
    result = qword_100B6B208;
    if (qword_100B6B208)
    {
      result = sub_10000C248(qword_100B6B208);
      if (result)
      {
        result = sub_1000B47B8(qword_100B6B208);
        for (i = result; i; result = i)
        {
          v2 = sub_1000BC720(result);
          if (v2[1])
          {
            v3 = "Public";
          }

          else
          {
            v3 = "Random";
          }

          v0 = v0 & 0xFFFF000000000000 | *(v2 + 2) | (*(v2 + 3) << 32);
          sub_100304AF8(" %s %: responseType:%d dataLen:%d rssi:%d eventType:%d dataStatus:%d primaryPHY:%d secPHY:%d SID:%d txPower:%d periodicInterval:%d\n", v3, v0, *v2, *(v2 + 4), v2[24], *(v2 + 13), v2[28], v2[29], v2[30], v2[31], v2[32], *(v2 + 17));
          sub_1000BC828(&i);
        }
      }
    }
  }

  return result;
}

void sub_1002DA024(uint64_t a1)
{
  if (a1)
  {
    v3 = qword_100B6B1D8;
    v2 = qword_100B6B1E0;
    if (sub_10000C240())
    {
      sub_10000AF54("Reset scan in LE_Scan: %! for location %d", v4, v5, v6, v7, v8, v9, v10, a1);
      v11 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    xmmword_100B6B1E8 = 0u;
    *&byte_100B6B1F8 = 0u;
    unk_100B6B1C8 = 0u;
    *&qword_100B6B1D8 = 0u;
    byte_100B6B212 = 0;
    if (v3)
    {
      v3(a1, v2);
    }

    else
    {
      sub_1000D660C();
    }
  }
}

void sub_1002DA0E4(uint64_t a1)
{
  v1 = unk_100B6B1C8;
  v3 = qword_100B6B1D8;
  v2 = qword_100B6B1E0;
  byte_100B6B212 = 0;
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not start LE scan callback: %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    xmmword_100B6B1E8 = 0u;
    *&byte_100B6B1F8 = 0u;
    unk_100B6B1C8 = 0u;
    *&qword_100B6B1D8 = 0u;
    if (v3)
    {
      v3(a1, v2);
    }

    else
    {
      sub_1000D660C();
    }
  }

  else if (unk_100B6B1C8)
  {
    v13 = qword_100B6B1E0;

    v1(0, v13);
  }
}

void sub_1002DA1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = qword_100B6B1D8;
  v9 = qword_100B6B1E0;
  v22 = xmmword_100B6B1E8;
  v21 = WORD1(xmmword_100B6B1E8);
  v20 = 0;
  if (WORD5(xmmword_100B6B1E8))
  {
    v20 = WORD5(xmmword_100B6B1E8);
  }

  *&v23[3] = 0;
  *v23 = 0;
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not start LE scan (leScanParamsScanCoreELNAbyPassCb): %!", v11, v12, v13, v14, v15, v16, v17, a1);
      v18 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    xmmword_100B6B1E8 = 0u;
    *&byte_100B6B1F8 = 0u;
    unk_100B6B1C8 = 0u;
    *&qword_100B6B1D8 = 0u;
    byte_100B6B212 = 0;
    if (v10)
    {
      v10(a1, v9);
    }

    else
    {
      sub_1000D660C();
    }
  }

  else if (byte_100B6B218 == 1 && byte_100B6B215 == 1)
  {
    sub_1000841FC(v23);
    if (byte_100B6B216)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    byte_100B6B1F8 = v19;
    sub_10008395C(v23[0], BYTE13(xmmword_100B6B1E8), 1, &v22, &v21, &v20, v19, 8u);
  }

  else
  {

    sub_10008518C(0, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_1002DA3B0(uint64_t a1, char a2)
{
  if (!sub_1000ABD24(a1))
  {
    return 414;
  }

  result = 0;
  *(a1 + 265) = a2 ^ 1;
  return result;
}

void sub_1002DA3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1000ABD24(a2))
  {
    if (a1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to encrypt connection %!.", v6, v7, v8, v9, v10, v11, v12, a1);
        v13 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      *(a2 + 169) = 0;
      if (a1 == 708)
      {
        *(a2 + 132) = 6;
        *(a2 + 140) = 4834;
      }

      v14 = a3 != 0;
      v15 = 168;
    }

    else
    {
      *(a2 + 168) = a3 != 0;
      *(a2 + 170) = *(a2 + 171);
      v14 = 1;
      v15 = 240;
    }

    *(a2 + v15) = v14;
    sub_1002E5714(a2, a1, a3 != 0);
    v24 = xmmword_100B6B270;
    if (xmmword_100B6B270 >= 1)
    {
      v25 = 0;
      v26 = &xmmword_100B6B270 + 1;
      do
      {
        if (*v26)
        {
          (*v26)(a2, a1, a3, qword_100B6B248);
          v24 = xmmword_100B6B270;
        }

        ++v25;
        v26 += 3;
      }

      while (v25 < v24);
    }

    sub_1002E5770(a2, a1, a3 != 0);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("This handle is not a LE connection.", v16, v17, v18, v19, v20, v21, v22, v27);
    v23 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002DA58C(uint64_t a1, _BYTE *a2)
{
  if (sub_1000ABD24(a2))
  {
    if (a1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to refresh connection %!.", v4, v5, v6, v7, v8, v9, v10, a1);
        v11 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      a2[168] = 0;
    }

    else
    {
      a2[168] = 1;
      a2[170] = a2[171];
      sub_1002E5714(a2, 0, 1);
      v20 = xmmword_100B6B270;
      if (xmmword_100B6B270 >= 1)
      {
        v21 = 0;
        v22 = &xmmword_100B6B270 + 8;
        do
        {
          if (*v22)
          {
            (*v22)(a2, 0, 1, qword_100B6B248);
            v20 = xmmword_100B6B270;
          }

          ++v21;
          v22 += 24;
        }

        while (v21 < v20);
      }

      sub_1002E5770(a2, 0, 1);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("This handle is not a LE connection.", v12, v13, v14, v15, v16, v17, v18, v23);
    v19 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002DA700(int a1, void *a2, uint64_t a3)
{
  v51 = 0;
  v50 = 0uLL;
  v48 = 0;
  v5 = sub_1000ABB80(a1);
  v49 = v5;
  if (v5)
  {
    v6 = v5;
    if (sub_1000ABD24(v5))
    {
      if (!a3 && *a2 == v51 && sub_1002DF928((v6 + 48)))
      {
        if (sub_1002E6428(v6, &v50, &v48))
        {
          if (!sub_100018960(186, sub_1002DA970, v7, v8, v9, v10, v11, v12, v6))
          {
            *(v6 + 171) = v48;
            *(v6 + 168) = 2;
          }
        }

        else
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Rejecting key request", v38, v39, v40, v41, v42, v43, v44, v46);
            v45 = sub_10000C050(0x43u);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          sub_100018960(187, 0, v39, v40, v41, v42, v43, v44, v6);
        }
      }

      else if (unk_100B6B230)
      {
        v21 = 48;
        if (*(v6 + 55))
        {
          v21 = 56;
        }

        unk_100B6B230(v6 + v21, a2, a3, qword_100B6B248);
        v47[1] = &v49;
        v47[0] = 8;
        if (sub_10002195C(sub_1002DA9B0, v47, 5000, (v6 + 216)))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to set key request timeout CB", v22, v23, v24, v25, v26, v27, v28, v46);
            v29 = sub_10000C050(0x43u);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }
        }
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("No callbacks, ignoring request", v30, v31, v32, v33, v34, v35, v36, v46);
        v37 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("This handle is not a LE connection, ignoring", v13, v14, v15, v16, v17, v18, v19, v46);
      v20 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

BOOL sub_1002DA970(_BOOL8 result, uint64_t a2)
{
  if (result && a2)
  {
    result = sub_1000ABD24(a2);
    if (result)
    {
      *(a2 + 168) = 0;
      *(a2 + 171) = 0;
    }
  }

  return result;
}

void sub_1002DA9B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  if (*v1 && sub_1000ABD24(*v1))
  {
    *(v2 + 216) = 0;
    if (sub_10000C240())
    {
      sub_10000AF54("Timeout waiting for the response - we rejected the request for Key length", v3, v4, v5, v6, v7, v8, v9, v19);
      v10 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_100018960(187, 0, v4, v5, v6, v7, v8, v9, v2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("This handle is not a LE connection.", v11, v12, v13, v14, v15, v16, v17, v19);
    v18 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1002DAA84(_DWORD *a1, uint64_t *a2, __int16 a3, uint64_t a4, char a5)
{
  v60[0] = 0;
  v60[1] = 0;
  if (!a1)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid address", v21, v22, v23, v24, v25, v26, v27, v57);
    v28 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_20:
    sub_10080F7A0();
    return 101;
  }

  if (!a2)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("randomNumber cannot be NULL", v29, v30, v31, v32, v33, v34, v35, v57);
    v36 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_20;
  }

  v9 = sub_1000E5EA8(a1);
  v59 = v9;
  if (!v9)
  {
    return 122;
  }

  v10 = v9;
  if (!sub_1000ABD24(v9))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This handle is not a LE connection, ignoring", v37, v38, v39, v40, v41, v42, v43, v57);
      v44 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 122;
  }

  v11 = *(v10 + 216);
  if (v11)
  {
    sub_10002242C(v11);
    *(v10 + 216) = 0;
  }

  if (!a4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Keysize=0 - no key present", v45, v14, v15, v16, v17, v18, v19, v57);
      v46 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v12 = 0;
    goto LABEL_30;
  }

  if ((a5 & 0xFE) != 2)
  {
    v12 = sub_1002E655C(a2, a3, v60);
    if (v12)
    {
      return v12;
    }

    v47 = 48;
    if (*(v10 + 55))
    {
      v47 = 56;
    }

    if (!sub_1002DAEC4((v10 + v47), v60, a4, a5))
    {
      return v12;
    }

LABEL_30:
    sub_100018960(187, 0, v14, v15, v16, v17, v18, v19, v10);
    return v12;
  }

  if (off_100B6B238)
  {
    v58[1] = &v59;
    v58[0] = 8;
    v12 = sub_10002195C(sub_1002DAD90, v58, 0, 0);
    if (!v12)
    {
      *(v59 + 168) = 3;
      return v12;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_Dispatch_RegisterTimedFunc failed to set key len request timeout %!", v13, v14, v15, v16, v17, v18, v19, v12);
      v20 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v10 = v59;
    goto LABEL_30;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("No callbacks, ignoring request", v48, v49, v50, v51, v52, v53, v54, v57);
    v55 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 0;
}

void sub_1002DAD90(uint64_t a1)
{
  v1 = **(a1 + 8);
  v21 = v1;
  if (off_100B6B238)
  {
    v20[0] = 0;
    if (v1 && sub_1000ABD24(v1))
    {
      v20[1] = &v21;
      LOWORD(v20[0]) = 8;
      if (sub_10002195C(sub_1002DCACC, v20, 5000, (v1 + 212)))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to set key request timeout CB", v2, v3, v4, v5, v6, v7, v8, v19);
          v9 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      else
      {
        v18 = 48;
        if (*(v21 + 55))
        {
          v18 = 56;
        }

        off_100B6B238(v21 + v18, qword_100B6B248);
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("This handle is not a LE connection.", v10, v11, v12, v13, v14, v15, v16, v19);
      v17 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

uint64_t sub_1002DAEC4(_DWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a1)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid address", v16, v17, v18, v19, v20, v21, v22, v56);
    v23 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_18:
    sub_10080F7A0();
    return 101;
  }

  if (!a2)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid *key specified", v33, v34, v35, v36, v37, v38, v39, v56);
    v40 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_18;
  }

  v6 = sub_1000E5EA8(a1);
  if (v6 && (v7 = v6, sub_1000ABD24(v6)))
  {
    if ((a3 - 17) <= 0xFFFFFFEF)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("LTK length is too big : %d.", v8, v9, v10, v11, v12, v13, v14, a3);
      v15 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_18;
    }

    __memmove_chk();
    v32 = sub_100018960(186, sub_1002DA970, v42, v43, v44, v45, v46, v47, v7);
    if (v32)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not send long term key response %!.", v48, v49, v50, v51, v52, v53, v54, v32);
        v55 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v7[169] = 0;
    }

    else
    {
      v7[169] = a3;
      v7[171] = a4;
      v7[168] = 2;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This handle is not a LE connection.", v24, v25, v26, v27, v28, v29, v30, v56);
      v31 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 1310;
  }

  return v32;
}

uint64_t sub_1002DB10C()
{
  byte_100B6B338 = 0;
  xmmword_100B6B339 = 0u;
  unk_100B6B349 = 0u;
  xmmword_100B6B359 = 0u;
  unk_100B6B369 = 0u;
  xmmword_100B6B379 = 0u;
  unk_100B6B389 = 0u;
  xmmword_100B6B399 = 0u;
  unk_100B6B3A9 = 0u;
  xmmword_100B6B3B9 = 0u;
  unk_100B6B3C9 = 0u;
  xmmword_100B6B3D9 = 0u;
  dword_100B6B3E9 = 0;
  return 0;
}

uint64_t sub_1002DB144(int *a1, char a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = 0;
      v3 = 20;
      v4 = &xmmword_100B6B339;
      do
      {
        v5 = *(v4 + 7);
        if (v5 == 1 && *v4 == *a1 && *(v4 + 3) == *(a1 + 3))
        {
          if (*(v4 + 8))
          {
            return 0;
          }

          *(v4 + 8) = 1;
        }

        if (v3 == 20 && v5 == 0)
        {
          v3 = v2;
        }

        ++v2;
        v4 = (v4 + 9);
      }

      while (v2 != 20);
      if (v3 > 0x13u)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not find a free slot for this device (DB FULL). Aborting.", v14, v15, v16, v17, v18, v19, v20, v23);
          v21 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        return 104;
      }

      else
      {
        v8 = 0;
        v9 = &xmmword_100B6B339 + 9 * v3;
        v9[7] = 1;
        v10 = *a1;
        *(v9 + 3) = *(a1 + 3);
        *v9 = v10;
        v9[8] = 1;
      }
    }

    else
    {
      v11 = &xmmword_100B6B339;
      v12 = 20;
      while (*(v11 + 7) != 1 || *v11 != *a1 || *(v11 + 3) != *(a1 + 3))
      {
        v11 = (v11 + 9);
        if (!--v12)
        {
          return 120;
        }
      }

      v8 = 0;
      *(v11 + 7) = 0;
    }
  }

  else
  {
    v8 = 0;
    byte_100B6B338 = a2;
  }

  return v8;
}

uint64_t sub_1002DB2CC(_DWORD *a1, _DWORD *a2)
{
  if (!a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid address, checking global OOB flag", v3, v4, v5, v6, v7, v8, v9, v16);
      v10 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v11 = &byte_100B6B338;
LABEL_8:
    v2 = *v11;
    return v2 & 1;
  }

  if ((byte_100B6B338 & 1) == 0)
  {
    v11 = &xmmword_100B6B339 + 8;
    v12 = 20;
    while (1)
    {
      if (*(v11 - 1) == 1)
      {
        if (*(v11 - 2) == *a1 && *(v11 - 5) == *(a1 + 3))
        {
          break;
        }

        if (a2)
        {
          if (*(v11 - 2) == *a2 && *(v11 - 5) == *(a2 + 3))
          {
            break;
          }
        }
      }

      v11 += 9;
      if (!--v12)
      {
        v2 = 0;
        return v2 & 1;
      }
    }

    goto LABEL_8;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t sub_1002DB3B8(_OWORD *a1, int a2, int a3, char a4, char a5)
{
  v25[0] = *off_100AE9E10;
  v25[1] = *&off_100AE9E20;
  LODWORD(xmmword_100BCE33C) = 1;
  if (BYTE9(xmmword_100BCE038))
  {
    if (unk_100B6B230)
    {
      v5 = 0;
    }

    else
    {
      v5 = off_100B6B238 == 0;
    }

    if (v5 && off_100B6B240 == 0)
    {
      v24 = a1[1];
      *&unk_100B6B230 = *a1;
      *&off_100B6B240 = v24;
      return sub_1002E703C(sub_1002DB550, v25, sub_1002DB56C, a2, a3, a4, a5);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Someone is already listening for LE security events.", v7, v8, v9, v10, v11, v12, v13, *&v25[0]);
        v14 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 119;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE not supported, can't register SMP.", v16, v17, v18, v19, v20, v21, v22, *&v25[0]);
      v23 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 147;
  }
}

uint64_t sub_1002DB4FC(uint64_t result, uint64_t a2)
{
  if (unk_100B6B250)
  {
    return unk_100B6B250(result, a2, qword_100B6B268);
  }

  return result;
}

uint64_t sub_1002DB518(uint64_t result)
{
  if (off_100B6B258)
  {
    return off_100B6B258(result, qword_100B6B268);
  }

  return result;
}

uint64_t sub_1002DB534(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (off_100B6B260)
  {
    return off_100B6B260(a1, a2, a3, qword_100B6B268);
  }

  else
  {
    return sub_1002DF704(a1);
  }
}

uint64_t sub_1002DB550(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (off_100B6B240)
  {
    return off_100B6B240(result, a2, a3, a4, qword_100B6B248);
  }

  return result;
}

uint64_t sub_1002DB56C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = xmmword_100B6B270;
  if (xmmword_100B6B270 >= 1)
  {
    v9 = result;
    v10 = 0;
    v11 = &qword_100B6B288;
    do
    {
      v12 = *(v11 - 1);
      if (v12)
      {
        result = v12(v9, a2, a3, *v11, a5);
        v5 = xmmword_100B6B270;
      }

      ++v10;
      v11 += 3;
    }

    while (v10 < v5);
  }

  return result;
}

uint64_t sub_1002DB600(uint64_t a1)
{
  if (BYTE9(xmmword_100BCE038) != 1)
  {
    return 0;
  }

  if (unk_100B6B230 == *a1 && off_100B6B238 == *(a1 + 8) && off_100B6B240 == *(a1 + 16))
  {
    result = sub_1002E721C();
    if (!result)
    {
      qword_100B6B330 = 0;
      xmmword_100B6B310 = 0u;
      unk_100B6B320 = 0u;
      xmmword_100B6B2F0 = 0u;
      unk_100B6B300 = 0u;
      xmmword_100B6B2D0 = 0u;
      unk_100B6B2E0 = 0u;
      xmmword_100B6B2B0 = 0u;
      unk_100B6B2C0 = 0u;
      xmmword_100B6B290 = 0u;
      unk_100B6B2A0 = 0u;
      xmmword_100B6B270 = 0u;
      *&qword_100B6B280 = 0u;
      *&unk_100B6B250 = 0u;
      *&off_100B6B260 = 0u;
      *&unk_100B6B230 = 0u;
      *&off_100B6B240 = 0u;
    }

    qword_100B6B3F0 = 0;
    word_100B6B3F8 = 0;
    LODWORD(xmmword_100BCE33C) = 0;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("You need to unregister the correct callbacks", v2, v3, v4, v5, v6, v7, v8, v1);
      v9 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 101;
  }

  return result;
}

__n128 sub_1002DB714(uint64_t a1)
{
  if (BYTE9(xmmword_100BCE038) == 1)
  {
    if (unk_100B6B250)
    {
      v2 = 0;
    }

    else
    {
      v2 = off_100B6B258 == 0;
    }

    if (v2 && off_100B6B260 == 0)
    {
      result = *a1;
      v13 = *(a1 + 16);
      *&unk_100B6B250 = *a1;
      *&off_100B6B260 = v13;
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Someone is already listening for LE pairing events.", v4, v5, v6, v7, v8, v9, v10, v1);
      v12 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  return result;
}

double sub_1002DB7C8(uint64_t a1)
{
  if (BYTE9(xmmword_100BCE038) == 1)
  {
    if (unk_100B6B250 == *a1 && off_100B6B258 == *(a1 + 8) && off_100B6B260 == *(a1 + 16))
    {
      result = 0.0;
      *&unk_100B6B250 = 0u;
      *&off_100B6B260 = 0u;
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("You need to unregister the correct callbacks", v2, v3, v4, v5, v6, v7, v8, v1);
      v10 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  return result;
}

__n128 sub_1002DB89C(__n128 *a1)
{
  if (BYTE9(xmmword_100BCE038) == 1)
  {
    v2 = xmmword_100B6B270;
    if (xmmword_100B6B270 < 8)
    {
      v12 = &unk_100B6B230 + 24 * xmmword_100B6B270;
      result = *a1;
      *(v12 + 72) = *a1;
      *(v12 + 11) = a1[1].n128_u64[0];
      LOWORD(xmmword_100B6B270) = v2 + 1;
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Too many callbacks registered.", v3, v4, v5, v6, v7, v8, v9, v1);
      v11 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  return result;
}

uint64_t sub_1002DB960(void *a1)
{
  if (BYTE9(xmmword_100BCE038) != 1)
  {
    return 0;
  }

  v2 = xmmword_100B6B270;
  if (xmmword_100B6B270)
  {
    if (xmmword_100B6B270 < 1)
    {
LABEL_8:
      if (sub_10000C240())
      {
        sub_10000AF54("You need to unregister the correct callbacks", v5, v6, v7, v8, v9, v10, v11, v1);
        v12 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 101;
    }

    else
    {
      v3 = 0;
      v4 = &qword_100B6B280;
      while (*(v4 - 1) == *a1 && *v4 == a1[1])
      {
        ++v3;
        v4 += 3;
        if (xmmword_100B6B270 == v3)
        {
          goto LABEL_8;
        }
      }

      if (xmmword_100B6B270 - 1 > v3)
      {
        v22 = v3;
        do
        {
          v23 = &xmmword_100B6B270 + 24 * v22 + 8;
          v3 = &xmmword_100B6B270 + 24 * v3 + 8;
          v24 = *(v3 + 24);
          *(v23 + 2) = *(v3 + 5);
          *v23 = v24;
          LODWORD(v3) = ++v22;
        }

        while (xmmword_100B6B270 - 1 > v22);
        v2 = xmmword_100B6B270;
      }

      result = 0;
      LOWORD(xmmword_100B6B270) = v2 - 1;
    }
  }

  else
  {
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("No callbacks registered.", v14, v15, v16, v17, v18, v19, v20, v1);
      v21 = sub_10000C050(0x43u);
      result = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_10080F7A0();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002DBAE0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a2)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("*randomNumber cannot be NULL", v10, v11, v12, v13, v14, v15, v16, v58);
    v17 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_16:
    sub_10080F7A0();
    return 101;
  }

  if (!a4)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("*key cannot be NULL", v26, v27, v28, v29, v30, v31, v32, v58);
    v33 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_16;
  }

  if (a1 && sub_1000ABD24(a1))
  {
    if (a1[168] == 2)
    {
      return 118;
    }

    if (a5 >= 0x11)
    {
      if (!sub_10000C240())
      {
        return 101;
      }

      sub_10000AF54("LTK length is too big : %d.", v35, v36, v37, v38, v39, v40, v41, a5);
      v42 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        return 101;
      }

      goto LABEL_16;
    }

    __memmove_chk();
    a1[169] = a5;
    v9 = sub_1000D6178(0xB9u, v43, v44, v45, v46, v47, v48, v49, a1);
    if (v9)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not start the encryption on the LE link %!.", v50, v51, v52, v53, v54, v55, v56, v9);
        v57 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      a1[168] = 2;
      a1[171] = a6;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This handle is not a LE connection.", v18, v19, v20, v21, v22, v23, v24, v58);
      v25 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 1310;
  }

  return v9;
}

uint64_t sub_1002DBD34(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("*keys cannot be NULL", v13, v14, v15, v16, v17, v18, v19, v32);
    v20 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_12;
  }

  if (a1 && sub_1000ABD24(a1))
  {
    if (a1[168] == 2)
    {
      return 118;
    }

    if ((~*(a2 + 80) & 7) == 0)
    {
      v21 = *(a2 + 18);
      v22 = *(a2 + 16);
      v23 = *(a2 + 17);

      return sub_1002DBAE0(a1, a2 + 20, v21, a2, v22, v23);
    }

    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Missing keys", v24, v25, v26, v27, v28, v29, v30, v32);
    v31 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_12:
    sub_10080F7A0();
    return 101;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("This handle is not a LE connection.", v5, v6, v7, v8, v9, v10, v11, v32);
    v12 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 1310;
}

uint64_t sub_1002DBE90(uint64_t a1)
{
  v29 = a1;
  if (a1 && sub_1000ABD24(a1))
  {
    if (*(a1 + 168) == 2)
    {
      return 118;
    }

    if (!off_100B6B238)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("No callbacks defined", v19, v20, v21, v22, v23, v24, v25, v27);
        v26 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 101;
    }

    v28[1] = &v29;
    v28[0] = 8;
    result = sub_10002195C(sub_1002DAD90, v28, 0, 0);
    if (result)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to send key request callback", v11, v12, v13, v14, v15, v16, v17, v27);
        v18 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 101;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This handle is not a LE connection.", v3, v4, v5, v6, v7, v8, v9, v27);
      v10 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 1310;
  }

  return result;
}

uint64_t sub_1002DBFE8(uint64_t a1)
{
  if (sub_1000ABD24(a1))
  {
    if (*(a1 + 168) != 1)
    {
      return 0;
    }

    if (off_100B6B238)
    {
      return (*(a1 + 170) & 0xFD) == 1;
    }

    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("No callbacks defined", v11, v12, v13, v14, v15, v16, v17, v19);
      v18 = sub_10000C050(0x43u);
      result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if (result)
      {
LABEL_7:
        sub_10080F7A0();
        return 0;
      }
    }
  }

  else
  {
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("Invalid LE connection handle 0x%x", v3, v4, v5, v6, v7, v8, v9, a1);
      v10 = sub_10000C050(0x43u);
      result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (result)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_1002DC0C8(uint64_t a1)
{
  if (sub_1000ABD24(a1))
  {
    v2 = *(a1 + 240);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid LE connection handle 0x%x", v3, v4, v5, v6, v7, v8, v9, a1);
      v10 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1002DC14C(uint64_t a1, _BYTE *a2)
{
  if (sub_1000ABD24(a1))
  {
    if (*(a1 + 168) == 1)
    {
      if (a2)
      {
        result = 0;
        *a2 = *(a1 + 169);
      }

      else
      {
        sub_1000D660C();
        return 101;
      }
    }

    else
    {
      return 4802;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid LE connection handle 0x%x", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 1310;
  }

  return result;
}

uint64_t sub_1002DC1FC(void *a1, _BYTE *a2, uint64_t a3)
{
  if (!a2)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("*ltkType cannot be NULL", v7, v8, v9, v10, v11, v12, v13, v23);
    v14 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_14:
    sub_10080F7A0();
    return 101;
  }

  if (!a3)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("*keys cannot be NULL", v15, v16, v17, v18, v19, v20, v21, v23);
    v22 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_14;
  }

  if ((*(a3 + 80) & 8) == 0)
  {
    return 102;
  }

  v3 = *(a3 + 45);
  if ((v3 & 0xFE) != 2)
  {
    return 102;
  }

  *a2 = v3;
  v4 = *(a3 + 44);
  v5 = *(a3 + 79) == 2;

  return sub_10029B644((a3 + 28), v4, a1, v5);
}

uint64_t sub_1002DC300(_DWORD *a1)
{
  v1 = word_100B6B3F8;
  if (!word_100B6B3F8)
  {
    return 0;
  }

  for (i = qword_100B6B3F0; ; i += 24)
  {
    v3 = *a1 == *i && *(a1 + 3) == *(i + 3);
    if (v3 && (*(i + 23) & 1) == 0)
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return i + 7;
}

uint64_t sub_1002DC354(_DWORD *a1, uint64_t a2)
{
  if (!a1)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid address", v17, v18, v19, v20, v21, v22, v23, v42);
    v24 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_16:
    sub_10080F7A0();
    return 101;
  }

  if (!a2)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("*keys cannot be NULL", v25, v26, v27, v28, v29, v30, v31, v42);
    v32 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_16;
  }

  v4 = sub_1000E5EA8(a1);
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 212);
    if (v6)
    {
      sub_10002242C(v6);
      *(v5 + 212) = 0;
    }

    v7 = sub_1002E16D8(v5, a2);
    if (v7)
    {
      v44[0] = 0;
      v8 = sub_100007618(0x10uLL, 0x10200403A5D3213uLL);
      v43 = v8;
      *v8 = v5;
      v8[2] = 4803;
      v44[1] = &v43;
      LOWORD(v44[0]) = 8;
      if (sub_10002195C(sub_1002DC538, v44, 0, 0))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send the encryption failed callback", v9, v10, v11, v12, v13, v14, v15, v42);
          v16 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        return 101;
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Connection to %: is no longer valid. Ignoring.", v34, v35, v36, v37, v38, v39, v40, a1 + 1);
      v41 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 122;
  }

  return v7;
}

void sub_1002DC538(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = **v1;
  if (v3 && sub_1000ABD24(v3))
  {
    v4 = *(*v2 + 212);
    if (v4)
    {
      sub_10002242C(v4);
      *(*v2 + 212) = 0;
    }

    v5 = xmmword_100B6B270;
    if (xmmword_100B6B270)
    {
      v6 = 0;
      v7 = &xmmword_100B6B270 + 1;
      do
      {
        if (*v7)
        {
          (*v7)();
          v5 = xmmword_100B6B270;
        }

        ++v6;
        v7 += 3;
      }

      while (v6 < v5);
    }

    sub_10000C1E8(v2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("This handle is not a LE connection.", v8, v9, v10, v11, v12, v13, v14, v16);
    v15 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1002DC64C(_DWORD *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid address", v7, v8, v9, v10, v11, v12, v13, v23);
    v14 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_11:
    sub_10080F7A0();
    return 101;
  }

  if (!a3)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("*keys cannot be NULL", v15, v16, v17, v18, v19, v20, v21, v23);
    v22 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_11;
  }

  v5 = sub_1000E5EA8(a1);

  return sub_1002E1908(v5, a2, a3);
}

uint64_t sub_1002DC724(_DWORD *a1, int a2, unsigned __int8 a3)
{
  if (a1)
  {
    v5 = sub_1000E5EA8(a1);

    return sub_1002E0BA8(v5, a2, a3);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid address", v7, v8, v9, v10, v11, v12, v13, v15);
      v14 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 101;
  }
}

uint64_t sub_1002DC7B8(int *a1, _OWORD *a2, char a3)
{
  v6 = word_100B6B3F8;
  if (word_100B6B3F8)
  {
    v7 = 0;
    v8 = qword_100B6B3F0;
    while (*v8 != *a1 || *(v8 + 3) != *(a1 + 3))
    {
      ++v7;
      v8 += 6;
      if (word_100B6B3F8 == v7)
      {
        goto LABEL_13;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Found a dup instance of  %: at index %d, trying to remove it.", v10, v11, v12, v13, v14, v15, v16, a1 + 1);
      v17 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1002DC938(a1);
    v6 = word_100B6B3F8;
  }

LABEL_13:
  v18 = sub_100007618(24 * v6 + 24, 0x1000040504FFAC1uLL);
  v19 = v18;
  v20 = word_100B6B3F8;
  if (word_100B6B3F8)
  {
    v21 = qword_100B6B3F0;
    v22 = word_100B6B3F8;
    v23 = v18;
    do
    {
      v24 = *v21;
      *(v23 + 2) = *(v21 + 16);
      *v23 = v24;
      v23 += 24;
      v21 += 24;
      --v22;
    }

    while (v22);
  }

  v25 = &v18[24 * v20];
  *(v25 + 7) = *a2;
  v26 = *a1;
  v27 = *(a1 + 2);
  v25[6] = *(a1 + 6);
  *(v25 + 2) = v27;
  *v25 = v26;
  v25[23] = a3;
  if (qword_100B6B3F0)
  {
    sub_10000C1E8(qword_100B6B3F0);
  }

  qword_100B6B3F0 = v19;
  word_100B6B3F8 = v20 + 1;
  return 0;
}

uint64_t sub_1002DC938(_DWORD *a1)
{
  if (!word_100B6B3F8)
  {
    return 120;
  }

  v2 = 0;
  for (i = qword_100B6B3F0; *i != *a1 || *(i + 3) != *(a1 + 3); i += 6)
  {
    if (word_100B6B3F8 == ++v2)
    {
      return 120;
    }
  }

  if (word_100B6B3F8 == v2)
  {
    return 120;
  }

  if (word_100B6B3F8 == 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = qword_100B6B3F0;
  }

  else
  {
    v7 = sub_100007618(24 * (word_100B6B3F8 - 1), 0x1000040504FFAC1uLL);
    v9 = word_100B6B3F8;
    v8 = qword_100B6B3F0;
    if (word_100B6B3F8 < 2u)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v10 = 1;
      v11 = qword_100B6B3F0;
      do
      {
        if (*v11 != *a1 || *(v11 + 3) != *(a1 + 3))
        {
          v13 = *v11;
          v14 = &v7[24 * v6];
          *(v14 + 2) = *(v11 + 16);
          *v14 = v13;
          ++v6;
        }

        if (v10 >= v9)
        {
          break;
        }

        v11 += 24;
        ++v10;
      }

      while (v9 - 1 > v6);
    }
  }

  if (v8)
  {
    sub_10000C1E8(v8);
  }

  result = 0;
  qword_100B6B3F0 = v7;
  word_100B6B3F8 = v6;
  return result;
}

void sub_1002DCA94()
{
  if (qword_100B6B3F0)
  {
    sub_10000C1E8(qword_100B6B3F0);
  }

  qword_100B6B3F0 = 0;
  word_100B6B3F8 = 0;
}

void sub_1002DCACC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  if (*v1 && sub_1000ABD24(*v1))
  {
    v22[0] = 0;
    v3 = sub_100007618(0x10uLL, 0x10200403A5D3213uLL);
    v21 = v3;
    *v3 = v2;
    v3[2] = 4807;
    v22[1] = &v21;
    LOWORD(v22[0]) = 8;
    if (sub_10002195C(sub_1002DC538, v22, 0, 0) && sub_10000C240())
    {
      sub_10000AF54("Failed to send the encryption failed callback", v4, v5, v6, v7, v8, v9, v10, v20);
      v11 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("This handle is not a LE connection.", v12, v13, v14, v15, v16, v17, v18, v20);
    v19 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1002DCBE8(__int128 *a1, char a2, char a3)
{
  v33[0] = 1;
  v33[1] = a2;
  v34 = 2;
  v35 = a3;
  v36 = 0;
  if (sub_1000ABD24(a1))
  {
    v4 = sub_1003053B4(v33, 6uLL, 0);
    if (v4)
    {
      v5 = v4;
      v6 = sub_1000B7EDC(0, 5, a1, v4, 0);
      if (v6)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to SMP channel for handle 0x%x", v7, v8, v9, v10, v11, v12, v13, a1);
          v14 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v5);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.", v23, v24, v25, v26, v27, v28, v29, v32);
        v30 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 104;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command is only available to LE devices.", v15, v16, v17, v18, v19, v20, v21, v32);
      v22 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4120;
  }

  return v6;
}

uint64_t sub_1002DCD54(__int128 *a1, char a2, int a3, unsigned int a4, unsigned int a5, int a6, int a7, int a8, unsigned __int16 a9)
{
  v53[0] = 19;
  v53[1] = a2;
  v54 = 2;
  v55 = a3;
  if (sub_1000ABD24(a1))
  {
    if (!a3 && sub_1002C1774(a1, a4, a5, a6, a7, a8, a9))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to update connection parameters.", v16, v17, v18, v19, v20, v21, v22, v52);
        v23 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v55 = 1;
    }

    v24 = sub_1003053B4(v53, 6uLL, 0);
    if (v24)
    {
      v25 = v24;
      v26 = sub_1000B7EDC(0, 5, a1, v24, 0);
      if (v26)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", v27, v28, v29, v30, v31, v32, v33, a1);
          v34 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v25);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.", v43, v44, v45, v46, v47, v48, v49, v52);
        v50 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 104;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command is only available to LE devices.", v35, v36, v37, v38, v39, v40, v41, v52);
      v42 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4121;
  }

  return v26;
}

uint64_t sub_1002DCF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v132[0] = 18;
  v5 = byte_100B53E48++;
  v132[1] = v5;
  v133 = 8;
  v134 = a2;
  v135 = a3;
  v136 = a4;
  v137 = a5;
  if (*(a1 + 70) != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Connection is not peripheral.", v15, v16, v17, v18, v19, v20, v21, v131);
      v22 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 132;
  }

  if ((a2 - 3201) <= 0xF384u)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid min interval 0x%x.", v7, v8, v9, v10, v11, v12, v13, a2);
    v14 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  if ((a3 - 3201) <= 0xF384u)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid max interval : 0x%x.", v25, v26, v27, v28, v29, v30, v31, a3);
    v32 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  if (a4 >= 0x1F5)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid peripheral latency %d.", v34, v35, v36, v37, v38, v39, v40, a4);
    v41 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  if ((a5 - 3201) <= 0xFFFFF388)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid supervision timeout : 0x%x.", v43, v44, v45, v46, v47, v48, v49, a5);
    v50 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  if (a3 <= a2)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid interval range : 0x%x - 0x%x.", v61, v62, v63, v64, v65, v66, v67, a2);
    v68 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_50:
    sub_10080F7A0();
    return 101;
  }

  v51 = a3 * 1.25;
  v52 = a4 + 1;
  if (v51 * (a4 + 1) > 6000.0)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Requesting an interval / latency combination that would provide a poor user experience (more than 6seconds syncups.)", v53, v54, v55, v56, v57, v58, v59, v131);
    v60 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  v69 = a2 * 1.25;
  if (v69 < 10.0)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Requesting a min interval smaller than 10 ms. Let's refuse and not drain the battery...", v70, v71, v72, v73, v74, v75, v76, v131);
    v77 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  if (-(v69 - a3 * 1.25) < 10.0)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Intervals should be %d ms apart - refusing.", v78, v79, v80, v81, v82, v83, v84, 10);
    v85 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  if (a4 >= 5 && (sub_100199668(a1) & 1) == 0)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Requesting a peripheral latency more than 4 so we drain our battery and they don't - refusing.", v104, v105, v106, v107, v108, v109, v110, v131);
    v111 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  if (a5 >= 0x709)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Requesting for a timeout of more than 18 seconds, this is not very user friendly - refusing.", v87, v88, v89, v90, v91, v92, v93, v131);
    v94 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  v95 = (10 * a5);
  if (v51 * (3 * v52) > v95)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Requesting for a timeout(%dms) / latency(%d) / maxInterval(%dms) that would cause link timeouts under bad conditions. - refusing.", v96, v97, v98, v99, v100, v101, v102, v95);
    v103 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_50;
  }

  v113 = sub_1003053B4(v132, 0xCuLL, 0);
  if (v113)
  {
    v114 = v113;
    v23 = sub_1000B7EDC(0, 5, a1, v113, 0);
    if (v23)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", v115, v116, v117, v118, v119, v120, v121, a1);
        v122 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    sub_1000BB9CC(v114);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Unable to allocate buffer for LE Signal transmit.", v123, v124, v125, v126, v127, v128, v129, v131);
      v130 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 104;
  }

  return v23;
}