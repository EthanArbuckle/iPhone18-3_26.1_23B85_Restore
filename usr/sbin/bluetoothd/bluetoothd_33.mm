uint64_t sub_100248498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (!a3)
  {
    qword_100B5F818 = a1;
    v6 = &qword_100B5F820;
    goto LABEL_7;
  }

  v5 = sub_1000E1FE8(a3);
  if (v5)
  {
    *(v5 + 104) = a1;
    v6 = (v5 + 112);
LABEL_7:
    result = 0;
    *v6 = a2;
    return result;
  }

  return 1301;
}

uint64_t sub_100248514(uint64_t result)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (result)
  {
    v1 = sub_1000E1FE8(result);
    if (v1)
    {
      v2 = v1;
      result = 0;
      *(v2 + 104) = 0;
      *(v2 + 112) = 0;
    }

    else
    {
      return 1301;
    }
  }

  else
  {
    qword_100B5F818 = 0;
    qword_100B5F820 = 0;
  }

  return result;
}

uint64_t sub_100248578(uint64_t a1)
{
  v4 = 0;
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  v1 = sub_1000E1FE8(a1);
  if (!v1)
  {
    return 1301;
  }

  v2 = v1;
  if (sub_1000E4F48(&v4))
  {
    while (*(v4 + 48) != v2 || *(v4 + 56))
    {
      if (!sub_1000E4F48(&v4))
      {
        goto LABEL_7;
      }
    }

    return 141;
  }

  else
  {
LABEL_7:
    result = 0;
    *(v2 + 80) = 0;
  }

  return result;
}

uint64_t sub_10024860C(uint64_t a1)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (a1)
  {
    if (sub_1000E2040(a1))
    {
      return 141;
    }

    else
    {
      result = sub_1000E1FE8(a1);
      if (result)
      {
        v3 = result;
        result = 0;
        *(v3 + 88) = 0;
        *(v3 + 96) = 0;
      }
    }
  }

  else
  {
    result = 0;
    qword_100B5F810 = 0;
  }

  return result;
}

uint64_t sub_100248688(uint64_t a1)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (!sub_1000C0E08(a1))
  {
    return 1301;
  }

  v9 = sub_1000D6178(5u, v2, v3, v4, v5, v6, v7, v8, a1);
  result = sub_1000D6410(a1, v9);
  if (!result)
  {
    byte_100B5F833 = 1;
  }

  return result;
}

uint64_t sub_100248708()
{
  result = dword_100B5F834;
  if (dword_100B5F834)
  {
    return sub_100304F30(dword_100B5F834);
  }

  return result;
}

uint64_t sub_10024871C(uint64_t a1)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (HIBYTE(word_100B5F829))
  {
    return 1319;
  }

  if (word_100B5F829)
  {
    if (*a1 != dword_100B5F82D || *(a1 + 4) != word_100B5F831)
    {
      return 1319;
    }
  }

  v5 = sub_1002565DC();
  if (v5 >= *(sub_1003045A0(0x28u) + 1))
  {
    if (sub_10000C240())
    {
      sub_1003045A0(0x28u);
      v1 = 1309;
      sub_10000AF54("OI_DEVMGR_ScoCreateConnection: %! (%d) %:", v7, v8, v9, v10, v11, v12, v13, 1309);
      v14 = sub_10000C050(0x3Eu);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        return v1;
      }

      sub_1000E09C0();
    }

    return 1309;
  }

  if (!qword_100B5F808)
  {
    v15 = sub_1000E1FE8(a1);
    if (!v15 || !*(v15 + 80))
    {
      return 1328;
    }
  }

  v1 = sub_10023B6AC(sub_100248890, a1);
  if (!v1)
  {
    *(&word_100B5F829 + 1) = 1;
    v6 = *a1;
    word_100B5F831 = *(a1 + 4);
    dword_100B5F82D = v6;
    dword_100B5F834 = 0;
    byte_100B5F82C = 0;
  }

  return v1;
}

void sub_100248890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (HIBYTE(word_100B5F829))
  {

    sub_100248F00(a1, a3, 3, 0);
  }

  else
  {
    if (!a1)
    {
      sub_1000D660C();
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Orphan connectAclForScoCb", v5, v6, v7, v8, v9, v10, v11, v3);
      v12 = sub_10000C050(0x3Eu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }
}

uint64_t sub_10024891C(unsigned __int16 *a1, char *a2, size_t a3, char a4)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (byte_100B5F833 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Sco Disconnect is in progress", v4, v5, v6, v7, v8, v9, v10, v13);
      v11 = sub_10000C050(0x3Eu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1347;
  }

  else
  {

    return sub_100258DE0(a1, a2, a3, a4);
  }
}

uint64_t sub_1002489D0(_WORD *a1, _WORD *a2)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (a1 && a2)
  {
    sub_1002592E8(a1);
    v3 = sub_100259404();
    result = 0;
    *a2 = v3;
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return result;
}

uint64_t sub_100248A34(int a1, int a2)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (a1 && a2)
  {

    return sub_10025932C(a1, a2);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_100248A8C()
{
  if (xmmword_100BCE2E0)
  {
    return sub_100259374(1);
  }

  else
  {
    return 103;
  }
}

void sub_100248AAC()
{
  word_100B5F829 = 0;
  byte_100B5F833 = 0;
  qword_100B5F808 = 0;
  qword_100B5F810 = 0;
  qword_100B5F818 = 0;
  qword_100B5F820 = 0;
}

void sub_100248AE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a1)
  {
    *(a1 + 58) = a3;
    v7 = *(a1 + 48);
    if (word_100B5F829 != 2)
    {
      v8 = HIBYTE(word_100B5F829);
      v10 = v7 && HIBYTE(word_100B5F829) | word_100B5F829 && *(v7 + 48) == dword_100B5F82D && *(v7 + 52) == word_100B5F831;
      goto LABEL_25;
    }
  }

  else
  {
    v11 = word_100B5F829;
    if (word_100B5F829 != 2)
    {
LABEL_68:
      if (byte_100B5F828)
      {
        --byte_100B5F828;
      }

      if ((v11 - 3) <= 1)
      {
        LOBYTE(word_100B5F829) = 0;
        v45 = sub_1000E1FE8(a2);
        if (v45)
        {
          v46 = *(v45 + 80);
          if (v46)
          {
            v47 = *v46;
            if (*v46)
            {

              v47(a4, 0, a2);
            }
          }
        }
      }

      return;
    }

    v7 = 0;
  }

  if (a4)
  {
    LOBYTE(word_100B5F829) = 0;
    return;
  }

  v10 = 0;
  v8 = HIBYTE(word_100B5F829);
  if (v7 && HIBYTE(word_100B5F829))
  {
    v10 = *(v7 + 48) == dword_100B5F82D && *(v7 + 52) == word_100B5F831;
  }

  if (!a1)
  {
    v11 = 2;
    goto LABEL_68;
  }

LABEL_25:
  if (a3 == 2 && a4 && v10 && v8 && ((a4 - 702) > 8 || ((1 << (a4 + 66)) & 0x1C1) == 0))
  {

    sub_100248F00(0, v7, 0, a4);
    return;
  }

  if (a4 && v10)
  {
    if (dword_100B5F834)
    {
      sub_10002242C(dword_100B5F834);
      dword_100B5F834 = 0;
    }

    v13 = sub_1000D2538(v7, 19);
    if (v13)
    {
      v14 = v13;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_LP_DisconnectReq failed: %! (%d)", v15, v16, v17, v18, v19, v20, v21, v14);
        v22 = sub_10000C050(0x3Eu);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
          if (!v10)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        }
      }
    }

LABEL_48:
    if (!v10)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  if (v10 || a4 != 0)
  {
    goto LABEL_48;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIEventHandler_ConnectionComplete - unknown SCO connection (%:)", v23, v24, v25, v26, v27, v28, v29, v7 + 48);
    v30 = sub_10000C050(0x3Eu);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
      if (v7)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }
  }

  if (!v7)
  {
LABEL_44:
    sub_1000D660C();
  }

LABEL_45:
  v31 = sub_10023B994(v7);
  if (!v31)
  {
    goto LABEL_48;
  }

  v32 = v31;
  if (!sub_10000C240())
  {
    goto LABEL_48;
  }

  sub_10000AF54("OI_LP_ConnectionAdded failed: %! (%d)", v33, v34, v35, v36, v37, v38, v39, v32);
  v40 = sub_10000C050(0x3Eu);
  if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_48;
  }

  sub_1000E09C0();
  if (!v10)
  {
    goto LABEL_52;
  }

LABEL_49:
  if (HIBYTE(word_100B5F829))
  {
    HIBYTE(word_100B5F829) = 0;
  }

  else
  {
    LOBYTE(word_100B5F829) = 0;
  }

LABEL_52:
  v41 = sub_1000B8B5C(v7);
  if (v41)
  {
    v42 = *(v7 + 80);
  }

  else
  {
    v42 = 0;
  }

  if (!v42)
  {
    v42 = qword_100B5F808;
  }

  if (v42)
  {
    v43 = *v42;
    if (v43)
    {
      if (a4 && HIBYTE(word_100B5F829) == 1)
      {
        goto LABEL_66;
      }

      if (v41)
      {
        v44 = v7 + 48;
      }

      else
      {
        v44 = 0;
      }

      v43(a4, a1, v44);
    }
  }

  if (a4)
  {
LABEL_66:
    sub_1000E12C4(a1);
  }
}

uint64_t sub_100248E88(uint64_t a1)
{
  if (word_100B5F829 == 2)
  {
    return 1;
  }

  if (a1)
  {
    if (dword_100B5F82D != *a1 || word_100B5F831 != *(a1 + 4))
    {
      return 0;
    }
  }

  if (byte_100B5F833)
  {
    return 1;
  }

  v4 = (word_100B5F829 & 0xFB) != 0 && word_100B5F829 != 3;
  return HIBYTE(word_100B5F829) || v4;
}

void sub_100248F00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1002448F4();
  if (!HIBYTE(word_100B5F829))
  {
    sub_1000D660C();
  }

  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  if (!sub_1000B8B5C(a2))
  {
    a2 = 0;
  }

  if (a1 || !a2)
  {
    if (!a1)
    {
      return;
    }

LABEL_73:
    HIBYTE(word_100B5F829) = 0;
    if (!a2)
    {
      v40 = 0;
      goto LABEL_76;
    }

LABEL_74:
    v40 = *(a2 + 80);
LABEL_76:
    if (!v40)
    {
      v40 = qword_100B5F808;
    }

    if (v40)
    {
      v41 = *v40;
      if (v41)
      {
        v41(a1, a2, &dword_100B5F82D);
      }
    }

    return;
  }

  if (!sub_1000B8B5C(a2))
  {
    sub_1000D660C();
  }

  if (*(a2 + 48) != dword_100B5F82D || *(a2 + 52) != word_100B5F831)
  {
    sub_1000D660C();
  }

  v9 = *(a2 + 152);
  if ((v9 & 0x80000000) == 0)
  {
    if (*(sub_1003045A0(0x28u) + 10) && (*(a2 + 152) & 0x7F) == 2)
    {
      if (dword_100B5F834)
      {
        if (!a3)
        {
          goto LABEL_32;
        }

LABEL_23:
        LODWORD(v55) = a3 - 1;
        v53 = &v54;
        v54 = a2;
        LOWORD(v52) = 16;
        sub_10002195C(sub_10024A3EC, &v52, (42949673 * (*(a2 + 136) + 99)) >> 32, &dword_100B5F834);
        return;
      }

      if (!sub_1000D6178(0x2Au, v10, v11, v12, v13, v14, v15, v16, a2))
      {
        *(a2 + 152) |= 0x80u;
        if (a3)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_32:
    dword_100B5F834 = 0;
    v19 = qword_100B5F818;
    if (!qword_100B5F818)
    {
      v19 = &unk_1008A4408;
    }

    if (*(a2 + 104))
    {
      v19 = *(a2 + 104);
    }

    if (byte_100B5F82B)
    {
      v20 = 0;
      while (1)
      {
        v21 = *v19;
        if (!*v19)
        {
          break;
        }

        ++v20;
        v19 = *v19;
        if (byte_100B5F82B <= v20)
        {
          goto LABEL_43;
        }
      }

      v21 = v19;
      a1 = a4;
      if (a4)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v21 = v19;
    }

LABEL_43:
    ++byte_100B5F82B;
    if (!*(v21 + 9))
    {
      sub_1002448F4();
    }

    if (*(a2 + 224) == 1)
    {
      if (sub_100241660(a2))
      {
        v28 = 1;
      }

      else
      {
        v28 = *(v21 + 20);
      }

      if (*(a2 + 278) == 1)
      {
        v29 = sub_1002A5A90();
      }

      else
      {
        v29 = sub_1000D6178(0x1Au, v22, v23, v24, v25, v28, v26, v27, a2);
      }

      a1 = v29;
      if (!v29)
      {
        goto LABEL_82;
      }
    }

    else
    {
      a1 = 1360;
    }

LABEL_54:
    if (byte_100B5F82C > 2u)
    {
      goto LABEL_67;
    }

    ++byte_100B5F82C;
    byte_100B5F82B = -1;
    do
    {
      v21 = *v21;
    }

    while (v21);
    if ((*(a2 + 225) & 1) == 0 && sub_1000BBF7C() > 1)
    {
      a1 = 13;
LABEL_67:
      if (sub_10000C240())
      {
        sub_10000AF54("SCO/eSCO connection failed, decrementing ACL reference counter and releasing SCO connection for addr=%:", v31, v32, v33, v34, v35, v36, v37, &dword_100B5F82D);
        v38 = sub_10000C050(0x3Eu);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v57 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v39 = sub_1000E2040(&dword_100B5F82D);
      if (v39)
      {
        sub_1000E12C4(v39);
      }

      sub_1000D2538(a2, 19);
      goto LABEL_73;
    }

    if (*(a2 + 278) == 1)
    {
      v30 = sub_1002A5A90();
    }

    else
    {
      v30 = sub_1000D6178(0x1Au, v10, v11, v12, v13, v14, v15, v16, a2);
    }

    if (v30 == 628)
    {
      a1 = a1;
    }

    else
    {
      a1 = v30;
    }

    if (a1)
    {
      goto LABEL_67;
    }

LABEL_82:
    if (a4)
    {
      return;
    }

    v42 = sub_100255DF0(&dword_100B5F82D);
    if (v42)
    {
      *(v42 + 6) = a2;
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Could not allocate sco connection handle", v43, v44, v45, v46, v47, v48, v49, v51);
      v50 = sub_10000C050(0x3Eu);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    HIBYTE(word_100B5F829) = 0;
    a1 = 106;
    goto LABEL_74;
  }

  if ((v9 & 0x7F) != 0)
  {
    goto LABEL_23;
  }

  sub_1000D2538(a2, 19);
  HIBYTE(word_100B5F829) = 0;
  v17 = *(a2 + 80);
  if (!v17)
  {
    v17 = qword_100B5F808;
  }

  if (v17)
  {
    v18 = *v17;
    if (*v17)
    {

      v18(1336, a2, &dword_100B5F82D);
    }
  }
}

uint64_t sub_100249434(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (a3 != 2)
    {
      sub_1000D660C();
    }

    v5 = 4;
  }

  else
  {
    v5 = 3;
  }

  v6 = sub_1000E1FE8(a1);
  if (!v6)
  {
    if (!sub_10000C240())
    {
      goto LABEL_37;
    }

    sub_10000AF54("Cannot accept SCO connection, no ACL connection record for %:", v23, v16, v17, v18, v19, v20, v21, a1);
    v24 = sub_10000C050(0x3Eu);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (word_100B5F829)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot accept SCO connection, Incoming sco connection already in progress (%:)", v7, v8, v9, v10, v11, v12, v13, &dword_100B5F82D);
      v14 = sub_10000C050(0x3Eu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    if (!sub_10000C240())
    {
      goto LABEL_37;
    }

    sub_10000AF54("ob: %d\nib: %d", v15, v16, v17, v18, v19, v20, v21, HIBYTE(word_100B5F829));
    v22 = sub_10000C050(0x3Eu);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

LABEL_36:
    sub_1000E09C0();
LABEL_37:
    v41 = word_100B5F829;
    LOBYTE(word_100B5F829) = v5;
    result = sub_100249720(a1, 0, v16, v17, v18, v19, v20, v21);
    LOBYTE(word_100B5F829) = v41;
    ++byte_100B5F828;
    return result;
  }

  v25 = v6;
  if (HIBYTE(word_100B5F829) && !*(v6 + 144))
  {
    if (!sub_10000C240())
    {
      goto LABEL_37;
    }

    sub_10000AF54("Cannot accept SCO connection, Outgoing sco connection already in progress (%:)", v39, v16, v17, v18, v19, v20, v21, &dword_100B5F82D);
    v40 = sub_10000C050(0x3Eu);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v26 = sub_1002565DC();
  if (v26 >= *(sub_1003045A0(0x28u) + 1))
  {
    if (!sub_10000C240())
    {
      goto LABEL_37;
    }

    sub_1003045A0(0x28u);
    sub_10000AF54("Cannot accept SCO connection from %:, already reached max SCO connections (%d)", v31, v32, v33, v34, v35, v36, v37, a1);
    v38 = sub_10000C050(0x3Eu);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (HIBYTE(word_100B5F829))
  {
    if (*(v25 + 144) == 1)
    {
      HIBYTE(word_100B5F829) = 0;
      v27 = sub_1000E2040(a1);
      if (v27)
      {
        sub_1000E12C4(v27);
        sub_1000D27D8(v25);
      }
    }
  }

  v28 = *(v25 + 80);
  if (!v28)
  {
    v28 = qword_100B5F808;
  }

  if (!v28)
  {
    goto LABEL_37;
  }

  v16 = *(v28 + 16);
  if (!v16)
  {
    goto LABEL_37;
  }

  LOBYTE(word_100B5F829) = v5;
  v29 = *a1;
  word_100B5F831 = *(a1 + 4);
  dword_100B5F82D = v29;

  return v16(a1, a2);
}

uint64_t sub_100249720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v62 = 0;
  v10 = word_100B5F829;
  if (word_100B5F829 - 5 <= 0xFFFFFFFD)
  {
    if (a2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Cannot accept a Sco connection at this time (%:)", v11, v12, v13, v14, v15, v16, v17, a1);
        v18 = sub_10000C050(0x3Eu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    return 1310;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  if (*a1 != dword_100B5F82D || *(a1 + 4) != word_100B5F831)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot accept SCO for %:", a2, a3, a4, a5, a6, a7, a8, a1);
      v21 = sub_10000C050(0x3Eu);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

LABEL_19:
    v10 = word_100B5F829;
LABEL_20:
    if (v10 == 4)
    {
      v23 = 29;
    }

    else
    {
      v23 = 9;
    }

    v24 = sub_1000D6178(v23, a2, a3, a4, a5, a6, a7, a8, a1);
    if (v24)
    {
      v19 = v24;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD to reject sco connect request failed %! (%:)", v25, v26, v27, v28, v29, v30, v31, v19);
        v32 = sub_10000C050(0x3Eu);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      LOBYTE(word_100B5F829) = 0;
    }

    else
    {
      LOBYTE(word_100B5F829) = 2;
      if (v8)
      {
        return 1310;
      }

      else
      {
        return 0;
      }
    }

    return v19;
  }

  if (sub_10023DB58(a1, &v62))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot accept SCO connection, no ACL connection record for %:", a2, a3, a4, a5, a6, a7, a8, a1);
      v22 = sub_10000C050(0x3Eu);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_19;
  }

  v34 = sub_100249A20(v62, 3);
  if (v34)
  {
    v19 = v34;
    if (!sub_10000C240())
    {
      return v19;
    }

    sub_10000AF54("OI_DEVMGR_ScoConnectAccept failed: %! (%:)", v35, v36, v37, v38, v39, v40, v41, v19);
    v42 = sub_10000C050(0x3Eu);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      return v19;
    }

LABEL_35:
    sub_1000E09C0();
    return v19;
  }

  v43 = sub_100255DF0(a1);
  if (v43)
  {
    v44 = v43;
    v19 = sub_10023B994(v62);
    if (!v19)
    {
      *(v44 + 6) = v62;
      return v19;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_LP_ConnectionAdded failed: %! (%:)", v45, v46, v47, v48, v49, v50, v51, v19);
      v52 = sub_10000C050(0x3Eu);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not allocate sco connection handle", v53, v54, v55, v56, v57, v58, v59, v61);
      v60 = sub_10000C050(0x3Eu);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 106;
  }

  return v19;
}

uint64_t sub_100249A20(uint64_t a1, int a2)
{
  if (word_100B5F829 - 3 >= 2)
  {
    sub_1000D660C();
  }

  if (!a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Can't find ACL connection for SCO!\n", v12, v13, v14, v15, v16, v17, v18, v57);
      v19 = sub_10000C050(0x3Eu);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    LOBYTE(word_100B5F829) = 0;
    if (sub_10000C240())
    {
      v11 = 1301;
      sub_10000AF54("Accept sco connect request failed %! (unk)", v20, v21, v22, v23, v24, v25, v26, 1301);
      v27 = sub_10000C050(0x3Eu);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        return v11;
      }

      sub_1000E09C0();
    }

    return 1301;
  }

  if (*(sub_1003045A0(0x28u) + 10) && *(a1 + 152) == 2)
  {
    if (dword_100B5F834)
    {
      if (a2)
      {
LABEL_8:
        v59[0] = a1;
        v59[1] = (a2 - 1);
        v58[1] = v59;
        v58[0] = 16;
        return sub_10002195C(sub_10024A478, v58, (42949673 * (*(a1 + 136) + 99)) >> 32, &dword_100B5F834);
      }
    }

    else if (!sub_1000D6178(0x2Au, v4, v5, v6, v7, v8, v9, v10, a1))
    {
      *(a1 + 152) |= 0x80u;
      if (a2)
      {
        goto LABEL_8;
      }
    }
  }

  dword_100B5F834 = 0;
  if (*(a1 + 112))
  {
    v28 = *(a1 + 112);
  }

  else
  {
    v28 = qword_100B5F820;
  }

  if (v28)
  {
    v29 = *(v28 + 5);
    if (!*(v28 + 5))
    {
      v29 = sub_1002448F4();
    }

    if (word_100B5F829 == 3)
    {
      v30 = 967;
    }

    else
    {
      v30 = *(v28 + 7);
    }

    if (*(a1 + 278) != 1)
    {
      v38 = sub_1000D6178(0x1Cu, *v28, v28[1], *(v28 + 4), v29, v8, v30, v10, a1 + 48);
      goto LABEL_32;
    }
  }

  else
  {
    sub_1002448F4();
    sub_100241660(a1);
    if (*(a1 + 278) != 1)
    {
      v38 = sub_1000D6178(0x1Cu, v31, v32, v33, v34, v35, v36, v37, a1 + 48);
      goto LABEL_32;
    }
  }

  v38 = sub_1002A5B1C();
LABEL_32:
  v11 = v38;
  if (!v38)
  {
    LOBYTE(word_100B5F829) = 1;
    return v11;
  }

  LOBYTE(word_100B5F829) = 0;
  v39 = sub_1000D2538(a1, 19);
  if (sub_10000C240() && (sub_10000AF54("Accept sco connect request failed %! (%:)", v40, v41, v42, v43, v44, v45, v46, v11), v47 = sub_10000C050(0x3Eu), os_log_type_enabled(v47, OS_LOG_TYPE_ERROR)))
  {
    sub_1000E09C0();
    if (!v39)
    {
      return v11;
    }
  }

  else if (!v39)
  {
    return v11;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("OI_LP_DisconnectReq failed: %!", v48, v49, v50, v51, v52, v53, v54, v39);
    v55 = sub_10000C050(0x3Eu);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return v11;
}

uint64_t sub_100249D80()
{
  v3 = 0;
  result = sub_1000E4F48(&v3);
  if (result)
  {
    do
    {
      if (!sub_1000B8B5C(*(v3 + 48)))
      {
        sub_1000D660C();
      }

      v1 = *(*(v3 + 48) + 88);
      if (v1)
      {
        v2 = *v1;
        if (v2)
        {
          v2();
        }
      }

      result = sub_1000E4F48(&v3);
    }

    while ((result & 1) != 0);
  }

  if (qword_100B5F810)
  {
    if (*qword_100B5F810)
    {
      return (*qword_100B5F810)();
    }
  }

  return result;
}

void sub_100249E00()
{
  if (xmmword_100BCE2E0)
  {
    if (!sub_1000C0E08(qword_100B5F838))
    {
      qword_100B5F838 = 0;
    }

    do
    {
      if (!sub_1000E4F48(&qword_100B5F838))
      {
        break;
      }

      if (!sub_1000B8B5C(*(qword_100B5F838 + 48)))
      {
        sub_1000D660C();
      }

      v0 = *(*(qword_100B5F838 + 48) + 88);
      if (!v0)
      {
        v0 = qword_100B5F810;
      }

      if (v0)
      {
        v1 = *(v0 + 16);
        if (v1)
        {
          v1();
        }
      }
    }

    while ((sub_100259498() & 1) != 0);
  }
}

void sub_100249EA8(uint64_t a1, uint64_t a2)
{
  if (sub_1000C0E08(a1))
  {
    if (xmmword_100BCE2E0)
    {
      if (!sub_1000B8B5C(*(a1 + 48)))
      {
        sub_1000D660C();
      }

      v4 = *(*(a1 + 48) + 88);
      if (!v4)
      {
        v4 = qword_100B5F810;
      }

      if (v4)
      {
        v5 = *(v4 + 24);
        if (v5)
        {

          v5(a1, a2);
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIEventHandler_ScoPacketComplete - %! 0x%x", v6, v7, v8, v9, v10, v11, v12, 1338);
    v13 = sub_10000C050(0x3Eu);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_100249F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1000C0E08(a2))
  {
    if (xmmword_100BCE2E0)
    {
      if (!sub_1000B8B5C(*(a2 + 48)))
      {
        sub_1000D660C();
      }

      v12 = *(a2 + 48);
      v14 = *(v12 + 88);
      v13 = *(v12 + 96);
      if (v14)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = qword_100B5F810;
      }

      if (v16)
      {
        v17 = *(v16 + 32);
        if (v17)
        {
          v17(a1, a2, a3, a4, a5, a6, *(a2 + 57), v15);
        }
      }

      *(a2 + 60) = a3;
      *(a2 + 61) = a4;

      sub_1002BFE1C(1u);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIEventHandler_ScoConfigChanged - %! 0x%x", v18, v19, v20, v21, v22, v23, v24, 1338);
    v25 = sub_10000C050(0x3Eu);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_10024A0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!sub_1000C0E08(a1))
  {
    sub_1000D660C();
  }

  if (xmmword_100BCE2E0)
  {
    if (!sub_1000C0E08(a1))
    {
      sub_1000D660C();
    }

    if (*(a5 + 8) == 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCIEventHandler_ScoDataPacketReceived: wakeupCause SCO Packet from BT Controller (handle=0x%hX erroneous=%hhu len=%hu)\n", v10, v11, v12, v13, v14, v15, v16, a1);
        v17 = sub_10000C050(0x3Eu);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v34 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }

    if (!a4 || !*(a1 + 59))
    {
      v18 = *(a1 + 48);
      v20 = *(v18 + 88);
      v19 = *(v18 + 96);
      if (v20)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }

      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = qword_100B5F810;
      }

      if (v22)
      {
        v23 = *(v22 + 8);
        if (v23)
        {
          v23(a1, a4, a2, a3, v21, a5);
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54(" OI_STATUS_NOT_INITIALIZED", v24, v25, v26, v27, v28, v29, v30, v32);
    v31 = sub_10000C050(0x3Eu);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10080FEE0();
    }
  }
}

void sub_10024A27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v17 = sub_1000C0E08(a2);
  if (a1 || v17)
  {
    sub_10023C0C0(a1, a2, a3, a4, 0, v18, v19, v20);
    if (a1)
    {
      return;
    }
  }

  else
  {
    sub_1000D660C();
    sub_10023C0C0(0, a2, a3, a4, 0, v21, v22, v23);
  }

  sub_1002592B8(a9);
  *(a2 + 58) = a4;
  if (a5 | a4)
  {
    v24 = a6;
  }

  else
  {
    v24 = 0;
  }

  if (a5 | a4)
  {
    v25 = a5;
  }

  else
  {
    v25 = 6;
  }

  *(a2 + 57) = a9;

  sub_100249F90(0, a2, v25, v24, a7, a8);
}

uint64_t sub_10024A388(uint64_t a1)
{
  if (HIBYTE(word_100B5F829) != 1 || dword_100B5F834 == 0)
  {
    return 1301;
  }

  sub_10002242C(dword_100B5F834);
  dword_100B5F834 = 0;
  HIBYTE(word_100B5F829) = 0;
  v3 = sub_1000E1FE8(a1);
  sub_1000D2538(v3, 2);
  return 0;
}

void sub_10024A3EC(uint64_t a1)
{
  if (HIBYTE(word_100B5F829))
  {
    v3 = *(a1 + 8);
    v4 = *v3;
    v5 = *(v3 + 2);

    sub_100248F00(0, v4, v5, 0);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Orphan deferredConnectScoCb", v6, v7, v8, v9, v10, v11, v12, v1);
    v13 = sub_10000C050(0x3Eu);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_10024A478(uint64_t result)
{
  if (dword_100B5F834)
  {
    v1 = *(result + 8);
    v2 = *v1;
    result = sub_100249A20(*v1, *(v1 + 2));
    if (v2 && result != 0)
    {
      v4 = *(v2 + 80);
      if (!v4)
      {
        v4 = qword_100B5F808;
      }

      if (v4)
      {
        v5 = *v4;
        if (*v4)
        {

          return v5(result, v2, v2 + 48);
        }
      }
    }
  }

  return result;
}

void sub_10024A504(int a1, void *a2, uint64_t a3)
{
  v5 = sub_100223E78(a1);

  sub_100224FE0(v5, a2, a3);
}

uint64_t sub_10024A544(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _WORD *a8, uint64_t a9)
{
  if (a1 && a5 && a6 && a8 && a9)
  {
    v17 = sub_1001BBBD8(0x120uLL, 0x10B00409F7A8307uLL);
    if (v17)
    {
      v18 = v17;
      v17[64] = 200;
      v17[38] = 200;
      v19 = *(sub_1003045A0(0x17u) + 8);
      *(v18 + 74) = v19;
      v20 = sub_100007618(v19, 0x5868EB75uLL);
      *(v18 + 8) = v20;
      if (v20)
      {
        *(v18 + 40) = 0;
        *(v18 + 4) = 0;
        v21 = *a1;
        *(v18 + 108) = *(a1 + 4);
        *(v18 + 104) = v21;
        *(v18 + 276) = 1;
        *(v18 + 136) = a6;
        *(v18 + 56) = 0;
        *(v18 + 260) = -1;
        *(v18 + 152) = a5;
        *(v18 + 272) = a3;
        if (a3 || a7)
        {
          v22 = sub_1001BBBD8(0x9BuLL, 0x100004010079EEDuLL);
          *(v18 + 64) = v22;
          if (!v22)
          {
            v25 = 106;
            goto LABEL_28;
          }

          if (a3 == 2)
          {
            v22[59] = 1;
          }

          if (!a7)
          {
            v25 = 1721;
            goto LABEL_28;
          }

          *(v18 + 144) = a7;
        }

        if (a4)
        {
          v23 = *(a4 + 8);
          if (v23 >= 5)
          {
            sub_1000D660C();
            v23 = *(a4 + 8);
          }

          memmove((v18 + 160), *a4, 24 * v23);
          v24 = *(a4 + 8);
        }

        else
        {
          v24 = 0;
        }

        *(v18 + 256) = v24;
        sub_100223DE4(v18);
        v27 = sub_1003045A0(0x17u);
        v25 = sub_1002EF8BC(sub_10024A7F8, off_100AE7FC0, a1, a2, *(v27 + 8), 0, v18, a9);
        if (!v25)
        {
          *a8 = *(v18 + 280);
          ++dword_100BCE28C;
          return v25;
        }

LABEL_28:
        sub_100223F08(*(v18 + 280));
        return v25;
      }

      sub_10000C1E8(v18);
    }

    return 104;
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

void sub_10024A75C(int a1, uint64_t a2)
{
  v3 = sub_100223E78(a1);
  if (v3)
  {
    if (!a2)
    {
      if (*(v3 + 69) <= 3u)
      {
        a2 = 0;
      }

      else
      {
        a2 = 1709;
      }
    }

    sub_100223FA8(v3, a2);
  }
}

void sub_10024A7B8(int a1, void *a2, size_t a3)
{
  v5 = sub_100223E78(a1);

  sub_100224890(v5, a2, a3);
}

void sub_10024A7F8(int a1, __int16 a2, uint64_t a3)
{
  v5 = sub_100223E78(a1);
  if (v5)
  {
    v6 = v5;
    if (*(v5 + 69) != 1)
    {
      sub_1000D660C();
    }

    if (a3)
    {
LABEL_5:

      sub_1002240F8(v6, a3);
      return;
    }

    *(v6 + 72) = a2;
    *(v6 + 276) = 2;
    if (!*(v6 + 272))
    {
      a3 = sub_1002245E8(v6, 200);
      if (!a3)
      {
        return;
      }

      goto LABEL_5;
    }

    v15 = *(v6 + 144);
    v16 = *(v6 + 280);
    v17 = *(*(v6 + 64) + 59);

    v15(v16, v17);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Error: null connection handle!", v7, v8, v9, v10, v11, v12, v13, v18);
    v14 = sub_10000C050(0x17u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100810070(v14);
    }
  }
}

uint64_t sub_10024A908(unsigned __int8 *a1, void *a2, _BYTE *a3, char *a4)
{
  v4 = 101;
  if (a3 && a2 && a4)
  {
    if (a1)
    {
      v5 = 240;
      v6 = a1;
      do
      {
        v7 = *v6;
        if (!*v6)
        {
          break;
        }

        if (v6[1] == 9)
        {
          if (v5 > v7)
          {
            v10 = 1;
LABEL_21:
            v4 = 0;
            *a3 = v7 - 1;
            *a4 = v10;
            *a2 = v6 + 2;
            return v4;
          }

          break;
        }

        v8 = v7 + 1;
        v6 += v8;
        v9 = __OFSUB__(v5, v8);
        v5 -= v8;
      }

      while (!((v5 < 0) ^ v9 | (v5 == 0)));
      v11 = 240;
      do
      {
        v7 = *a1;
        if (!*a1)
        {
          break;
        }

        if (a1[1] == 8)
        {
          if (v11 <= v7)
          {
            return 120;
          }

          v10 = 0;
          v6 = a1;
          goto LABEL_21;
        }

        a1 += v7 + 1;
        v9 = __OFSUB__(v11, v7 + 1);
        v11 -= v7 + 1;
      }

      while (!((v11 < 0) ^ v9 | (v11 == 0)));
    }

    return 120;
  }

  return v4;
}

uint64_t sub_10024A9C0(unsigned __int8 *a1, int a2, int *a3)
{
  if (!a3)
  {
    return 101;
  }

  v3 = 0;
  v4 = 0;
  *a3 = 0;
  v5 = 2;
  v6 = 15;
  do
  {
    if (!a1)
    {
      goto LABEL_42;
    }

    v7 = 240;
    v8 = a1;
    while (1)
    {
      v9 = *v8;
      if (!*v8)
      {
        goto LABEL_42;
      }

      if (v8[1] == v5)
      {
        break;
      }

      v10 = v9 + 1;
      v8 += v10;
      v11 = __OFSUB__(v7, v10);
      v7 -= v10;
      if ((v7 < 0) ^ v11 | (v7 == 0))
      {
        goto LABEL_42;
      }
    }

    if (v7 <= v9)
    {
      goto LABEL_42;
    }

    v12 = (v9 - 1);
    if (v5 < 6u)
    {
      if (v5 < 4u)
      {
        if ((v9 - 1))
        {
LABEL_49:
          v21 = 0;
          result = 131;
          goto LABEL_48;
        }
      }

      else if (((v9 - 1) & 3) != 0)
      {
        goto LABEL_49;
      }
    }

    else if (((v9 - 1) & 0xF) != 0)
    {
      goto LABEL_49;
    }

    if (v5)
    {
      v6 -= v5;
      if (v3)
      {
        goto LABEL_23;
      }

      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    *a3 = v3;
LABEL_23:
    v13 = (v8 + 2);
    while (v12)
    {
      v14 = v13 + 8;
      LODWORD(v15) = v12;
      while (v5 - 6 < 2)
      {
        v15 = (v15 - 16);
        if (*(v14 - 2) == 0x800000805F9B34FBLL && *(v14 - 2) == 4096)
        {
          v4 = *(v14 - 1);
          goto LABEL_40;
        }

        v14 += 8;
        if (!v15)
        {
          goto LABEL_42;
        }
      }

      if (v5 - 4 < 2)
      {
        v18 = *v13;
        v13 += 2;
        v4 = v18;
        v15 = (v12 - 4);
      }

      else if (v5 - 2 > 1)
      {
        v15 = v12;
      }

      else
      {
        v17 = *v13++;
        v4 = v17;
        v15 = (v12 - 2);
      }

      v14 = v13;
LABEL_40:
      v12 = v15;
      v13 = v14;
      if (v4 == a2)
      {
        result = 0;
        goto LABEL_47;
      }
    }

LABEL_42:
    v19 = v5++;
  }

  while (v19 < 7);
  result = 120;
  if (v3 == 3 && !v6)
  {
LABEL_47:
    v21 = 1;
LABEL_48:
    *a3 = v21;
  }

  return result;
}

uint64_t sub_10024AB64(unsigned __int8 *a1, uint64_t a2, int *a3, uint8x8_t a4)
{
  v4 = 101;
  if (!a2 || !a3)
  {
    return v4;
  }

  if (*(a2 + 4) != 0x8000008000100000 || *(a2 + 12) != -80438433)
  {
    *a3 = 0;
    for (i = 7; i > 5u; --i)
    {
      if (a1)
      {
        v7 = 240;
        v8 = a1;
        do
        {
          v9 = *v8;
          if (!*v8)
          {
            break;
          }

          if (v8[1] == i)
          {
            if (v7 <= v9)
            {
              break;
            }

            v12 = v9 - 1;
            if (i == 6)
            {
              v13 = 2;
            }

            else
            {
              v13 = 1;
            }

            *a3 = v13;
            if ((v12 & 0xF) != 0)
            {
              *a3 = 0;
              return 131;
            }

            else
            {
              if (!v12)
              {
                break;
              }

              v14 = v8 + 7;
              while (1)
              {
                LODWORD(v19) = *(v14 + 7);
                a4.i32[0] = *(v14 + 3);
                v15 = vrev64_s16(*&vmovl_u8(a4));
                a4 = vuzp1_s8(v15, v15);
                HIDWORD(v19) = a4.i32[0];
                if (v19 == *a2)
                {
                  HIBYTE(v20) = *(v14 - 5);
                  BYTE6(v20) = *(v14 - 4);
                  BYTE5(v20) = *(v14 - 3);
                  BYTE4(v20) = *(v14 - 2);
                  BYTE3(v20) = *(v14 - 1);
                  BYTE2(v20) = *v14;
                  BYTE1(v20) = v14[1];
                  LOBYTE(v20) = v14[2];
                  v16 = v20 == *(a2 + 8);
                }

                else
                {
                  v16 = 0;
                }

                if (v16)
                {
                  break;
                }

                v14 += 16;
                v12 -= 16;
                if (!v12)
                {
                  goto LABEL_27;
                }
              }

              v4 = 0;
              *a3 = 1;
            }

            return v4;
          }

          v10 = v9 + 1;
          v8 += v10;
          v11 = __OFSUB__(v7, v10);
          v7 -= v10;
        }

        while (!((v7 < 0) ^ v11 | (v7 == 0)));
      }

LABEL_27:
      ;
    }

    return 120;
  }

  v17 = *a2;

  return sub_10024A9C0(a1, v17, a3);
}

uint64_t sub_10024AD40(unsigned __int8 *a1, int a2, _BYTE *a3, unsigned __int8 **a4)
{
  v4 = 101;
  if (a3 && a4)
  {
    if (a1)
    {
      v5 = 240;
      do
      {
        v6 = *a1;
        if (!*a1)
        {
          break;
        }

        if (a1[1] == a2)
        {
          if (v5 <= v6)
          {
            break;
          }

          *a3 = v6 - 1;
          v9 = a1 + 2;
          goto LABEL_13;
        }

        v7 = v6 + 1;
        a1 += v7;
        v8 = __OFSUB__(v5, v7);
        v5 -= v7;
      }

      while (!((v5 < 0) ^ v8 | (v5 == 0)));
    }

    v9 = 0;
LABEL_13:
    *a4 = v9;
    if (v9)
    {
      return 0;
    }

    else
    {
      return 120;
    }
  }

  return v4;
}

uint64_t sub_10024ADB8(void *a1, void *a2)
{
  if (!DWORD2(xmmword_100BCE2E0))
  {
    return 103;
  }

  if (a2)
  {
    *a2 = off_100BCE0D0;
  }

  v2 = 0;
  off_100BCE0D0 = a1;
  return v2;
}

uint64_t sub_10024ADF4(uint64_t a1)
{
  if (!sub_1000B8B5C(a1))
  {
    return 101;
  }

  if (sub_100084230())
  {
    sub_100084230();
  }

  return sub_1000D6178(0x2Du, v2, v3, v4, v5, v6, v7, v8, a1);
}

uint64_t sub_10024AE98(uint64_t (*a1)(void, void, void, void, void))
{
  if (qword_100B5F840)
  {
    sub_1000D660C();
  }

  if (!sub_10023DE88())
  {
    byte_100B5F848 = 0;
    return 4831;
  }

  byte_100B5F848 = sub_10029C37C();
  if ((byte_100B5F848 & 1) == 0)
  {
    return 4831;
  }

  off_100BCE1E8 = a1;
  v2 = sub_10028E64C(7, 1, 8, 8u, &qword_100B5F840, sub_10029BCD4);
  if (v2 || !qword_100B5F840)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not register the Classic SecurityManager : %!", v11, v12, v13, v14, v15, v16, v17, v2);
      v18 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    goto LABEL_16;
  }

  *sub_1000CD958(qword_100B5F840) = 65;
  *(sub_1000CD958(qword_100B5F840) + 2) = -1;
  v2 = sub_1002958EC(sub_10024B01C, 7);
  if (v2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_ConnectMan_Register_FixedChannelInfo_callback returned %!", v3, v4, v5, v6, v7, v8, v9, v2);
      v10 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

LABEL_16:
    sub_1000D660C();
  }

  return v2;
}

uint64_t sub_10024B01C(uint64_t a1)
{
  v2 = 0;
  result = sub_10023DB58(a1, &v2);
  if (!result && byte_100B5F848 == 1)
  {
    *(v2 + 304) = 1;
  }

  return result;
}

uint64_t sub_10024B064()
{
  if (byte_100B5F848 != 1)
  {
    return 4831;
  }

  result = qword_100B5F840;
  if (qword_100B5F840)
  {
    sub_10028E908(qword_100B5F840);
    result = 0;
    qword_100B5F840 = 0;
  }

  return result;
}

uint64_t sub_10024B0B4(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("StartPairing was called", v2, v3, v4, v5, v6, v7, v8, v81);
    v9 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v83 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if ((byte_100B5F848 & 1) == 0)
  {
    if (!sub_10000C240())
    {
      return 117;
    }

    sub_10000AF54("Controller does not support Secured Connections", v20, v21, v22, v23, v24, v25, v26, v81);
    v27 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      return 117;
    }

LABEL_20:
    sub_1000E09C0();
    return 117;
  }

  if (!sub_1000B8B5C(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Connection is invalid", v28, v29, v30, v31, v32, v33, v34, v81);
      v35 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 414;
  }

  if ((*(a1 + 304) & 1) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Remote does not support BR/EDR SMP", v36, v37, v38, v39, v40, v41, v42, v81);
      v43 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = sub_10000C0FC();
        *buf = 136446210;
        v83 = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return 414;
  }

  if (!off_100BCE1E8)
  {
    if (!sub_10000C240())
    {
      return 117;
    }

    sub_10000AF54("Local device does not support BR/EDR SMP", v46, v47, v48, v49, v50, v51, v52, v81);
    v53 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      return 117;
    }

    goto LABEL_20;
  }

  v10 = sub_1002E7308();
  if (v10)
  {
    return v10;
  }

  *buf = 1;
  if (byte_100B5F849)
  {
    v11 = 0;
  }

  else
  {
    v11 = 32;
  }

  buf[2] = 0;
  buf[3] = v11;
  LOWORD(v83) = 784;
  BYTE2(v83) = 3;
  if (sub_1000B8B5C(a1))
  {
    if (*(a1 + 144))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("You cannot send this command when peripheral.", v12, v13, v14, v15, v16, v17, v18, v81);
        v19 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 4821;
    }

    v62 = sub_10029BE74(a1);
    if (v62)
    {
      v63 = v62;
      if (*(v62 + 8) >= 0x11u)
      {
        if (sub_10000C240())
        {
          v64 = sub_10029C3B4();
          sub_10000AF54("Cannot ask for pairing, device is already in state %s.", v65, v66, v67, v68, v69, v70, v71, v64);
          v72 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            sub_10080FEE0();
          }
        }

        return 4804;
      }

LABEL_44:
      v63[72] = v11;
      v10 = sub_10029BEC0(*v63, buf, 7uLL, 1);
      if (v10)
      {
        sub_10029BA98(v63, v10, 1);
      }

      else
      {
        sub_10029C3C0(v63, 17);
        *(v63 + 579) = *buf;
        *(v63 + 583) = v83;
        v63[585] = BYTE2(v83);
      }

      return v10;
    }

    v63 = sub_10029C1A0(a1);
    if (v63)
    {
      goto LABEL_44;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Could not allocate a pairing record for handle 0x%x", v73, v74, v75, v76, v77, v78, v79, a1);
      v80 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    return 104;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid connection handle.", v54, v55, v56, v57, v58, v59, v60, v81);
      v61 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4820;
  }
}

void sub_10024B518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10029BE74(a1);
  if (a3 != 6)
  {
    if (!sub_10000C240())
    {
      goto LABEL_14;
    }

    sub_10000AF54("Invalid Pairing Request size %d.", v16, v17, v18, v19, v20, v21, v22, a3);
    v23 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_1000E09C0();
LABEL_14:
    v15 = 8;
LABEL_22:
    sub_10024CCE4(a1, v15, v6);
    return;
  }

  if (!off_100BCE1E8)
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("Local device does not support BR/EDR SMP", v24, v25, v26, v27, v28, v29, v30, v102);
    v31 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

LABEL_20:
    sub_1000E09C0();
LABEL_21:
    v15 = 14;
    goto LABEL_22;
  }

  if ((byte_100B5F848 & 1) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("Controller does not support Secured Connections", v32, v33, v34, v35, v36, v37, v38, v102);
    v39 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!sub_1000B8B5C(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Connection is invalid", v40, v41, v42, v43, v44, v45, v46, v102);
      v47 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  *(a1 + 304) = 1;
  if (!*(a1 + 144))
  {
    if (!sub_10000C240())
    {
      goto LABEL_14;
    }

    sub_10000AF54("You cannot send this command when peripheral.", v48, v49, v50, v51, v52, v53, v54, v102);
    v55 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Classic SMP pairing is already in progress", v7, v8, v9, v10, v11, v12, v13, v102);
      v14 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v15 = 13;
    goto LABEL_22;
  }

  v56 = sub_10029C1A0(a1);
  if (!v56)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not allocate new device...", v94, v95, v96, v97, v98, v99, v100, v102);
      v101 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v6 = 0;
    goto LABEL_14;
  }

  v6 = v56;
  sub_10029C250(v56, *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 4), *(a2 + 5));
  v57 = v6[82];
  if (v57 >= 8 || (v58 = v6[83], v58 >= 8))
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("Invalid key distribution parameters initiator:0x%x, responder:0xx", v86, v87, v88, v89, v90, v91, v92, v6[82]);
    v93 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v6[74] = v57 & 3;
  v6[75] = 0;
  v6[76] = v58 & 3;
  v6[77] = 0;
  sub_10029C3C0(v6, 17);
  v6[72] = 0;
  if ((byte_100B5F849 & 1) == 0 && (v6[80] & 0x20) != 0)
  {
    v6[72] = 32;
    v6[593] = 1;
  }

  if (byte_100B5F84A == 1 && (v6[593] & 1) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Force replying with CT2=1", v59, v60, v61, v62, v63, v64, v65, v102);
      v66 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v104 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v6[72] |= 0x20u;
    v6[593] = 1;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("authReq=%x isSecuredConnectionControllerSupported=%d expectedKeys=%x requestedKeys=%x", v67, v68, v69, v70, v71, v72, v73, v6[72]);
    v74 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = sub_10000C0FC();
      *buf = 136446210;
      v104 = v75;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v76 = sub_10024C870(a1, v6[72], v6[74], v6[76]);
  if (v76)
  {
    v77 = v76;
    if (sub_10000C240())
    {
      sub_10000AF54("smpSendPairingResponse failed with error %!", v78, v79, v80, v81, v82, v83, v84, v77);
      v85 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_14;
  }

  if ((v6[76] & 2) != 0)
  {
    sub_10024CA70(v6);
    sub_10024CBEC(v6);
    v6[77] |= 2u;
    sub_10029C3C0(v6, 67);
  }

  if ((v6[74] & 2) == 0)
  {
    sub_10029C3C0(v6, 65);
    sub_10029BA98(v6, 0, 1);
  }
}

void sub_10024BA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10029BE74(a1);
  if (!off_100BCE1E8)
  {
    if (!sub_10000C240())
    {
      goto LABEL_19;
    }

    sub_10000AF54("Local device does not support BR/EDR SMP", v15, v16, v17, v18, v19, v20, v21, v90);
    v22 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (a3 != 6)
  {
    if (!sub_10000C240())
    {
      goto LABEL_15;
    }

    sub_10000AF54("Invalid Pairing Request size %d.", v23, v24, v25, v26, v27, v28, v29, a3);
    v30 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((byte_100B5F848 & 1) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_19;
    }

    sub_10000AF54("Controller does not support Secured Connections", v32, v33, v34, v35, v36, v37, v38, v90);
    v39 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (sub_1000B8B5C(a1))
  {
    *(a1 + 304) = 1;
    if (*(a1 + 144))
    {
      if (!sub_10000C240())
      {
        goto LABEL_15;
      }

      sub_10000AF54("This command should only be received if we are central.", v7, v8, v9, v10, v11, v12, v13, v90);
      v14 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (v6)
    {
      if (sub_10029C4B0(v6, 17))
      {
        sub_10029C250(v6, *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 4), *(a2 + 5));
        sub_10029C2C8(v6);
        if ((*(v6 + 80) & 0xDF) != 0)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Invalid authentication requirements 0x%x.", v48, v49, v50, v51, v52, v53, v54, *(v6 + 80));
            v55 = sub_10000C050(0x43u);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }
        }

        v56 = *(v6 + 82);
        if (v56 <= 7)
        {
          v57 = *(v6 + 83);
          if (v57 < 8)
          {
            *(v6 + 76) = v56 & 3;
            *(v6 + 75) = 0;
            *(v6 + 74) = v57 & 3;
            *(v6 + 77) = 0;
            if (sub_10000C240())
            {
              sub_10000AF54("We got those keys : requested(aka initiator)=0x%x expected(aka responder)=0x%x", v58, v59, v60, v61, v62, v63, v64, *(v6 + 76));
              v65 = sub_10000C050(0x43u);
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446210;
                v92 = sub_10000C0FC();
                _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            if ((*(v6 + 80) & 0x20) != 0 && (*(v6 + 72) & 0x20) != 0)
            {
              *(v6 + 593) = 1;
            }

            sub_10029C3C0(v6, 18);
            if ((*(v6 + 74) & 2) == 0)
            {
              sub_10029C3C0(v6, 67);
              if ((*(v6 + 76) & 2) != 0)
              {
                sub_10029C3C0(v6, 67);
                sub_10024CA70(v6);
                sub_10024CBEC(v6);
                *(v6 + 77) |= 2u;
              }

              else
              {
                sub_10029C3C0(v6, 65);
              }

              sub_10029BA98(v6, 0, 1);
            }

            return;
          }
        }

        if (!sub_10000C240() || (sub_10000AF54("Invalid key distribution parameters initiator:0x%x, responder:0xx", v82, v83, v84, v85, v86, v87, v88, *(v6 + 82)), v89 = sub_10000C050(0x43u), !os_log_type_enabled(v89, OS_LOG_TYPE_ERROR)))
        {
LABEL_19:
          v31 = 14;
          goto LABEL_20;
        }

LABEL_18:
        sub_1000E09C0();
        goto LABEL_19;
      }

      if (!sub_10000C240())
      {
        goto LABEL_15;
      }

      sub_10000AF54("Pairing response was received without a pairing request for handle %d.", v74, v75, v76, v77, v78, v79, v80, a1);
      v81 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        goto LABEL_15;
      }

      sub_10000AF54("We're not in pairing yet.", v66, v67, v68, v69, v70, v71, v72, v90);
      v73 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }
    }

LABEL_14:
    sub_1000E09C0();
LABEL_15:
    v31 = 8;
LABEL_20:
    sub_10024CCE4(a1, v31, v6);
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Connection is invalid", v40, v41, v42, v43, v44, v45, v46, v90);
    v47 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_10024BF00(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_10029BE74(a1);
  if (v5)
  {
    v6 = v5;
    sub_10029C2C8(v5);
    if (a3 == 1)
    {
      v7 = *a2;
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid Pairing Failed size %d", v16, v17, v18, v19, v20, v21, v22, a3);
        v23 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v7 = 8;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Peer sent Pairing Failed with reason=%d", v24, v25, v26, v27, v28, v29, v30, v7);
      v31 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v32 = sub_10029C388(v7);
    sub_10029BA98(v6, v32, 1);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Could not find associated pairing data.", v8, v9, v10, v11, v12, v13, v14, v33);
    v15 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

__n128 sub_10024C038(uint64_t a1, __n128 *a2, uint64_t a3)
{
  if (!off_100BCE1E8)
  {
    if (!sub_10000C240())
    {
      goto LABEL_20;
    }

    sub_10000AF54("Local device does not support BR/EDR SMP", v9, v10, v11, v12, v13, v14, v15, v74);
    v16 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1000E09C0();
LABEL_20:
    v7 = 0;
LABEL_21:
    sub_10024CCE4(a1, 8, v7);
    return result;
  }

  if (a3 != 16)
  {
    if (!sub_10000C240())
    {
      goto LABEL_20;
    }

    sub_10000AF54("Invalid Identity Information size %d", v17, v18, v19, v20, v21, v22, v23, a3);
    v24 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v6 = sub_10029BE74(a1);
  if (!v6)
  {
    if (!sub_10000C240())
    {
      goto LABEL_20;
    }

    sub_10000AF54("Could not find associated pairing data.", v25, v26, v27, v28, v29, v30, v31, v74);
    v32 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v7 = v6;
  if ((byte_100B5F848 & 1) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("Controller does not support Secured Connections", v34, v35, v36, v37, v38, v39, v40, v74);
    v41 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

LABEL_25:
    sub_1000E09C0();
    goto LABEL_21;
  }

  if (!sub_1000B8B5C(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Connection is invalid", v42, v43, v44, v45, v46, v47, v48, v74);
      v49 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }
    }

    return result;
  }

  if ((*(a1 + 304) & 1) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Remote does not support BR/EDR SMP", v50, v51, v52, v53, v54, v55, v56, v74);
      v57 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v76 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    goto LABEL_21;
  }

  sub_10029C2C8(v7);
  if (*(v7 + 75))
  {
    goto LABEL_34;
  }

  if (!*(a1 + 144))
  {
    v8 = 66;
    goto LABEL_33;
  }

  if (!sub_10029C4B0(v7, 67))
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("Central is sending keys before we are ...", v66, v67, v68, v69, v70, v71, v72, v74);
    v73 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  v8 = 64;
LABEL_33:
  sub_10029C3C0(v7, v8);
LABEL_34:
  if ((*(v7 + 74) & 2) != 0)
  {
    result = *a2;
    *(v7 + 562) = *a2;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("We were not expecting IRK...", v58, v59, v60, v61, v62, v63, v64, v74);
    v65 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
LABEL_28:
      sub_1000E09C0();
    }
  }

  return result;
}

void sub_10024C380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 7)
  {
    if (!sub_10000C240())
    {
      goto LABEL_24;
    }

    sub_10000AF54("Invalid Identity Address Information size %d", v17, v18, v19, v20, v21, v22, v23, a3);
    v24 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

LABEL_23:
    sub_1000E09C0();
LABEL_24:
    v6 = 0;
    goto LABEL_25;
  }

  v5 = sub_10029BE74(a1);
  if (!v5)
  {
    if (!sub_10000C240())
    {
      goto LABEL_24;
    }

    sub_10000AF54("Could not find associated pairing data.", v25, v26, v27, v28, v29, v30, v31, v99);
    v32 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v6 = v5;
  if (!off_100BCE1E8)
  {
    if (!sub_10000C240())
    {
      goto LABEL_25;
    }

    sub_10000AF54("Local device does not support BR/EDR SMP", v33, v34, v35, v36, v37, v38, v39, v99);
    v40 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

LABEL_49:
    sub_1000E09C0();
    goto LABEL_25;
  }

  if ((byte_100B5F848 & 1) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_25;
    }

    sub_10000AF54("Controller does not support Secured Connections", v41, v42, v43, v44, v45, v46, v47, v99);
    v48 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

  if (!sub_1000B8B5C(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Connection is invalid", v49, v50, v51, v52, v53, v54, v55, v99);
      v56 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if ((*(a1 + 304) & 1) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Remote does not support BR/EDR SMP", v57, v58, v59, v60, v61, v62, v63, v99);
      v64 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    goto LABEL_25;
  }

  sub_10029C2C8(v6);
  if (!*(v6 + 75))
  {
    if (*(a1 + 144))
    {
      if (!sub_10029C4B0(v6, 64))
      {
LABEL_47:
        if (!sub_10000C240())
        {
          goto LABEL_25;
        }

        sub_10000AF54("We got an address without IRK.", v73, v74, v75, v76, v77, v78, v79, v99);
        v80 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        goto LABEL_49;
      }

      if (*(a1 + 144))
      {
        goto LABEL_8;
      }
    }

    if (sub_10029C4B0(v6, 66))
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_8:
  if ((*(v6 + 74) & 2) != 0)
  {
    *(v6 + 75) |= 2u;
    buf[0] = *a2;
    *&buf[1] = *(a2 + 1);
    *&buf[5] = *(a2 + 5);
    sub_10029B614(&buf[1], 6);
    if (buf[0])
    {
      if (!sub_10000C240())
      {
        goto LABEL_25;
      }

      sub_10000AF54("We got a remote address (%:) that is not public", v65, v66, v67, v68, v69, v70, v71, &buf[1]);
      v72 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      goto LABEL_66;
    }

    if (*&buf[1])
    {
      v81 = 0;
    }

    else
    {
      v81 = *&buf[5] == 0;
    }

    if (v81)
    {
      if (!sub_10000C240())
      {
        goto LABEL_25;
      }

      sub_10000AF54("Identity address cannot be all 0.", v91, v92, v93, v94, v95, v96, v97, v99);
      v98 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      goto LABEL_66;
    }

    if (*&buf[1] == *(*v6 + 48) && *&buf[5] == *(*v6 + 52))
    {
      goto LABEL_12;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Identity address cannot be different than the classic address.", v83, v84, v85, v86, v87, v88, v89, v99);
      v90 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
LABEL_66:
        sub_1000E09C0();
      }
    }

LABEL_25:
    sub_10024CCE4(a1, 8, v6);
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("We were not expecting address info...", v7, v8, v9, v10, v11, v12, v13, v99);
    v14 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

LABEL_12:
  v15 = (*(v6 + 74) & 0xFE) == (*(v6 + 75) & 0xFE) || (*(v6 + 74) & 0xFE) == 0;
  if (*(a1 + 144))
  {
    if (v15)
    {
      sub_10029C3C0(v6, 65);
LABEL_52:
      sub_10029BA98(v6, 0, 1);
    }
  }

  else if (v15)
  {
    sub_10029C3C0(v6, 67);
    sub_10024CA70(v6);
    sub_10024CBEC(v6);
    goto LABEL_52;
  }
}

uint64_t sub_10024C870(uint64_t a1, char a2, char a3, char a4)
{
  v42 = 2;
  v43 = 0;
  v44 = a2;
  v45 = 16;
  v46 = a3;
  v47 = a4;
  if (sub_1000B8B5C(a1))
  {
    if (*(a1 + 144))
    {
      v5 = sub_10029BE74(a1);
      if (v5)
      {
        v6 = v5;
        if (sub_10029C4B0(v5, 17))
        {
          v7 = sub_10029BEC0(*v6, &v42, 7uLL, 1);
          if (v7)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("SMP_SendPacket failed with error %!", v8, v9, v10, v11, v12, v13, v14, v7);
              v15 = sub_10000C050(0x43u);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }

            sub_10029BA98(v6, v7, 1);
          }

          else
          {
            sub_10029C3C0(v6, 18);
          }

          return v7;
        }

        if (sub_10000C240())
        {
          sub_10029C3B4();
          goto LABEL_22;
        }
      }

      else if (sub_10000C240())
      {
LABEL_22:
        sub_10000AF54("Invalid pairing state for handle 0x%x : %s", v32, v33, v34, v35, v36, v37, v38, a1);
        v39 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 4823;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("You cannot send smpSendPairingResponse command when peripheral.", v24, v25, v26, v27, v28, v29, v30, v41);
      v31 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4822;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command is only available to Classic devices.", v16, v17, v18, v19, v20, v21, v22, v41);
      v23 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4820;
  }
}

void sub_10024CA70(uint64_t a1)
{
  HIBYTE(v10) = 8;
  v11 = *sub_10029BA58();
  v12 = *(sub_10029BA58() + 1);
  v13 = *(sub_10029BA58() + 2);
  v14 = *(sub_10029BA58() + 3);
  v15 = *(sub_10029BA58() + 4);
  v16 = *(sub_10029BA58() + 5);
  v17 = *(sub_10029BA58() + 6);
  v18 = *(sub_10029BA58() + 7);
  v19 = *(sub_10029BA58() + 8);
  v20 = *(sub_10029BA58() + 9);
  v21 = *(sub_10029BA58() + 10);
  v22 = *(sub_10029BA58() + 11);
  v23 = *(sub_10029BA58() + 12);
  v24 = *(sub_10029BA58() + 13);
  v25 = *(sub_10029BA58() + 14);
  v26 = *(sub_10029BA58() + 15);
  if (*(a1 + 9))
  {
    sub_10029BEC0(*a1, &v10 + 7, 0x11uLL, 1);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("This link is not encrypted, cannot send IRK.", v2, v3, v4, v5, v6, v7, v8, v10);
    v9 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_10024CBEC(uint64_t a1)
{
  *(v13 + 3) = 0;
  v13[0] = 0;
  sub_1002D2760(v13);
  v14[0] = 9;
  v14[1] = v13[0];
  v2.i32[0] = *(v13 + 3);
  v3 = vrev64_s16(*&vmovl_u8(v2));
  v15 = vuzp1_s8(v3, v3).u32[0];
  v16 = BYTE2(v13[0]);
  v17 = BYTE1(v13[0]);
  if (*(a1 + 9))
  {
    sub_10029BEC0(*a1, v14, 8uLL, 1);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("This link is not encrypted, cannot send address.", v4, v5, v6, v7, v8, v9, v10, v12);
    v11 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_10024CCE4(__int128 *a1, char a2, char *a3)
{
  v6[0] = 5;
  v6[1] = a2;
  sub_10029BEC0(a1, v6, 2uLL, 0);
  if (a3)
  {
    v5 = sub_10029C388(a2);
    sub_10029BA98(a3, v5, 1);
  }
}

void sub_10024CD4C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Read max data length failed %!", v9, v10, v11, v12, v13, v14, v15, a1);
      v16 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    v17 = a5;
    v18 = a4;
    v19 = a3;
    sub_100018960(199, sub_10024CE70, a3, a4, a5, a6, a7, a8, 0);
    sub_1002C3AD4(a2, v19, v18, v17);
  }

  sub_10024CF7C(0, "initCmdLeReadMaxDataLengthCB");
}

void sub_10024CE70(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("_SetDefaultPhyCB status %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v19 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a1 && sub_10000C240())
  {
    sub_10000AF54("Set default Phy failed with %!", v10, v11, v12, v13, v14, v15, v16, a1);
    v17 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_10024CF7C(uint64_t a1, uint64_t a2)
{
  if (dword_100BCE0C0 > 5 || ((1 << dword_100BCE0C0) & 0x32) == 0)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("%s orphaned", v22, v23, v24, v25, v26, v27, v28, a2);
    v29 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_16:
    sub_1000E09C0();
    return;
  }

  v5 = qword_100B5F868;
  if (!qword_100B5F868)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("%s orphaned", v14, v15, v16, v17, v18, v19, v20, a2);
    v21 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_16;
  }

  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("%s failed: %!", v6, v7, v8, v9, v10, v11, v12, a2);
      v13 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1003044D0(qword_100B5F868, a1);
  }

  else
  {

    sub_1003043EC(v5);
  }
}

uint64_t sub_10024D0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BYTE9(xmmword_100BCE038) != 1)
  {
    return 0;
  }

  v8 = sub_100018960(167, sub_10024D180, a3, a4, a5, a6, a7, a8, v18);
  if (v8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_LE_ReadAdvertisingChannelTxPower", v9, v10, v11, v12, v13, v14, v15, v19);
      v16 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100814758();
      }
    }
  }

  return v8;
}

void sub_10024D180(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Read LE Advertising TX power failed %!", v3, v4, v5, v6, v7, v8, v9, a1);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else if (sub_1002B16A8())
  {
    v12 = 0;
    do
    {
      sub_1000C2C34(a2, v12++);
    }

    while (sub_1002B16A8() > v12);
  }
}

uint64_t sub_10024D21C(uint64_t a1)
{
  if (DWORD2(xmmword_100BCE2E0))
  {
    return 140;
  }

  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCIAPI_Init: configuration parameter is deprecated", v3, v4, v5, v6, v7, v8, v9, v22);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1003045E4(a1, 46);
  }

  bzero(__str, 0x400uLL);
  v23 = 1024;
  if (!sysctlbyname("kern.bootargs", __str, &v23, 0, 0))
  {
    v11 = strtok(__str, " ");
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      do
      {
        if (strstr(v12, "cmd_complete_timeout_secs"))
        {
          v17 = strchr(v12, 61);
          v13 = strtol(v17 + 1, 0, 10);
        }

        else if (strstr(v12, "cmd_status_timeout_secs"))
        {
          v18 = strchr(v12, 61);
          v16 = strtol(v18 + 1, 0, 10);
        }

        else if (strstr(v12, "cmd_complete_event_timeout_secs"))
        {
          v19 = strchr(v12, 61);
          v15 = strtol(v19 + 1, 0, 10);
        }

        else if (strstr(v12, "vsc_complete_event_timeout_secs"))
        {
          v20 = strchr(v12, 61);
          v14 = strtol(v20 + 1, 0, 10);
        }

        v12 = strtok(0, " ");
      }

      while (v12);
      if (v13)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v16 = 0;
      v15 = 0;
      v14 = 0;
      v13 = 0;
    }

    if (v16 || v15 || v14)
    {
LABEL_26:
      qword_100BCE0B8 = sub_1003045A0(0x2Eu);
      v21 = *(qword_100BCE0B8 + 8);
      qword_100B5F852 = *qword_100BCE0B8;
      dword_100B5F85A = v21;
      if (v13)
      {
        BYTE3(qword_100B5F852) = v13;
      }

      if (v16)
      {
        BYTE4(qword_100B5F852) = v16;
      }

      if (v15)
      {
        BYTE5(qword_100B5F852) = v15;
      }

      if (v14)
      {
        BYTE6(qword_100B5F852) = v14;
      }

      sub_1003045E4(&qword_100B5F852, 46);
    }
  }

  qword_100BCE0B8 = sub_1003045A0(0x2Eu);
  if (!qword_100BCE0B8)
  {
    sub_1000D660C();
    if (!qword_100BCE0B8)
    {
      return 127;
    }
  }

  dword_100BCE0C0 = 0;
  byte_100BCE0C4 = 0;
  qword_100BCE0C8 = off_100AE8060;
  off_100BCE0D0 = nullsub_143;
  off_100BCE0D8 = nullsub_143;
  *algn_100BCE0F1 = 0u;
  *(&xmmword_100BCE100 + 1) = 0u;
  xmmword_100BCE110 = 0u;
  byte_100BCE0F0 = 7;
  xmmword_100BCE0E0 = xmmword_1008A4422;
  off_100B5F860 = 0;
  qword_100B5F868 = 0;
  off_100B5F870 = sub_1000C52F4;
  result = sub_100255434();
  if (!result)
  {
    result = sub_10002223C();
    if (!result)
    {
      result = sub_100257F98();
      if (!result)
      {
        result = sub_1002551AC();
        if (!result)
        {
          result = sub_10025B1FC();
          if (!result)
          {
            DWORD2(xmmword_100BCE2E0) = 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10024D5C8(uint64_t a1)
{
  v4 = a1;
  if (!DWORD2(xmmword_100BCE2E0))
  {
    return 103;
  }

  dword_100BCE0C0 = 1;
  qword_100B5F868 = off_100AE8080;
  sub_10030423C(off_100AE8080);
  if (a1)
  {
    v3[1] = &v4;
    v3[0] = 8;
    return sub_10002195C(sub_10024D708, v3, 1, 0);
  }

  else
  {

    return sub_10024D680();
  }
}

uint64_t sub_10024D680()
{
  if (!DWORD2(xmmword_100BCE2E0))
  {
    return 103;
  }

  if (dword_100BCE0C0 > 2)
  {
    if ((dword_100BCE0C0 - 4) >= 3 && dword_100BCE0C0 == 3)
    {
      return 108;
    }

LABEL_4:
    sub_1000D660C();
    return 637;
  }

  if (!dword_100BCE0C0)
  {
    sub_1000D660C();
    return 103;
  }

  if (dword_100BCE0C0 != 1)
  {
    if (dword_100BCE0C0 == 2)
    {
      return 0;
    }

    goto LABEL_4;
  }

  return 109;
}

uint64_t sub_10024D708(uint64_t a1)
{
  if (sub_10024D680() == 109)
  {

    return sub_10002195C(sub_10024D708, a1, 1, 0);
  }

  else
  {
    v3 = **(a1 + 8);

    return v3();
  }
}

uint64_t sub_10024D784(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (dword_100BCE0C0 != 4)
  {
    sub_1000D660C();
  }

  if (qword_100B5F868)
  {
    sub_1000D660C();
  }

  if (off_100B5F860)
  {
    sub_1000D660C();
  }

  sub_100259794();
  sub_100255224();
  sub_10025806C();
  dword_100BCE0C0 = 5;
  v2 = *(v1 + 8);
  qword_100B5F868 = v2;
  off_100B5F860 = *v1;

  return sub_10030423C(v2);
}

void sub_10024D814()
{
  v52[0] = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIIfc_DeviceHasBeenReset", v0, v1, v2, v3, v4, v5, v6, v51);
    v7 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  if (!DWORD2(xmmword_100BCE2E0))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("HCI is not initialized, cannot restore device context", v16, v17, v18, v19, v20, v21, v22, v51);
      v23 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }
    }

    return;
  }

  if (dword_100BCE0C0 <= 2)
  {
    if (!dword_100BCE0C0)
    {
      goto LABEL_25;
    }

    if (dword_100BCE0C0 != 1)
    {
      if (dword_100BCE0C0 != 2)
      {
        goto LABEL_18;
      }

LABEL_21:
      v53[0] = sub_10024DAA8;
      v53[1] = off_100AE81C0;
      v52[1] = v53;
      LOWORD(v52[0]) = 16;
      v24 = sub_10002195C(sub_10024D784, v52, 10, 0);
      if (v24)
      {
        v25 = v24;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_Dispatch_RegisterFunc failed %!", v26, v27, v28, v29, v30, v31, v32, v25);
          v33 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else
      {
        dword_100BCE0C0 = 4;
      }

      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Device reset during initialization - terminating failed initialization", v43, v44, v45, v46, v47, v48, v49, v51);
      v50 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v42 = qword_100B5F868;
LABEL_34:
    sub_1003044D0(v42, 632);
    return;
  }

  if (dword_100BCE0C0 > 4)
  {
    if (dword_100BCE0C0 != 5)
    {
      if (dword_100BCE0C0 != 6)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    sub_10025BB2C(632);
    v42 = qword_100B5F868;
    if (!qword_100B5F868)
    {
      return;
    }

    goto LABEL_34;
  }

  if (dword_100BCE0C0 == 3)
  {
LABEL_25:
    if (sub_10000C240())
    {
      sub_10000AF54("Device is not initialized, cannot restore device context", v34, v35, v36, v37, v38, v39, v40, v51);
      v41 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }
    }

    return;
  }

  if (dword_100BCE0C0 != 4)
  {
LABEL_18:
    sub_1000D660C();
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Device reset process is already pending", v8, v9, v10, v11, v12, v13, v14, v51);
    v15 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_27:
      sub_1000E09C0();
    }
  }
}

void sub_10024DAA8(int a1)
{
  if (a1)
  {
    v22[0] = 0;
    v1 = dword_100B5F8B0++;
    if (v1 >= 3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Reset retries exhausted", v3, v4, v5, v6, v7, v8, v9, v21);
        v10 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    else
    {
      v23[0] = sub_10024DAA8;
      v23[1] = off_100AE8170;
      v22[1] = v23;
      LOWORD(v22[0]) = 16;
      v2 = sub_10002195C(sub_10024D784, v22, 10, 0);
      if (!v2)
      {
        dword_100BCE0C0 = 4;
        return;
      }

      v11 = v2;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_Dispatch_RegisterFunc failed %!", v12, v13, v14, v15, v16, v17, v18, v11);
        v19 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    sub_1000C52F4(631);
    sub_10024DBDC(v20);
  }

  else
  {
    dword_100B5F8B0 = 0;
  }
}

void sub_10024DBDC(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIIfc_DataErrorDetected %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_10024DC48(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIIfc_FatalErrorDetected %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  if (off_100B5F870)
  {
    return off_100B5F870(a1);
  }

  sub_1000C52F4(a1);
  return sub_10024DCD0(v11, v12);
}

uint64_t sub_10024DCD0(void *a1, void *a2)
{
  if (!DWORD2(xmmword_100BCE2E0))
  {
    return 103;
  }

  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  if (!a1[1])
  {
    sub_1000D660C();
    if (!a1[1])
    {
      return 101;
    }
  }

  if (!a1[2])
  {
    sub_1000D660C();
    if (!a1[2])
    {
      return 101;
    }
  }

  if (!a1[3])
  {
    sub_1000D660C();
    if (!a1[3])
    {
      return 101;
    }
  }

  if (a2)
  {
    *a2 = qword_100BCE0C8;
  }

  result = 0;
  qword_100BCE0C8 = a1;
  return result;
}

uint64_t sub_10024DEFC(uint64_t (*a1)(), uint64_t a2)
{
  if (!a2)
  {
    return 101;
  }

  v10 = 0;
  result = sub_10023DB58(a2, &v10);
  if (!result)
  {
    return sub_100018960(156, a1, v4, v5, v6, v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_10024DF64(uint64_t (*a1)(), uint64_t a2)
{
  if (!a2)
  {
    return 101;
  }

  v10 = 0;
  result = sub_10023DB58(a2, &v10);
  if (!result)
  {
    return sub_100018960(157, a1, v4, v5, v6, v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_10024DFC8(uint64_t (*a1)(), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_100BCE0C0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCI_Reset(), HCI already initialized", v9, a3, a4, a5, a6, a7, a8, v12);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1008147DC();
      }
    }
  }

  return sub_100018960(55, a1, a3, a4, a5, a6, a7, a8, v12);
}

uint64_t sub_10024E230()
{
  if (sub_100004790())
  {
    return 0;
  }

  return sub_10001F958();
}

uint64_t sub_10024E290()
{
  if (!qword_100B5F878)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("OI_HciIfc_GetPacket: OI_HCIIfc_Send_Req not in progress", v7, v8, v9, v10, v11, v12, v13, v24);
    v14 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

LABEL_10:
    sub_1000E09C0();
    return 0;
  }

  v0 = sub_100007618(word_100B5F894 + 5, 0x9D70737CuLL);
  if (!v0)
  {
    if (!sub_10000C240())
    {
      return 0;
    }

    sub_10000AF54("OI_HciIfc_GetPacket: could not allocate packet buffer", v15, v16, v17, v18, v19, v20, v21, v24);
    v22 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_10;
  }

  v1 = v0;
  qword_100B5F880 = v0;
  v2 = byte_100B5F888;
  *v0 = byte_100B5F888;
  v3 = HIBYTE(word_100B5F890);
  v1[1] = word_100B5F890;
  v1[2] = v3;
  v4 = word_100B5F894;
  v5 = word_100B5F894;
  if (v2 == 2)
  {
    v1[4] = HIBYTE(word_100B5F894);
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  v1[3] = v5;
  if (v4)
  {
    sub_10001F788(&v1[v6], qword_100B5F878, v4);
  }

  sub_10001F480();
  return qword_100B5F880;
}

uint64_t sub_10024E444(uint64_t result)
{
  v1 = *result;
  word_100B5F89B = *(result + 4);
  dword_100B5F897 = v1;
  return result;
}

uint64_t sub_10024E460(uint64_t result)
{
  if (result)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  dword_100BCE0C0 = v1;
  qword_100B5F868 = 0;
  return result;
}

void sub_10024E480()
{
  if (dword_100B5F897 | word_100B5F89B)
  {
    if (dword_100BCE0C0 == 1 || (sub_1000D660C(), dword_100BCE0C0 == 1))
    {
      byte_100BCE0C4 = 1;
      v0 = sub_1002A9F4C(&dword_100B5F897);
      byte_100BCE0C4 = 0;
      if (v0)
      {
        v1 = v0;
        if (sub_10000C240())
        {
          sub_10000AF54("BT_VSC_Write_Bd_Addr failed: %!", v2, v3, v4, v5, v6, v7, v8, v1);
          v9 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_1003044D0(qword_100B5F868, v1);
      }
    }
  }

  else
  {

    sub_10024CF7C(0, "initCmdWriteBdAddrCB");
  }
}

void sub_10024E598()
{
  if (sub_10009B9DC() == 9)
  {
    if (dword_100BCE0C0 == 1 || (sub_1000D660C(), dword_100BCE0C0 == 1))
    {
      byte_100BCE0C4 = 1;
      v0 = sub_1002AA840();
      byte_100BCE0C4 = 0;
      if (v0)
      {
        v1 = v0;
        if (sub_10000C240())
        {
          sub_10000AF54("BT_VSC_InitDone failed: %!", v2, v3, v4, v5, v6, v7, v8, v1);
          v9 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_1003044D0(qword_100B5F868, v1);
      }
    }
  }

  else
  {
    v10 = qword_100B5F868;

    sub_1003043EC(v10);
  }
}

void sub_10024E690()
{
  if (sub_10009B9DC() == 9)
  {
    if (dword_100BCE0C0 == 1 || (sub_1000D660C(), dword_100BCE0C0 == 1))
    {
      memset(bytes, 0, sizeof(bytes));
      CCRandomGenerateBytes(bytes, 0x18uLL);
      byte_100BCE0C4 = 1;
      v0 = sub_1002AA958();
      byte_100BCE0C4 = 0;
      if (v0)
      {
        v1 = v0;
        if (sub_10000C240())
        {
          sub_10000AF54("BT_VSC_SetRandomSeed failed: %!", v2, v3, v4, v5, v6, v7, v8, v1);
          v9 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_1003044D0(qword_100B5F868, v1);
      }
    }
  }

  else
  {
    v10 = qword_100B5F868;

    sub_1003043EC(v10);
  }
}

void sub_10024E7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = dword_100BCE0C0;
  if (dword_100BCE0C0 > 5 || ((1 << dword_100BCE0C0) & 0x32) == 0)
  {
    sub_1000D660C();
    v8 = dword_100BCE0C0;
  }

  v10 = v8 > 5;
  v11 = (1 << v8) & 0x32;
  if (v10 || v11 == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("initCmdReset, orphaned", v24, v25, v26, v27, v28, v29, v30, v32);
      v31 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else if (*(qword_100BCE0B8 + 10) == 1)
  {
    v13 = qword_100B5F868;

    sub_1003043EC(v13);
  }

  else
  {
    byte_100BCE0C4 = 1;
    v14 = sub_100018960(55, sub_1002500B8, a3, a4, a5, a6, a7, a8, v32);
    byte_100BCE0C4 = 0;
    if (v14)
    {
      v15 = v14;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_Reset failed: %!", v16, v17, v18, v19, v20, v21, v22, v15);
        v23 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1003044D0(qword_100B5F868, v15);
    }
  }
}

void sub_10024E958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_100BCE0C0 == 1 || (sub_1000D660C(), dword_100BCE0C0 == 1))
  {
    byte_100BCE0C4 = 1;
    v8 = sub_100018960(143, sub_100250150, a3, a4, a5, a6, a7, a8, v18);
    byte_100BCE0C4 = 0;
    if (v8)
    {
      v9 = v8;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_ReadLocalVersionInformation failed: %!", v10, v11, v12, v13, v14, v15, v16, v9);
        v17 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1003044D0(qword_100B5F868, v9);
    }
  }
}

void sub_10024EA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_100BCE0C0 == 1 || (sub_1000D660C(), dword_100BCE0C0 == 1))
  {
    byte_100BCE0C4 = 1;
    v8 = sub_100018960(144, sub_10025021C, a3, a4, a5, a6, a7, a8, v10);
    byte_100BCE0C4 = 0;
    if (v8)
    {
      v9 = qword_100B5F868;

      sub_1003043EC(v9);
    }
  }
}

void sub_10024EAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_100BCE0C0 == 1 || (sub_1000D660C(), dword_100BCE0C0 == 1))
  {
    byte_100BCE0C4 = 1;
    v8 = sub_100018960(149, sub_100250254, a3, a4, a5, a6, a7, a8, v26);
    byte_100BCE0C4 = 0;
    if (v8)
    {
      v9 = v8;
      if (v8 == 628)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCICMD_ReadBDADDR failed: %!, ignoring error", v10, v11, v12, v13, v14, v15, v16, 628);
          v17 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_1003043EC(qword_100B5F868);
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCICMD_ReadBDADDR failed: %!", v18, v19, v20, v21, v22, v23, v24, v9);
          v25 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_1003044D0(qword_100B5F868, v9);
      }
    }
  }
}

void sub_10024EBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_100BCE0C0 == 1 || (sub_1000D660C(), dword_100BCE0C0 == 1))
  {
    byte_100BCE0C4 = 1;
    v8 = sub_100018960(145, sub_1002502FC, a3, a4, a5, a6, a7, a8, v18);
    byte_100BCE0C4 = 0;
    if (v8)
    {
      v9 = v8;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_ReadLocalSupportedFeatures failed: %!", v10, v11, v12, v13, v14, v15, v16, v9);
        v17 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1003044D0(qword_100B5F868, v9);
    }
  }
}

void sub_10024EC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_100BCE0C0 == 1 || (sub_1000D660C(), dword_100BCE0C0 == 1))
  {
    byte_100BCE0C4 = 1;
    v8 = sub_100018960(146, sub_1002503D4, a3, a4, a5, a6, a7, a8, 2);
    byte_100BCE0C4 = 0;
    if (v8)
    {
      v9 = v8;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_ReadLocalExtendedFeatures failed: %!", v10, v11, v12, v13, v14, v15, v16, v9);
        v17 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1003044D0(qword_100B5F868, v9);
    }
  }
}

void sub_10024ED64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BYTE9(xmmword_100BCE038) == 1)
  {
    v10 = sub_100018960(164, sub_100250530, a3, a4, a5, a6, a7, a8, v8);
    if (v10)
    {
      v11 = v10;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_LE_ReadLocalSupportedFeatures", v12, v13, v14, v15, v16, v17, v18, v21);
        v19 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100814758();
        }
      }

      sub_1003044D0(qword_100B5F868, v11);
    }
  }

  else
  {
    v20 = qword_100B5F868;

    sub_1003043EC(v20);
  }
}

void sub_10024EE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((BYTE8(xmmword_100BCDFD8) & 0xFE) == 4)
  {
    v8 = sub_100018960(54, sub_100250668, a3, a4, a5, a6, a7, a8, &unk_1008A443B);
    if (!v8)
    {
      return;
    }

    v9 = v8;
    if (!sub_10000C240())
    {
      goto LABEL_11;
    }

    sub_10000AF54("OI_HCICMD_SetEventMask returned %!", v10, v11, v12, v13, v14, v15, v16, v28);
    v17 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (BYTE8(xmmword_100BCDFD8) >= 6u)
  {
    v18 = sub_100018960(54, sub_100250668, a3, a4, a5, a6, a7, a8, &unk_1008A4443);
    if (!v18)
    {
      return;
    }

    v9 = v18;
    if (!sub_10000C240())
    {
      goto LABEL_11;
    }

    sub_10000AF54("OI_HCICMD_SetEventMask returned %!", v19, v20, v21, v22, v23, v24, v25, v29);
    v26 = sub_10000C050(0x2Eu);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_100814758();
LABEL_11:
    sub_1003044D0(qword_100B5F868, v9);
    return;
  }

  v27 = qword_100B5F868;

  sub_1003043EC(v27);
}

void sub_10024EF7C()
{
  if (BYTE8(xmmword_100BCDFD8) < 0xCu)
  {
    v18 = qword_100B5F868;

    sub_1003043EC(v18);
  }

  else
  {
    v7 = *(sub_10001EE38(0x85u) + 2);
    if ((v7 & 0xC000) == 0 && (*(&xmmword_100BCE0E0 + (v7 >> 8)) & v7) != 0)
    {
      byte_100B5F8A0 |= 2u;
      byte_100B524FC = 89;
      byte_100B52368["terSupport.framework/CrashReporterSupport"] = 89;
    }

    v8 = sub_100018960(126, sub_1002506E0, v1, v2, v3, v4, v5, v6, &unk_100B5F89D);
    if (v8)
    {
      v9 = v8;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_SetEventMaskPage2 returned %!", v10, v11, v12, v13, v14, v15, v16, v19);
        v17 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100814758();
        }
      }

      sub_1003044D0(qword_100B5F868, v9);
    }
  }
}

void sub_10024F0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BYTE8(xmmword_100BCDFD8) < 6u)
  {
    v19 = qword_100B5F868;

    sub_1003043EC(v19);
  }

  else
  {
    v9 = sub_100018960(162, sub_100250758, a3, a4, a5, a6, a7, a8, &unk_1008A4433);
    if (v9)
    {
      v10 = v9;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_LE_SetEventMask returned %!", v11, v12, v13, v14, v15, v16, v17, v20);
        v18 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100814758();
        }
      }

      sub_1003044D0(qword_100B5F868, v10);
    }
  }
}

void sub_10024F170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BYTE8(xmmword_100BCE038) == 1 && BYTE8(xmmword_100BCDFD8) >= 4u)
  {
    v11 = sub_100018960(118, sub_1002507D0, a3, a4, a5, a6, a7, a8, byte_100B5235C);
    if (v11)
    {
      v12 = v11;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_WriteSimplePairingMode", v13, v14, v15, v16, v17, v18, v19, v21);
        v20 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100814758();
        }
      }

      sub_1003044D0(qword_100B5F868, v12);
    }
  }

  else
  {
    v10 = qword_100B5F868;

    sub_1003043EC(v10);
  }
}

void sub_10024F248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BYTE9(xmmword_100BCE038) == 1)
  {
    v9 = sub_100018960(131, sub_100250848, a3, a4, a5, a6, a7, a8, 1);
    if (v9)
    {
      v10 = v9;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_WriteLeHostSupported", v11, v12, v13, v14, v15, v16, v17, v20);
        v18 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100814758();
        }
      }

      sub_1003044D0(qword_100B5F868, v10);
    }
  }

  else
  {
    v19 = qword_100B5F868;

    sub_1003043EC(v19);
  }
}

void sub_10024F314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BYTE9(xmmword_100BCE038) == 1)
  {
    if (byte_100BCDFFF >= 0x10u)
    {
      v8 = sub_100250858;
      v9 = 244;
    }

    else
    {
      v8 = sub_100250924;
      v9 = 163;
    }

    v11 = sub_100018960(v9, v8, a3, a4, a5, a6, a7, a8, v21);
    if (v11)
    {
      if (sub_10000C240())
      {
        if (byte_100BCDFFF >= 0x10u)
        {
          v19 = "OI_HCICMD_LE_Read_BufferSize_V2";
        }

        else
        {
          v19 = "OI_HCICMD_LE_Read_BufferSize";
        }

        sub_10000AF54(v19, v12, v13, v14, v15, v16, v17, v18, v22);
        v20 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100814758();
        }
      }

      sub_1003044D0(qword_100B5F868, v11);
    }
  }

  else
  {
    v10 = qword_100B5F868;

    sub_1003043EC(v10);
  }
}

void sub_10024F414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BYTE9(xmmword_100BCE038) != 1)
  {
    goto LABEL_4;
  }

  v8 = sub_100018960(197, sub_10024CD4C, a3, a4, a5, a6, a7, a8, v19);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  if (v8 != 628)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_LE_ReadMaximumLength %!", v11, v12, v13, v14, v15, v16, v17, v9);
      v18 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1003044D0(qword_100B5F868, v9);
  }

  else
  {
LABEL_4:
    v10 = qword_100B5F868;

    sub_1003043EC(v10);
  }
}

void sub_10024F4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BYTE9(xmmword_100BCE038) == 1)
  {
    v10 = sub_100018960(188, sub_1002509A8, a3, a4, a5, a6, a7, a8, v8);
    if (v10)
    {
      v11 = v10;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_LE_ReadSupportedStates", v12, v13, v14, v15, v16, v17, v18, v21);
        v19 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100814758();
        }
      }

      sub_1003044D0(qword_100B5F868, v11);
    }
  }

  else
  {
    v20 = qword_100B5F868;

    sub_1003043EC(v20);
  }
}

void sub_10024F5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BYTE9(xmmword_100BCE038) == 1)
  {
    v10 = sub_100018960(175, sub_1002509E4, a3, a4, a5, a6, a7, a8, v8);
    if (v10)
    {
      v11 = v10;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_LE_ReadFilterAcceptListSize", v12, v13, v14, v15, v16, v17, v18, v21);
        v19 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100814758();
        }
      }

      sub_1003044D0(qword_100B5F868, v11);
    }
  }

  else
  {
    v20 = qword_100B5F868;

    sub_1003043EC(v20);
  }
}

void sub_10024F668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dword_100BCE0C0 == 1 || (sub_1000D660C(), dword_100BCE0C0 == 1))
  {
    byte_100BCE0C4 = 1;
    v8 = sub_100018960(147, sub_100250A20, a3, a4, a5, a6, a7, a8, v18);
    byte_100BCE0C4 = 0;
    if (v8)
    {
      v9 = v8;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_ReadBufferSize failed: %!", v10, v11, v12, v13, v14, v15, v16, v9);
        v17 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1003044D0(qword_100B5F868, v9);
    }
  }
}

void sub_10024F730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BYTE9(xmmword_100BCE038) != 1 || (byte_100BCDFFD & 0x20) == 0)
  {
    goto LABEL_5;
  }

  v8 = sub_100018960(224, sub_100250B54, a3, a4, a5, a6, a7, a8, v19);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  if (v8 != 628)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_ReadPeriodicAdvListSize %!", v11, v12, v13, v14, v15, v16, v17, v9);
      v18 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1003044D0(qword_100B5F868, v9);
  }

  else
  {
LABEL_5:
    v10 = qword_100B5F868;

    sub_1003043EC(v10);
  }
}

void sub_10024F814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BYTE9(xmmword_100BCE038) == 1 && (byte_100BCDFFF & 0x30) != 0)
  {
    v8 = sub_100018960(243, sub_100250B90, a3, a4, a5, a6, a7, a8, 32);
    if (v8)
    {
      v9 = v8;
      if (v8 == 628)
      {
        sub_1003043EC(qword_100B5F868);
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCI_CMD_LE_SetHostFeatureCommand %!", v11, v12, v13, v14, v15, v16, v17, v9);
          v18 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        sub_1003044D0(qword_100B5F868, v9);
      }
    }

    byte_100BCE000 |= 1u;
  }

  else
  {
    v10 = qword_100B5F868;

    sub_1003043EC(v10);
  }
}

void sub_10024F930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BYTE9(xmmword_100BCE038) == 1 && (byte_100BCE000 & 0x60) != 0)
  {
    v8 = sub_100018960(243, sub_100250BA0, a3, a4, a5, a6, a7, a8, 38);
    if (v8)
    {
      v9 = v8;
      if (v8 == 628)
      {
        sub_1003043EC(qword_100B5F868);
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCI_CMD_LE_SetHostFeatureCommand %!", v11, v12, v13, v14, v15, v16, v17, v9);
          v18 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        sub_1003044D0(qword_100B5F868, v9);
      }
    }

    byte_100BCE000 |= 0x40u;
  }

  else
  {
    v10 = qword_100B5F868;

    sub_1003043EC(v10);
  }
}

void sub_10024FA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BYTE9(xmmword_100BCE038) != 1 || (byte_100BCE000 & 0x60) == 0)
  {
    goto LABEL_5;
  }

  v8 = sub_100018960(250, sub_100250BB0, a3, a4, a5, a6, a7, a8, 1);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  if (v8 != 628)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_LE_SetDefaultSubrate %!", v11, v12, v13, v14, v15, v16, v17, v9);
      v18 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1003044D0(qword_100B5F868, v9);
  }

  else
  {
LABEL_5:
    v10 = qword_100B5F868;

    sub_1003043EC(v10);
  }
}

void sub_10024FB50()
{
  v0 = dword_100BCE0C0;
  if (dword_100BCE0C0 > 5 || ((1 << dword_100BCE0C0) & 0x32) == 0)
  {
    sub_1000D660C();
    v0 = dword_100BCE0C0;
  }

  v2 = v0 > 5;
  v3 = (1 << v0) & 0x32;
  if (!v2 && v3 != 0)
  {
    v5 = sub_1002593F8();
    byte_100BCE0C4 = 1;
    v12 = sub_100018960(94, sub_100250BC0, v6, v7, v8, v9, v10, v11, (v5 + 4));
    byte_100BCE0C4 = 0;
    if (v12)
    {
      v13 = v12;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_HostBufferSize failed: %!", v14, v15, v16, v17, v18, v19, v20, v13);
        v21 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1003044D0(qword_100B5F868, v13);
    }
  }
}

void sub_10024FC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = dword_100BCE0C0;
  if (dword_100BCE0C0 > 5 || ((1 << dword_100BCE0C0) & 0x32) == 0)
  {
    sub_1000D660C();
    v8 = dword_100BCE0C0;
  }

  v10 = v8 > 5;
  v11 = (1 << v8) & 0x32;
  if (!v10 && v11 != 0)
  {
    v13 = *(qword_100BCE0B8 + 8) ? *(qword_100BCE0B8 + 7) | 2 : *(qword_100BCE0B8 + 7);
    byte_100BCE0C4 = 1;
    v14 = sub_100018960(93, sub_100250C40, a3, a4, a5, a6, a7, a8, v13 & 3);
    byte_100BCE0C4 = 0;
    if (v14)
    {
      v15 = v14;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_SetHostControllerToHostFlowControl failed: %!", v16, v17, v18, v19, v20, v21, v22, v15);
        v23 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1003044D0(qword_100B5F868, v15);
    }
  }
}

void sub_10024FD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_100018960(124, sub_100250CB4, a3, a4, a5, a6, a7, a8, 1);
  if (v8)
  {
    v9 = v8;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteDefaultErroneousDataReporting", v10, v11, v12, v13, v14, v15, v16, v18);
      v17 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100814758();
      }
    }

    sub_1003044D0(qword_100B5F868, v9);
  }
}

void sub_10024FE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BYTE9(xmmword_100BCE038) == 1 && byte_100BCE001 >= 0x40u)
  {
    v8 = sub_100018960(243, sub_100250D34, a3, a4, a5, a6, a7, a8, 47);
    if (v8)
    {
      v9 = v8;
      if (v8 == 628)
      {
        sub_1003043EC(qword_100B5F868);
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCI_CMD_LE_SetHostFeatureCommand %!", v11, v12, v13, v14, v15, v16, v17, v9);
          v18 = sub_10000C050(0x2Eu);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        sub_1003044D0(qword_100B5F868, v9);
      }
    }

    byte_100BCE001 |= 0x80u;
  }

  else
  {
    v10 = qword_100B5F868;

    sub_1003043EC(v10);
  }
}

void sub_10024FF38(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write BD Addr cmd failed %!", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  sub_10024CF7C(a1, "initCmdWriteBdAddrCB");
}

void sub_10024FFB8(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("VSC Init Done cmd failed %!", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  sub_10024CF7C(a1, "initVSCmdCheckInitDoneCB");
}

void sub_100250038(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Set Random Seed cmd failed %!", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  sub_10024CF7C(a1, "initVSCmdSetRandomSeedCB");
}

void sub_1002500B8(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("reset command failed (%!), ignoring error and continuing initialization", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    if (a1 == 621)
    {
      byte_100BCE141 = 1;
    }
  }

  sub_10024CF7C(0, "initCmdResetCB");
}

void sub_100250150(uint64_t a1, unsigned __int8 *a2)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Read Local Version failed %!", v3, v4, v5, v6, v7, v8, v9, a1);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    if (!a2)
    {
      sub_1000D660C();
    }

    BYTE14(xmmword_100BCE0E0) = BYTE14(xmmword_100BCE0E0) & 0xEF | (16 * (*a2 > 1u));
    WORD3(xmmword_100BCDFD8) = *(a2 + 1);
    BYTE8(xmmword_100BCDFD8) = a2[4];
    WORD5(xmmword_100BCDFD8) = *(a2 + 4);
  }

  sub_10024CF7C(a1, "initCmdReadLocalVersionCB");
}

__n128 sub_10025021C(uint64_t a1, __int128 *a2)
{
  if (a2)
  {
    v2 = *a2;
    v3 = a2[1];
    v4 = a2[2];
    unk_100BCE094 = a2[3];
    *(&xmmword_100BCE078 + 12) = v4;
    unk_100BCE074 = v3;
    *(&xmmword_100BCE058 + 12) = v2;
    sub_10024CF7C(0, "initCmdReadSupportedCommandsCB");
  }

  return result;
}

void sub_100250254(uint64_t a1, int *a2)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Read BD Addr cmd failed %!", v3, v4, v5, v6, v7, v8, v9, a1);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else if (dword_100BCE0C0 == 1)
  {
    v11 = *a2;
    WORD2(xmmword_100BCDFD8) = *(a2 + 2);
    LODWORD(xmmword_100BCDFD8) = v11;
  }

  sub_10024CF7C(a1, "initCmdReadBdAddrCB");
}

void sub_1002502FC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Read local features cmd failed %!", v3, v4, v5, v6, v7, v8, v9, a1);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else if (a2 && dword_100BCE0C0 == 1)
  {
    *(&xmmword_100BCDFD8 + 12) = *a2;
    if (BYTE8(xmmword_100BCDFD8) < 6u)
    {
      WORD4(xmmword_100BCE038) = 1;
    }

    else
    {
      BYTE8(xmmword_100BCE038) = (*(a2 + 4) & 0x20) == 0;
      BYTE9(xmmword_100BCE038) = (*(a2 + 4) & 0x40) != 0;
    }
  }

  sub_10024CF7C(a1, "initCmdReadLocalFeaturesCB");
}

void sub_1002503D4(uint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Read local features cmd failed %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else if (a4)
  {
    if (dword_100BCE0C0 == 1)
    {
      *(&xmmword_100BCDFD8 + 8 * a2 + 12) = *a4;
      if (sub_10000C240())
      {
        sub_10000AF54("Extended features, max %d, pageNumber %d: %@", v14, v15, v16, v17, v18, v19, v20, a3);
        v21 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v23 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }
  }

  sub_10024CF7C(a1, "initCmdReadLocalExtendedFeaturesCB");
}

void sub_100250530(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Read local supported features failed %!", v3, v4, v5, v6, v7, v8, v9, a1);
      v10 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else if (a2)
  {
    *&byte_100BCDFFC = *a2;
    if (sub_10000C240())
    {
      sub_10000AF54("LE local supported features %@", v11, v12, v13, v14, v15, v16, v17, &byte_100BCDFFC);
      v18 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v20 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  sub_10024CF7C(0, "initCmdReadLeLocalSupportedFeaturesCB");
}

void sub_100250668(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write event mask", v2, v3, v4, v5, v6, v7, v8, v10);
      v9 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100814758();
      }
    }
  }

  sub_10024CF7C(a1, "initCmdWriteEventMaskCb");
}

void sub_1002506E0(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write event mask page 2", v2, v3, v4, v5, v6, v7, v8, v10);
      v9 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100814758();
      }
    }
  }

  sub_10024CF7C(a1, "initCmdWriteEventMaskPage2Cb");
}

void sub_100250758(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write le event mask", v2, v3, v4, v5, v6, v7, v8, v10);
      v9 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100814758();
      }
    }
  }

  sub_10024CF7C(a1, "initCmdWriteLeEventMaskCb");
}

void sub_1002507D0(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write SSP mode", v2, v3, v4, v5, v6, v7, v8, v10);
      v9 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100814758();
      }
    }
  }

  sub_10024CF7C(a1, "initCmdWriteSspCb");
}

void sub_100250858(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if (!a1)
  {
    if ((a2 != 0) != (a3 != 0))
    {
      sub_1000D660C();
    }

    if ((a4 != 0) != (a5 != 0))
    {
      sub_1000D660C();
    }

    word_100B5F8A6 = a2;
    byte_100B5F8A8 = a3;
    word_100B5F8AA = a4;
    byte_100B5F8AC = a5;
    if (a2)
    {
      v10 = a3 == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = v10;
    byte_100B5F8AD = v11;
  }

  sub_10024CF7C(a1, "initCmdReadLeBufferSizeV2CB");
}

void sub_100250924(int a1, int a2, int a3)
{
  if (!a1)
  {
    if ((a2 != 0) != (a3 != 0))
    {
      sub_1000D660C();
    }

    word_100B5F8A6 = a2;
    byte_100B5F8A8 = a3;
    if (a2)
    {
      v6 = a3 == 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6;
    byte_100B5F8AD = v7;
    v3 = vars8;
  }

  sub_10024CF7C(0, "initCmdReadLeBufferSizeCB");
}

void sub_1002509A8(int a1, uint64_t *a2)
{
  if (!a1)
  {
    sub_1002D0834(a2);
    v2 = vars8;
  }

  sub_10024CF7C(0, "initCmdReadLeSupportedStatesCB");
}

void sub_1002509E4(int a1, unsigned int a2)
{
  if (!a1)
  {
    sub_1002E99F0(a2);
    v2 = vars8;
  }

  sub_10024CF7C(0, "initCmdReadLeFilterAcceptListSizeCB");
}

void sub_100250A20(uint64_t a1, unsigned int a2, __int16 a3, int a4, int a5)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Read device buffer sizes failed %!", v6, v7, v8, v9, v10, v11, v12, a1);
      v13 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_11;
  }

  if (dword_100BCE0C0 != 1 || (v14 = sub_1002595BC(a2, a3, word_100B5F8A6, word_100B5F8AA, a4, a5, byte_100B5F8A8, byte_100B5F8AC, byte_100B5F8AD), !v14))
  {
LABEL_11:
    sub_10024CF7C(a1, "initCmdReadDeviceBufferSizesCB");
    return;
  }

  v15 = v14;
  if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIFlow_Init failed: %!", v16, v17, v18, v19, v20, v21, v22, 0);
    v23 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  sub_1003044D0(qword_100B5F868, v15);
}

void sub_100250B54(int a1, unsigned int a2)
{
  if (!a1)
  {
    sub_1001B97FC(a2);
    v2 = vars8;
  }

  sub_10024CF7C(0, "initCmdReadLePAListSizeCB");
}

void sub_100250BC0(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Host buffer size cmd failed %!", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  sub_10024CF7C(a1, "initCmdHostBufferSizeCB");
}

void sub_100250C40(uint64_t a1)
{
  if (a1 == 717)
  {
    a1 = sub_10000C240();
    if (a1)
    {
      sub_10000AF54("HCI HostFlowControl unsupported (ignoring)", v1, v2, v3, v4, v5, v6, v7, v9);
      v8 = sub_10000C050(0x2Eu);
      a1 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        sub_1000E09C0();
        a1 = 0;
      }
    }
  }

  sub_10024CF7C(a1, "initCmdHostFlowControlCB");
}

void sub_100250CB4(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write Erroneous Data Reporting failed %!", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  sub_10024CF7C(a1, "initCmdWriteErroneousDataReportingCB");
}

void sub_100250D44(uint64_t a1)
{
  v2 = dword_100BCE0C0;
  if ((dword_100BCE0C0 & 0xFFFFFFFE) != 4)
  {
    sub_1000D660C();
    v2 = dword_100BCE0C0;
  }

  if ((v2 - 6) > 0xFFFFFFFD)
  {
    qword_100B5F868 = 0;
    if (a1 || (a1 = sub_10025BAE0(sub_100250F60), a1))
    {

      sub_100250F60(a1);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("resetCmdChainTermination, deviceReset is not active", v3, v4, v5, v6, v7, v8, v9, v11);
    v10 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_100250E14()
{
  v0 = dword_100BCE0C0;
  if (dword_100BCE0C0 > 5 || ((1 << dword_100BCE0C0) & 0x32) == 0)
  {
    sub_1000D660C();
    v0 = dword_100BCE0C0;
  }

  v2 = v0 > 5;
  v3 = (1 << v0) & 0x32;
  if (v2 || v3 == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("initCmdStackResetHCITransport, orphaned", v16, v17, v18, v19, v20, v21, v22, v24);
      v23 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else if ((*(qword_100BCE0B8 + 10) & 1) != 0 || (v5 = sub_10022DE08(), !v5))
  {
    v15 = qword_100B5F868;

    sub_1003043EC(v15);
  }

  else
  {
    v6 = v5;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCIIfc_StackResetHCITransport failed: %!", v7, v8, v9, v10, v11, v12, v13, v6);
      v14 = sub_10000C050(0x2Eu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1003044D0(qword_100B5F868, v6);
  }
}

void sub_100250F60(uint64_t a1)
{
  if ((dword_100BCE0C0 & 0xFFFFFFFE) != 4)
  {
    sub_1000D660C();
  }

  if (a1)
  {
    if (dword_100BCE0C0 == 4)
    {
      goto LABEL_8;
    }

    v2 = 6;
  }

  else
  {
    v2 = 2;
  }

  dword_100BCE0C0 = v2;
LABEL_8:
  v3 = off_100B5F860;
  if (off_100B5F860)
  {
    off_100B5F860 = 0;

    v3(a1);
  }
}

uint64_t sub_100250FE8(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 == 14)
  {
    v5 = 2;
    v6 = 5;
    v7 = 3;
    v8 = 4;
  }

  else
  {
    if (v4 != 15)
    {
      return 1;
    }

    v5 = 3;
    v6 = 2;
    v7 = 4;
    v8 = 5;
  }

  v9 = a1[v7] | (a1[v8] << 8);
  v10 = a1[v6];
  byte_100BCE141 = a1[v5];
  if (word_100BCE120 != v9)
  {
    return 1;
  }

  sub_1001C4B04("raw HCI Event");
  if (sub_10000C240())
  {
    sub_10000AF54("raw HCI Event :opcode=0x%4x payloadlen=%d", v11, v12, v13, v14, v15, v16, v17, v9);
    v18 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  if (off_100BCE130)
  {
    off_100BCE130(v10, a1, a2, qword_100BCE128);
  }

  off_100BCE138 = 0;
  v20 = 0;
  if (sub_100006318(254, &v20))
  {
    sub_1000DC660(v20);
  }

  return 0;
}

uint64_t sub_100251128(uint64_t a1, const void *a2, unsigned int a3, uint64_t (*a4)(void, void, void, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = 0;
  v14 = a3 + 7;
  sub_1001C4B04("raw HCI command");
  if (sub_10000C240())
  {
    sub_10000AF54("raw HCI command: opcode=0x%4x payloadlen=%d", v15, v16, v17, v18, v19, v20, v21, a1);
    v22 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  v23 = sub_100007618(v14, 0xC05BD098uLL);
  if (!v23)
  {
    return 104;
  }

  if (!v14)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 3206, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v24 = v23;
  *v23 = 1;
  if (v14 <= 2u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 3208, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  *(v23 + 1) = a1;
  if (v14 == 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 3209, "ByteStream_NumReadBytesAvail(bs) >= 1");
  }

  v23[3] = a3;
  if (a3)
  {
    if (v14 - 4 < a3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 3211, "ByteStream_NumReadBytesAvail(bs) >= (len)");
    }

    memmove(v23 + 4, a2, a3);
    v25 = a3 + 4;
  }

  else
  {
    v25 = 4;
  }

  word_100BCE120 = a1;
  v30 = &a10;
  qword_100BCE128 = a9;
  off_100BCE130 = a4;
  LODWORD(v27) = 0;
  *(&v27 + 1) = 0;
  WORD2(v27) = a1;
  *(&v27 + 6) = -16908013;
  v28 = 0;
  v29 = a4;
  off_100BCE138 = sub_100250FE8;
  return sub_10001EFEC(v24, v25, &v27);
}

uint64_t sub_1002512F4(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
  }

  else
  {
    v5 = *(a3 + 12);
    if ((*(a3 + 10) - v5) > 1u)
    {
      if (*(a3 + 14) == 1)
      {
        if (*(a3 + 10) - v5 > 1)
        {
          v6 = *(*a3 + *(a3 + 12));
          *(a3 + 12) = v5 + 2;
          goto LABEL_7;
        }

        v8 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
      }

      else
      {
        v8 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 160, v8);
    }
  }

  v6 = 0;
  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 605;
  }

LABEL_7:

  return v3(a1, v6);
}

uint64_t sub_1002513E0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
    goto LABEL_4;
  }

  v5 = *(a3 + 5);
  v6 = *(a3 + 6);
  if ((v5 - v6) <= 2u)
  {
LABEL_4:
    v7 = 0;
    v8 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    goto LABEL_7;
  }

  if (*(a3 + 14) != 1)
  {
    v14 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_16;
  }

  if ((v5 - v6) <= 1)
  {
    v14 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 208, v14);
  }

  v10 = *a3;
  v11 = (*a3 + v6);
  v12 = *v11;
  v13 = v11[1];
  *(a3 + 6) = v6 + 2;
  if (v5 <= (v6 + 2))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 209, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v7 = v12 | (v13 << 8);
  *(a3 + 6) = v6 + 3;
  v8 = *(v10 + (v6 + 2));
LABEL_7:

  return v3(a1, v7, v8);
}

uint64_t sub_100251508(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
    goto LABEL_4;
  }

  v5 = *(a3 + 5);
  v6 = *(a3 + 6);
  if ((v5 - v6) <= 3u)
  {
LABEL_4:
    v7 = 0;
    v8 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    goto LABEL_7;
  }

  if (*(a3 + 14) != 1)
  {
    v14 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_16;
  }

  if (v5 - v6 <= 1)
  {
    v14 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 324, v14);
  }

  v10 = *a3;
  v11 = (*a3 + v6);
  v12 = *v11;
  v13 = v11[1];
  *(a3 + 6) = v6 + 2;
  if (v5 - (v6 + 2) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 325, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v7 = v12 | (v13 << 8);
  v8 = *(v10 + (v6 + 2));
  *(a3 + 6) = v6 + 4;
LABEL_7:

  return v3(a1, v7, v8);
}

uint64_t sub_100251638(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, uint64_t, void), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
    goto LABEL_4;
  }

  v5 = *(a3 + 5);
  v6 = *(a3 + 6);
  if ((v5 - v6) <= 7u)
  {
LABEL_4:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    goto LABEL_7;
  }

  if (*(a3 + 14) != 1)
  {
    v16 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_18;
  }

  if (v5 - v6 <= 1)
  {
    v16 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_18:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 372, v16);
  }

  v12 = *a3;
  v7 = *(*a3 + v6);
  *(a3 + 6) = v6 + 2;
  if (v5 - (v6 + 2) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 373, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v8 = *(v12 + (v6 + 2));
  *(a3 + 6) = v6 + 4;
  if (v5 - (v6 + 4) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 374, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v13 = (v12 + (v6 + 4));
  v14 = *v13;
  v15 = v13[1];
  *(a3 + 6) = v6 + 6;
  if (v5 - (v6 + 6) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 375, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v9 = v14 | (v15 << 8);
  v10 = *(v12 + (v6 + 6));
  *(a3 + 6) = v6 + 8;
LABEL_7:

  return v3(a1, v7, v8, v9, v10);
}

uint64_t sub_1002517DC(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *), uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
  }

  else
  {
    v5 = *(a3 + 12);
    if ((*(a3 + 10) - v5) > 1u)
    {
      if (*(a3 + 14) == 1)
      {
        if (*(a3 + 10) - v5 > 1)
        {
          v8 = *(*a3 + *(a3 + 12));
          *(a3 + 12) = v5 + 2;
          v6 = sub_1000ABB80(v8);
          v3 = a2;
          goto LABEL_7;
        }

        v9 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
      }

      else
      {
        v9 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 181, v9);
    }
  }

  v6 = 0;
  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 605;
  }

LABEL_7:

  return v3(a1, v6);
}

uint64_t sub_1002518D4(unsigned int a1, uint64_t (*a2)(uint64_t, __int128 *, uint64_t), uint64_t *a3)
{
  v10 = 0;
  v9 = 0;
  LODWORD(v4) = sub_1002549A4(&v10, &v9, a3);
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = v4;
  }

  v5 = v10;
  v6 = v9;

  return a2(v4, v5, v6);
}

uint64_t sub_100251938(unsigned int a1, uint64_t (*a2)(uint64_t, __int128 *, uint64_t), uint64_t *a3)
{
  v10 = 0;
  v9 = 0;
  LODWORD(v4) = sub_1002549A4(&v10, &v9, a3);
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = v4;
  }

  v5 = v10;
  v6 = v9;

  return a2(v4, v5, v6);
}

uint64_t sub_10025199C(unsigned int a1, uint64_t (*a2)(uint64_t, __int128 *, uint64_t, uint64_t), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
LABEL_4:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 605;
    goto LABEL_5;
  }

  v6 = *(a3 + 6);
  if ((*(a3 + 5) - v6) < 3u)
  {
    goto LABEL_4;
  }

  if (*(a3 + 14) != 1)
  {
    v17 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_23;
  }

  if (*(a3 + 5) - v6 <= 1)
  {
    v17 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_23:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 245, v17);
  }

  v13 = *(*a3 + *(a3 + 6));
  *(a3 + 6) = v6 + 2;
  v7 = sub_1000ABB80(v13);
  if (v7)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    }

    else
    {
      v14 = *(a3 + 5);
      v15 = *(a3 + 6);
      if (v14 > v15)
      {
        if (*(a3 + 14) == 1)
        {
          v16 = *a3;
          *(a3 + 6) = v15 + 1;
          if (v14 <= v15 + 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 251, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
          }

          v10 = 0;
          v8 = *(v16 + v15);
          *(a3 + 6) = v15 + 2;
          v9 = *(v16 + v15 + 1);
          goto LABEL_20;
        }

        v18 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_27:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 250, v18);
      }
    }

    v18 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_27;
  }

  v8 = 0;
  v9 = 0;
  v10 = 601;
LABEL_20:
  v3 = a2;
LABEL_5:
  if (a1)
  {
    v11 = a1;
  }

  else
  {
    v11 = v10;
  }

  return v3(v11, v7, v8, v9);
}

uint64_t sub_100251B58(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *, void), uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
  }

  else
  {
    v6 = *(a3 + 12);
    if ((*(a3 + 10) - v6) > 3u)
    {
      if (*(a3 + 14) == 1)
      {
        if (*(a3 + 10) - v6 > 1)
        {
          v10 = *(*a3 + *(a3 + 12));
          *(a3 + 12) = v6 + 2;
          v11 = sub_1000ABB80(v10);
          if (*(a3 + 14) == 1)
          {
            v3 = a2;
            if (*(a3 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
            }

            else
            {
              v12 = *(a3 + 12);
              if (*(a3 + 10) - v12 > 1)
              {
                v8 = v11;
                v7 = *(*a3 + v12);
                *(a3 + 12) = v12 + 2;
                goto LABEL_7;
              }
            }

            v14 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
          }

          else
          {
            v14 = "(*pBs).__RWFlag == BYTESTREAM_READ";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 348, v14);
        }

        v13 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
      }

      else
      {
        v13 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 346, v13);
    }
  }

  v7 = 0;
  v8 = 0;
  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 605;
  }

LABEL_7:

  return v3(a1, v8, v7);
}

uint64_t sub_100251CD8(uint64_t a1, uint64_t (*a2)(uint64_t, int *), uint64_t a3)
{
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v6 = *(a3 + 12);
    v7 = *(a3 + 10) - v6;
    v8 = (*(a3 + 10) - v6);
    v12 = 0;
    v11 = 0;
    if (v8 > 5)
    {
      if (v7 <= 5)
      {
        v10 = "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE";
      }

      else
      {
        if (*(a3 + 14) == 1)
        {
          sub_1000075EC(&v11, *a3 + v6, 6uLL);
          *(a3 + 12) += 6;
          return a2(a1, &v11);
        }

        v10 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 402, v10);
    }
  }

  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 605;
  }

  return a2(a1, &v11);
}

void sub_100251DD8(uint64_t a1, void (*a2)(uint64_t, _BYTE *), uint64_t a3)
{
  v4 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v4 = a2;
LABEL_4:
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = 605;
    }

    v7 = 0;
    goto LABEL_8;
  }

  if ((*(a3 + 10) - *(a3 + 12)) <= 0xF7u)
  {
    goto LABEL_4;
  }

  v8 = *(sub_1003045A0(0x28u) + 6);
  if (v8 >= 0xF9)
  {
    sub_1000D660C();
    v9 = (*a3 + *(a3 + 12));
    v8 = 248;
  }

  else
  {
    v9 = (*a3 + *(a3 + 12));
    if (!v8)
    {
      *v9 = 0;
      v6 = a1;
      v7 = v9;
      v4 = a2;
LABEL_8:

      v4(v6, v7);
      return;
    }
  }

  v10 = 0;
  while (v9[v10])
  {
    if (v8 == ++v10)
    {
      goto LABEL_20;
    }
  }

  v8 = v10;
LABEL_20:
  if (v8 < 0xF8)
  {
    v12 = 0;
  }

  else
  {
    v11 = sub_1001BBBD8(0xF9uLL, 0xFD13D979uLL);
    if (v11)
    {
      v12 = v11;
      v8 = 248;
      memmove(v11, v9, 0xF8uLL);
      v9 = v12;
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Malloc for local name failed, name truncated to 247 characters.", v13, v14, v15, v16, v17, v18, v19, v22);
        v20 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v12 = 0;
      v8 = 247;
    }
  }

  v21 = v8;
  if (v8 && v9[v8] < 0)
  {
    while (1)
    {
      v21 = v8;
      if (v9[v8] > 0xBFu)
      {
        break;
      }

      --v8;
      if (v21 <= 1)
      {
        v21 = 0;
        break;
      }
    }
  }

  v9[v21] = 0;
  a2(a1, v9);
  if (v12)
  {
    sub_10000C1E8(v12);
  }
}

uint64_t sub_100251FD0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
  }

  else
  {
    v5 = *(a3 + 12);
    if ((*(a3 + 10) - v5) > 2u)
    {
      if (*(a3 + 10) - v5 <= 2)
      {
        v8 = "ByteStream_NumReadBytesAvail(*pBs) >= 3";
      }

      else
      {
        if (*(a3 + 14) == 1)
        {
          v6 = *(*a3 + *(a3 + 12)) | (*(*a3 + *(a3 + 12) + 2) << 16);
          *(a3 + 12) = v5 + 3;
          goto LABEL_7;
        }

        v8 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 462, v8);
    }
  }

  v6 = 0;
  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 605;
  }

LABEL_7:

  return v3(a1, v6);
}

void sub_1002520C4(uint64_t a1, void (*a2)(uint64_t, uint64_t, void *), uint64_t *a3)
{
  v4 = a1;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v5 = 0;
    if (v4)
    {
LABEL_3:
      v6 = 0;
LABEL_4:

      a2(v4, v6, 0);
      return;
    }
  }

  else
  {
    v5 = (*(a3 + 5) - *(a3 + 6));
    if (a1)
    {
      goto LABEL_3;
    }
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    goto LABEL_27;
  }

  v7 = *(a3 + 6);
  if (*(a3 + 5) <= v7)
  {
LABEL_27:
    v17 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_29;
  }

  if (*(a3 + 14) != 1)
  {
    v17 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_29:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 482, v17);
  }

  v8 = *a3;
  *(a3 + 6) = v7 + 1;
  v6 = *(v8 + v7);
  v9 = sub_100007618(4 * v6, 0x8C95E875uLL);
  if (!v9)
  {
    v4 = 106;
    goto LABEL_4;
  }

  v10 = v9;
  if (v5 >= 3 * v6)
  {
    if (v6)
    {
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_31:
        v16 = "ByteStream_NumReadBytesAvail(*pBs) >= 3";
      }

      else
      {
        v12 = *(a3 + 5) - 2;
        v13 = *(a3 + 6);
        v14 = v6;
        v15 = v9;
        while (1)
        {
          if (v12 <= v13)
          {
            goto LABEL_31;
          }

          if (*(a3 + 14) != 1)
          {
            break;
          }

          *v15++ = *(*a3 + v13) | (*(*a3 + v13 + 2) << 16);
          v13 += 3;
          *(a3 + 6) = v13;
          if (!--v14)
          {
            goto LABEL_21;
          }
        }

        v16 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 498, v16);
    }

LABEL_21:
    v11 = 0;
  }

  else
  {
    v11 = 605;
  }

  a2(v11, v6, v10);

  sub_10000C1E8(v10);
}

uint64_t sub_1002522E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t *), uint64_t *a3)
{
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v11 = 0;
    v10 = 0;
    goto LABEL_4;
  }

  v5 = *(a3 + 5);
  v6 = *(a3 + 6);
  v11 = 0;
  v10 = 0;
  if ((v5 - v6) <= 7u)
  {
LABEL_4:
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    return a2(a1, &v10);
  }

  if (v5 <= v6)
  {
    v9 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_17;
  }

  if (*(a3 + 14) != 1)
  {
    v9 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_17:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 859, v9);
  }

  v8 = *a3;
  *(a3 + 6) = v6 + 1;
  LOBYTE(v10) = *(v8 + v6);
  if ((v5 - (v6 + 1)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 860, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  WORD1(v10) = *(v8 + v6 + 1);
  *(a3 + 6) = v6 + 3;
  if (v5 <= (v6 + 3))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 861, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  *(a3 + 6) = v6 + 4;
  BYTE4(v10) = *(v8 + (v6 + 3));
  if ((v5 - (v6 + 4)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 862, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  HIWORD(v10) = *(v8 + (v6 + 4));
  *(a3 + 6) = v6 + 6;
  if ((v5 - (v6 + 6)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 863, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v11 = *(v8 + (v6 + 6));
  *(a3 + 6) = v6 + 8;
  return a2(a1, &v10);
}

uint64_t sub_1002524A4(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *), uint64_t a3)
{
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    goto LABEL_4;
  }

  v5 = *(a3 + 12);
  if ((*(a3 + 10) - v5) <= 0x3Fu)
  {
LABEL_4:
    v6 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    return a2(a1, v6);
  }

  v6 = (*a3 + v5);
  v8 = *v6;
  v9 = v6[1];
  v10 = v6[3];
  xmmword_100BCE100 = v6[2];
  xmmword_100BCE110 = v10;
  xmmword_100BCE0E0 = v8;
  *&byte_100BCE0F0 = v9;
  if (sub_10000C240())
  {
    sub_10000AF54("command supported mask is: %@", v11, v12, v13, v14, v15, v16, v17, &xmmword_100BCE0E0);
    v18 = sub_10000C050(0x2Eu);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v20 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  BYTE14(xmmword_100BCE0E0) |= 0x10u;
  return a2(a1, v6);
}

uint64_t sub_100252608(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t *), uint64_t a3)
{
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v9 = 0;
  }

  else
  {
    v5 = *(a3 + 10);
    v6 = *(a3 + 12);
    v9 = 0;
    if ((v5 - v6) > 7u)
    {
      if (*(a3 + 14) == 1)
      {
        if ((v5 - v6) > 7)
        {
          v9 = *(*a3 + v6);
          *(a3 + 12) = v6 + 8;
          return a2(a1, &v9);
        }

        v8 = "ByteStream_NumReadBytesAvail((*pBs)) >= (sizeof(lmpFeatures))";
      }

      else
      {
        v8 = "((*pBs)).__RWFlag == BYTESTREAM_READ";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 626, v8);
    }
  }

  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 605;
  }

  return a2(a1, &v9);
}

uint64_t sub_100252718(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t *), uint64_t *a3)
{
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v12 = 0;
    goto LABEL_4;
  }

  v5 = *(a3 + 5);
  v6 = *(a3 + 6);
  v12 = 0;
  if ((v5 - v6) <= 9u)
  {
LABEL_4:
    v7 = 0;
    v8 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    return a2(a1, v8, v7, &v12);
  }

  if (v5 <= v6)
  {
    v11 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_15;
  }

  if (*(a3 + 14) != 1)
  {
    v11 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_15:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 653, v11);
  }

  v10 = *a3;
  *(a3 + 6) = v6 + 1;
  if (v5 <= (v6 + 1))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 654, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v8 = *(v10 + v6);
  *(a3 + 6) = v6 + 2;
  if ((v5 - (v6 + 2)) <= 7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 655, "ByteStream_NumReadBytesAvail((*pBs)) >= (sizeof(lmpFeatures))");
  }

  v7 = *(v10 + v6 + 1);
  v12 = *(v10 + v6 + 2);
  *(a3 + 6) = v6 + 10;
  return a2(a1, v8, v7, &v12);
}

uint64_t sub_10025288C(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t, uint64_t, void), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
    goto LABEL_4;
  }

  v5 = *(a3 + 5);
  v6 = *(a3 + 6);
  if ((v5 - v6) <= 6u)
  {
LABEL_4:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    goto LABEL_7;
  }

  if (*(a3 + 14) != 1)
  {
    v16 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_18;
  }

  if ((v5 - v6) <= 1)
  {
    v16 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_18:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 430, v16);
  }

  v12 = *a3;
  v7 = *(*a3 + v6);
  *(a3 + 6) = v6 + 2;
  if (v5 <= (v6 + 2))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 431, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  *(a3 + 6) = v6 + 3;
  if ((v5 - (v6 + 3)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 432, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v8 = *(v12 + (v6 + 2));
  v13 = (v12 + (v6 + 3));
  v14 = *v13;
  v15 = v13[1];
  *(a3 + 6) = v6 + 5;
  if ((v5 - (v6 + 5)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 433, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v9 = v14 | (v15 << 8);
  v10 = *(v12 + (v6 + 5));
  *(a3 + 6) = v6 + 7;
LABEL_7:

  return v3(a1, v7, v8, v9, v10);
}

uint64_t sub_100252A2C(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *, uint64_t, uint64_t), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
    goto LABEL_4;
  }

  v5 = *(a3 + 5);
  v6 = *(a3 + 6);
  if ((v5 - v6) <= 0xCu)
  {
LABEL_4:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    goto LABEL_7;
  }

  if (*(a3 + 14) != 1)
  {
    v17 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_16;
  }

  if ((v5 - v6) <= 1)
  {
    v17 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 738, v17);
  }

  v11 = *a3;
  v12 = (*a3 + v6);
  v13 = *v12;
  v14 = v12[1];
  v15 = v6 + 2;
  *(a3 + 6) = v6 + 2;
  if (v5 <= (v6 + 2))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 739, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v16 = v6 + 3;
  *(a3 + 6) = v16;
  v8 = *(v11 + v15);
  v9 = v11 + v16;
  v7 = sub_1000ABB80(v13 | (v14 << 8));
  v3 = a2;
LABEL_7:

  return v3(a1, v7, v8, v9);
}

uint64_t sub_100252B7C(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *, uint64_t, uint64_t), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
    goto LABEL_4;
  }

  v5 = *(a3 + 5);
  v6 = *(a3 + 6);
  if ((v5 - v6) <= 6u)
  {
LABEL_4:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    goto LABEL_7;
  }

  if (*(a3 + 14) != 1)
  {
    v13 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_17;
  }

  if ((v5 - v6) <= 1)
  {
    v13 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_17:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 831, v13);
  }

  v11 = *a3;
  v12 = *(*a3 + v6);
  *(a3 + 6) = v6 + 2;
  if (v5 <= (v6 + 2))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 832, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  *(a3 + 6) = v6 + 3;
  if ((v5 - (v6 + 3)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 833, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v8 = *(v11 + (v6 + 2));
  v9 = *(v11 + (v6 + 3));
  *(a3 + 6) = v6 + 7;
  v7 = sub_1000ABB80(v12);
  v3 = a2;
LABEL_7:

  return v3(a1, v7, v8, v9);
}

uint64_t sub_100252CF4(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *, uint64_t, void), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
    goto LABEL_4;
  }

  v5 = *(a3 + 5);
  v6 = *(a3 + 6);
  if ((v5 - v6) <= 7u)
  {
LABEL_4:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    goto LABEL_7;
  }

  if (*(a3 + 14) != 1)
  {
    v13 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_17;
  }

  if (v5 - v6 <= 1)
  {
    v13 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_17:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 769, v13);
  }

  v11 = *a3;
  v12 = *(*a3 + v6);
  *(a3 + 6) = v6 + 2;
  if (v5 - (v6 + 2) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 770, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v8 = *(v11 + (v6 + 2));
  *(a3 + 6) = v6 + 6;
  if (v5 - (v6 + 6) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 771, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v9 = *(v11 + (v6 + 6));
  *(a3 + 6) = v6 + 8;
  v7 = sub_1000ABB80(v12);
  v3 = a2;
LABEL_7:

  return v3(a1, v7, v8, v9);
}

uint64_t sub_100252E70(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *, uint64_t), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
    goto LABEL_4;
  }

  v5 = *(a3 + 5);
  v6 = *(a3 + 6);
  if ((v5 - v6) <= 2u)
  {
LABEL_4:
    v7 = 0;
    v8 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    goto LABEL_7;
  }

  if (*(a3 + 14) != 1)
  {
    v14 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_16;
  }

  if ((v5 - v6) <= 1)
  {
    v14 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 800, v14);
  }

  v10 = *a3;
  v11 = (*a3 + v6);
  v12 = *v11;
  v13 = v11[1];
  *(a3 + 6) = v6 + 2;
  if (v5 <= (v6 + 2))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 801, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  *(a3 + 6) = v6 + 3;
  v8 = *(v10 + (v6 + 2));
  v7 = sub_1000ABB80(v12 | (v13 << 8));
  v3 = a2;
LABEL_7:

  return v3(a1, v7, v8);
}

uint64_t sub_100252FAC(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
  }

  else
  {
    v5 = *(a3 + 5);
    v6 = *(a3 + 6);
    if (v5 != v6)
    {
      if (v5 > v6)
      {
        if (*(a3 + 14) == 1)
        {
          v9 = *a3;
          *(a3 + 6) = v6 + 1;
          v7 = *(v9 + v6);
          goto LABEL_7;
        }

        v10 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      }

      else
      {
        v10 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 888, v10);
    }
  }

  v7 = 0;
  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 605;
  }

LABEL_7:

  return v3(a1, v7);
}

uint64_t sub_10025308C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
  }

  else
  {
    v5 = *(a3 + 5);
    v6 = *(a3 + 6);
    if ((v5 - v6) > 0x1Fu)
    {
      if (v5 <= v6)
      {
        v11 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
      }

      else
      {
        if (*(a3 + 14) == 1)
        {
          v10 = *a3;
          *(a3 + 6) = v6 + 1;
          v7 = *(v10 + v6);
          v8 = v10 + (v6 + 1);
          goto LABEL_7;
        }

        v11 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 914, v11);
    }
  }

  v7 = 0;
  v8 = 0;
  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 605;
  }

LABEL_7:

  return v3(a1, v7, v8);
}

uint64_t sub_10025317C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
    goto LABEL_4;
  }

  v5 = *(a3 + 6);
  if ((*(a3 + 5) - v5) <= 0x1Fu)
  {
LABEL_4:
    v6 = 0;
    v7 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    goto LABEL_7;
  }

  if (*(a3 + 5) - v5 <= 15)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 942, "ByteStream_NumReadBytesAvail(*pBs) >= (16)");
  }

  v9 = *a3;
  v6 = *a3 + v5;
  v10 = v5 + 16;
  *(a3 + 6) = v10;
  v7 = v9 + v10;
LABEL_7:

  return v3(a1, v6, v7);
}

uint64_t sub_10025324C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
    goto LABEL_4;
  }

  v5 = *(a3 + 5);
  v6 = *(a3 + 6);
  if ((v5 - v6) <= 0x3Fu)
  {
LABEL_4:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    goto LABEL_7;
  }

  if (v5 - v6 <= 15)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 973, "ByteStream_NumReadBytesAvail(*pBs) >= (16)");
  }

  v12 = *a3;
  *(a3 + 6) = v6 + 16;
  if (v5 - (v6 + 16) <= 15)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 975, "ByteStream_NumReadBytesAvail(*pBs) >= (16)");
  }

  *(a3 + 6) = v6 + 32;
  if (v5 - (v6 + 32) <= 15)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 977, "ByteStream_NumReadBytesAvail(*pBs) >= (16)");
  }

  v7 = v12 + v6;
  v8 = v12 + (v6 + 16);
  v9 = v12 + (v6 + 32);
  v13 = v6 + 48;
  *(a3 + 6) = v13;
  v10 = v12 + v13;
LABEL_7:

  return v3(a1, v7, v8, v9, v10);
}

uint64_t sub_100253388(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
    goto LABEL_4;
  }

  v5 = *(a3 + 5);
  v6 = *(a3 + 6);
  if ((v5 - v6) <= 2u)
  {
LABEL_4:
    v7 = 0;
    v8 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    goto LABEL_7;
  }

  if (*(a3 + 14) != 1)
  {
    v14 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_16;
  }

  if ((v5 - v6) <= 1)
  {
    v14 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1043, v14);
  }

  v10 = *a3;
  v11 = (*a3 + v6);
  v12 = *v11;
  v13 = v11[1];
  *(a3 + 6) = v6 + 2;
  if (v5 <= (v6 + 2))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1044, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v7 = v12 | (v13 << 8);
  *(a3 + 6) = v6 + 3;
  v8 = *(v10 + (v6 + 2));
LABEL_7:

  return v3(a1, v7, v8);
}

uint64_t sub_1002534B0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t *), uint64_t a3)
{
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v9 = 0;
  }

  else
  {
    v5 = *(a3 + 10);
    v6 = *(a3 + 12);
    v9 = 0;
    if ((v5 - v6) > 7u)
    {
      if (*(a3 + 14) == 1)
      {
        if ((v5 - v6) > 7)
        {
          v9 = *(*a3 + v6);
          *(a3 + 12) = v6 + 8;
          return a2(a1, &v9);
        }

        v8 = "ByteStream_NumReadBytesAvail((*pBs)) >= (sizeof(lmpFeatures))";
      }

      else
      {
        v8 = "((*pBs)).__RWFlag == BYTESTREAM_READ";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 681, v8);
    }
  }

  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 605;
  }

  return a2(a1, &v9);
}

uint64_t sub_1002535C0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
    goto LABEL_4;
  }

  v5 = *(a3 + 5);
  v6 = *(a3 + 6);
  if ((v5 - v6) <= 6u)
  {
LABEL_4:
    v7 = 0;
    v8 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    goto LABEL_7;
  }

  if (*(a3 + 14) != 1)
  {
    v14 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_16;
  }

  if (v5 - v6 <= 1)
  {
    v14 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_16:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1065, v14);
  }

  v10 = *a3;
  v11 = (*a3 + v6);
  v12 = *v11;
  v13 = v11[1];
  *(a3 + 6) = v6 + 2;
  if (v5 - (v6 + 2) <= 4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1067, "ByteStream_NumReadBytesAvail(*pBs) >= (5)");
  }

  v8 = v10 + (v6 + 2);
  v7 = v12 | (v13 << 8);
  *(a3 + 6) = v6 + 7;
LABEL_7:

  return v3(a1, v7, v8);
}

uint64_t sub_1002536EC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
    goto LABEL_4;
  }

  v5 = *(a3 + 12);
  if ((*(a3 + 10) - v5) <= 0xFu)
  {
LABEL_4:
    v6 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    goto LABEL_7;
  }

  if (*(a3 + 10) - v5 <= 15)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1021, "ByteStream_NumReadBytesAvail(*pBs) >= ((16))");
  }

  v6 = *a3 + v5;
  *(a3 + 12) = v5 + 16;
LABEL_7:

  return v3(a1, v6);
}

uint64_t sub_1002537B4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
    goto LABEL_4;
  }

  v5 = *(a3 + 12);
  if ((*(a3 + 10) - v5) <= 7u)
  {
LABEL_4:
    v6 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    goto LABEL_7;
  }

  if (*(a3 + 10) - v5 <= 7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 999, "ByteStream_NumReadBytesAvail(*pBs) >= ((8))");
  }

  v6 = *a3 + v5;
  *(a3 + 12) = v5 + 8;
LABEL_7:

  return v3(a1, v6);
}

uint64_t sub_10025387C(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t, uint64_t), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
    goto LABEL_4;
  }

  v5 = *(a3 + 5);
  v6 = *(a3 + 6);
  if ((v5 - v6) <= 3u)
  {
LABEL_4:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    goto LABEL_7;
  }

  if (*(a3 + 14) != 1)
  {
    v12 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_17;
  }

  if ((v5 - v6) <= 1)
  {
    v12 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_17:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1089, v12);
  }

  v11 = *a3;
  v7 = *(*a3 + v6);
  *(a3 + 6) = v6 + 2;
  if (v5 <= (v6 + 2))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1090, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  *(a3 + 6) = v6 + 3;
  if (v5 <= (v6 + 3))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1091, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v8 = *(v11 + (v6 + 2));
  *(a3 + 6) = v6 + 4;
  v9 = *(v11 + (v6 + 3));
LABEL_7:

  return v3(a1, v7, v8, v9);
}

void sub_1002539D4(unsigned int a1, void (*a2)(uint64_t, uint64_t, uint64_t, void *), uint64_t *a3)
{
  LODWORD(v5) = a1;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    if (v5)
    {
      v5 = v5;
    }

    else
    {
      v5 = 605;
    }

    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
      goto LABEL_35;
    }

    v6 = 0;
  }

  else
  {
    if (a1)
    {
      v7 = 1;
    }

    else
    {
      v7 = (*(a3 + 5) - *(a3 + 6)) >= 2u;
    }

    if (v7)
    {
      v5 = a1;
    }

    else
    {
      v5 = 605;
    }

    v6 = (*(a3 + 5) - *(a3 + 6));
  }

  v8 = *(a3 + 5);
  v9 = *(a3 + 6);
  if (v8 <= v9)
  {
LABEL_35:
    v18 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_36:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1112, v18);
  }

  if (*(a3 + 14) != 1)
  {
    v18 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_36;
  }

  v10 = *a3;
  *(a3 + 6) = v9 + 1;
  if (v8 <= v9 + 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1113, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v11 = *(v10 + v9);
  *(a3 + 6) = v9 + 2;
  v12 = *(v10 + v9 + 1);
  v13 = 2 * v12;
  v14 = sub_1001BBBD8(2 * v12, 0x1000040BDFB0063uLL);
  if (2 * v12 + 2 <= v6)
  {
    if (*(a3 + 14) == 1)
    {
      v15 = *a3;
      v16 = *(a3 + 6);
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
        v17 = 0;
      }

      else
      {
        v17 = *(a3 + 5) - v16;
      }

      if (v17 >= v13)
      {
        memmove(v14, (v15 + v16), 2 * v12);
        *(a3 + 6) += v13;
        goto LABEL_27;
      }

      v19 = "ByteStream_NumReadBytesAvail(*pBs) >= (sizeof(uint16_t) * param2)";
    }

    else
    {
      v19 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1122, v19);
  }

  if (v5)
  {
    v5 = v5;
  }

  else
  {
    v5 = 605;
  }

LABEL_27:
  a2(v5, v11, v12, v14);
  if (v14)
  {

    sub_10000C1E8(v14);
  }
}

uint64_t sub_100253C30(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
    goto LABEL_4;
  }

  v5 = *(a3 + 5);
  v6 = *(a3 + 6);
  if ((v5 - v6) <= 5u)
  {
LABEL_4:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if (a1)
    {
      a1 = a1;
    }

    else
    {
      a1 = 605;
    }

    goto LABEL_7;
  }

  if (*(a3 + 14) != 1)
  {
    v16 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_18;
  }

  if ((v5 - v6) <= 1)
  {
    v16 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_18:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1150, v16);
  }

  v12 = *a3;
  v7 = *(*a3 + v6);
  *(a3 + 6) = v6 + 2;
  if (v5 <= (v6 + 2))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1151, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  *(a3 + 6) = v6 + 3;
  if ((v5 - (v6 + 3)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1152, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v8 = *(v12 + (v6 + 2));
  v13 = (v12 + (v6 + 3));
  v14 = *v13;
  v15 = v13[1];
  *(a3 + 6) = v6 + 5;
  if (v5 <= (v6 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1153, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v9 = v14 | (v15 << 8);
  *(a3 + 6) = v6 + 6;
  v10 = *(v12 + (v6 + 5));
LABEL_7:

  return v3(a1, v7, v8, v9, v10);
}

uint64_t sub_100253DC8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
  }

  else
  {
    v5 = *(a3 + 5);
    v6 = *(a3 + 6);
    if (v5 != v6)
    {
      if (v5 > v6)
      {
        if (*(a3 + 14) == 1)
        {
          v9 = *a3;
          *(a3 + 6) = v6 + 1;
          v7 = *(v9 + v6);
          goto LABEL_7;
        }

        v10 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      }

      else
      {
        v10 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1173, v10);
    }
  }

  v7 = 0;
  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 605;
  }

LABEL_7:

  return v3(a1, v7);
}

uint64_t sub_100253EA4(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
  }

  else
  {
    v5 = *(a3 + 12);
    if ((*(a3 + 10) - v5) > 1u)
    {
      if (*(a3 + 14) == 1)
      {
        if (*(a3 + 10) - v5 > 1)
        {
          v6 = *(*a3 + *(a3 + 12));
          *(a3 + 12) = v5 + 2;
          goto LABEL_7;
        }

        v8 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
      }

      else
      {
        v8 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1193, v8);
    }
  }

  v6 = 0;
  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 605;
  }

LABEL_7:

  return v3(a1, v6);
}

uint64_t sub_100253F90(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v3 = a2;
  }

  else
  {
    v5 = *(a3 + 12);
    if ((*(a3 + 10) - v5) > 1u)
    {
      if (*(a3 + 14) == 1)
      {
        if (*(a3 + 10) - v5 > 1)
        {
          v6 = *(*a3 + *(a3 + 12));
          *(a3 + 12) = v5 + 2;
          goto LABEL_7;
        }

        v8 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
      }

      else
      {
        v8 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      }

      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1213, v8);
    }
  }

  v6 = 0;
  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 605;
  }

LABEL_7:

  return v3(a1, v6);
}

uint64_t sub_10025407C(uint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
  }

  else if ((*(a3 + 5) - *(a3 + 6)) > 4u)
  {
    goto LABEL_7;
  }

  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 605;
  }

LABEL_7:
  if (*(a3 + 14) != 1)
  {
    v15 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_19;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    goto LABEL_18;
  }

  v5 = *(a3 + 5);
  v6 = *(a3 + 6);
  if ((v5 - v6) <= 1)
  {
LABEL_18:
    v15 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_19:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1234, v15);
  }

  v7 = *a3;
  v8 = (*a3 + v6);
  v9 = *v8;
  v10 = v8[1];
  *(a3 + 6) = v6 + 2;
  if (v5 <= (v6 + 2))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1235, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  *(a3 + 6) = v6 + 3;
  if (v5 <= (v6 + 3))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1236, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v11 = *(v7 + (v6 + 2));
  *(a3 + 6) = v6 + 4;
  if (v5 <= (v6 + 4))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1237, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v12 = *(v7 + (v6 + 3));
  *(a3 + 6) = v6 + 5;
  v13 = *(v7 + (v6 + 4));

  return a2(a1, v9 | (v10 << 8), v11, v12, v13);
}

uint64_t sub_100254224(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, int, uint64_t), uint64_t *a3)
{
  v5 = a1;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    if (v5)
    {
      a1 = v5;
    }

    else
    {
      a1 = 605;
    }

    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_32:
      v34 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
      goto LABEL_34;
    }
  }

  else
  {
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = 605;
    }

    if ((*(a3 + 5) - *(a3 + 6)) <= 0x15u)
    {
      a1 = v6;
    }

    else
    {
      a1 = a1;
    }
  }

  v7 = *(a3 + 5);
  v8 = *(a3 + 6);
  if (v7 <= v8)
  {
    goto LABEL_32;
  }

  if (*(a3 + 14) != 1)
  {
    v34 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_34:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1273, v34);
  }

  v9 = *a3;
  v10 = v8 + 1;
  *(a3 + 6) = v8 + 1;
  if ((v7 - (v8 + 1)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1274, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v11 = *(v9 + v8);
  v12 = v9 + v10;
  v13 = *(v9 + v10);
  v14 = *(v12 + 1);
  *(a3 + 6) = v8 + 3;
  if (v7 <= (v8 + 3))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1275, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  *(a3 + 6) = v8 + 4;
  if (v7 <= (v8 + 4))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1276, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v15 = *(v9 + (v8 + 3));
  *(a3 + 6) = v8 + 5;
  if (v7 <= (v8 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1277, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v16 = *(v9 + (v8 + 4));
  *(a3 + 6) = v8 + 6;
  if (v7 <= (v8 + 6))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1278, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v17 = *(v9 + (v8 + 5));
  *(a3 + 6) = v8 + 7;
  if (v7 <= (v8 + 7))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1279, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v18 = *(v9 + (v8 + 6));
  *(a3 + 6) = v8 + 8;
  if (v7 <= (v8 + 8))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1280, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v19 = *(v9 + (v8 + 7));
  *(a3 + 6) = v8 + 9;
  if (v7 <= (v8 + 9))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1281, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v20 = *(v9 + (v8 + 8));
  *(a3 + 6) = v8 + 10;
  if (v7 <= (v8 + 10))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1282, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v21 = *(v9 + (v8 + 9));
  *(a3 + 6) = v8 + 11;
  if ((v7 - (v8 + 11)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1283, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v22 = *(v9 + (v8 + 10));
  *(a3 + 6) = v8 + 13;
  if ((v7 - (v8 + 13)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1284, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  *(a3 + 6) = v8 + 15;
  if ((v7 - (v8 + 15)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1285, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v23 = (v9 + (v8 + 15));
  v24 = *v23;
  v25 = v23[1];
  *(a3 + 6) = v8 + 17;
  if ((v7 - (v8 + 17)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1286, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v26 = (v9 + (v8 + 17));
  v27 = *v26;
  v28 = v26[1];
  *(a3 + 6) = v8 + 19;
  if ((v7 - (v8 + 19)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1287, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v29 = (v9 + (v8 + 19));
  v30 = *v29;
  v31 = v29[1];
  *(a3 + 6) = v8 + 21;
  if (v7 <= (v8 + 21))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1288, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  *(a3 + 6) = v8 + 22;
  if (v7 <= (v8 + 22))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1289, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v32 = *(v9 + (v8 + 21));
  *(a3 + 6) = v8 + 23;
  HIBYTE(v36) = *(v9 + (v8 + 22));
  BYTE6(v36) = v32;
  WORD2(v36) = v30 | (v31 << 8);
  WORD1(v36) = v27 | (v28 << 8);
  LOWORD(v36) = v24 | (v25 << 8);
  BYTE2(v35) = v22;
  BYTE1(v35) = v21;
  LOBYTE(v35) = v20;
  return a2(a1, v11, v13 | (v14 << 8), v15, v16, v17, v18, v19, v35, v36);
}

uint64_t sub_1002546B4(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *), uint64_t *a3)
{
  v5 = a1;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    if (v5)
    {
      a1 = v5;
    }

    else
    {
      a1 = 605;
    }

    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_7:
      v6 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_22:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 1310, v6);
    }
  }

  else
  {
    v7 = (*(a3 + 5) - *(a3 + 6));
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    if (a1)
    {
      v8 = a1;
    }

    else
    {
      v8 = 605;
    }

    if (v7 <= 0x48)
    {
      a1 = v8;
    }

    else
    {
      a1 = a1;
    }
  }

  v9 = 0;
  v10 = *(a3 + 5);
  v11 = *(a3 + 6);
  v12 = v10 >= v11;
  LODWORD(v13) = v10 - v11;
  if (v12)
  {
    v13 = v13;
  }

  else
  {
    v13 = 0;
  }

  do
  {
    if (v13 == v9)
    {
      goto LABEL_7;
    }

    if (*(a3 + 14) != 1)
    {
      v6 = "(*pBs).__RWFlag == BYTESTREAM_READ";
      goto LABEL_22;
    }

    v14 = *a3;
    *(a3 + 6) = v11 + v9 + 1;
    *(&v16 + v9) = *(v11 + v9 + v14);
    ++v9;
  }

  while (v9 != 72);
  return a2(a1, &v16);
}

uint64_t sub_10025482C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, __int128 *), uint64_t *a3)
{
  v5 = a1;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_13:
      v14 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
      goto LABEL_15;
    }
  }

  else
  {
    v6 = (*(a3 + 5) - *(a3 + 6));
    v15 = 0u;
    v16 = 0u;
    if (v6 >= 0xFA)
    {
      v7 = 0;
      if (a1)
      {
        v5 = a1;
      }

      else
      {
        v5 = 608;
      }

      return a2(v5, v7, &v15);
    }
  }

  v8 = *(a3 + 5);
  v9 = *(a3 + 6);
  if (v8 <= v9)
  {
    goto LABEL_13;
  }

  if (*(a3 + 14) != 1)
  {
    v14 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_15:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 708, v14);
  }

  v10 = *a3;
  v11 = v9 + 1;
  *(a3 + 6) = v9 + 1;
  if ((v8 - (v9 + 1)) <= 0x1F)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 709, "ByteStream_NumReadBytesAvail((*pBs)) >= (sizeof(leFeatures))");
  }

  v7 = *(v10 + v9);
  v12 = *(v10 + v11 + 16);
  v15 = *(v10 + v11);
  v16 = v12;
  *(a3 + 6) = v9 + 33;
  return a2(v5, v7, &v15);
}

uint64_t sub_1002549A4(__int128 **a1, _BYTE *a2, uint64_t *a3)
{
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    return 605;
  }

  v4 = *(a3 + 6);
  if ((*(a3 + 5) - v4) < 3u)
  {
    return 605;
  }

  if (*(a3 + 14) != 1)
  {
    v12 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    goto LABEL_15;
  }

  if (*(a3 + 5) - v4 <= 1)
  {
    v12 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_15:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 224, v12);
  }

  v8 = *(*a3 + *(a3 + 6));
  *(a3 + 6) = v4 + 2;
  v9 = sub_1000ABB80(v8);
  *a1 = v9;
  if (v9)
  {
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    }

    else
    {
      v10 = *(a3 + 6);
      if (*(a3 + 5) > v10)
      {
        if (*(a3 + 14) == 1)
        {
          result = 0;
          v11 = *a3;
          *(a3 + 6) = v10 + 1;
          *a2 = *(v11 + v10);
          return result;
        }

        v13 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 229, v13);
      }
    }

    v13 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_19;
  }

  return 601;
}

uint64_t sub_100254AFC(uint64_t a1)
{
  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/pcie_mempool.c", 47, "pool");
  }

  pthread_mutex_lock(a1);
  sub_100304AF8("_block_size: %u", *(a1 + 120));
  sub_100304AF8("_num_blocks_total: %u", *(a1 + 128));
  sub_100304AF8("_num_blocks_free: %u", *(a1 + 132));
  sub_100304AF8("_num_blocks_allocated: %u", *(a1 + 136));
  sub_100304AF8("_node_pool: %p", *(a1 + 176));
  sub_100304AF8("_start_addr: %p", *(a1 + 184));
  sub_100304AF8("_end_addr: %p", *(a1 + 192));
  if (*(a1 + 160))
  {
    sub_100304AF8("[START] FREE LIST");
    for (i = *(a1 + 160); i; i = *(i + 8))
    {
      sub_100304AF8("%p", *i);
    }

    sub_100304AF8("[END] FREE LIST");
  }

  else
  {
    sub_100304AF8("Free List Empty");
  }

  if (*(a1 + 144))
  {
    sub_100304AF8("[START] ALLOCATED LIST");
    for (j = *(a1 + 144); j; j = *(j + 8))
    {
      sub_100304AF8("%p", *j);
    }

    sub_100304AF8("[END] ALLOCATED LIST");
  }

  else
  {
    sub_100304AF8("Allocated List Empty");
  }

  return pthread_mutex_unlock(a1);
}

void sub_100254CB4(pthread_mutex_t *a1)
{
  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/pcie_mempool.c", 64, "pool");
  }

  if (*&a1[2].__opaque[8])
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/pcie_mempool.c", 67, "STAILQ_EMPTY(&pool->_allocated_list)");
  }

  pthread_mutex_destroy(a1);
  pthread_cond_destroy(&a1[1]);
  v2 = *&a1[2].__opaque[40];
  if (v2)
  {
    free(v2);
    *&a1[2].__opaque[40] = 0;
  }

  v3 = *&a1[2].__opaque[48];
  if (v3)
  {
    free(v3);
  }

  free(a1);
}

pthread_mutex_t *sub_100254D50(unsigned int a1, size_t a2)
{
  if (!a1 || !a2)
  {
    sub_100304AF8("invalid input parameters, num_blocks_total: %u, block_size: %u", a1, a2);
    return 0;
  }

  v4 = malloc_type_calloc(1uLL, 0xC8uLL, 0x10A004052A8F8F9uLL);
  v5 = v4;
  if (!v4)
  {
    sub_100304AF8("failed to allocate memory for pool struct");
    return v5;
  }

  pthread_mutex_init(v4, 0);
  pthread_cond_init(&v5[1], 0);
  *&v5[2].__opaque[8] = 0;
  *&v5[1].__opaque[40] = 0;
  *&v5[1].__opaque[48] = a2;
  LODWORD(v5[2].__sig) = a1;
  HIDWORD(v5[2].__sig) = a1;
  *v5[2].__opaque = 0;
  *&v5[2].__opaque[16] = v5 + 144;
  *&v5[2].__opaque[24] = 0;
  *&v5[2].__opaque[32] = v5 + 160;
  v6 = malloc_type_calloc(a1, a2, 0x75E06217uLL);
  *&v5[2].__opaque[48] = v6;
  if (!v6)
  {
    sub_100304AF8("failed to allocate memory for pool");
LABEL_13:
    sub_100254CB4(v5);
    return 0;
  }

  sig_low = LODWORD(v5[2].__sig);
  v5[3].__sig = &v6[*&v5[1].__opaque[48] * sig_low];
  v8 = malloc_type_calloc(sig_low, 0x10uLL, 0xA0040BD48D6D6uLL);
  *&v5[2].__opaque[40] = v8;
  if (!v8)
  {
    sub_100304AF8("failed to allocate memory for mem_addr_node_pool");
    goto LABEL_13;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *&v5[1].__opaque[48];
  v13 = *&v5[2].__opaque[32];
  do
  {
    v14 = *&v5[2].__opaque[40];
    v15 = v14 + 16 * v11;
    v16 = (v14 + v10);
    *v16 = *&v5[2].__opaque[48] + v9;
    v16[1] = 0;
    *v13 = v16;
    v13 = (v15 + 8);
    *&v5[2].__opaque[32] = v16 + 1;
    ++v11;
    v10 += 16;
    v9 += v12;
  }

  while (16 * a1 != v10);
  return v5;
}

uint64_t sub_100254EE8(uint64_t a1)
{
  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/pcie_mempool.c", 140, "pool");
  }

  pthread_mutex_lock(a1);
  *(a1 + 112) = 1;
  if (*(a1 + 144))
  {
    v2 = pthread_cond_wait((a1 + 64), a1);
    if (v2 || *(a1 + 144))
    {
      v4 = v2;
      pthread_mutex_unlock(a1);
      sub_100304AF8("retval: %d", v4);
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/pcie_mempool.c", 150, "false");
    }
  }

  return pthread_mutex_unlock(a1);
}

uint64_t sub_100254FA0(uint64_t a1)
{
  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/pcie_mempool.c", 158, "pool");
  }

  pthread_mutex_lock(a1);
  v2 = (a1 + 160);
  v3 = *(a1 + 160);
  if (v3)
  {
    v4 = v3[1];
    *v2 = v4;
    if (!v4)
    {
      *(a1 + 168) = v2;
    }

    v3[1] = 0;
    **(a1 + 152) = v3;
    *(a1 + 152) = v3 + 1;
    *(a1 + 132) = vadd_s32(*(a1 + 132), 0x1FFFFFFFFLL);
    pthread_mutex_unlock(a1);
    return *v3;
  }

  else
  {
    pthread_mutex_unlock(a1);
    sub_100304AF8("free list empty. Cannot allocate memory from pool");
    return 0;
  }
}

uint64_t sub_10025504C(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/pcie_mempool.c", 201, "pool");
  }

  pthread_mutex_lock(a1);
  v4 = *(a1 + 184);
  if (v4 > a2 || *(a1 + 192) <= a2)
  {
    sub_100304AF8("%p not from pool");
    goto LABEL_20;
  }

  v5 = (*(a1 + 176) + ((((a2 - v4) / *(a1 + 120)) << 32) >> 28));
  if (*v5 != a2)
  {
    sub_100304AF8("node->addr: %p, addr: %p");
LABEL_20:
    pthread_mutex_unlock(a1);
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/pcie_mempool.c", 209, "false");
  }

  v6 = (a1 + 144);
  v7 = *(a1 + 144);
  if (v7 == v5)
  {
    v12 = v7[1];
    *v6 = v12;
    v10 = (a1 + 144);
    if (v12)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  do
  {
    v8 = v7;
    v7 = v7[1];
  }

  while (v7 != v5);
  v9 = v7[1];
  v8[1] = v9;
  v10 = v8 + 1;
  if (!v9)
  {
LABEL_8:
    *(a1 + 152) = v10;
  }

LABEL_9:
  v5[1] = 0;
  **(a1 + 168) = v5;
  *(a1 + 168) = v5 + 1;
  *(a1 + 132) = vadd_s32(*(a1 + 132), 0xFFFFFFFF00000001);
  if (*(a1 + 112) && !*v6)
  {
    pthread_cond_signal((a1 + 64));
  }

  return pthread_mutex_unlock(a1);
}

uint64_t sub_1002551AC()
{
  byte_100BCE141 = 1;
  byte_100B5F8B8 = 1;
  dword_100B5F8BC = 0;
  dword_100B5F8C0 = 0;
  qword_100B5F8C8 = sub_1001BBBD8(48 * *(qword_100BCE0B8 + 2), 0x1092040EDF68BB8uLL);
  if (qword_100B5F8C8)
  {
    return 0;
  }

  else
  {
    return 106;
  }
}

void sub_100255224()
{
  if (dword_100B5F8BC)
  {
    v0 = 0;
    v1 = 0;
    do
    {
      v2 = qword_100B5F8C8;
      if (*(qword_100B5F8C8 + v0 + 20) != 3125)
      {
        sub_100256FE0(129, qword_100B5F8C8 + v0 + 16);
      }

      sub_10000C1E8(*(v2 + v0));
      ++v1;
      v0 += 48;
    }

    while (v1 < dword_100B5F8BC);
    v3 = dword_100B5F8BC == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!byte_100BCE141)
  {
    byte_100BCE141 = 1;
  }

  if ((byte_100B5F8B8 & 1) == 0)
  {
    byte_100B5F8B8 = 1;
  }

  if (!v3)
  {
    dword_100B5F8BC = 0;
  }
}

void sub_1002552E4()
{
  byte_100B5F8B8 = 1;
  if (dword_100B5F8BC)
  {
    v0 = byte_100BCE141 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    sub_10001FA7C();
  }
}

uint64_t sub_100255320()
{
  if (off_100B5F8D0)
  {
    return off_100B5F8D0();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100255338()
{
  sub_100304AF8("HciCmdQueue:\n");
  sub_100304AF8("   %d cmds queued: \n", dword_100B5F8BC);
  if (dword_100B5F8BC)
  {
    v0 = 0;
    v1 = 20;
    do
    {
      sub_100304AF8("   cmd opcode: 0x%4x\n", *(qword_100B5F8C8 + v1));
      ++v0;
      v1 += 48;
    }

    while (v0 < dword_100B5F8BC);
  }

  sub_100304AF8("   queueHighWaterMark = %d\n", dword_100B5F8C0);
  if (byte_100B5F8B8)
  {
    v2 = "TRUE";
  }

  else
  {
    v2 = "FALSE";
  }

  sub_100304AF8("   Command Transport Ready = %s\n", v2);
  return sub_100304AF8("   OI_HCIFlow_NumCmdPktsAllowed = %d\n", byte_100BCE141);
}

uint64_t sub_100255434()
{
  dword_100B5FBC8 = 0;
  qword_100B5FBD0 = 0;
  dword_100B5FBD8 = 0;
  qword_100B5FBE0 = 0;
  dword_100B5FBE8 = 0;
  qword_100B5FBF0 = 0;
  dword_100B5FBF8 = 0;
  qword_100B5FC00 = 0;
  dword_100B5FC08 = 0;
  qword_100B5FC10 = 0;
  dword_100B5FC18 = 0;
  qword_100B5FC20 = 0;
  xmmword_100B5F8D8 = 0u;
  *&word_100B5F8E8 = 0u;
  xmmword_100B5F8F8 = 0u;
  unk_100B5F908 = 0u;
  xmmword_100B5F918 = 0u;
  unk_100B5F928 = 0u;
  xmmword_100B5F938 = 0u;
  unk_100B5F948 = 0u;
  xmmword_100B5F958 = 0u;
  unk_100B5F968 = 0u;
  xmmword_100B5F978 = 0u;
  unk_100B5F988 = 0u;
  xmmword_100B5F998 = 0u;
  unk_100B5F9A8 = 0u;
  xmmword_100B5F9B8 = 0u;
  unk_100B5F9C8 = 0u;
  xmmword_100B5F9D8 = 0u;
  unk_100B5F9E8 = 0u;
  xmmword_100B5F9F8 = 0u;
  unk_100B5FA08 = 0u;
  xmmword_100B5FA18 = 0u;
  unk_100B5FA28 = 0u;
  xmmword_100B5FA38 = 0u;
  qword_100B5FA48 = 0;
  BYTE2(xmmword_100B5F8D8) = 2;
  v0 = dword_100B52360 + 1;
  DWORD1(xmmword_100B5F8D8) = dword_100B52360;
  xmmword_100B5FA50 = 0u;
  *&word_100B5FA60 = 0u;
  xmmword_100B5FA70 = 0u;
  unk_100B5FA80 = 0u;
  xmmword_100B5FA90 = 0u;
  unk_100B5FAA0 = 0u;
  xmmword_100B5FAB0 = 0u;
  unk_100B5FAC0 = 0u;
  xmmword_100B5FAD0 = 0u;
  unk_100B5FAE0 = 0u;
  xmmword_100B5FAF0 = 0u;
  unk_100B5FB00 = 0u;
  xmmword_100B5FB10 = 0u;
  unk_100B5FB20 = 0u;
  xmmword_100B5FB30 = 0u;
  unk_100B5FB40 = 0u;
  xmmword_100B5FB50 = 0u;
  unk_100B5FB60 = 0u;
  xmmword_100B5FB70 = 0u;
  unk_100B5FB80 = 0u;
  xmmword_100B5FB90 = 0u;
  unk_100B5FBA0 = 0u;
  xmmword_100B5FBB0 = 0u;
  qword_100B5FBC0 = 0;
  BYTE2(xmmword_100B5FA50) = 3;
  dword_100B52360 += 2;
  DWORD1(xmmword_100B5FA50) = v0;
  return 0;
}

uint64_t sub_100255544(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = qword_100B5FBD0;
    if (qword_100B5FBD0)
    {
      while (v2 != a1)
      {
        v2 = *(v2 + 40);
        if (!v2)
        {
          v1 = 0;
          return v1 & 1;
        }
      }

      v1 = *(a1 + 304);
    }
  }

  return v1 & 1;
}

uint64_t sub_10025557C(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = qword_100B5FBD0;
    if (qword_100B5FBD0)
    {
      while (v2 != a1)
      {
        v2 = *(v2 + 40);
        if (!v2)
        {
          return 0;
        }
      }

      return *(a1 + 153);
    }
  }

  return v1;
}