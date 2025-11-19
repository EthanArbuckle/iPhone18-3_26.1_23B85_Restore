void sub_10000C700(int a1)
{
  if (byte_10004A3A0 == 1)
  {
    untimeout(sub_10000C8A4, &lcp_fsm + 80 * a1);
    byte_10004A3A0 = 0;
  }
}

void sub_10000C754(int a1)
{
  dword_10004A39C = 0;
  dword_10004A980 = 0;
  byte_10004A3A0 = 0;
  ppp_auxiliary_probe_init();
  if (lcp_echo_interval)
  {

    sub_10000C8C0(&lcp_fsm + 20 * a1);
  }
}

void sub_10000C7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 12);
  if ((v8 & 0x100) != 0)
  {
    *(a1 + 12) = v8 & 0xFFFFFEFF;
    fsm_lowerup(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void lcp_sprotrej(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = (&lcp_fsm + 80 * a1);
  v10 = *(v9 + 16) + 1;
  *(v9 + 16) = v10;
  fsm_sdata(v9, 8, v10, (a2 + 2), (a3 - 2), a6, a7, a8, a9);
}

void lcp_echo_restart(int a1)
{
  v1 = (&lcp_fsm + 80 * a1);
  dword_10004A39C = 0;
  if (byte_10004A3A0 == 1)
  {
    untimeout(sub_10000C8A4, v1);
    byte_10004A3A0 = 0;
  }

  if (lcp_echo_interval)
  {

    sub_10000C8C0(v1);
  }
}

uint64_t sub_10000C8A4()
{
  if (byte_10004A3A0 == 1)
  {
    byte_10004A3A0 = 0;
    return sub_10000C8C0();
  }

  return result;
}

void sub_10000C8C0(int *a1)
{
  v11 = 0;
  if (ppp_variable_echo_is_off() && get_idle_time(0, &v11) && HIDWORD(v11) < lcp_echo_interval)
  {
    dword_10004A39C = 0;
    ppp_auxiliary_probe_stop();
  }

  else
  {
    if (lcp_echo_fails)
    {
      v9 = dword_10004A39C;
      if (dword_10004A39C >= lcp_echo_fails)
      {
        sub_10000EEE4(a1, v2, v3, v4, v5, v6, v7, v8);
        v9 = 0;
        dword_10004A39C = 0;
      }

      ppp_auxiliary_probe_check(v9, sub_10000EEE4, a1, v4, v5, v6, v7, v8);
    }

    if (a1[2] == 9)
    {
      __src = bswap32(lcp_gotoptions[17 * *a1 + 8]);
      v10 = dword_10004A980++;
      fsm_sdata(a1, 9, v10, &__src, 4, v6, v7, v8, v11);
      ++dword_10004A39C;
    }
  }

  if (a1[2] == 9)
  {
    if (byte_10004A3A0 == 1)
    {
      warning("assertion lcp_echo_timer_running==0 failed", v2, v3, v4, v5, v6, v7, v8, v11);
    }

    timeout(sub_10000C8A4);
    byte_10004A3A0 = 1;
  }
}

uint64_t sub_10000CA24()
{
  dword_100047950 = 0;
  xmmword_100047930 = 0u;
  unk_100047940 = 0u;
  lcp_wantoptions = 0u;
  unk_100047920 = 0u;
  lcp_allowoptions = 0u;
  *&dword_1000479A8 = 0u;
  xmmword_1000479B8 = 0u;
  unk_1000479C8 = 0u;
  dword_1000479D8 = 0;
  return 1;
}

uint64_t sub_10000CA58(unsigned int *a1)
{
  v2 = *a1;
  v3 = &lcp_wantoptions + 68 * v2;
  v4 = &lcp_gotoptions + 68 * v2;
  *(v3 + 8) = magic();
  *(v3 + 9) = 0;
  *(v4 + 16) = *(v3 + 16);
  v5 = *(v3 + 1);
  *v4 = *v3;
  *(v4 + 1) = v5;
  v6 = *(v3 + 3);
  *(v4 + 2) = *(v3 + 2);
  *(v4 + 3) = v6;
  if (!multilink)
  {
    *(v4 + 13) = 0;
    v4[15] = 0;
  }

  if (noendpoint)
  {
    *(&lcp_allowoptions + 68 * v2 + 15) = 0;
  }

  peer_mru[*a1] = 1500;
  v7 = *a1;

  return auth_reset(v7);
}

uint64_t sub_10000CB20(int *a1)
{
  v1 = &lcp_gotoptions + 68 * *a1;
  v2 = v1[3];
  if (v1[3])
  {
    v2 = 4 * (*(v1 + 4) != 1500);
  }

  v3 = v1[4];
  if (v1[4])
  {
    if (*(v1 + 7) == -1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 6;
    }
  }

  v4 = v1[7];
  if (v1[7])
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = v1[6];
    if (v1[6])
    {
      v6 = 0;
      v5 = 5;
    }

    else
    {
      v6 = 4 * (v1[5] != 0);
    }
  }

  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  v12 = v1[13];
  v13 = v1[14];
  if (v1[15])
  {
    v14 = v1[45] + 3;
  }

  else
  {
    v14 = 0;
  }

  v15 = v3 + v2 + 4 * (v4 != 0) + v5 + v6 + 8 * (v7 != 0);
  if (v8)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  if (v9)
  {
    v17 = 6;
  }

  else
  {
    v17 = 0;
  }

  return v15 + v16 + v17 + 2 * (v10 != 0) + 2 * (v11 != 0) + 4 * (v12 != 0) + 2 * (v13 != 0) + v14;
}

void sub_10000CC4C(int *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = &lcp_gotoptions + 68 * *a1;
  v10 = a2;
  if (v9[3])
  {
    v10 = a2;
    if (*(v9 + 4) != 1500)
    {
      *a2 = 1025;
      *(a2 + 2) = BYTE1(*(v9 + 4));
      v10 = a2 + 4;
      *(a2 + 3) = *(v9 + 4);
    }
  }

  if (v9[4] && *(v9 + 7) != -1)
  {
    *v10 = 1538;
    *(v10 + 2) = v9[31];
    *(v10 + 3) = *(v9 + 15);
    *(v10 + 4) = BYTE1(*(v9 + 7));
    *(v10 + 5) = *(v9 + 7);
    v10 += 6;
  }

  if (!v9[7] || (*v10 = 667026435, v10 += 4, v11 = v10, !v9[7]))
  {
    if (v9[6])
    {
      *v10 = 599917827;
      v12 = v9[24];
      if ((v12 & 2) != 0)
      {
        LOBYTE(v13) = 0x80;
      }

      else
      {
        v13 = (v12 << 29 >> 31) & 5;
      }

      if (v12)
      {
        v14 = -127;
      }

      else
      {
        v14 = v13;
      }

      v11 = v10 + 5;
      *(v10 + 4) = v14;
      if (v9[7] || v9[6])
      {
        goto LABEL_22;
      }
    }

    else
    {
      v11 = v10;
    }

    if (v9[5])
    {
      *v11 = 599786499;
      v11 += 4;
    }
  }

LABEL_22:
  if (v9[11])
  {
    *v11 = 633341956;
    *(v11 + 4) = v9[43];
    *(v11 + 5) = *(v9 + 21);
    *(v11 + 6) = BYTE1(*(v9 + 10));
    *(v11 + 7) = *(v9 + 10);
    v11 += 8;
  }

  if (v9[12])
  {
    *v11 = 781;
    *(v11 + 2) = 6;
    v11 += 3;
  }

  if (v9[8])
  {
    *v11 = 1541;
    *(v11 + 2) = v9[35];
    *(v11 + 3) = *(v9 + 17);
    *(v11 + 4) = BYTE1(*(v9 + 8));
    *(v11 + 5) = *(v9 + 8);
    v11 += 6;
  }

  if (v9[9])
  {
    *v11 = 519;
    v11 += 2;
  }

  if (v9[10])
  {
    *v11 = 520;
    v11 += 2;
  }

  if (v9[13])
  {
    *v11 = 1041;
    *(v11 + 2) = BYTE1(*(v9 + 5));
    *(v11 + 3) = *(v9 + 5);
    v11 += 4;
  }

  if (v9[14])
  {
    *v11 = 530;
    v11 += 2;
  }

  if (v9[15])
  {
    *v11 = 19;
    *(v11 + 1) = v9[45] + 3;
    v15 = v11 + 3;
    *(v11 + 2) = v9[44];
    if (v9[45])
    {
      v16 = 0;
      do
      {
        *(v15 + v16) = v9[v16 + 46];
        ++v16;
      }

      while (v16 < v9[45]);
      v11 = v15 + v16;
    }

    else
    {
      v11 += 3;
    }
  }

  if (v11 - a2 != *a3)
  {
    error("Bug in lcp_addci: wrong length", a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t sub_10000CED4(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = &lcp_gotoptions + 68 * *a1;
  if (v8[3])
  {
    v9 = *(v8 + 4);
    if (v9 != 1500)
    {
      v11 = __OFSUB__(a3, 4);
      a3 = (a3 - 4);
      if (a3 < 0 != v11 || *(a2 + 1) != 4 || *a2 != 1 || v9 != bswap32(*(a2 + 2)) >> 16)
      {
        goto LABEL_89;
      }

      a2 += 4;
    }
  }

  if (v8[4])
  {
    v10 = *(v8 + 7);
    if (v10 != -1)
    {
      v11 = __OFSUB__(a3, 6);
      a3 = (a3 - 6);
      if (a3 < 0 != v11 || *(a2 + 1) != 6 || *a2 != 2 || bswap32(*(a2 + 2)) != v10)
      {
        goto LABEL_89;
      }

      a2 += 6;
    }
  }

  if (v8[7])
  {
    v11 = __OFSUB__(a3, 4);
    a3 = (a3 - 4);
    if (a3 < 0 != v11 || *(a2 + 1) != 4 || *a2 != 3)
    {
      goto LABEL_89;
    }

    v12 = bswap32(*(a2 + 2));
    v13 = 49703;
LABEL_15:
    if (v13 != HIWORD(v12))
    {
      goto LABEL_89;
    }

    a2 += 4;
    goto LABEL_39;
  }

  if (v8[6])
  {
    v11 = __OFSUB__(a3, 5);
    a3 = (a3 - 5);
    if (a3 < 0 != v11 || *(a2 + 1) != 5 || *a2 != 3 || bswap32(*(a2 + 2)) >> 16 != 49699)
    {
      goto LABEL_89;
    }

    v14 = v8[24];
    if (v14)
    {
      v15 = 129;
    }

    else
    {
      v15 = (v14 & 2) != 0 ? 128 : (v14 << 29 >> 31) & 5;
    }

    if (v15 != *(a2 + 4))
    {
      goto LABEL_89;
    }

    a2 += 5;
  }

  else if (v8[5])
  {
    v11 = __OFSUB__(a3, 4);
    a3 = (a3 - 4);
    if (a3 < 0 != v11 || *(a2 + 1) != 4 || *a2 != 3)
    {
      goto LABEL_89;
    }

    v12 = bswap32(*(a2 + 2));
    v13 = 49187;
    goto LABEL_15;
  }

LABEL_39:
  if (v8[11])
  {
    v11 = __OFSUB__(a3, 8);
    a3 = (a3 - 8);
    if (a3 < 0 != v11 || *(a2 + 1) != 8 || *a2 != 4 || bswap32(*(a2 + 2)) >> 16 != 49189 || bswap32(*(a2 + 4)) != *(v8 + 10))
    {
      goto LABEL_89;
    }

    a2 += 8;
  }

  if (v8[12])
  {
    v11 = __OFSUB__(a3, 3);
    a3 = (a3 - 3);
    if (a3 < 0 != v11 || *(a2 + 1) != 3 || *a2 != 13 || *(a2 + 2) != 6)
    {
      goto LABEL_89;
    }

    a2 += 3;
  }

  if (v8[8])
  {
    v11 = __OFSUB__(a3, 6);
    a3 = (a3 - 6);
    if (a3 < 0 != v11 || *(a2 + 1) != 6 || *a2 != 5 || bswap32(*(a2 + 2)) != *(v8 + 8))
    {
      goto LABEL_89;
    }

    a2 += 6;
  }

  if (v8[9])
  {
    v11 = __OFSUB__(a3, 2);
    a3 = (a3 - 2);
    if (a3 < 0 != v11 || *(a2 + 1) != 2 || *a2 != 7)
    {
      goto LABEL_89;
    }

    a2 += 2;
  }

  if (v8[10])
  {
    v11 = __OFSUB__(a3, 2);
    a3 = (a3 - 2);
    if (a3 < 0 != v11 || *(a2 + 1) != 2 || *a2 != 8)
    {
      goto LABEL_89;
    }

    a2 += 2;
  }

  if (v8[13])
  {
    v11 = __OFSUB__(a3, 4);
    a3 = (a3 - 4);
    if (a3 < 0 != v11 || *(a2 + 1) != 4 || *a2 != 17 || *(v8 + 5) != bswap32(*(a2 + 2)) >> 16)
    {
      goto LABEL_89;
    }

    a2 += 4;
  }

  if (v8[14])
  {
    v11 = __OFSUB__(a3, 2);
    a3 = (a3 - 2);
    if (a3 < 0 != v11 || *(a2 + 1) != 2 || *a2 != 18)
    {
      goto LABEL_89;
    }

    a2 += 2;
  }

  if (v8[15])
  {
    v16 = v8[45];
    a3 = (a3 - (v16 + 3));
    if (a3 < 0 || v16 + 3 != *(a2 + 1) || *a2 != 19 || *(a2 + 2) != v8[44])
    {
      goto LABEL_89;
    }

    if (v8[45])
    {
      v17 = (a2 + 3);
      v18 = (v8 + 46);
      do
      {
        v19 = *v18++;
        if (*v17 != v19)
        {
          goto LABEL_89;
        }

        ++v17;
      }

      while (--v16);
    }
  }

  if (!a3)
  {
    return 1;
  }

LABEL_89:
  if (debug)
  {
    dbglog("lcp_acki: received bad Ack!", a2, a3, a4, a5, a6, a7, a8, vars0);
  }

  return 0;
}

uint64_t sub_10000D2A4(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v6 = a1;
  v7 = &lcp_gotoptions + 68 * *a1;
  v96 = *v7;
  v97 = v7[2];
  v8 = &lcp_wantoptions + 68 * *a1;
  v9 = v7[3];
  v10 = v7[4];
  LOBYTE(v11) = v7[5];
  LOBYTE(v12) = v7[6];
  v13 = v7[7];
  v83 = v7[9];
  v84 = v7[10];
  v85 = v7[12];
  v77 = v7[13];
  v78 = v7[8];
  v88 = v7[14];
  v14 = *(v7 + 5);
  v92 = v7[11];
  v93 = *(v7 + 4);
  v80 = v7[24];
  v81 = v7[15];
  v95 = v7[27];
  v94 = *(v7 + 25);
  v15 = *(v7 + 7);
  v82 = *(v7 + 8);
  v76 = *(v7 + 9);
  v79 = *(v7 + 10);
  v99 = *(v7 + 60);
  v98 = *(v7 + 44);
  if (!v7[3])
  {
    goto LABEL_12;
  }

  v87 = 1;
  if (a3 < 4 || v93 == 1500)
  {
    goto LABEL_13;
  }

  if (*(a2 + 1) != 4 || *a2 != 1)
  {
LABEL_12:
    v87 = 1;
    goto LABEL_13;
  }

  v87 = 0;
  v5 = a2 + 4;
  v16 = __rev16(*(a2 + 2));
  v17 = v16 < 0x5DD || v16 <= *(v8 + 4);
  v18 = *(v7 + 4);
  if (v17)
  {
    v18 = v16;
  }

  v93 = v18;
  a3 = (a3 - 4);
LABEL_13:
  if (!v7[4])
  {
    goto LABEL_19;
  }

  v86 = 1;
  if (v15 != -1 && a3 >= 6)
  {
    if (*(v5 + 1) == 6 && *v5 == 2)
    {
      v86 = 0;
      v19 = *(v5 + 2);
      v5 += 6;
      v15 |= bswap32(v19);
      a3 = (a3 - 6);
      goto LABEL_20;
    }

LABEL_19:
    v86 = 1;
  }

LABEL_20:
  if (v7[6] || v7[5])
  {
    if (a3 < 4)
    {
      LODWORD(v24) = 0;
      a5 = 0;
      v20 = 0;
      v89 = 0;
      goto LABEL_83;
    }
  }

  else
  {
    v20 = 0;
    if (!v7[7] || a3 <= 3)
    {
      v21 = v7[11];
      v22 = a3;
      v23 = v5;
      a5 = 0;
      LODWORD(v24) = 0;
      LOBYTE(v11) = 0;
      LOBYTE(v12) = 0;
      goto LABEL_75;
    }
  }

  if (*v5 != 3)
  {
    v20 = 0;
    a5 = 0;
    LODWORD(v24) = 0;
    v21 = v7[11];
    v22 = a3;
    v23 = v5;
    goto LABEL_75;
  }

  v24 = v7[6];
  v12 = v7[5];
  v20 = 0;
  v11 = *(v5 + 1);
  if (v11 < 4 || (v22 = (a3 - v11), a3 < v11))
  {
    v21 = v7[11];
    v22 = a3;
    v23 = v5;
    a5 = 0;
    LOBYTE(v11) = v7[5];
    LOBYTE(v12) = v7[6];
    LODWORD(v24) = 0;
    goto LABEL_75;
  }

  v23 = (v5 + 4);
  v25 = __rev16(*(v5 + 2));
  if (v11 == 4 && v25 == 49187)
  {
    if (v7[7])
    {
      LOBYTE(v13) = 0;
      v21 = v7[11];
      LOBYTE(v11) = v7[5];
      v20 = v11;
      v12 = v7[6];
      LODWORD(v24) = 1;
LABEL_74:
      a5 = v12;
      goto LABEL_75;
    }

    if (v7[6])
    {
      v11 = v7[5];
      LODWORD(v24) = 0;
      LOBYTE(v12) = 0;
      LOBYTE(v13) = 0;
LABEL_53:
      a5 = 1;
      v21 = v7[11];
      v20 = v11;
      goto LABEL_75;
    }

LABEL_64:
    if (debug)
    {
      dbglog("lcp_nakci: received bad Nak!", a2, a3, v20, a5, v10, v9, v14, v66);
    }

    return 0;
  }

  if (v11 != 5 || v25 != 49699)
  {
    v74 = v13 != 0;
    v28 = v7[7];
    if (v11 == 4)
    {
      v28 = v7[7];
      if (v25 == 49703)
      {
        v28 = v7[7];
        if (v7[7])
        {
          v90 = v7[4];
          v68 = &lcp_wantoptions + 68 * *a1;
          v29 = v7[3];
          v72 = v15;
          v30 = *(v7 + 5);
          dbglog("Unexpected Conf-Nak for EAP", a2, a3, 0, a5, v10, v9, v14, v66);
          v14 = v30;
          v15 = v72;
          v9 = v29;
          v8 = v68;
          v6 = a1;
          v10 = v90;
          v28 = v7[7];
        }
      }
    }

    if (v28)
    {
      LOBYTE(v13) = 0;
      v31 = v12;
      v32 = v24;
    }

    else
    {
      if (v7[6])
      {
        v31 = v12;
      }

      else
      {
        v31 = 0;
      }

      if (v7[6])
      {
        v32 = 0;
      }

      else
      {
        v32 = v24;
      }
    }

    v23 = (v5 + v11);
    v21 = v7[11];
    v20 = v12;
    a5 = v24;
    LOBYTE(v11) = v31;
    LOBYTE(v12) = v32;
    LODWORD(v24) = v74;
    goto LABEL_75;
  }

  v23 = (v5 + 5);
  v26 = *(v5 + 4);
  v11 = v7[5];
  if (v7[7])
  {
    v12 = v7[6];
    if (v26 == 5)
    {
      LOBYTE(v13) = 0;
      v34 = v7[24];
      v35 = (v80 & 4) == 0;
      v36 = 4;
    }

    else
    {
      if (v26 != 128)
      {
        if (v26 == 129)
        {
          LOBYTE(v13) = 0;
          v27 = v7[24];
          if (v80)
          {
            v27 = 1;
          }

          LOBYTE(v80) = v27;
        }

        else
        {
          LOBYTE(v13) = 0;
        }

LABEL_73:
        LODWORD(v24) = 1;
        v21 = v7[11];
        v20 = v7[5];
        goto LABEL_74;
      }

      LOBYTE(v13) = 0;
      v34 = v7[24];
      v35 = (v80 & 2) == 0;
      v36 = 2;
    }

    if (!v35)
    {
      v34 = v36;
    }

    LOBYTE(v80) = v34;
    goto LABEL_73;
  }

  LOBYTE(v12) = v7[6];
  if (!v12)
  {
    a5 = 0;
    LOBYTE(v13) = 0;
    v21 = v7[11];
    v20 = v7[5];
    LOBYTE(v11) = 0;
    goto LABEL_75;
  }

  if ((v80 & 6) == 0 && (v80 & 1) == v26)
  {
    goto LABEL_64;
  }

  if (v26 == 5)
  {
    if ((v80 & 4) == 0)
    {
      goto LABEL_231;
    }

    LODWORD(v24) = 0;
    LOBYTE(v13) = 0;
    v65 = 4;
LABEL_235:
    LOBYTE(v80) = v65;
    goto LABEL_53;
  }

  if (v26 == 128)
  {
    if ((v80 & 2) == 0)
    {
      goto LABEL_231;
    }

    LODWORD(v24) = 0;
    LOBYTE(v13) = 0;
    v65 = 2;
    goto LABEL_235;
  }

  if (v26 != 129 || (v80 & 1) == 0)
  {
LABEL_231:
    LODWORD(v24) = 0;
    LOBYTE(v13) = 0;
    v80 &= v80 - 1;
    if (!v80)
    {
      LOBYTE(v12) = 0;
    }

    goto LABEL_53;
  }

  LODWORD(v24) = 0;
  LOBYTE(v13) = 0;
  a5 = 1;
  v21 = v7[11];
  v20 = v7[5];
  LOBYTE(v80) = 1;
LABEL_75:
  v89 = 0;
  if (v21)
  {
    a3 = (v22 - 8);
    if (v22 >= 8)
    {
      if (v23[1] == 8 && *v23 == 4)
      {
        v5 = (v23 + 8);
        if (bswap32(*(v23 + 1)) >> 16 == 49189)
        {
          v79 = bswap32(*(v23 + 1));
        }

        else
        {
          v92 = 0;
        }

        v89 = 1;
        goto LABEL_83;
      }

      v89 = 0;
    }
  }

  a3 = v22;
  v5 = v23;
LABEL_83:
  if (v7[12] && a3 >= 3 && *(v5 + 1) == 3 && *v5 == 13)
  {
    v85 = 0;
    v5 += 3;
    a3 = (a3 - 3);
  }

  v37 = 0;
  v38 = 1;
  if (v7[8])
  {
    v39 = (a3 - 6);
    if (a3 >= 6)
    {
      if (*(v5 + 1) == 6 && *v5 == 5)
      {
        v5 += 6;
        v73 = v15;
        v75 = v24;
        v40 = v10;
        v67 = v12;
        v69 = v11;
        v12 = v9;
        v71 = v6;
        v41 = v14;
        v11 = v8;
        v24 = v20;
        v42 = a5;
        v43 = magic();
        a5 = v42;
        v37 = 1;
        v20 = v24;
        v8 = v11;
        v14 = v41;
        v6 = v71;
        v9 = v12;
        LOBYTE(v12) = v67;
        LOBYTE(v11) = v69;
        v10 = v40;
        v15 = v73;
        LODWORD(v24) = v75;
        v82 = v43;
        v38 = 0;
        a3 = v39;
      }

      else
      {
        v37 = 0;
        v38 = 1;
      }
    }
  }

  v44 = 0;
  if (v7[9] && a3 >= 2)
  {
    if (*(v5 + 1) == 2 && *v5 == 7)
    {
      v83 = 0;
      v5 += 2;
      v44 = 1;
      a3 = (a3 - 2);
    }

    else
    {
      v44 = 0;
    }
  }

  v45 = 0;
  if (v7[10] && a3 >= 2)
  {
    if (*(v5 + 1) == 2 && *v5 == 8)
    {
      v84 = 0;
      v5 += 2;
      v45 = 1;
      a3 = (a3 - 2);
    }

    else
    {
      v45 = 0;
    }
  }

  v46 = 0;
  if (v7[13] && a3 >= 4)
  {
    if (*(v5 + 1) == 4 && *v5 == 17)
    {
      v47 = *(v5 + 2);
      v5 += 4;
      v48 = __rev16(v47);
      if (v48 <= *(v8 + 5))
      {
        v14 = v48;
      }

      else
      {
        v14 = v14;
      }

      v46 = 1;
      a3 = (a3 - 4);
    }

    else
    {
      v46 = 0;
    }
  }

  v49 = 0;
  if (v7[14] && a3 >= 2)
  {
    if (*(v5 + 1) == 2 && *v5 == 18)
    {
      v88 = 0;
      v5 += 2;
      v49 = 1;
      a3 = (a3 - 2);
    }

    else
    {
      v49 = 0;
    }
  }

  if (v7[15] && a3 > 2)
  {
    if (*v5 != 19)
    {
      goto LABEL_128;
    }

    v50 = *(v5 + 1);
    if (v50 < 3)
    {
      goto LABEL_128;
    }

    a2 = a3 - v50;
    if (a3 < v50)
    {
      goto LABEL_128;
    }

    v81 = 0;
    v5 += *(v5 + 1);
    a3 = a3 - v50;
  }

  if (a3 >= 2)
  {
LABEL_128:
    v51 = v20;
    a2 = a5;
    do
    {
      v20 = *(v5 + 1);
      if (v20 < 2)
      {
        goto LABEL_64;
      }

      a3 = (a3 - v20);
      if (a3 < 0)
      {
        goto LABEL_64;
      }

      a5 = *v5;
      if (*v5 > 6u)
      {
        if (*v5 <= 0x10u)
        {
          if (a5 == 7)
          {
            if (v20 == 2)
            {
              a5 = v44;
            }

            else
            {
              a5 = 1;
            }

            if (v7[9])
            {
              goto LABEL_64;
            }

            goto LABEL_188;
          }

          if (a5 == 8)
          {
            if (v20 == 2)
            {
              a5 = v45;
            }

            else
            {
              a5 = 1;
            }

            if (v7[10])
            {
              goto LABEL_64;
            }

            goto LABEL_188;
          }
        }

        else
        {
          if (a5 == 17)
          {
            if (v20 == 4)
            {
              a5 = v46;
            }

            else
            {
              a5 = 1;
            }

            if (v7[13])
            {
              goto LABEL_64;
            }

            goto LABEL_188;
          }

          if (a5 == 18)
          {
            if (v20 == 2)
            {
              a5 = v49;
            }

            else
            {
              a5 = 1;
            }

            if (v7[14] || (a5 & 1) != 0)
            {
              goto LABEL_64;
            }

            v88 = 1;
          }

          else if (a5 == 19 && (v7[15] || v20 == 2))
          {
            goto LABEL_64;
          }
        }
      }

      else if (*v5 <= 2u)
      {
        if (a5 == 1)
        {
          if (v7[3])
          {
            if (v20 == 4 && *(v7 + 4) == 1500)
            {
              a5 = v87;
            }

            else
            {
              a5 = 0;
            }

            if ((a5 & 1) == 0)
            {
              goto LABEL_64;
            }
          }

          else
          {
            LODWORD(a5) = v87 ^ 1;
            if (v20 == 4)
            {
              a5 = a5;
            }

            else
            {
              a5 = 1;
            }

            if (a5)
            {
              goto LABEL_64;
            }
          }

          v54 = __rev16(*(v5 + 2));
          if (v54 < 0x5DC)
          {
            v9 = 1;
          }

          else
          {
            v9 = v9;
          }

          v55 = v93;
          if (v54 < 0x5DC)
          {
            v55 = v54;
          }

          v93 = v55;
        }

        else if (a5 == 2)
        {
          if (v7[4])
          {
            v52 = v20 == 6 && *(v7 + 7) == -1;
          }

          else
          {
            v52 = v20 == 6;
          }

          a5 = v52 ? v86 : 0;
          if ((a5 & 1) == 0)
          {
            goto LABEL_64;
          }
        }
      }

      else
      {
        switch(a5)
        {
          case 3:
            a5 = v7[6] | a2;
            if (a5)
            {
              goto LABEL_64;
            }

            a5 = v7[5];
            if (v7[5] || v51)
            {
              goto LABEL_64;
            }

            a5 = (v7[7] != 0) | v24;
LABEL_188:
            if (a5)
            {
              goto LABEL_64;
            }

            break;
          case 4:
            if (v7[11])
            {
              a5 = 1;
            }

            else
            {
              a5 = v89;
            }

            if (v20 != 8)
            {
              goto LABEL_64;
            }

            goto LABEL_188;
          case 5:
            if (v7[8])
            {
              a5 = 1;
            }

            else
            {
              a5 = v37;
            }

            if (v20 != 6)
            {
              goto LABEL_64;
            }

            goto LABEL_188;
        }
      }

      a5 = v5 + 2;
      v20 += v5 + 2;
      v5 = v20 - 2;
    }

    while (a3 > 1);
  }

  if (v6[2] == 9)
  {
    return 1;
  }

  if (v38)
  {
    v56 = 0;
  }

  else
  {
    v56 = v76 + 1;
    if (v76 + 1 >= lcp_loopbackfail)
    {
      v91 = v10;
      v57 = v9;
      v58 = v11;
      LODWORD(v11) = v14;
      notice("Serial line is looped back.", a2, a3, v20, a5, v10, v9, v14, v66);
      lcp_close(*v6, "Loopback detected", v59, v60, v61, v62, v63, v64);
      LODWORD(v14) = v11;
      LOBYTE(v11) = v58;
      LOBYTE(v9) = v57;
      LOBYTE(v10) = v91;
      *status = 17;
    }
  }

  *v7 = v96;
  v7[2] = v97;
  v7[3] = v9;
  v7[4] = v10;
  v7[5] = v11;
  v7[6] = v12;
  v7[7] = v13;
  v7[8] = v78;
  v7[9] = v83;
  v7[10] = v84;
  v7[11] = v92;
  v7[12] = v85;
  v7[13] = v77;
  v7[14] = v88;
  v7[15] = v81;
  *(v7 + 4) = v93;
  *(v7 + 5) = v14;
  v7[24] = v80;
  v7[27] = v95;
  *(v7 + 25) = v94;
  *(v7 + 7) = v15;
  *(v7 + 8) = v82;
  *(v7 + 9) = v56;
  *(v7 + 10) = v79;
  *(v7 + 60) = v99;
  result = 1;
  *(v7 + 44) = v98;
  return result;
}

uint64_t sub_10000DDC0(int *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = &lcp_gotoptions + 68 * *a1;
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  v8 = v3[7];
  v9 = v3[8];
  v10 = v3[9];
  v11 = v3[10];
  v12 = v3[11];
  v13 = v3[12];
  v14 = v3[13];
  v15 = v3[14];
  v16 = v3[15];
  v17 = (a3 - 4);
  if (a3 >= 4 && v3[3] && a2[1] == 4 && *a2 == 1)
  {
    a3 = *(v3 + 4);
    if (a3 != bswap32(*(a2 + 1)) >> 16)
    {
      goto LABEL_118;
    }

    v4 = 0;
    a2 += 4;
    a3 = v17;
  }

  if (v3[4])
  {
    v18 = a3 < 6;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v17 = a2[1];
    if (v17 == 6)
    {
      v17 = *a2;
      if (v17 == 2)
      {
        v17 = *(v3 + 7);
        if (bswap32(*(a2 + 2)) != v17)
        {
          goto LABEL_118;
        }

        v5 = 0;
        a2 += 6;
        a3 = (a3 - 6);
      }
    }
  }

  if (v3[7])
  {
    v19 = a3 < 4;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    if (v3[7])
    {
      goto LABEL_47;
    }

    if (v3[6])
    {
      v20 = a3 < 5;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      if (!v3[6])
      {
        if (v3[5])
        {
          v21 = a3 < 4;
        }

        else
        {
          v21 = 1;
        }

        if (!v21 && a2[1] == 4 && *a2 == 3)
        {
          v6 = bswap32(*(a2 + 1));
          v7 = 49187;
          if (WORD1(v6) != 49187)
          {
            goto LABEL_118;
          }

          v6 = 0;
          v7 = 0;
          goto LABEL_38;
        }

        v7 = 0;
      }
    }

    else if (a2[1] == 5)
    {
      v8 = *a2;
      if (v8 == 3)
      {
        v6 = bswap32(*(a2 + 1));
        v7 = 49699;
        if (WORD1(v6) != 49699)
        {
          goto LABEL_118;
        }

        v6 = a2[4];
        v22 = v3[24];
        if (v22)
        {
          v7 = 129;
        }

        else if ((v22 & 2) != 0)
        {
          v7 = 128;
        }

        else
        {
          v8 = 5;
          v7 = (v22 << 29 >> 31) & 5;
        }

        if (v7 != v6)
        {
          goto LABEL_118;
        }

        v6 = 0;
        v7 = 0;
        v8 = 0;
        a3 = (a3 - 5);
        a2 += 5;
        goto LABEL_47;
      }
    }

    v8 = 0;
    goto LABEL_47;
  }

  v17 = a2[1];
  if (v17 == 4)
  {
    v17 = *a2;
    if (v17 == 3)
    {
      v8 = bswap32(*(a2 + 1));
      v17 = 49703;
      if (WORD1(v8) != 49703)
      {
        goto LABEL_118;
      }

LABEL_38:
      v8 = 0;
      a2 += 4;
      a3 = (a3 - 4);
    }
  }

LABEL_47:
  if (v3[11])
  {
    v23 = a3 < 8;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v17 = a2[1];
    if (v17 == 8)
    {
      v17 = *a2;
      if (v17 == 4)
      {
        v17 = 49189;
        if (bswap32(*(a2 + 1)) >> 16 != 49189)
        {
          goto LABEL_118;
        }

        v17 = *(v3 + 10);
        if (bswap32(*(a2 + 1)) != v17)
        {
          goto LABEL_118;
        }

        v12 = 0;
        a2 += 8;
        a3 = (a3 - 8);
      }
    }
  }

  if (v3[12])
  {
    v24 = a3 < 3;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    v17 = a2[1];
    if (v17 == 3)
    {
      v17 = *a2;
      if (v17 == 13)
      {
        if (a2[2] != 6)
        {
          goto LABEL_118;
        }

        v13 = 0;
        a2 += 3;
        a3 = (a3 - 3);
      }
    }
  }

  if (v3[8])
  {
    v25 = a3 < 6;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v17 = a2[1];
    if (v17 == 6)
    {
      v17 = *a2;
      if (v17 == 5)
      {
        v17 = *(v3 + 8);
        if (bswap32(*(a2 + 2)) != v17)
        {
          goto LABEL_118;
        }

        v9 = 0;
        a2 += 6;
        a3 = (a3 - 6);
      }
    }
  }

  if (v3[9])
  {
    v26 = a3 < 2;
  }

  else
  {
    v26 = 1;
  }

  if (!v26)
  {
    v17 = a2[1];
    if (v17 == 2)
    {
      v17 = *a2;
      if (v17 == 7)
      {
        v10 = 0;
        a3 = (a3 - 2);
        a2 += 2;
      }
    }
  }

  if (v3[10])
  {
    v27 = a3 < 2;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    v17 = a2[1];
    if (v17 == 2)
    {
      v17 = *a2;
      if (v17 == 8)
      {
        v11 = 0;
        a3 = (a3 - 2);
        a2 += 2;
      }
    }
  }

  if (v3[13])
  {
    v28 = a3 < 4;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    v17 = a2[1];
    if (v17 == 4)
    {
      v17 = *a2;
      if (v17 == 17)
      {
        v17 = *(v3 + 5);
        if (v17 != bswap32(*(a2 + 1)) >> 16)
        {
          goto LABEL_118;
        }

        v14 = 0;
        a2 += 4;
        a3 = (a3 - 4);
      }
    }
  }

  if (v3[14])
  {
    v17 = (a3 - 2);
    if (a3 >= 2 && a2[1] == 2 && *a2 == 18)
    {
      v15 = 0;
      a2 += 2;
      a3 = (a3 - 2);
    }
  }

  if (v3[15] && (v29 = v3[45], v17 = (a3 - (v29 + 3)), a3 >= v29 + 3))
  {
    a3 = *a2;
    if (a3 == 19)
    {
      a3 = a2[1];
      if (v29 + 3 == a3)
      {
        a3 = a2[2];
        v16 = v3[44];
        if (a3 == v16)
        {
          if (v3[45])
          {
            a2 += 3;
            a3 = (v3 + 46);
            while (1)
            {
              v16 = *a2;
              v31 = *a3++;
              if (v16 != v31)
              {
                break;
              }

              ++a2;
              if (!--v29)
              {
                goto LABEL_111;
              }
            }
          }

          else
          {
LABEL_111:
            v16 = 0;
            a3 = v17;
            if (!v17)
            {
LABEL_102:
              if (a1[2] == 9)
              {
                return 1;
              }

              v3[3] = v4;
              v3[4] = v5;
              v3[5] = v6;
              v3[6] = v7;
              v3[7] = v8;
              v3[8] = v9;
              v3[9] = v10;
              v3[10] = v11;
              v3[11] = v12;
              v3[12] = v13;
              v3[13] = v14;
              v3[14] = v15;
              result = 1;
              v3[15] = v16;
              return result;
            }
          }
        }
      }
    }
  }

  else if (!a3)
  {
    goto LABEL_102;
  }

LABEL_118:
  if (debug)
  {
    dbglog("lcp_rejci: received bad Reject!", a2, a3, v6, v16, v7, v8, v17, v32);
  }

  return 0;
}

uint64_t sub_10000E260(int *a1, char *__dst, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a4;
  v8 = __dst;
  v50 = &lcp_gotoptions + 68 * *a1;
  v9 = &lcp_hisoptions + 68 * *a1;
  v10 = &lcp_allowoptions + 68 * *a1;
  v11 = *a3;
  *(v9 + 16) = 0;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v49 = &unk_10004A3A1;
  v12 = 2;
  v13 = __dst;
LABEL_2:
  v14 = multilink;
  while (1)
  {
    v15 = v13;
    if (!v11)
    {
      break;
    }

    if (v11 < 2 || ((v16 = v13[1], v16 >= 2) ? (v17 = v11 >= v16) : (v17 = 0), !v17))
    {
      if (debug)
      {
        dbglog("lcp_reqci: bad CI length!", __dst, a3, a4, a5, a6, a7, a8, v45);
      }

      LODWORD(v16) = v11;
      v11 = 0;
      goto LABEL_98;
    }

    v18 = *v13;
    v11 -= v16;
    v13 += v16;
    if (*v15 > 6u)
    {
      if (v18 <= 16)
      {
        if (v18 == 7)
        {
          if (v16 != 2 || !v10[9])
          {
            goto LABEL_98;
          }

          v9[9] = 1;
        }

        else
        {
          if (v18 != 8)
          {
LABEL_102:
            if (debug)
            {
              dbglog("lcp_reqci: rcvd unknown option %d", __dst, a3, a4, a5, a6, a7, a8, *v15);
            }

            goto LABEL_98;
          }

          if (v16 != 2 || !v10[10])
          {
            goto LABEL_98;
          }

          v9[10] = 1;
        }
      }

      else
      {
        switch(v18)
        {
          case 17:
            if (v16 != 4 || !v10[13] || !v14)
            {
              goto LABEL_98;
            }

            v26 = __rev16(*(v15 + 1));
            v9[13] = 1;
            *(v9 + 5) = v26;
            break;
          case 18:
            if (v16 != 2 || !v10[14] || !v14)
            {
              goto LABEL_98;
            }

            v9[14] = 1;
            break;
          case 19:
            if (v16 > 0x17 || v16 == 2 || !v10[15])
            {
              goto LABEL_98;
            }

            v20 = v15[2];
            v9[15] = 1;
            v9[44] = v20;
            v9[45] = v16 - 3;
            memcpy(v9 + 46, v15 + 3, (v16 - 3));
            break;
          default:
            goto LABEL_102;
        }
      }
    }

    else if (v18 <= 2)
    {
      if (v18 == 1)
      {
        if (v16 != 4 || !v10[3])
        {
          goto LABEL_98;
        }

        v27 = __rev16(*(v15 + 1));
        if (v27 <= 0x7F)
        {
          *v49 = -2147482623;
          v33 = v49 + 4;
          goto LABEL_134;
        }

        v9[3] = 1;
        *(v9 + 4) = v27;
      }

      else
      {
        if (v18 != 2)
        {
          goto LABEL_102;
        }

        if (v16 != 6 || !v10[4])
        {
          goto LABEL_98;
        }

        v21 = v15[4];
        v22 = (v15[2] << 16) | (v15[3] << 8) | v21;
        v23 = v15[5];
        v24 = v23 | (v22 << 8);
        if ((*(v10 + 7) & ~v24) != 0)
        {
          v32 = v22 << 8;
          *v49 = 1538;
          v49[2] = (*(v10 + 7) | v32) >> 24;
          v49[3] = (*(v10 + 7) | v32) >> 16;
          v49[4] = v21 | BYTE1(*(v10 + 7));
          v49[5] = v23 | *(v10 + 7);
          v33 = v49 + 6;
          goto LABEL_134;
        }

        v9[4] = 1;
        *(v9 + 7) = v24;
      }
    }

    else
    {
      switch(v18)
      {
        case 3:
          if (v16 < 4 || !v10[5] && !v10[6] && !v10[7])
          {
            v31 = "No auth is possible";
            goto LABEL_112;
          }

          v25 = __rev16(*(v15 + 1));
          switch(v25)
          {
            case 0xC227u:
              if (v9[6] || v16 != 4 || v9[5])
              {
                if (debug)
                {
                  v31 = "lcp_reqci: rcvd AUTHTYPE EAP, rejecting...";
LABEL_112:
                  dbglog(v31, __dst, a3, a4, a5, a6, a7, a8, v45);
                }

LABEL_98:
                if (v15 != v8)
                {
                  memcpy(v8, v15, v16);
                }

                v8 += v16;
                v12 = 4;
                goto LABEL_2;
              }

              if (!v10[7])
              {
                v35 = v49;
                *v49 = 3;
                v33 = v49 + 4;
                if (v10[6])
                {
LABEL_121:
                  *(v35 + 1) = -15867;
                  v35[3] = 35;
                  goto LABEL_122;
                }

                *(v49 + 1) = -16380;
                v36 = 35;
LABEL_131:
                v35[3] = v36;
                goto LABEL_134;
              }

              v9[7] = 1;
              break;
            case 0xC223u:
              if (v9[5] || v16 != 5 || v9[7])
              {
                if (debug)
                {
                  v31 = "lcp_reqci: rcvd AUTHTYPE CHAP, rejecting...";
                  goto LABEL_112;
                }

                goto LABEL_98;
              }

              if (!v10[6])
              {
                *v49 = 1027;
                v33 = v49 + 4;
                if (v10[7])
                {
                  v39 = 10178;
                }

                else
                {
                  v39 = 9152;
                }

                *(v49 + 1) = v39;
LABEL_134:
                v49 = v33;
                if (!v46)
                {
                  goto LABEL_135;
                }

                goto LABEL_98;
              }

              v29 = v15[4];
              if (v29 == 5)
              {
                if ((v10[24] & 4) == 0)
                {
                  goto LABEL_114;
                }

                v30 = 4;
              }

              else if (v29 == 128)
              {
                if ((v10[24] & 2) == 0)
                {
                  goto LABEL_114;
                }

                v30 = 2;
              }

              else
              {
                if (v29 != 129 || (v10[24] & 1) == 0)
                {
LABEL_114:
                  *v49 = 599917827;
LABEL_122:
                  v37 = v10[24];
                  if (v37)
                  {
                    LOBYTE(v38) = -127;
                  }

                  else if ((v37 & 2) != 0)
                  {
                    LOBYTE(v38) = 0x80;
                  }

                  else
                  {
                    v38 = (v37 << 29 >> 31) & 5;
                  }

                  v49[4] = v38;
                  v33 = v49 + 5;
                  goto LABEL_134;
                }

                v30 = 1;
              }

              v9[24] = v30;
              v9[6] = 1;
              break;
            case 0xC023u:
              if (v9[6] || v16 != 4 || v9[7])
              {
                if (debug)
                {
                  v31 = "lcp_reqci: rcvd AUTHTYPE PAP, rejecting...";
                  goto LABEL_112;
                }

                goto LABEL_98;
              }

              if (!v10[5])
              {
                v35 = v49;
                *v49 = 3;
                v33 = v49 + 4;
                if (!v10[7])
                {
                  goto LABEL_121;
                }

LABEL_119:
                *(v35 + 1) = -15868;
                v36 = 39;
                goto LABEL_131;
              }

              v9[5] = 1;
              break;
            default:
              v35 = v49;
              *v49 = 3;
              v33 = v49 + 4;
              if (!v10[7])
              {
                if (!v10[6])
                {
                  *(v49 + 1) = -16380;
                  v49[3] = 35;
                  goto LABEL_134;
                }

                *(v49 + 1) = -15867;
                v49[3] = 35;
                goto LABEL_122;
              }

              goto LABEL_119;
          }

          break;
        case 4:
          if (v16 != 8 || !v10[11])
          {
            goto LABEL_98;
          }

          if (bswap32(*(v15 + 1)) >> 16 != 49189)
          {
            *v49 = 633341956;
            v49[4] = v10[43];
            v49[5] = *(v10 + 21);
            v49[6] = BYTE1(*(v10 + 10));
            v49[7] = *(v10 + 10);
            v33 = v49 + 8;
            goto LABEL_134;
          }

          break;
        case 5:
          if (v10[8])
          {
            if (v16 != 6)
            {
              goto LABEL_98;
            }

            v19 = v50[8] == 0;
          }

          else
          {
            if (v16 != 6 || !v50[8])
            {
              goto LABEL_98;
            }

            v19 = 0;
          }

          v28 = bswap32(*(v15 + 2));
          if (!v19 && v28 == *(v50 + 8))
          {
            v34 = magic();
            *v49 = 1541;
            v49[2] = HIBYTE(v34);
            v49[3] = BYTE2(v34);
            v49[4] = BYTE1(v34);
            v49[5] = v34;
            v49 += 6;
LABEL_135:
            v40 = v12 == 4;
            v12 = 4;
            if (!v40)
            {
              v12 = 3;
            }

            goto LABEL_2;
          }

          v9[8] = 1;
          *(v9 + 8) = v28;
          break;
        default:
          goto LABEL_102;
      }
    }

    if (v12 == 2)
    {
      goto LABEL_2;
    }
  }

  if (v12 == 4)
  {
    v42 = v8 - __dst;
  }

  else
  {
    if (v12 == 3)
    {
      v41 = v49 - &unk_10004A3A1;
      *a3 = v41;
      memcpy(__dst, &unk_10004A3A1, v41);
      goto LABEL_144;
    }

    v42 = v13 - __dst;
  }

  *a3 = v42;
LABEL_144:
  if (debug)
  {
    v43 = "REJ";
    if (v12 == 3)
    {
      v43 = "NAK";
    }

    if (v12 == 2)
    {
      v43 = "ACK";
    }

    dbglog("lcp_reqci: returning CONF%s.", __dst, a3, a4, a5, a6, a7, a8, v43);
  }

  return v12;
}

void sub_10000EA20(int *a1)
{
  v2 = *a1;
  v3 = &lcp_hisoptions + 68 * v2;
  v4 = &lcp_gotoptions[17 * v2];
  if (!*(v4 + 8))
  {
    v4[8] = 0;
  }

  if (!v3[8])
  {
    *(v3 + 8) = 0;
  }

  if (v3[3])
  {
    v5 = *(v3 + 4);
  }

  else
  {
    v5 = 1500;
  }

  if (*(v4 + 3))
  {
    v6 = *(&lcp_wantoptions + 17 * v2 + 4);
    v7 = v4[4];
    if (v6 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = 1500;
  }

  if (v5 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v9 >= *(&lcp_allowoptions + 17 * v2 + 4))
  {
    v10 = *(&lcp_allowoptions + 17 * v2 + 4);
  }

  else
  {
    v10 = v9;
  }

  netif_set_mtu(v2, v10);
  if (v3[4])
  {
    v11 = *(v3 + 7);
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  ppp_send_config(*a1, v5, v11, v3[9], v3[10]);
  if (lax_recv)
  {
    v12 = 0;
  }

  else if (*(v4 + 4))
  {
    v12 = v4[7];
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  ppp_recv_config(*a1, v8, v12, *(v4 + 9), *(v4 + 10));
  if (v3[3])
  {
    peer_mru[*a1] = *(v3 + 4);
  }

  notify(lcp_up_notify, 0);
  sub_10000C754(*a1);
  v20 = *a1;

  link_established(v20, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_10000EBA0(unsigned int *a1)
{
  v2 = *a1;
  v3 = &lcp_gotoptions[17 * v2];
  if (byte_10004A3A0 == 1)
  {
    untimeout(sub_10000C8A4, &lcp_fsm + 80 * v2);
    byte_10004A3A0 = 0;
    v2 = *a1;
  }

  link_down(v2);
  notify(lcp_down_notify, 0);
  v4 = 0xFFFFFFFFLL;
  ppp_send_config(*a1, 1500, 0xFFFFFFFFLL, 0, 0);
  if (*(v3 + 4))
  {
    v4 = v3[7];
  }

  result = ppp_recv_config(*a1, 1500, v4, *(v3 + 9), *(v3 + 10));
  peer_mru[*a1] = 1500;
  return result;
}

uint64_t sub_10000EC88(unsigned int *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (a2 <= 9)
  {
    if (a2 == 8)
    {
      if (a5 > 1)
      {
        if (a1[2] == 9)
        {
          v11 = __rev16(*a4);
          v12 = protocols;
          if (protocols)
          {
            v13 = &off_100043898;
            while (*v12 != v11 || !*(v12 + 80))
            {
              v14 = *v13++;
              v12 = v14;
              if (!v14)
              {
                goto LABEL_26;
              }
            }

            (*(v12 + 3))(*a1);
          }

          else
          {
LABEL_26:
            warning("Protocol-Reject for unsupported protocol 0x%x", a2, a3, a4, a5, a6, a7, a8, v11);
          }

          return 1;
        }

        if (!debug)
        {
          return 1;
        }

        v17 = a1[2];
        v9 = "Protocol-Reject discarded: LCP in state %d";
      }

      else
      {
        if (!debug)
        {
          return 1;
        }

        v9 = "lcp_rprotrej: Rcvd short Protocol-Reject packet!";
      }

      dbglog(v9, a2, a3, a4, a5, a6, a7, a8, v17);
      return 1;
    }

    if (a2 == 9)
    {
      if (a1[2] == 9)
      {
        *a4 = HIBYTE(lcp_gotoptions[17 * *a1 + 8]);
        *(a4 + 1) = HIWORD(lcp_gotoptions[17 * *a1 + 8]);
        *(a4 + 2) = BYTE1(lcp_gotoptions[17 * *a1 + 8]);
        *(a4 + 3) = lcp_gotoptions[17 * *a1 + 8];
        fsm_sdata(a1, 10, a3, a4, a5, a6, a7, a8, v17);
      }

      return 1;
    }
  }

  else
  {
    switch(a2)
    {
      case 0xA:
        if (a5 <= 3)
        {
          dbglog("lcp: received short Echo-Reply, length %d", a2, a3, a4, a5, a6, a7, a8, a5);
          return 1;
        }

        v10 = &lcp_gotoptions[17 * *a1];
        if (!*(v10 + 8) || bswap32(*a4) != v10[8])
        {
          dword_10004A39C = 0;
          ppp_variable_echo_stop(a1, a2, a3, a4, a5, a6, a7, a8);
          ppp_auxiliary_probe_stop();
          return 1;
        }

        goto LABEL_33;
      case 0xB:
        return 1;
      case 0xD:
        if (a1[2] == 9)
        {
          if (a5 <= 7)
          {
            dbglog("lcp: received short Time-remaining, length %d", a2, a3, a4, a5, a6, a7, a8, a5);
            return 1;
          }

          v15 = &lcp_gotoptions[17 * *a1];
          if (!*(v15 + 8) || bswap32(*a4) != v15[8])
          {
            v18[0] = bswap32(*(a4 + 1));
            v18[1] = a4 + 4;
            v18[2] = (a5 - 8);
            notify_with_ptr(lcp_timeremaining_notify, v18);
            return 1;
          }

LABEL_33:
          warning("appear to have received our own echo-reply!", a2, a3, a4, a5, a6, a7, a8, v17);
          return 1;
        }

        return 1;
    }
  }

  return v8;
}

void sub_10000EEE4(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[2] == 9)
  {
    info("No response to %d echo-requests", a2, a3, a4, a5, a6, a7, a8, dword_10004A39C);
    notice("Serial link appears to be disconnected.", v9, v10, v11, v12, v13, v14, v15, v22);
    lcp_close(*a1, "Peer not responding", v16, v17, v18, v19, v20, v21);
    *status = 15;
  }
}

uint64_t magic_init()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  get_host_seed();

  return getpid();
}

_BYTE *random_bytes(_BYTE *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = result;
    v3 = a2;
    do
    {
      result = arc4random();
      v4 = (result >> 24) & 0x7F;
      if (!v4)
      {
        LOBYTE(v4) = 1;
      }

      *v2++ = v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v217 = 0;
  openlog("pppd", 9, 120);
  setlogmask(127);
  qword_10004A988 = pthread_self();
  link_stats_valid = 0;
  new_phase(1);
  script_env = 0;
  if (gethostname(hostname, 0x100uLL) < 0)
  {
    option_error("Couldn't get hostname: %m", v5, v6, v7, v8, v9, v10, v11, v212);
    exit(1);
  }

  byte_100047C07 = 0;
  v12 = umask(0x1FFu);
  umask(v12 | 0x12);
  v13 = getuid();
  v14 = 0;
  uid = v13;
  privileged = v13 == 0;
  if (v13)
  {
    privileged = sys_check_controller();
    v14 = uid;
  }

  v213 = v14;
  slprintf(v216, 16, "%d");
  script_setenv("ORIG_UID", v216);
  ngroups = getgroups(16, groups);
  magic_init();
  v15 = protocols;
  if (protocols)
  {
    v16 = &off_100043898;
    do
    {
      (*(v15 + 1))(0);
      v17 = *v16++;
      v15 = v17;
    }

    while (v17);
  }

  tty_init();
  progname = *argv;
  sys_install_options();
  if (!options_from_file() || !options_from_user() || !parse_args(argc - 1, argv + 1) || controlled && !options_from_controller())
  {
    goto LABEL_14;
  }

  v18 = options_from_file();
  if (!v18)
  {
    goto LABEL_14;
  }

  devnam_fixed = 1;
  v19 = *(the_channel + 8);
  if (v19)
  {
    v19(v18);
  }

  if (debug)
  {
    setlogmask(255);
  }

  if (geteuid())
  {
    option_error("must be root to run %s, since it is not setuid-root", v20, v21, v22, v23, v24, v25, v26, *argv);
    exit(3);
  }

  if (!ppp_available())
  {
    option_error("%s", v27, v28, v29, v30, v31, v32, v33, no_ppp_msg[0]);
    exit(4);
  }

  v34 = check_options();
  v42 = sys_check_options(v34, v35, v36, v37, v38, v39, v40, v41);
  if (!v42)
  {
LABEL_14:
    exit(2);
  }

  v50 = auth_check_options(v42, v43, v44, v45, v46, v47, v48, v49);
  v51 = protocols;
  if (protocols)
  {
    v52 = &off_100043898;
    do
    {
      v53 = *(v51 + 14);
      if (v53)
      {
        v50 = v53(v50);
      }

      v54 = *v52++;
      v51 = v54;
    }

    while (v54);
  }

  v55 = *(the_channel + 16);
  if (v55)
  {
    v55(v50);
  }

  if (dump_options | dryrun)
  {
    init_pr_log(0, 6);
    print_options(pr_log, 0);
    end_pr_log();
    if (dryrun)
    {
      die(0);
    }
  }

  v56.n128_f64[0] = sys_init();
  v57 = system_inited_notify;
  if (system_inited_notify)
  {
    do
    {
      v58 = *v57;
      (*(v57 + 8))(*(v57 + 16), 0, v56);
      v57 = v58;
    }

    while (v58);
  }

  v59 = open("/dev/null", 2, v56.n128_f64[0], v213);
  dword_10004A990 = v59;
  if ((v59 & 0x80000000) != 0)
  {
    fatal();
  }

  if (v59 <= 2)
  {
    do
    {
      v59 = dup(v59);
      if ((v59 & 0x80000000) != 0)
      {
        fatal();
      }

      dword_10004A990 = v59;
    }

    while (v59 < 3);
  }

  if (!(nodetach | updetach))
  {
    detach();
  }

  v60 = getpwuid(uid);
  if (!v60 || (pw_name = v60->pw_name) == 0)
  {
    pw_name = "(unknown)";
  }

  sys_log(5, "pppd %s (Apple version %s) started by %s, uid %d", "2.4.2", "884", pw_name, uid);
  script_setenv("PPPLOGNAME", pw_name);
  if (devnam)
  {
    script_setenv("DEVICE", &devnam);
  }

  v214 = getpid();
  slprintf(v216, 16, "%d");
  script_setenv("PPPD_PID", v216);
  if (controlfd != -1)
  {
    add_fd(controlfd);
  }

  v62 = sub_100010610();
  byte_10004A994 = 0;
  if (demand)
  {
    dword_10004A998 = open_ppp_loopback();
    set_ifunit(1, v63, v64, v65, v66, v67, v68, v69);
    demand_conf();
    v70 = getpid();
    sub_100010AF0(v70);
  }

  v71 = &unk_100047000;
  if (!holdfirst)
  {
    do_callback = 0;
    goto LABEL_56;
  }

  need_holdoff = 1;
  while (1)
  {
    if (v71[794])
    {
      v62 = holdoff;
    }

    else
    {
      v62 = 0;
    }

    v217 = v62;
    if (holdoff_hook)
    {
      v62 = holdoff_hook();
      v217 = v62;
    }

    if (v62 >= 1)
    {
      new_phase(11);
      timeout(sub_100011174);
      got_sigterm = 0;
      got_sighup = 0;
      do
      {
        sub_100010BF8();
        if (kill_link)
        {
          v62 = new_phase(3);
        }
      }

      while (phase == 11);
      if (!persist)
      {
LABEL_284:
        v202 = dword_10004ADB8;
        if (dword_10004ADB8 >= 1)
        {
          do
          {
            if (debug)
            {
              dbglog("Waiting for %d child processes...", v75, v76, v77, v78, v79, v80, v81, v202);
              v210 = qword_10004ADC0;
              if (qword_10004ADC0)
              {
                do
                {
                  v215 = *v210;
                  dbglog("  script %s, pid %d", v203, v204, v205, v206, v207, v208, v209, *(v210 + 1));
                  v210 = *(v210 + 4);
                }

                while (v210);
              }
            }

            if ((sub_10001117C(1) & 0x80000000) != 0)
            {
              break;
            }

            v202 = dword_10004ADB8;
          }

          while (dword_10004ADB8 > 0);
        }

        die(*status);
      }
    }

LABEL_56:
    listen_time = 0;
    v71[794] = 1;
    dword_10004A99C = -1;
    *status = 0;
    devstatus = 0;
    ++unsuccess;
    v72 = do_callback;
    doing_callback = do_callback;
    do_callback = 0;
    if (demand)
    {
      v73 = v72 == 0;
    }

    else
    {
      v73 = 0;
    }

    if (v73)
    {
      new_phase(3);
      demand_unblock();
      add_fd(dword_10004A998);
      do
      {
        sub_100010BF8();
        if (kill_link)
        {
          v74 = persist == 0;
        }

        else
        {
          v74 = 0;
        }
      }

      while (!v74 && !get_loop_output());
      remove_fd(dword_10004A998);
      if (kill_link)
      {
        v82 = persist == 0;
      }

      else
      {
        v82 = 0;
      }

      if (v82)
      {
        goto LABEL_284;
      }

      demand_block();
      info("Starting link", v83, v84, v85, v86, v87, v88, v89, v214);
    }

    v90 = start_link_hook;
    if (!start_link_hook)
    {
      break;
    }

    if (*(the_channel + 96))
    {
      v91 = retry_pre_start_link_check;
      if (retry_pre_start_link_check < 0)
      {
        v91 = 0;
        retry_pre_start_link_check = 0;
      }

      v92 = v91 + 2;
      while (1)
      {
        v62 = (*(the_channel + 96))(v62);
        if (!v62)
        {
          break;
        }

        if (--v92 < 2)
        {
          v100 = 25;
          goto LABEL_141;
        }
      }

      v90 = start_link_hook;
    }

    v62 = v90(v62);
    v217 = v62;
    if (v62)
    {
      break;
    }

    v100 = 5;
LABEL_141:
    *status = v100;
LABEL_259:
    sys_statusnotify(v62, v93, v94, v95, v96, v97, v98, v99, v214);
    if (!demand)
    {
      if (byte_10004A9B8 && unlink(&byte_10004A9B8) < 0 && *__error() != 2)
      {
        warning("unable to delete pid file %s: %m", v75, v76, v77, v78, v79, v80, v81, &byte_10004A9B8);
      }

      byte_10004A9B8 = 0;
    }

    if (!persist)
    {
      goto LABEL_284;
    }

    if (maxfail >= 1 && unsuccess >= maxfail)
    {
      goto LABEL_284;
    }

    if (demand)
    {
      demand_discard();
    }
  }

  sys_publish_remoteaddress(remoteaddress);
  v62 = new_phase(2);
  v101 = connect_started_notify;
  if (connect_started_notify)
  {
    do
    {
      v102 = *v101;
      v62 = (*(v101 + 8))(*(v101 + 16), 0);
      v101 = v102;
    }

    while (v102);
  }

  LOBYTE(v103) = 0;
  v104 = 0;
  link_up_done = 0;
  redialingcount = 0;
  redialingalternate = 0;
  while (1)
  {
    if (v104 || v103)
    {
      v105 = *(the_channel + 72);
      if (v105)
      {
        v105(v62);
        LOBYTE(v103) = redialingalternate;
      }

      if (redialalternate)
      {
        v73 = v103 == 0;
        v106 = &remoteaddress;
        if (!v73)
        {
          v106 = &altremoteaddress;
        }

        sys_publish_remoteaddress(*v106);
        LOBYTE(v103) = redialingalternate;
      }
    }

    else
    {
      LOBYTE(v103) = 0;
    }

    v107 = redialtimer;
    if (redialtimer)
    {
      v108 = redialingcount == 0;
    }

    else
    {
      v108 = 1;
    }

    if (!v108 && v103 == 0)
    {
      if (hasbusystate)
      {
        new_phase(13);
        v107 = redialtimer;
      }

      sleep(v107);
      if (hasbusystate)
      {
        new_phase(2);
      }
    }

    if (kill_link)
    {
      break;
    }

    v62 = (*(the_channel + 24))(&v217);
    dword_10004A99C = v62;
    v103 = redialingalternate;
    if (redialalternate)
    {
      v103 = redialingalternate == 0;
      redialingalternate = redialingalternate == 0;
    }

    if (!v103)
    {
      ++redialingcount;
    }

    if (busycode != -1 && v217 == busycode)
    {
      v104 = redialingcount;
      if (redialingcount <= redialcount && kill_link == 0)
      {
        continue;
      }
    }

    goto LABEL_122;
  }

  v62 = dword_10004A99C;
LABEL_122:
  if ((v62 & 0x80000000) != 0)
  {
    v71 = &unk_100047000;
    if (v62 != -2)
    {
      v124 = connect_fail_notify;
      if (connect_fail_notify)
      {
        v125 = v217;
        do
        {
          v126 = *v124;
          v62 = (*(v124 + 8))(*(v124 + 16), v125);
          v124 = v126;
        }

        while (v126);
      }

      goto LABEL_255;
    }

    if (dword_10004A9A0)
    {
      sub_100010F48(1);
    }

LABEL_249:
    v62 = new_phase(10);
    v193 = disconnect_started_notify;
    v194 = *status;
    if (disconnect_started_notify)
    {
      do
      {
        v195 = *v193;
        v62 = (*(v193 + 8))(*(v193 + 16), v194);
        v193 = v195;
      }

      while (v195);
    }

    v196 = *(the_channel + 32);
    if (v196)
    {
      v62 = v196(v62);
    }

    v197 = disconnect_done_notify;
    v198 = *status;
    if (disconnect_done_notify)
    {
      do
      {
        v199 = *v197;
        v62 = (*(v197 + 8))(*(v197 + 16), v198);
        v197 = v199;
      }

      while (v199);
    }

LABEL_255:
    if (phase != 10)
    {
      v62 = new_phase(10);
    }

    v200 = *(the_channel + 72);
    if (v200)
    {
      v62 = v200(v62);
    }

    goto LABEL_259;
  }

  v71 = &unk_100047000;
  if (!link_up_done)
  {
    if (link_up_hook)
    {
      v217 = link_up_hook();
      if (!v217)
      {
        v123 = 5;
LABEL_248:
        *status = v123;
        goto LABEL_249;
      }
    }

    link_up_done = 1;
  }

  v112 = connect_success_notify;
  if (connect_success_notify)
  {
    do
    {
      v113 = *v112;
      (*(v112 + 8))(*(v112 + 16), 0);
      v112 = v113;
    }

    while (v113);
  }

  sys_publish_remoteaddress(remoteaddress);
  dword_1000438E0 = (*(the_channel + 40))(dword_10004A99C);
  if ((dword_1000438E0 & 0x80000000) == 0)
  {
    if (!demand)
    {
      v121 = getpid();
      sub_100010AF0(v121);
      v122 = ifunit;
      if (demand || ifunit < 0)
      {
LABEL_135:
        if (v122 < 0)
        {
          notice("Starting negotiation on %s", v114, v115, v116, v117, v118, v119, v120, &ppp_devnam);
        }

        else
        {
          notice("Connect: %s <--> %s", v114, v115, v116, v117, v118, v119, v120, &ifname);
        }

        gettimeofday(&stru_10004A9A8, 0);
        script_unsetenv("CONNECT_TIME");
        script_unsetenv("BYTES_SENT");
        script_unsetenv("BYTES_RCVD");
        lcp_lowerup(0);
        add_fd(dword_1000438E0);
        lcp_open(0, v127, v128, v129, v130, v131, v132, v133);
        *status = 10;
        new_phase(4);
        while (phase)
        {
          sub_100010BF8();
          packet = read_packet(&inpacket_buf);
          if ((packet & 0x80000000) != 0)
          {
            goto LABEL_192;
          }

          v149 = packet;
          if (packet)
          {
            if (packet <= 3)
            {
              if (debug < 2)
              {
                goto LABEL_192;
              }

              v214 = packet;
              v150 = "received short packet:%.*B";
              goto LABEL_154;
            }

            dump_packet("rcvd", &inpacket_buf, packet, v144, v145, v146, v147, v148);
            if (snoop_recv_hook)
            {
              snoop_recv_hook(&inpacket_buf, v149);
            }

            v151 = __rev16(word_1000486FE);
            if (v151 != 49185 && dword_1000478C8 != 9)
            {
              if (debug < 2)
              {
                goto LABEL_192;
              }

              v150 = "Discarded non-LCP packet when LCP not open";
LABEL_154:
              dbglog(v150, v142, v143, v144, v145, v146, v147, v148, v214);
              goto LABEL_192;
            }

            if (v151 == 49703 || (v151 & 0xFFFFFDFF) == 0xC023 || (v151 & 0xFFFFFFFB) == 0xC021 || phase > 5 || !unexpected_network_packet(0, v151, v143, v144, v145, v146, v147, v148))
            {
              v152 = protocols;
              if (protocols)
              {
                v153 = &off_100043898;
                do
                {
                  v154 = *v152;
                  if (v151 == v154 && *(v152 + 80))
                  {
                    (*(v152 + 2))(0, &unk_100048700, (v149 - 4));
                    goto LABEL_192;
                  }

                  if (v151 == (v154 & 0x7FFF) && *(v152 + 80))
                  {
                    v155 = *(v152 + 9);
                    if (v155)
                    {
                      v155(0, &unk_100048700, (v149 - 4));
                      goto LABEL_192;
                    }

                    v156 = *(v152 + 19);
                    if (v156 && v156(0) == 9)
                    {
                      goto LABEL_192;
                    }
                  }

                  v157 = *v153++;
                  v152 = v157;
                }

                while (v157);
              }

              if (debug)
              {
                v158 = protocol_list;
                if (!protocol_list)
                {
                  goto LABEL_190;
                }

                v159 = &word_1000438F8;
                while (v151 != v158)
                {
                  v160 = *v159;
                  v159 += 8;
                  v158 = v160;
                  if (!v160)
                  {
                    goto LABEL_190;
                  }
                }

                v161 = *(v159 - 1);
                if (v161)
                {
                  warning("Unsupported protocol '%s' (0x%x) received", v142, v143, v144, v145, v146, v147, v148, v161);
                }

                else
                {
LABEL_190:
                  warning("Unsupported protocol 0x%x received", v142, v143, v144, v145, v146, v147, v148, v151);
                }
              }

              lcp_sprotrej(0, &inpacket_buf, v149, v144, v145, v146, v147, v148, v214);
            }

            else if (debug >= 2)
            {
              dbglog("discarding proto 0x%x in phase %d", v142, v143, v144, v145, v146, v147, v148, v151);
            }
          }

          else
          {
            notice("Modem hangup", v142, v143, v144, v145, v146, v147, v148, v214);
            hungup = 1;
            if (*status != 5)
            {
              *status = 16;
            }

            lcp_lowerdown(0);
            link_terminated();
          }

LABEL_192:
          if (stop_link)
          {
            v162 = phase == 8;
          }

          else
          {
            v162 = 0;
          }

          if (v162)
          {
            new_phase(12);
            ppp_hold();
            auth_hold();
            v163 = protocols;
            if (protocols)
            {
              v164 = &off_100043898;
              do
              {
                v165 = *(v163 + 17);
                if (v165)
                {
                  v165(0);
                }

                v166 = *v164++;
                v163 = v166;
              }

              while (v166);
            }

            v167 = stop_notify;
            if (stop_notify)
            {
              do
              {
                v168 = *v167;
                (*(v167 + 8))(*(v167 + 16), 0);
                v167 = v168;
              }

              while (v168);
            }
          }

          if (cont_link)
          {
            v169 = phase == 12;
          }

          else
          {
            v169 = 0;
          }

          if (v169)
          {
            new_phase(8);
            ppp_cont();
            auth_cont();
            v170 = protocols;
            if (protocols)
            {
              v171 = &off_100043898;
              do
              {
                v172 = *(v170 + 18);
                if (v172)
                {
                  v172(0);
                }

                v173 = *v171++;
                v170 = v173;
              }

              while (v173);
            }

            v174 = cont_notify;
            if (cont_notify)
            {
              do
              {
                v175 = *v174;
                (*(v174 + 8))(*(v174 + 16), 0);
                v174 = v175;
              }

              while (v175);
            }
          }

          if (kill_link)
          {
            if (do_modem_hungup)
            {
              v176 = 0;
            }

            else
            {
              v176 = stop_link == 0;
            }

            if (!v176 || phase == 12)
            {
              if (do_modem_hungup)
              {
                notice("Modem hangup", v142, v143, v144, v145, v146, v147, v148, v214);
                do_modem_hungup = 0;
              }

              hungup = 1;
              lcp_lowerdown(0);
              link_terminated();
            }

            lcp_close(0, "User request", v143, v144, v145, v146, v147, v148);
          }

          if (open_ccp_flag && (phase - 7) <= 1)
          {
            dword_100047604 = 2;
            off_100041DD8(0, v142, v143, v144, v145, v146, v147, v148);
          }

          sys_runloop();
        }

        if (link_stats_valid)
        {
          info("Connect time %d.%d minutes.", v134, v135, v136, v137, v138, v139, v140, (link_connect_time + 5) / 0x3Cu);
          info("Sent %u bytes, received %u bytes.", v178, v179, v180, v181, v182, v183, v184, dword_1000480D8);
        }

        v71 = &unk_100047000;
        v185 = &off_100043000;
        if (!demand)
        {
          if (byte_10004A9B8 && unlink(&byte_10004A9B8) < 0 && *__error() != 2)
          {
            warning("unable to delete pid file %s: %m", v186, v187, v188, v189, v190, v191, v192, &byte_10004A9B8);
          }

          byte_10004A9B8 = 0;
          v185 = &off_100043000;
        }

        remove_fd(*(v185 + 568));
        clean_check();
        (*(the_channel + 48))(dword_10004A99C);
        *(v185 + 568) = -1;
        if (!hungup)
        {
          lcp_lowerdown(0);
        }

        if (!demand)
        {
          script_unsetenv("IFNAME");
        }

        goto LABEL_249;
      }

      set_ifunit(1, v114, v115, v116, v117, v118, v119, v120);
    }

    v122 = ifunit;
    goto LABEL_135;
  }

  v123 = 1;
  goto LABEL_248;
}

uint64_t reopen_log()
{
  openlog("pppd", 9, 120);

  return setlogmask(127);
}

uint64_t new_phase(uint64_t result)
{
  v1 = result;
  phase = result;
  if (new_phase_hook)
  {
    result = new_phase_hook(result);
  }

  v2 = phasechange;
  if (phasechange)
  {
    do
    {
      v3 = *v2;
      result = (*(v2 + 8))(*(v2 + 16), v1);
      v2 = v3;
    }

    while (v3);
  }

  return result;
}

void script_setenv(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = strlen(a2);
  v6 = v5 + v4;
  v7 = malloc_type_malloc(v5 + v4 + 3, 0x100004077774924uLL);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  slprintf(v7, v6 + 2, "%s=%s");
  v9 = script_env;
  if (script_env)
  {
    v10 = *script_env;
    if (*script_env)
    {
      v11 = 0;
      while (strncmp(v10, a1, v4) || v10[v4] != 61)
      {
        v12 = v11 + 1;
        v10 = v9[++v11];
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      free(v10);
      *(script_env + 8 * v11) = v8;
      return;
    }

    v12 = 0;
  }

  else
  {
    v13 = malloc_type_malloc(0x80uLL, 0x10040436913F5uLL);
    script_env = v13;
    if (!v13)
    {
      return;
    }

    v9 = v13;
    v12 = 0;
    s_env_nalloc = 16;
  }

LABEL_12:
  if (v12 + 1 >= s_env_nalloc)
  {
    v14 = malloc_type_realloc(v9, 8 * (v12 + 17), 0x10040436913F5uLL);
    if (!v14)
    {
      return;
    }

    v9 = v14;
    script_env = v14;
    s_env_nalloc = v12 + 17;
  }

  v9[v12] = v8;
  *(script_env + 8 * (v12 + 1)) = 0;
}

void die(int a1)
{
  sub_100011970();
  notify(exitnotify, a1);
  sys_log(6, "Exit.");
  exit(a1);
}

uint64_t **notify(uint64_t **result, int a2)
{
  if (result)
  {
    v2 = a2;
    do
    {
      v3 = *result;
      (result[1])(result[2], v2);
      result = v3;
    }

    while (v3);
  }

  return result;
}

void detach()
{
  if (!detached)
  {
    if (pipe(v12) == -1)
    {
      *v12 = -1;
    }

    v0 = fork();
    if (v0 < 0)
    {
      error("Couldn't detach (fork failed: %m)", v1, v2, v3, v4, v5, v6, v7, v10);
      die(1);
    }

    if (v0)
    {
      v11 = v0;
      v8 = pidchange;
      if (pidchange)
      {
        do
        {
          v9 = *v8;
          (*(v8 + 8))(*(v8 + 16), v11);
          v8 = v9;
        }

        while (v9);
      }

      if (byte_10004A9B8)
      {
        sub_1000117E8(v11);
      }

      if (byte_10004ADC8)
      {
        sub_100010AF0(v11);
      }

      exit(0);
    }

    setsid();
    chdir("/");
    dup2(dword_10004A990, 0);
    dup2(dword_10004A990, 1);
    dup2(dword_10004A990, 2);
    detached = 1;
    if (log_default)
    {
      log_to_fd = -1;
    }

    getpid();
    slprintf(v13, 16, "%d");
    script_setenv("PPPD_PID", v13);
    close(v12[1]);
    complete_read(v12[0], v13, 1uLL);
    close(v12[0]);
    sys_reinit();
  }
}

uint64_t sub_100010610()
{
  *&v1.sa_mask = 1074675715;
  v1.__sigaction_u.__sa_handler = sub_100011658;
  if (sigaction(1, &v1, 0) < 0)
  {
    goto LABEL_24;
  }

  v1.__sigaction_u.__sa_handler = sub_100011720;
  if (sigaction(2, &v1, 0) < 0)
  {
    goto LABEL_24;
  }

  v1.__sigaction_u.__sa_handler = sub_100011720;
  if (sigaction(15, &v1, 0) < 0)
  {
    goto LABEL_24;
  }

  v1.__sigaction_u.__sa_handler = sub_100012424;
  if (sigaction(20, &v1, 0) < 0)
  {
    goto LABEL_24;
  }

  v1.__sigaction_u.__sa_handler = sub_10001248C;
  if (sigaction(18, &v1, 0) < 0)
  {
    goto LABEL_24;
  }

  v1.__sigaction_u.__sa_handler = sub_100012550;
  if (sigaction(19, &v1, 0) < 0)
  {
    goto LABEL_24;
  }

  v1.__sigaction_u.__sa_handler = sub_1000125E0;
  if (sigaction(30, &v1, 0) < 0)
  {
    goto LABEL_24;
  }

  v1.__sigaction_u.__sa_handler = sub_10001265C;
  if (sigaction(31, &v1, 0) < 0)
  {
    goto LABEL_24;
  }

  v1.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(6, &v1, 0) < 0)
  {
    goto LABEL_24;
  }

  v1.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(14, &v1, 0) < 0)
  {
    goto LABEL_24;
  }

  v1.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(8, &v1, 0) < 0)
  {
    goto LABEL_24;
  }

  v1.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(4, &v1, 0) < 0)
  {
    goto LABEL_24;
  }

  v1.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(13, &v1, 0) < 0)
  {
    goto LABEL_24;
  }

  v1.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(3, &v1, 0) < 0)
  {
    goto LABEL_24;
  }

  v1.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(11, &v1, 0) < 0)
  {
    goto LABEL_24;
  }

  v1.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(10, &v1, 0) < 0)
  {
    goto LABEL_24;
  }

  v1.__sigaction_u.__sa_handler = sub_1000126C4;
  if (sigaction(7, &v1, 0) < 0 || (v1.__sigaction_u.__sa_handler = sub_1000126C4, sigaction(27, &v1, 0) < 0) || (v1.__sigaction_u.__sa_handler = sub_1000126C4, sigaction(12, &v1, 0) < 0) || (v1.__sigaction_u.__sa_handler = sub_1000126C4, sigaction(5, &v1, 0) < 0) || (v1.__sigaction_u.__sa_handler = sub_1000126C4, sigaction(26, &v1, 0) < 0) || (v1.__sigaction_u.__sa_handler = sub_1000126C4, sigaction(24, &v1, 0) < 0) || (v1.__sigaction_u.__sa_handler = sub_1000126C4, result = sigaction(25, &v1, 0), (result & 0x80000000) != 0))
  {
LABEL_24:
    fatal();
  }

  return result;
}

void set_ifunit(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  info("Using interface %s%d", a2, a3, a4, a5, a6, a7, a8, "ppp");
  slprintf(&ifname, 32, "%s%d");
  script_setenv("IFNAME", &ifname);
  if (a1)
  {
    v9 = getpid();
    sub_1000117E8(v9);
    v10 = getpid();

    sub_100010AF0(v10);
  }
}

void sub_100010AF0(int a1)
{
  if (linkname)
  {
    script_setenv("LINKNAME", &linkname);
    slprintf(&byte_10004ADC8, 1024, "%sppp-%s.pid");
    v2 = fopen(&byte_10004ADC8, "w");
    if (v2)
    {
      v10 = v2;
      fprintf(v2, "%d\n", a1);
      if (ifname)
      {
        fprintf(v10, "%s\n", &ifname);
      }

      fclose(v10);
    }

    else
    {
      error("Failed to create pid file %s: %m", v3, v4, v5, v6, v7, v8, v9, &byte_10004ADC8);
      byte_10004ADC8 = 0;
    }
  }
}

void sub_100010BF8()
{
  v21 = 0;
  v22 = 0;
  v20 = 0;
  open_ccp_flag = 0;
  kill_link = 0;
  cont_link = 0;
  stop_link = 0;
  if (!sigsetjmp(dword_10004B1E0, 1))
  {
    sigprocmask(1, &v20, 0);
    if (got_sighup || got_sigterm || got_sigusr2 || (byte_10004B2A4 & 1) != 0 || got_sigtstp || got_sigcont)
    {
      sigprocmask(2, &v20, 0);
    }

    else
    {
      byte_10004A994 = 1;
      sigprocmask(2, &v20, 0);
      if (qword_10004B1D8)
      {
        getabsolutetime(&qword_10004B1C8);
        v7 = *qword_10004B1D8 - qword_10004B1C8;
        v21 = v7;
        v8 = v7;
        v9 = *(qword_10004B1D8 + 8) - dword_10004B1D0;
        LODWORD(v22) = v9;
        if (v9 < 0)
        {
          LODWORD(v22) = v9 + 1000000;
          v21 = v7 - 1;
          v8 = v7 - 1;
        }

        if (v8 < 0)
        {
          LODWORD(v22) = 0;
          v21 = 0;
        }

        v10 = &v21;
      }

      else
      {
        v10 = 0;
      }

      v12.n128_f64[0] = wait_input(v10);
      if (wait_input_hook)
      {
        v11 = wait_input_hook(v12.n128_f64[0]);
      }

      v13 = *(the_channel + 88);
      if (v13)
      {
        v13(v11, v12);
      }
    }
  }

  if (controlfd != -1)
  {
    ready = is_ready_fd(controlfd);
    if (ready)
    {
      ppp_control(ready, v0, v1, v2, v3, v4, v5, v6, v19);
    }
  }

  byte_10004A994 = 0;
  for (i = qword_10004B1D8; qword_10004B1D8; i = qword_10004B1D8)
  {
    v16.n128_f64[0] = getabsolutetime(&qword_10004B1C8);
    if (v17 < 0)
    {
      fatal();
    }

    if (*i >= qword_10004B1C8 && (*i != qword_10004B1C8 || i[2] > dword_10004B1D0))
    {
      break;
    }

    v18 = *(i + 3);
    qword_10004B1D8 = *(i + 4);
    v18(*(i + 2), v16);
    free(i);
  }

  if (got_sigtstp)
  {
    info("Stopping on signal %d.", v0, v1, v2, v3, v4, v5, v6, got_sigtstp);
    stop_link = 1;
    got_sigtstp = 0;
  }

  if (got_sigcont)
  {
    info("Resuming on signal %d.", v0, v1, v2, v3, v4, v5, v6, got_sigcont);
    cont_link = 1;
    got_sigcont = 0;
  }

  if (got_sighup)
  {
    info("Hangup (SIGHUP)", v0, v1, v2, v3, v4, v5, v6, v19);
    kill_link = 1;
    got_sighup = 0;
    if (*status != 16)
    {
      *status = 5;
    }
  }

  if (got_sigterm)
  {
    info("Terminating on signal %d.", v0, v1, v2, v3, v4, v5, v6, got_sigterm);
    kill_link = 1;
    persist = 0;
    *status = 5;
    got_sigterm = 0;
  }

  if (byte_10004B2A4 == 1)
  {
    sub_10001117C(0);
    byte_10004B2A4 = 0;
  }

  if (got_sigusr2)
  {
    open_ccp_flag = 1;
    got_sigusr2 = 0;
  }
}

uint64_t sub_100010F48(int a1)
{
  v3.__sigaction_u.__sa_handler = 0;
  *&v3.sa_mask = 0;
  v4.__sigaction_u.__sa_handler = 1;
  *&v4.sa_mask = 0;
  sigaction(a1, &v4, &v3);
  kill(0, a1);
  return sigaction(a1, &v3, 0);
}

void script_unsetenv(const char *a1)
{
  v2 = strlen(a1);
  if (script_env)
  {
    v3 = *script_env;
    if (*script_env)
    {
      v4 = 0;
      v5 = v2;
      v6 = script_env + 8;
      while (strncmp(v3, a1, v5) || v3[v5] != 61)
      {
        v3 = *(v6 + v4);
        v4 += 8;
        if (!v3)
        {
          return;
        }
      }

      free(v3);
      do
      {
        v7 = *(script_env + v4 + 8);
        *(script_env + v4) = v7;
        v4 += 8;
      }

      while (v7);
    }
  }
}

uint64_t sub_10001117C(int a1)
{
  if (!dword_10004ADB8)
  {
    return 0;
  }

  v26 = 0;
  v1 = a1 == 0;
  v2 = waitpid(-1, &v26, v1);
  if ((v2 - 1) <= 0xFFFFFFFD)
  {
    while (1)
    {
      v10 = qword_10004ADC0;
      if (!qword_10004ADC0)
      {
        goto LABEL_9;
      }

      v11 = &qword_10004ADC0;
      if (*qword_10004ADC0 != v2)
      {
        break;
      }

LABEL_8:
      v13 = 0;
      --dword_10004ADB8;
      *v11 = v10[4];
LABEL_10:
      if ((v26 & 0x7F) != 0 && (v26 & 0x7F) != 0x7F)
      {
        v15 = "??";
        if ((v13 & 1) == 0)
        {
          v15 = v10[1];
        }

        warning("Child process %s (pid %d) terminated with signal %d", v3, v4, v5, v6, v7, v8, v9, v15);
        if (v13)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (debug)
        {
          v14 = "??";
          if ((v13 & 1) == 0)
          {
            v14 = v10[1];
          }

          dbglog("Script %s finished (pid %d), status = 0x%x", v3, v4, v5, v6, v7, v8, v9, v14);
        }

        if (v13)
        {
          goto LABEL_24;
        }
      }

      v16 = v10[2];
      if (v16)
      {
        v16(v10[3]);
      }

      free(v10);
LABEL_24:
      v2 = waitpid(-1, &v26, v1);
      if ((v2 - 1) >= 0xFFFFFFFE)
      {
        goto LABEL_25;
      }
    }

    while (1)
    {
      v12 = v10;
      v10 = v10[4];
      if (!v10)
      {
        break;
      }

      if (*v10 == v2)
      {
        v11 = v12 + 4;
        goto LABEL_8;
      }
    }

LABEL_9:
    v13 = 1;
    goto LABEL_10;
  }

LABEL_25:
  if (v2 != -1)
  {
    return 0;
  }

  if (*__error() != 10)
  {
    if (*__error() != 4)
    {
      error("Error waiting for child process: %m", v18, v19, v20, v21, v22, v23, v24, v25);
    }

    return 0;
  }

  return 0xFFFFFFFFLL;
}

void ppp_control(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = fcntl(controlfd, 3);
  if (v9 == -1 || (v17 = v9, fcntl(controlfd, 4, v9 | 4) == -1))
  {

    warning("Couldn't set controlfd to nonblock: %m", v10, v11, v12, v13, v14, v15, v16, a9);
  }

  else
  {
    v18 = getc(controlfile);
    if (v18 == 91)
    {
      ungetc(91, controlfile);
    }

    fcntl(controlfd, 4, v17);
    if (feof(controlfile))
    {
      goto LABEL_37;
    }

    clearerr(controlfile);
    if (v18 != 91)
    {
      return;
    }

    v34 = 0;
    v19 = getword(controlfile, v35, &v34, "controller");
    if (!v19)
    {
LABEL_37:
      die(1);
    }

    while (*v35 != 0x534E4F4954504F5BLL || *&v35[8] != 93)
    {
      if (*v35 == 0x4E4E4F435349445BLL && *&v35[5] == 0x5D5443454E4E4FLL)
      {
        error("[DISCONNECT]", v20, v21, v22, v23, v24, v25, v26, v33);
        sub_100011658(1);
      }

      else if (*v35 == 0x414E494D5245545BLL && *&v35[8] == 6112596)
      {
        error("[TERMINATE]", v20, v21, v22, v23, v24, v25, v26, v33);
        sub_100011720(15);
      }

      else
      {
        if (*v35 == 0x4C4C4154534E495BLL && *&v35[8] == 93)
        {
          sys_install(v19, v20, v21, v22, v23, v24, v25, v26);
          return;
        }

        if (*v35 == 0x4154534E494E555BLL && *&v35[8] == 6114380)
        {
          sys_uninstall(v19, v20, v21, v22, v23, v24, v25, v26);
          return;
        }

        if (*v35 == 1347372379 && *&v35[4] == 93)
        {
          goto LABEL_37;
        }
      }

      v19 = getword(controlfile, v35, &v34, "controller");
      if (!v19)
      {
        goto LABEL_37;
      }
    }

    options_from_controller();
    if (dump_options)
    {
      init_pr_log(0, 6);
      print_options(pr_log, 0);
      end_pr_log();
    }
  }
}

uint64_t sub_100011658(uint64_t result)
{
  v1 = result;
  v2 = qword_10004A988;
  if (!qword_10004A988 || (v3 = pthread_self(), result = pthread_equal(v2, v3), result))
  {
    got_sighup = v1;
    kill_link = 1;
    if (dword_10004A9A0)
    {
      result = sub_100010F48(v1);
    }

    v4 = sigreceived;
    if (sigreceived)
    {
      do
      {
        v5 = *v4;
        result = (*(v4 + 8))(*(v4 + 16), v1);
        v4 = v5;
      }

      while (v5);
    }

    if (!hungup)
    {
      *status = 5;
    }

    if (byte_10004A994 == 1)
    {
      siglongjmp(dword_10004B1E0, 1);
    }
  }

  return result;
}

uint64_t sub_100011720(uint64_t result)
{
  v1 = result;
  v2 = qword_10004A988;
  if (!qword_10004A988 || (v3 = pthread_self(), result = pthread_equal(v2, v3), result))
  {
    got_sigterm = v1;
    kill_link = 1;
    persist = 0;
    *status = 5;
    if (dword_10004A9A0)
    {
      result = sub_100010F48(v1);
    }

    v4 = sigreceived;
    if (sigreceived)
    {
      do
      {
        v5 = *v4;
        result = (*(v4 + 8))(*(v4 + 16), v1);
        v4 = v5;
      }

      while (v5);
    }

    if (byte_10004A994 == 1)
    {
      siglongjmp(dword_10004B1E0, 1);
    }
  }

  return result;
}

void sub_1000117E8(int a1)
{
  slprintf(&byte_10004A9B8, 1024, "%s%s.pid");
  v2 = fopen(&byte_10004A9B8, "w");
  if (v2)
  {
    v10 = v2;
    fprintf(v2, "%d\n", a1);

    fclose(v10);
  }

  else
  {
    error("Failed to create pid file %s: %m", v3, v4, v5, v6, v7, v8, v9, &byte_10004A9B8);
    byte_10004A9B8 = 0;
  }
}

uint64_t ppp_send_config(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(the_channel + 56);
  if (!v5)
  {
    return 0;
  }

  v6 = error_count;
  v5(a2, a3, a4, a5);
  if (error_count == v6)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ppp_recv_config(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(the_channel + 64);
  if (!v5)
  {
    return 0;
  }

  v6 = error_count;
  v5(a2, a3, a4, a5);
  if (error_count == v6)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_100011970()
{
  v0 = sys_cleanup();
  if ((dword_1000438E0 & 0x80000000) == 0)
  {
    v0 = (*(the_channel + 48))(dword_10004A99C);
  }

  v1 = *(the_channel + 72);
  if (v1)
  {
    v1(v0);
  }

  if (byte_10004A9B8 && unlink(&byte_10004A9B8) < 0 && *__error() != 2)
  {
    warning("unable to delete pid file %s: %m", v2, v3, v4, v5, v6, v7, v8, &byte_10004A9B8);
  }

  byte_10004A9B8 = 0;
  if (byte_10004ADC8 && unlink(&byte_10004ADC8) < 0 && *__error() != 2)
  {
    warning("unable to delete pid file %s: %m", v9, v10, v11, v12, v13, v14, v15, &byte_10004ADC8);
  }

  byte_10004ADC8 = 0;
}

void update_link_stats(uint64_t a1)
{
  if (get_ppp_stats(a1, &link_stats))
  {
    v1.tv_sec = 0;
    *&v1.tv_usec = 0;
    if ((gettimeofday(&v1, 0) & 0x80000000) == 0)
    {
      link_connect_time = LODWORD(v1.tv_sec) - qword_10004A9A8;
      link_stats_valid = 1;
      slprintf(v2, 32, "%u");
      script_setenv("CONNECT_TIME", v2);
      slprintf(v2, 32, "%u");
      script_setenv("BYTES_SENT", v2);
      slprintf(v2, 32, "%u");
      script_setenv("BYTES_RCVD", v2);
    }
  }
}

void untimeout(uint64_t a1, uint64_t a2)
{
  v2 = qword_10004B1D8;
  if (qword_10004B1D8)
  {
    v3 = &qword_10004B1D8;
    while (v2[3] != a1 || v2[2] != a2)
    {
      v3 = v2 + 4;
      v2 = v2[4];
      if (!v2)
      {
        return;
      }
    }

    *v3 = v2[4];
    free(v2);
  }
}

uint64_t safe_fork()
{
  if (pipe(v7) == -1)
  {
    *v7 = -1;
  }

  v0 = fork();
  if ((v0 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = v0;
  if (v0)
  {
    close(v7[1]);
    complete_read(v7[0], &v6, 1uLL);
    v2 = v7[0];
  }

  else
  {
    sys_close();
    options_close();
    v3 = fork_notifier;
    if (fork_notifier)
    {
      do
      {
        v4 = *v3;
        (*(v3 + 8))(*(v3 + 16), 0);
        v3 = v4;
      }

      while (v4);
    }

    close(v7[0]);
    v1 = 0;
    v2 = v7[1];
  }

  close(v2);
  return v1;
}

uint64_t device_script(uint64_t a1, int a2, int a3, int a4, uid_t a5, const void *a6, int a7)
{
  v52 = -1;
  *__fd = -1;
  if (a6 && pipe(__fd) == -1)
  {
    v24 = "Failed to setup pipe with device script: %m";
    goto LABEL_16;
  }

  ++dword_10004A9A0;
  v21 = safe_fork();
  if (v21 < 0)
  {
    --dword_10004A9A0;
    v24 = "Failed to create child process: %m";
LABEL_16:
    error(v24, v14, v15, v16, v17, v18, v19, v20, v51);
    return 0xFFFFFFFFLL;
  }

  v22 = v21;
  if (!v21)
  {
    v25 = a3;
    do
    {
      v26 = dup(a2);
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_23;
      }
    }

    while (v26 < 3);
    close(v26);
LABEL_23:
    v27 = log_to_fd;
    v28 = a2;
    v29 = dup(a2);
    v30 = dup(v25);
    if (log_to_fd < 0)
    {
      v51 = 384;
      v31 = open("/etc/ppp/connect-errors", 521);
    }

    else
    {
      v31 = dup(log_to_fd);
    }

    v32 = v31;
    close(v28);
    close(v25);
    close(v27);
    close(0);
    close(1);
    v33 = close(2);
    v34 = *(the_channel + 80);
    if (v34)
    {
      v34(v33);
    }

    closelog();
    close(dword_10004A990);
    if (__fd[1] != -1)
    {
      close(__fd[1]);
      __fd[1] = -1;
    }

    dup2(v29, 0);
    close(v29);
    dup2(v30, 1);
    close(v30);
    if ((v32 & 0x80000000) == 0)
    {
      dup2(v32, 2);
      close(v32);
    }

    v35 = 3;
    if (__fd[0] != -1)
    {
      dup2(__fd[0], 3);
      close(__fd[0]);
      __fd[0] = 3;
      v35 = 4;
    }

    closeallfrom(v35);
    if (a5 == -1)
    {
      a5 = uid;
    }

    setuid(a5);
    if (getuid() == a5)
    {
      v43 = getgid();
      setgid(v43);
      execle("/bin/sh", "sh");
      error("could not exec /bin/sh: %m", v44, v45, v46, v47, v48, v49, v50, "-c");
      exit(99);
    }

    error("setuid failed", v36, v37, v38, v39, v40, v41, v42, v51);
    exit(1);
  }

  if (__fd[0] != -1)
  {
    close(__fd[0]);
    __fd[0] = -1;
  }

  if (__fd[1] != -1)
  {
    write(__fd[1], a6, a7);
    close(__fd[1]);
    __fd[1] = -1;
  }

  if (a4)
  {
    record_child(v22, a1, 0, 0);
    return 0;
  }

  else
  {
    while (waitpid(v22, &v52, 0) < 0)
    {
      if (*__error() != 4)
      {
        fatal();
      }
    }

    --dword_10004A9A0;
    return BYTE1(v52);
  }
}

void record_child(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ++dword_10004ADB8;
  v8 = malloc_type_malloc(0x28uLL, 0x10B00401A278E7DuLL);
  if (v8)
  {
    *v8 = a1;
    v8[1] = a2;
    v8[2] = a3;
    v16 = qword_10004ADC0;
    v8[3] = a4;
    v8[4] = v16;
    qword_10004ADC0 = v8;
  }

  else
  {
    warning("losing track of %s process", v9, v10, v11, v12, v13, v14, v15, a2);
  }
}

uint64_t run_program(const char *a1, char *const *a2, int a3, uint64_t a4, uint64_t a5)
{
  memset(&v38, 0, sizeof(v38));
  *__error() = 22;
  if (stat(a1, &v38) < 0 || ((v38.st_mode & 0xF000) == 0x8000 ? (v17 = (v38.st_mode & 0x49) == 0) : (v17 = 1), v17))
  {
    if (a3 || *__error() != 2)
    {
      warning("Can't execute %s: %m", v10, v11, v12, v13, v14, v15, v16, a1);
    }

    return 0;
  }

  else
  {
    v20 = safe_fork();
    if (v20 == -1)
    {
      error("Failed to create child process for %s: %m", v21, v22, v23, v24, v25, v26, v27, a1);
      return 0xFFFFFFFFLL;
    }

    else
    {
      v18 = v20;
      if (!v20)
      {
        setsid();
        umask(0x3Fu);
        chdir("/");
        setuid(0);
        v28 = getegid();
        setgid(v28);
        closelog();
        v29 = *(the_channel + 80);
        if (v29)
        {
          v29();
        }

        dup2(dword_10004A990, 0);
        dup2(dword_10004A990, 1);
        dup2(dword_10004A990, 2);
        close(dword_10004A990);
        closeallfrom(3);
        if (setpriority(0, 0, 0) < 0)
        {
          warning("can't reset priority to 0: %m", v30, v31, v32, v33, v34, v35, v36, v37);
        }

        execve(a1, a2, script_env);
        if (a3 || *__error() != 2)
        {
          reopen_log();
          sys_log(3, "Can't execute %s: %m", a1);
          closelog();
        }

        _exit(-1);
      }

      if (debug)
      {
        dbglog("Script %s started (pid %d)", v21, v22, v23, v24, v25, v26, v27, a1);
      }

      record_child(v18, a1, a4, a5);
    }
  }

  return v18;
}

void *add_notifier(void *a1, uint64_t a2, uint64_t a3)
{
  result = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL);
  if (!result)
  {
    novm();
  }

  *result = *a1;
  result[1] = a2;
  result[2] = a3;
  *a1 = result;
  return result;
}

void *add_notifier_last(void **a1, uint64_t a2, uint64_t a3)
{
  result = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL);
  if (!result)
  {
    novm();
  }

  *result = 0;
  result[1] = a2;
  result[2] = a3;
  for (i = *a1; i; i = *i)
  {
    a1 = i;
  }

  *a1 = result;
  return result;
}

void remove_notifier(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1)
  {
    while (1)
    {
      v4 = v3;
      if (v3[1] == a2 && v3[2] == a3)
      {
        break;
      }

      v3 = *v3;
      a1 = v4;
      if (!*v4)
      {
        return;
      }
    }

    *a1 = *v3;
    free(v3);
  }
}

uint64_t **notify_with_ptr(uint64_t **result, uint64_t a2)
{
  if (result)
  {
    do
    {
      v3 = *result;
      (result[1])(result[2], a2);
      result = v3;
    }

    while (v3);
  }

  return result;
}

void sub_100012424()
{
  v0 = qword_10004A988;
  if (!qword_10004A988 || (v1 = pthread_self(), pthread_equal(v0, v1)))
  {
    byte_10004B2A4 = 1;
    if (byte_10004A994 == 1)
    {
      siglongjmp(dword_10004B1E0, 1);
    }
  }
}

uint64_t sub_10001248C(uint64_t result)
{
  v1 = result;
  v2 = qword_10004A988;
  if (!qword_10004A988 || (v3 = pthread_self(), result = pthread_equal(v2, v3), result))
  {
    got_sigtstp = v1;
    if ((phase | 4) != 0xC)
    {
      got_sighup = 1;
      if (dword_10004A9A0)
      {
        result = sub_100010F48(v1);
      }
    }

    v4 = sigreceived;
    if (sigreceived)
    {
      do
      {
        v5 = *v4;
        result = (*(v4 + 8))(*(v4 + 16), v1);
        v4 = v5;
      }

      while (v5);
    }

    if (byte_10004A994 == 1)
    {
      siglongjmp(dword_10004B1E0, 1);
    }
  }

  return result;
}

uint64_t sub_100012550(uint64_t result)
{
  v1 = result;
  v2 = qword_10004A988;
  if (!qword_10004A988 || (v3 = pthread_self(), result = pthread_equal(v2, v3), result))
  {
    got_sigcont = v1;
    v4 = sigreceived;
    if (sigreceived)
    {
      do
      {
        v5 = *v4;
        result = (*(v4 + 8))(*(v4 + 16), v1);
        v4 = v5;
      }

      while (v5);
    }

    if (byte_10004A994 == 1)
    {
      siglongjmp(dword_10004B1E0, 1);
    }
  }

  return result;
}

uint64_t sub_1000125E0()
{
  v0 = qword_10004A988;
  if (!qword_10004A988 || (v1 = pthread_self(), result = pthread_equal(v0, v1), result))
  {
    v3 = debug == 0;
    debug = debug == 0;
    if (v3)
    {
      v4 = 255;
    }

    else
    {
      v4 = 31;
    }

    return setlogmask(v4);
  }

  return result;
}

void sub_10001265C()
{
  v0 = qword_10004A988;
  if (!qword_10004A988 || (v1 = pthread_self(), pthread_equal(v0, v1)))
  {
    got_sigusr2 = 1;
    if (byte_10004A994 == 1)
    {
      siglongjmp(dword_10004B1E0, 1);
    }
  }
}

uint64_t sub_1000126C4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = qword_10004A988;
  if (!qword_10004A988 || (v10 = pthread_self(), result = pthread_equal(v9, v10), result))
  {
    if (byte_10004B2A8 == 1)
    {
      _exit(127);
    }

    byte_10004B2A8 = 1;
    error("Fatal signal %d", a2, a3, a4, a5, a6, a7, a8, a1);
    if (dword_10004A9A0)
    {
      sub_100010F48(15);
    }

    notify(sigreceived, a1);
    die(127);
  }

  return result;
}

uint64_t sub_100012768(const char **a1)
{
  gethostname(hostname, 0x100uLL);
  if (**a1)
  {
    if (**a1 != 46)
    {
      v2 = strlen(hostname);
      strncat(hostname, ".", 255 - v2);
    }

    v3 = strlen(hostname);
    domain = &hostname[v3];
    strncat(hostname, *a1, 255 - v3);
  }

  byte_100047C07 = 0;
  return 1;
}

uint64_t sub_100012818(const char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = **a1;
  if (!**a1 || v8 == 47)
  {
LABEL_3:
    option_error("call option value may not contain .. or start with /", a2, a3, a4, a5, a6, a7, a8, v15);
    return 0;
  }

  v10 = *a1;
  while (v8 == 46)
  {
    if (v10[1] == 46 && (!v10[2] || v10[2] == 47))
    {
      goto LABEL_3;
    }

    do
    {
LABEL_11:
      if (v8 == 47)
      {
        break;
      }

      v11 = *++v10;
      v8 = v11;
    }

    while (v11);
    if (v8 == 47)
    {
      ++v10;
    }

    v8 = *v10;
  }

  if (v8)
  {
    goto LABEL_11;
  }

  v12 = strlen(*a1) + 16;
  v13 = malloc_type_malloc(v12, 0x100004077774924uLL);
  if (!v13)
  {
    novm();
  }

  v14 = v13;
  slprintf(v13, v12, "%s%s");
  free(v14);
  return 1;
}

uint64_t sub_100012920()
{
  if (phase == 1)
  {
    fprintf(__stderrp, "pppd version %s (Apple version %s)\n", "2.4.2", "884");
    exit(0);
  }

  return 0;
}

uint64_t sub_100012980()
{
  if (phase == 1)
  {
    sub_10001312C();
    exit(0);
  }

  return 0;
}

uint64_t sub_1000129B4(const char **a1)
{
  if (!privileged_option)
  {
    v2 = getuid();
    seteuid(v2);
  }

  v3 = open(*a1, 2569, 420);
  if (v3 < 0)
  {
    if (*__error() == 17)
    {
      v4 = open(*a1, 9, v22);
      goto LABEL_21;
    }

    if (privileged_option)
    {
      v5 = dirname(*a1);
      sys_log(4, "Warning: Creating directory for log file = %s\n", *a1);
      v6 = umask(0);
      v7 = (strlen(v5) + 1);
      v8 = malloc_type_malloc(v7, 0x88BFC8EEuLL);
      if (!v8)
      {
        goto LABEL_20;
      }

      v9 = v8;
      memset(&v23, 0, sizeof(v23));
      strlcpy(v8, v5, v7);
      for (i = *v9 == 47; ; ++i)
      {
        if (v9[i])
        {
          if (v9[i] != 47)
          {
            continue;
          }

          v9[i] = 0;
          v11 = 1;
        }

        else
        {
          v11 = 0;
        }

        if (!mkdir(v9, 0x1EDu) || (*__error() == 17 || *__error() == 21) && (stat(v9, &v23) & 0x80000000) == 0)
        {
          v9[i] = 47;
          if (v11)
          {
            continue;
          }
        }

        free(v9);
        umask(v6);
LABEL_20:
        v4 = open(*a1, 2569, 420);
LABEL_21:
        v3 = v4;
        break;
      }
    }
  }

  v12 = *__error();
  if (!privileged_option)
  {
    seteuid(0);
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_28:
    *__error() = v12;
    option_error("Can't open log file %s: %m", v14, v15, v16, v17, v18, v19, v20, *a1);
    return 1;
  }

  if (v3 < 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  v13 = *a1;
  __strlcpy_chk();
  if ((dword_100044F20 & 0x80000000) == 0)
  {
    close(dword_100044F20);
  }

  dword_100044F20 = v3;
  log_to_fd = v3;
  log_default = 0;
  return 1;
}

uint64_t sub_100012BEC(_BYTE **a1)
{
  v1 = *a1;
  if (sys_loadplugin(*a1))
  {
    option_error("Couldn't load plugin %s", v2, v3, v4, v5, v6, v7, v8, v1);
  }

  return 1;
}

uint64_t sub_100012C34(_BYTE **a1)
{
  v1 = *a1;
  if (!sys_loadplugin(*a1))
  {
    return 1;
  }

  option_error("Couldn't load plugin %s", v2, v3, v4, v5, v6, v7, v8, v1);
  return 0;
}

uint64_t sub_100012C84()
{
  if (sys_check_controller())
  {
    v7 = dup(0);
    controlfd = v7;
    if (v7 == -1)
    {
      v9 = "Can't duplicate control file descripor: %m";
    }

    else
    {
      controlfile = fdopen(v7, "r");
      if (controlfile)
      {
        statusfd = dup(1);
        if (statusfd != -1)
        {
          if (log_default)
          {
            log_to_fd = -1;
            log_default = 0;
          }

          result = 1;
          controlled = 1;
          return result;
        }

        v9 = "Can't duplicate status file descripor: %m";
      }

      else
      {
        close(controlfd);
        v9 = "Can't open control file descripor: %m";
      }
    }
  }

  else
  {
    v9 = "Can't verify the controller started the connection";
  }

  option_error(v9, v0, v1, v2, v3, v4, v5, v6, v10);
  if (controlfile)
  {
    fclose(controlfile);
    controlfile = 0;
    controlfd = -1;
  }

  if (statusfd == -1)
  {
    return 0;
  }

  close(statusfd);
  result = 0;
  statusfd = -1;
  return result;
}

uint64_t parse_args(int a1, const char **a2)
{
  privileged_option = privileged;
  option_source = "command line";
  option_priority = 2;
  v2 = 1;
  if (a1 >= 1)
  {
    v4 = a1;
    while (1)
    {
      v7 = *a2;
      v5 = a2 + 1;
      v6 = v7;
      v8 = sub_100012EE0(v7);
      if (!v8)
      {
        break;
      }

      v16 = (*(v8 + 2) | 2) != 2 && ((*(v8 + 8) >> 9) & 1) == 0;
      if (v4 <= v16)
      {
        option_error("too few parameters for option %s", v9, v10, v11, v12, v13, v14, v15, v6);
        return 0;
      }

      if (!sub_100013190(v8, v6, v5, v11, v12, v13, v14, v15))
      {
        return 0;
      }

      a2 = &v5[v16];
      v17 = __OFADD__(v4, ~v16);
      v4 += ~v16;
      if ((v4 < 0) ^ v17 | (v4 == 0))
      {
        return 1;
      }
    }

    option_error("unrecognized option '%s'", v9, v10, v11, v12, v13, v14, v15, v6);
    if (phase == 1)
    {
      fprintf(__stderrp, "pppd version %s\nUsage: %s [ options ], where options are:\n\t<device>\tCommunicate over the named device\n\t<speed>\t\tSet the baud rate to <speed>\n\t<loc>:<rem>\tSet the local and/or remote interface IP\n\t\t\taddresses.  Either one may be omitted.\n\tasyncmap <n>\tSet the desired async map to hex <n>\n\tauth\t\tRequire authentication from peer\n        connect <p>     Invoke shell command <p> to set up the serial line\n\tcrtscts\t\tUse hardware RTS/CTS flow control\n\tdefaultroute\tAdd default route through interface\n\tfile <f>\tTake options from file <f>\n\tmodem\t\tUse modem control lines\n\tmru <n>\t\tSet MRU value to <n> for negotiation\nSee pppd(8) for more options.\n", "2.4.2", progname);
    }

    return 0;
  }

  return v2;
}

char **sub_100012EE0(const char *a1)
{
  v2 = 0;
  for (i = 1; ; i = 0)
  {
    v4 = i;
    if (general_options)
    {
      break;
    }

LABEL_6:
    if (auth_options)
    {
      v5 = &auth_options;
      while (!sub_100014528(a1, v5, v2))
      {
        v7 = v5[12];
        v5 += 12;
        if (!v7)
        {
          goto LABEL_10;
        }
      }

      return v5;
    }

LABEL_10:
    v8 = qword_10004B6B0;
    if (qword_10004B6B0)
    {
      while (1)
      {
        v5 = *v8;
        if (**v8)
        {
          break;
        }

LABEL_14:
        v8 = *(v8 + 8);
        if (!v8)
        {
          goto LABEL_15;
        }
      }

      while (!sub_100014528(a1, v5, v2))
      {
        v9 = v5[12];
        v5 += 12;
        if (!v9)
        {
          goto LABEL_14;
        }
      }

      return v5;
    }

LABEL_15:
    v5 = *the_channel;
    if (**the_channel)
    {
      while (!sub_100014528(a1, v5, v2))
      {
        v10 = v5[12];
        v5 += 12;
        if (!v10)
        {
          goto LABEL_18;
        }
      }

      return v5;
    }

LABEL_18:
    v11 = protocols;
    if (protocols)
    {
      v12 = 0;
      while (1)
      {
        v5 = *(v11 + 13);
        if (v5)
        {
          if (*v5)
          {
            break;
          }
        }

LABEL_24:
        v11 = (&protocols)[++v12];
        if (!v11)
        {
          goto LABEL_25;
        }
      }

      while (!sub_100014528(a1, v5, v2))
      {
        v13 = v5[12];
        v5 += 12;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      return v5;
    }

LABEL_25:
    v2 = 1;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = &general_options;
  while (!sub_100014528(a1, v5, v2))
  {
    v6 = v5[12];
    v5 += 12;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  return v5;
}

void option_error(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  vslprintf(v9, 1024, a1, &a9);
  if (phase == 1)
  {
    fprintf(__stderrp, "%s: %s\n", progname, v9);
  }

  sys_log(3, "%s", v9);
}

uint64_t sub_10001312C()
{
  if (phase == 1)
  {
    return fprintf(__stderrp, "pppd version %s\nUsage: %s [ options ], where options are:\n\t<device>\tCommunicate over the named device\n\t<speed>\t\tSet the baud rate to <speed>\n\t<loc>:<rem>\tSet the local and/or remote interface IP\n\t\t\taddresses.  Either one may be omitted.\n\tasyncmap <n>\tSet the desired async map to hex <n>\n\tauth\t\tRequire authentication from peer\n        connect <p>     Invoke shell command <p> to set up the serial line\n\tcrtscts\t\tUse hardware RTS/CTS flow control\n\tdefaultroute\tAdd default route through interface\n\tfile <f>\tTake options from file <f>\n\tmodem\t\tUse modem control lines\n\tmru <n>\t\tSet MRU value to <n> for negotiation\nSee pppd(8) for more options.\n", "2.4.2", progname);
  }

  return result;
}

uint64_t sub_100013190(uint64_t a1, uint64_t a2, const char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  v55 = 0;
  v12 = *(a1 + 8);
  v13 = *a1;
  current_option = *a1;
  v14 = *(a1 + 32);
  do
  {
    v15 = *(a1 + v11 + 32);
    v11 -= 96;
  }

  while ((v15 & 0x100000) != 0);
  if (((privileged_option != 0) & (v14 >> 25)) != 0)
  {
    v16 = option_priority + 100;
  }

  else
  {
    v16 = option_priority;
  }

  if ((v15 & 0x80000) == 0)
  {
    goto LABEL_7;
  }

  v17 = *(a1 + v11 + 160);
  if (v16 >= v17)
  {
    if (v16 >= 101 && v17 == 2)
    {
      warning("%s%s from %s overrides command line", a2, a3, a4, a5, a6, a7, a8, v13);
      v14 = *(a1 + 32);
    }

LABEL_7:
    if ((v14 & 0x4000000) != 0 && phase != 1)
    {
      option_error("%s%s cannot be changed after initialization", a2, a3, a4, a5, a6, a7, a8, *a1);
      return 0;
    }

    if ((v14 & 0x1000) != 0 && !privileged_option)
    {
      option_error("using the %s%s requires root privilege", a2, a3, a4, a5, a6, a7, a8, *a1);
      return 0;
    }

    if ((v14 & 0x800000) != 0 && !**(a1 + 40))
    {
      option_error("%s%s is disabled", a2, a3, a4, a5, a6, a7, a8, *a1);
      return 0;
    }

    if ((v14 & 0x8000000) != 0 && devnam_fixed)
    {
      option_error("the %s%s may not be changed in %s", a2, a3, a4, a5, a6, a7, a8, *a1);
      return 0;
    }

    v19 = *(a1 + 8);
    if (v19 > 3)
    {
      if (v19 <= 5)
      {
        if (v19 != 4)
        {
          if ((v14 & 0x2000) != 0)
          {
            strlcpy(*(a1 + 16), *a3, *(a1 + 48));
            v34 = *(a1 + 40);
            if (v34 && (*(a1 + 34) & 0x40) != 0)
            {
              strlcpy(v34, *a3, *(a1 + 48));
            }
          }

          else
          {
            v22 = strdup(*a3);
            if (!v22)
            {
              novm();
            }

            **(a1 + 16) = v22;
          }

          goto LABEL_92;
        }

        if ((v14 & 0x200) != 0)
        {
          v30 = (v14 >> 7) & 0xFFFFFF00 | v14;
        }

        else
        {
          result = sub_10001423C(*a3, &v55, 16);
          if (!result)
          {
            return result;
          }

          v14 = *(a1 + 32);
          v30 = v55;
        }

        v33 = *(a1 + 16);
        if ((v14 & 0x400) != 0)
        {
          v30 |= *v33;
        }

        goto LABEL_85;
      }

      if (v19 == 6)
      {
        result = (*(a1 + 16))(a2, a3, 1);
        if (!result)
        {
          return result;
        }

        goto LABEL_92;
      }

      if (v19 != 7)
      {
        goto LABEL_92;
      }
    }

    else if (v19 >= 2)
    {
      if (v19 == 2)
      {
        **(a1 + 16) = v14;
        v31 = *(a1 + 40);
        if (!v31)
        {
          goto LABEL_92;
        }

        v32 = *(a1 + 32);
        if ((v32 & 0x400000) == 0)
        {
          if ((v32 & 0x1000000) != 0)
          {
            *v31 = 0;
            goto LABEL_92;
          }

          if ((v32 & 0x10000) != 0)
          {
            LOBYTE(v14) = *v31 & ~v14;
          }

          else
          {
            if ((v32 & 0x800) == 0)
            {
              goto LABEL_92;
            }

            LOBYTE(v14) = *v31 | v14;
          }
        }

        *v31 = v14;
      }

      else if (v19 == 3)
      {
        if ((v14 & 0x200) != 0)
        {
          v21 = 0;
        }

        else
        {
          v20 = *a3;
          v56 = 0;
          result = sub_10001423C(v20, &v56, 0);
          if (!result)
          {
            return result;
          }

          v21 = v56;
          v14 = *(a1 + 32);
          if (((v14 & 0x4000) != 0 && v56 < *(a1 + 52) || (v14 & 0x8000) != 0 && v56 > *(a1 + 48)) && ((v14 & 0x10000) == 0 || v56))
          {
            result = v14 >> 14;
            if ((v14 >> 14) > 1u)
            {
              if (result == 2)
              {
                v52 = *(a1 + 48);
                option_error("%s value must be%s <= %d", a2, a3, a4, a5, a6, a7, a8, *a1);
              }

              else
              {
                v53 = *(a1 + 52);
                v54 = *(a1 + 48);
                option_error("%s value must be%s between %d and %d", a2, a3, a4, a5, a6, a7, a8, *a1);
              }
            }

            else
            {
              if (!(v14 >> 14))
              {
                return result;
              }

              v51 = *(a1 + 52);
              option_error("%s value must be%s >= %d", a2, a3, a4, a5, a6, a7, a8, *a1);
            }

            return 0;
          }
        }

        if ((v14 & 0x80) != 0)
        {
          v35 = -256;
        }

        else
        {
          v35 = 0;
        }

        v30 = (v35 & 0xFFFFFF00 | v14) + v21;
        if ((v14 & 0x800) != 0)
        {
          v30 += **(a1 + 16);
        }

        v33 = *(a1 + 16);
        if ((v14 & 0x20000) == 0 || privileged_option)
        {
          goto LABEL_85;
        }

        v36 = *v33;
        if ((v14 & 0x40000) == 0)
        {
          goto LABEL_84;
        }

        if (!v36)
        {
LABEL_85:
          *v33 = v30;
          v37 = *(a1 + 40);
          if (v37 && (*(a1 + 34) & 0x40) != 0)
          {
            *v37 = v30;
          }

          goto LABEL_92;
        }

        if (v30)
        {
LABEL_84:
          if (v30 <= v36)
          {
            goto LABEL_85;
          }
        }

        option_error("%s value cannot be increased", a2, a3, a4, a5, a6, a7, a8, *a1);
        return 0;
      }

LABEL_92:
      v38 = *(a1 + 40);
      if (v38)
      {
        v39 = *(a1 + 32);
        if ((v39 & 0x30C10800) == 0)
        {
          *v38 = (v39 & 0x1000000) == 0;
        }
      }

      v40 = a1 + v11;
      if (*(a1 + v11 + 152))
      {
        v41 = *(v40 + 176);
        if (v41)
        {
          v42 = a1 + v11;
          v43 = malloc_type_realloc(v41, 8 * *(a1 + v11 + 184) + 8, 0x10040436913F5uLL);
          if (v43)
          {
            *(v40 + 176) = v43;
            v44 = *(v42 + 184);
            v43[v44] = option_source;
            *(v42 + 184) = v44 + 1;
          }
        }

        else
        {
          v45 = malloc_type_malloc(8uLL, 0x10040436913F5uLL);
          *(v40 + 176) = v45;
          if (!v45)
          {
            novm();
          }

          *v45 = option_source;
          *(a1 + v11 + 184) = 1;
        }
      }

      else
      {
        *(v40 + 152) = option_source;
      }

      v46 = a1 + v11;
      *(v46 + 160) = v16;
      *(v46 + 162) = -21845 * ((-96 - v11) >> 5);
      if (*(a1 + 8) == 5 && (*(a1 + 34) & 1) != 0)
      {
        v47 = strlen(*a3);
        if (v47 >= 1)
        {
          v48 = 0;
          do
          {
            (*a3)[v48++] = 42;
          }

          while ((v47 & 0x7FFFFFFF) != v48);
        }
      }

      if (phase != 1)
      {
        v49 = *(a1 + 72);
        if (v49)
        {
          v49();
        }
      }

      return 1;
    }

    result = (*(a1 + 16))(a3);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 34))
    {
      v23 = strlen(*a3);
      v24 = malloc_type_malloc(v23 + 25, 0x1070040319640ECuLL);
      if (v24)
      {
        v25 = v24;
        v26 = strlen(*a3);
        strlcpy(v25 + 16, *a3, v26 + 1);
        v27 = option_source;
        *v25 = 0;
        *(v25 + 1) = v27;
        v28 = (a1 + 40);
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
        *v29 = v25;
      }
    }

    goto LABEL_92;
  }

  result = 1;
  if (v16 == 2 && v17 >= 101)
  {
    v50 = *(a1 + v11 + 152);
    option_error("%s%s set in %s cannot be overridden\n", a2, a3, a4, a5, a6, a7, a8, v13);
    return 0;
  }

  return result;
}

uint64_t options_from_list(uint64_t a1, int a2)
{
  privileged_option = a2;
  option_source = "secrets file";
  option_priority = 3;
  if (!a1)
  {
    return 1;
  }

  v2 = a1;
  v14 = 0;
  v3 = "In secrets file: unrecognized option '%s'";
  while (1)
  {
    v4 = sub_100012EE0(*(v2 + 8));
    if (!v4)
    {
      break;
    }

    v12 = v2;
    if ((*(v4 + 2) | 2) != 2)
    {
      v12 = v2;
      if ((*(v4 + 33) & 2) == 0)
      {
        v12 = *v2;
        if (!*v2)
        {
          v3 = "In secrets file: too few parameters for option '%s'";
          break;
        }

        v14 = v12[1];
      }
    }

    result = sub_100013190(v4, *(v2 + 8), &v14, v7, v8, v9, v10, v11);
    if (!result)
    {
      return result;
    }

    v2 = *v12;
    if (!*v12)
    {
      return 1;
    }
  }

  option_error(v3, v5, v6, v7, v8, v9, v10, v11, *(v2 + 8));
  return 0;
}

char **override_value(const char *a1, int a2, uint64_t a3)
{
  result = sub_100012EE0(a1);
  if (result)
  {
    v6 = result + 81;
    do
    {
      v7 = *(v6 - 65);
      v6 -= 48;
    }

    while ((v7 & 0x100000) != 0);
    if ((v7 & 0x80000) != 0 && *(v6 - 1) > a2)
    {
      return 0;
    }

    else
    {
      *(v6 - 1) = a2;
      *(v6 - 5) = a3;
      *v6 = -1;
      return 1;
    }
  }

  return result;
}

void *add_options(uint64_t a1)
{
  result = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  if (!result)
  {
    novm();
  }

  v3 = qword_10004B6B0;
  *result = a1;
  result[1] = v3;
  qword_10004B6B0 = result;
  return result;
}

uint64_t check_options()
{
  result = dword_100044F20;
  if ((dword_100044F20 & 0x80000000) == 0 && dword_100044F20 != log_to_fd)
  {
    return close(dword_100044F20);
  }

  return result;
}

void *print_options(void (*a1)(const char *, const char *, ...), const char *a2)
{
  a1(a2, "pppd options in effect:\n");
  sub_100013AA8(&general_options, a1, a2);
  sub_100013AA8(&auth_options, a1, a2);
  for (i = qword_10004B6B0; i; i = *(i + 8))
  {
    sub_100013AA8(*i, a1, a2);
  }

  result = sub_100013AA8(*the_channel, a1, a2);
  v6 = protocols;
  if (protocols)
  {
    v7 = &off_100043898;
    do
    {
      result = sub_100013AA8(*(v6 + 13), a1, a2);
      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }

  return result;
}

void *sub_100013AA8(void *result, void (*a2)(const char *, const char *, ...), const char *a3)
{
  if (*result)
  {
    v5 = result;
    while (1)
    {
      if (*(v5 + 32))
      {
        if (*(v5 + 33) != -1)
        {
          v6 = &v5[12 * *(v5 + 33)];
          v7 = *(v6 + 8);
          if ((v7 & 0x40000000) == 0)
          {
            break;
          }
        }
      }

      do
      {
LABEL_52:
        v22 = *(v5 + 130);
        v5 += 12;
      }

      while ((v22 & 0x10) != 0);
      if (!*v5)
      {
        return result;
      }
    }

    v8 = *(v6 + 2);
    if (v8 > 3)
    {
      if (v8 <= 5)
      {
        if (v8 != 4)
        {
          v14 = "??????";
          if ((v7 & 0x10000) == 0)
          {
            v14 = v6[2];
            if ((v7 & 0x2000) == 0)
            {
              v14 = *v14;
            }
          }

          v15 = *v6;
          v27 = v14;
          v12 = a3;
          v13 = "%s %q";
          goto LABEL_47;
        }

        a2(a3, "%s", *v6);
        if ((*(v6 + 33) & 2) == 0)
        {
          v16 = *v6[2];
          v12 = a3;
          v13 = " %x";
          goto LABEL_47;
        }

LABEL_48:
        a2(a3, "\t\t# (from %s", v5[7]);
        if (*(v5 + 22) >= 1)
        {
          v21 = 0;
          do
          {
            a2(a3, ", %s", *(v5[10] + 8 * v21++));
          }

          while (v21 < *(v5 + 22));
        }

        v26 = v5[7];
        result = (a2)(a3, ")\n");
        goto LABEL_52;
      }

      if (v8 == 6)
      {
LABEL_26:
        if ((v7 & 0x10000000) == 0)
        {
          if ((v7 & 0x20000000) != 0)
          {
            v13 = v6[5];
            if ((v7 & 0x2000) == 0)
            {
              v13 = *v13;
            }

            v12 = "%q";
          }

          else
          {
            if ((v7 & 0x10000) != 0)
            {
              v23 = v6[5];
              while (1)
              {
                a2(a3, "%q", v23 + 16, v27);
                v23 = *v23;
                if (!v23)
                {
                  break;
                }

                v24 = *(v23 + 1);
                a2(a3, "\t\t# (from %s)\n%s ", v24, *v6);
              }

              goto LABEL_48;
            }

            v12 = a3;
            v13 = "xxx # [don't know how to print value]";
          }

          goto LABEL_47;
        }

        (v6[5])(v6, a2, a3);
        goto LABEL_48;
      }

      if (v8 != 7)
      {
        goto LABEL_37;
      }
    }

    else if (v8 >= 2)
    {
      if (v8 == 2)
      {
        if (*v6[2] != v7)
        {
          if ((v7 & 0x800) == 0)
          {
            goto LABEL_48;
          }

          v17 = v6[5];
          if (!v17 || (v7 & *v17) == 0)
          {
            goto LABEL_48;
          }
        }

        v18 = *v6;
        v12 = a3;
        v13 = "%s";
        goto LABEL_47;
      }

      if (v8 == 3)
      {
        if ((v7 & 0x80) != 0)
        {
          v9 = -256;
        }

        else
        {
          v9 = 0;
        }

        v10 = *v6[2];
        v11 = *v6;
        if ((v7 & 0x200) == 0)
        {
          v25 = *v6;
          v27 = *v6[2];
          v12 = a3;
          v13 = "%s %d";
LABEL_47:
          a2(v12, v13);
          goto LABEL_48;
        }

        v20 = (v9 & 0xFFFFFF00 | *(v6 + 8));
        a2(a3, "%s", *v6);
        if (v10 != v20)
        {
          if ((*(v6 + 33) & 8) != 0)
          {
            while (v10 > v20)
            {
              a2(a3, " %s", *v6);
              v10 -= v20;
            }

            goto LABEL_48;
          }

          v27 = v20;
          v12 = a3;
          v13 = " # oops: %d not %d\n";
          goto LABEL_47;
        }

        goto LABEL_48;
      }

LABEL_37:
      v19 = *v6;
      v27 = *(v6 + 2);
      v12 = a3;
      v13 = "# %s value (type %d??)";
      goto LABEL_47;
    }

    a2(a3, "%s", *v6);
    if ((*(v6 + 2) | 2) == 2 || (*(v6 + 33) & 2) != 0)
    {
      goto LABEL_48;
    }

    a2(a3, " ");
    v7 = *(v6 + 8);
    goto LABEL_26;
  }

  return result;
}

uint64_t getword(FILE *a1, uint64_t a2, _DWORD *a3, int a4)
{
  v8 = 0;
  *a3 = 0;
  LOBYTE(v9) = 1;
  while (1)
  {
LABEL_2:
    v10 = v9;
    v9 = v8;
    do
    {
      v8 = v9;
      v11 = getc(a1);
      if (v11 == -1)
      {
        goto LABEL_19;
      }

      v19 = v11;
      v9 = 1;
      if (v11 == 10)
      {
        if (v10)
        {
          v8 = 0;
          *a3 = 1;
        }

        goto LABEL_2;
      }
    }

    while (v8);
    if ((v10 & 1) == 0)
    {
      goto LABEL_26;
    }

    LOBYTE(v9) = 0;
    v8 = 0;
    if (v11 != 92)
    {
      if (v11 == 35)
      {
        LOBYTE(v9) = 1;
        v8 = 1;
        continue;
      }

      v20 = v11 > 0x7F ? __maskrune(v11, 0x4000uLL) : _DefaultRuneLocale.__runetype[v11] & 0x4000;
      v8 = 0;
      LOBYTE(v9) = 1;
      if (!v20)
      {
        break;
      }
    }
  }

  if (v19 != 39 && v19 != 34)
  {
LABEL_26:
    v21 = 0;
    goto LABEL_27;
  }

  v21 = v19;
  v19 = getc(a1);
  if (v19 != -1)
  {
LABEL_27:
    v22 = 0;
    while ((v10 & 1) != 0)
    {
      if (v21)
      {
        if (v19 == v21)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v19 > 0x7F)
        {
          v26 = __maskrune(v19, 0x4000uLL);
        }

        else
        {
          v26 = _DefaultRuneLocale.__runetype[v19] & 0x4000;
        }

        if (v19 == 35 || v26)
        {
          ungetc(v19, a1);
          goto LABEL_22;
        }
      }

      if (v19 == 92)
      {
LABEL_44:
        v19 = getc(a1);
        v10 ^= 1u;
        if (v19 == -1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v22 <= 0x3FE)
        {
          *(a2 + v22) = v19;
        }

LABEL_74:
        v19 = getc(a1);
LABEL_75:
        ++v22;
        v10 = 1;
        if (v19 == -1)
        {
          goto LABEL_20;
        }
      }
    }

    if (v19 == 10)
    {
      goto LABEL_44;
    }

    if (v19 <= 109)
    {
      switch(v19)
      {
        case 'a':
          v24 = 1;
          v25 = 7;
          goto LABEL_71;
        case 'b':
          v24 = 1;
          v25 = 8;
          goto LABEL_71;
        case 'f':
          v24 = 1;
          v25 = 12;
          goto LABEL_71;
      }
    }

    else if (v19 > 114)
    {
      if (v19 == 115)
      {
        v24 = 1;
        v25 = 32;
        goto LABEL_71;
      }

      if (v19 == 116)
      {
        v24 = 1;
        v25 = 9;
        goto LABEL_71;
      }
    }

    else
    {
      if (v19 == 110)
      {
        v24 = 1;
        v25 = 10;
        goto LABEL_71;
      }

      if (v19 == 114)
      {
        v24 = 1;
        v25 = 13;
        goto LABEL_71;
      }
    }

    if ((v19 & 0xFFFFFFF8) == 0x30)
    {
      v27 = 0;
      v25 = 0;
      do
      {
        v25 = v19 & 7 | (8 * v25);
        v19 = getc(a1);
      }

      while ((v19 & 0xFFFFFFF8) == 0x30 && v27++ < 2);
    }

    else
    {
      if (v19 != 120)
      {
        v24 = 1;
        v25 = v19;
LABEL_71:
        if (v22 <= 0x3FE)
        {
          *(a2 + v22) = v25;
        }

        if (!v24)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }

      v19 = getc(a1);
      if (v19 <= 0xFF)
      {
        v29 = 0;
        v25 = 0;
        while ((_DefaultRuneLocale.__runetype[v19] & 0x10000) != 0)
        {
          v30 = __toupper(v19);
          if (v30 <= 58)
          {
            v31 = -48;
          }

          else
          {
            v31 = -55;
          }

          v25 = v30 + 16 * v25 + v31;
          v19 = getc(a1);
          v24 = 0;
          v32 = (v19 > 0xFF) | v29;
          v29 = 1;
          if (v32)
          {
            goto LABEL_71;
          }
        }
      }

      else
      {
        v25 = 0;
      }
    }

    v24 = 0;
    goto LABEL_71;
  }

LABEL_19:
  LODWORD(v22) = 0;
LABEL_20:
  if (ferror(a1))
  {
    if (!*__error())
    {
      *__error() = 5;
    }

    option_error("Error reading %s: %m", v33, v34, v35, v36, v37, v38, v39, a4);
    die(1);
  }

  if (!v22)
  {
    return 0;
  }

LABEL_22:
  if (v22 >= 1024)
  {
    option_error("warning: word in file %s too long (%.20s...)", v12, v13, v14, v15, v16, v17, v18, a4);
    LODWORD(v22) = 1023;
  }

  *(a2 + v22) = 0;
  return 1;
}

uint64_t int_option(const char *a1, _DWORD *a2)
{
  v4 = 0;
  result = sub_10001423C(a1, &v4, 0);
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t sub_10001423C(const char *a1, _DWORD *a2, int a3)
{
  __endptr = 0;
  *a2 = strtoul(a1, &__endptr, a3);
  if (__endptr != a1)
  {
    return 1;
  }

  option_error("invalid numeric parameter '%s' for %s option", v4, v5, v6, v7, v8, v9, v10, a1);
  return 0;
}

uint64_t options_from_controller()
{
  v0 = 0;
  v25 = 0;
  v29 = 0;
  v30 = 0;
  v1 = privileged_option;
  privileged_option = controlled;
  option_source = "controller";
  option_priority = 2;
  while (1)
  {
    do
    {
      if (!getword(controlfile, &size[1], &v25, "controller"))
      {
LABEL_22:
        v23 = 1;
        if (!v0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    while (*&size[1] == 0x534E4F4954504F5BLL && v27 == 93);
    if (size[1] == 1347372379 && LOWORD(size[2]) == 93)
    {
      goto LABEL_22;
    }

    v4 = sub_100012EE0(&size[1]);
    if (!v4)
    {
      option_error("In controller file descriptor: unrecognized option '%s'", v5, v6, v7, v8, v9, v10, v11, &size[1]);
      goto LABEL_26;
    }

    v12 = v4;
    v29 = 0;
    v30 = 0;
    bzero(v28, 0x400uLL);
    v18 = *(v12 + 8);
    if ((v18 | 2) != 2)
    {
      break;
    }

LABEL_13:
    if (!sub_100013190(v12, &size[1], &v29, v13, v14, v15, v16, v17))
    {
      goto LABEL_26;
    }
  }

  if ((*(v12 + 33) & 2) != 0)
  {
    v21 = 0;
LABEL_19:
    if (v18 == 7)
    {
      size[0] = 0;
      if (!sub_10001423C(v21, size, 0))
      {
        goto LABEL_26;
      }

      v22 = size[0];
      v0 = malloc_type_malloc(size[0], 0x5561B42FuLL);
      fread(v0, v22, 1uLL, controlfile);
      v30 = v0;
    }

    goto LABEL_13;
  }

  if (getword(controlfile, v28, &v25, "controller"))
  {
    v21 = v28;
    v29 = v28;
    v18 = *(v12 + 8);
    goto LABEL_19;
  }

  option_error("In controller file descriptor: too few parameters for option '%s'", v19, v20, v13, v14, v15, v16, v17, &size[1]);
LABEL_26:
  v23 = 0;
  if (v0)
  {
LABEL_23:
    free(v0);
  }

LABEL_24:
  privileged_option = v1;
  return v23;
}

uint64_t options_close()
{
  if (controlfile)
  {
    fclose(controlfile);
    controlfile = 0;
    controlfd = -1;
  }

  result = statusfd;
  if (statusfd != -1)
  {
    result = close(statusfd);
    statusfd = -1;
  }

  controlled = 0;
  return result;
}

uint64_t sub_100014528(const char *a1, uint64_t a2, int a3)
{
  if ((*(a2 + 8) == 6) != a3)
  {
    return 0;
  }

  if (!a3)
  {
    return strcmp(a1, *a2) == 0;
  }

  v4 = *(a2 + 16);

  return v4(a1, 0, 0);
}

uint64_t closeall()
{
  v0 = getdtablesize();
  if (v0 >= 1)
  {
    v1 = v0 + 1;
    do
    {
      close(v1 - 2);
      --v1;
    }

    while (v1 > 1);
  }

  open("/dev/null", 2, 0);
  dup(0);

  return dup(0);
}

uint64_t closeallfrom(int a1)
{
  v2 = opendir("/dev/fd");
  if (v2)
  {
    v3 = v2;
    memset(&v7, 0, 512);
    v6 = 0;
    while (!readdir_r(v3, &v7, &v6) && v6)
    {
      v4 = atoi(v6->d_name);
      if (v4 >= a1 && v4 != v3->__dd_fd)
      {
        close(v4);
      }
    }

    return closedir(v3);
  }

  else
  {
    for (result = getdtablesize(); a1 < result; result = getdtablesize())
    {
      close(a1++);
    }
  }

  return result;
}

uint64_t load_kext(uint64_t a1, int a2)
{
  v4 = fork();
  if (v4 < 0)
  {
    return 1;
  }

  v5 = v4;
  if (!v4)
  {
    closeall();
    if (a2)
    {
      execle("/sbin/kextload", "kextload", "-b", a1, 0, 0);
    }

    else
    {
      execle("/sbin/kextload", "kextload", a1, 0, 0);
    }

    exit(1);
  }

  v6 = 1;
  while (waitpid(v5, 0, 0) < 0)
  {
    if (*__error() != 4)
    {
      return v6;
    }
  }

  return 0;
}

void sys_install(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_10004B978 != -1)
  {
    sub_10002D7B4();
  }

  if (byte_10004B975)
  {
    notice("Committed PPP store on install command\n", a2, a3, a4, a5, a6, a7, a8, vars0);
    v8 = cfgCache;
    v9 = publish_dict;

    SCDynamicStoreSetMultiple(v8, v9, 0, 0);
  }
}

void sys_uninstall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_10004B978 != -1)
  {
    sub_10002D7B4();
  }

  if (byte_10004B975)
  {
    notice("Received uninstall command\n", a2, a3, a4, a5, a6, a7, a8, v13);
    if (publish_dict)
    {
      Count = CFDictionaryGetCount(publish_dict);
      if (Count >= 1)
      {
        v9 = Count;
        Typed = CFAllocatorAllocateTyped();
        if (Typed)
        {
          v11 = Typed;
          CFDictionaryGetKeysAndValues(publish_dict, Typed, 0);
          v12 = CFArrayCreate(kCFAllocatorDefault, v11, v9, &kCFTypeArrayCallBacks);
          SCDynamicStoreSetMultiple(cfgCache, 0, v12, 0);
          if (v12)
          {
            CFRelease(v12);
          }

          CFAllocatorDeallocate(kCFAllocatorDefault, v11);
        }
      }
    }
  }
}

BOOL sys_check_controller()
{
  if (qword_10004B978 != -1)
  {
    sub_10002D7B4();
  }

  if (byte_10004B975)
  {
    sys_log(5, "NetworkExtension is the controller");
    return 1;
  }

  else
  {
    *sp = 0;
    memset(&v3, 0, sizeof(v3));
    euidp = 0;
    if (bootstrap_look_up(bootstrap_port, "com.apple.SystemConfiguration.PPPController-priv", &sp[1]) || sub_10002D5F0(sp[1], sp, &v3))
    {
      return 0;
    }

    else
    {
      atoken = v3;
      audit_token_to_au32(&atoken, 0, &euidp, 0, 0, 0, 0, 0, 0);
      return (sp[0] | euidp) == 0;
    }
  }
}

void sys_log(int a1, char *a2, ...)
{
  va_start(va, a2);
  if (qword_10004B978 != -1)
  {
    sub_10002D7B4();
  }

  if (byte_10004B975)
  {
    if (a1 == 6)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    if (a1 < 6)
    {
      v4 = 0;
    }

    if (a1 == 3)
    {
      v5 = 16;
    }

    else
    {
      v5 = v4;
    }

    if (a1 >= 3)
    {
      v6 = v5;
    }

    else
    {
      v6 = OS_LOG_TYPE_FAULT;
    }

    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
      if (v8)
      {
        v9 = v8;
        v10 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, v8, va);
        if (v10)
        {
          v11 = v10;
          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, v6))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_impl(&_mh_execute_header, v12, v6, "%@", buf, 0xCu);
          }

          CFRelease(v11);
        }

        CFRelease(v9);
      }
    }
  }

  else
  {
    vsyslog(a1, a2, va);
  }
}

const __CFData *Unserialize(UInt8 *bytes, CFIndex length)
{
  result = CFDataCreate(0, bytes, length);
  if (result)
  {
    v3 = result;
    v4 = CFPropertyListCreateFromXMLData(0, result, 0, 0);
    CFRelease(v3);
    return v4;
  }

  return result;
}

void CopyControllerData()
{
  sp = 0;
  v16 = 0;
  v14 = 1001;
  v15 = 0;
  memset(&v13, 0, sizeof(v13));
  euidp = 0;
  if (!bootstrap_look_up(bootstrap_port, "com.apple.SystemConfiguration.PPPController-priv", &sp))
  {
    v0 = sub_10002D3BC(sp, 0, &v16, &v15, &v14, &v13);
    if (v0 | v14)
    {
      v8 = "cannot get private system options from controller\n";
    }

    else
    {
      atoken = v13;
      audit_token_to_au32(&atoken, 0, &euidp, 0, 0, 0, 0, 0, 0);
      if (euidp)
      {
        v8 = "cannot authenticate private system options from controller\n";
      }

      else
      {
        systemOptions = Unserialize(v16, v15);
        v9 = sub_10002D3BC(sp, 1, &v16, &v15, &v14, &v13);
        if (v9 | v14)
        {
          v8 = "cannot get private user options from controller\n";
        }

        else
        {
          atoken = v13;
          audit_token_to_au32(&atoken, 0, &euidp, 0, 0, 0, 0, 0, 0);
          if (!euidp)
          {
            userOptions = Unserialize(v16, v15);
            return;
          }

          v8 = "cannot authenticate private user options from controller\n";
        }
      }
    }

    error(v8, v1, v2, v3, v4, v5, v6, v7, tidp);
  }
}

void CopyServerData()
{
  v0 = SCPreferencesCreate(0, @"pppd", @"com.apple.RemoteAccessServers.plist");
  if (!v0)
  {
    fatal();
  }

  v1 = v0;
  Value = SCPreferencesGetValue(v0, @"Servers");
  if (!Value)
  {
    fatal();
  }

  v3 = CFDictionaryGetValue(Value, serveridRef);
  systemOptions = v3;
  if (!v3 || (v4 = CFGetTypeID(v3), v4 != CFDictionaryGetTypeID()))
  {
    fatal();
  }

  CFRetain(systemOptions);

  CFRelease(v1);
}

BOOL sys_protocolsreadynotify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_10004B6B8 = 1;
  dbglog("Received protocol dictionaries\n", a2, a3, a4, a5, a6, a7, a8, vars0);

  return sub_100014ECC(v8, v9, v10, v11, v12, v13, v14, v15);
}

BOOL sub_100014ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (demand)
  {
    return 0;
  }

  if (phase != 8 || byte_10004B6B8 == 0)
  {
    return 0;
  }

  if (acsp_use_dhcp | byte_100046F00 && byte_10004B6B9 == 0)
  {
    return 0;
  }

  if (!publish_dict)
  {
    return 1;
  }

  if (qword_10004B978 != -1)
  {
    sub_10002D7B4();
  }

  if (byte_10004B975)
  {
    if (cfgCache)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v11 = Mutable;
        v25 = &ifname;
        v12 = CFStringCreateWithFormat(0, 0, @"%s");
        if (v12)
        {
          v13 = v12;
          CFDictionarySetValue(v11, kSCPropInterfaceName, v12);
          CFRelease(v13);
        }

        NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, kSCEntNetIPv4);
        if (NetworkServiceEntity)
        {
          v15 = NetworkServiceEntity;
          if (!SCDynamicStoreSetValue(cfgCache, NetworkServiceEntity, v11))
          {
            v16 = SCError();
            SCErrorString(v16);
            warning("SCDynamicStoreSetValue Ifname %s failed: %s\n", v17, v18, v19, v20, v21, v22, v23, &ifname);
          }

          CFRelease(v15);
        }

        CFRelease(v11);
      }
    }

    sys_notify(266, 22, byte_10004B858, a4, a5, a6, a7, a8, v25);
    return 1;
  }

  notice("Committed PPP store\n", a2, a3, a4, a5, a6, a7, a8, v25);
  return SCDynamicStoreSetMultiple(cfgCache, publish_dict, 0, 0) != 0;
}

BOOL sys_acspdhcpreadynotify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  byte_10004B6B9 = 1;
  dbglog("Received acsp/dhcp dictionaries\n", a2, a3, a4, a5, a6, a7, a8, vars0);

  return sub_100014ECC(v8, v9, v10, v11, v12, v13, v14, v15);
}

double sys_init()
{
  openlog("pppd", 9, 120);
  setlogmask(127);
  if (debug)
  {
    setlogmask(255);
  }

  setsid();
  v0 = sub_1000158E8();
  ppp_sockfd = v0;
  if (v0 < 0)
  {
    fatal();
  }

  v1 = fcntl(v0, 3);
  if (v1 == -1 || (v31 = v1 | 4, fcntl(ppp_sockfd, 4) == -1))
  {
    warning("Couldn't set PF_PPP to nonblock: %m", v2, v3, v4, v5, v6, v7, v8, v31);
  }

  info = 0;
  dword_10004B6BC = socket(2, 2, 0);
  if (dword_10004B6BC < 0)
  {
    v32 = *__error();
    fatal();
  }

  v9 = serviceid;
  if (!serviceid)
  {
    v10 = CFUUIDCreate(0);
    v11 = CFUUIDCreateString(0, v10);
    CFStringGetCString(v11, buffer, 100, 0x8000100u);
    serviceid = strdup(buffer);
    if (!serviceid)
    {
      v35 = *__error();
      fatal();
    }

    CFRelease(v11);
    CFRelease(v10);
    v9 = serviceid;
  }

  serviceidRef = CFStringCreateWithFormat(0, 0, @"%s", v9);
  if (!serviceidRef)
  {
    v33 = *__error();
    fatal();
  }

  if (controlled)
  {
    if (qword_10004B978 != -1)
    {
      sub_10002D7C8();
    }

    if (byte_10004B975)
    {
      if (qword_10004B988 != -1)
      {
        sub_10002D7F0();
      }

      if (qword_10004B980)
      {
        v37 = 0;
        v38 = &v37;
        v39 = 0x2000000000;
        v40 = 0;
        v12 = dispatch_semaphore_create(0);
        dispatch_get_global_queue(0, 0);
        *buffer = _NSConcreteStackBlock;
        v42 = 0x40000000;
        v43 = sub_10001BE8C;
        v44 = &unk_10003CB80;
        v45 = &v37;
        v46 = v12;
        ne_session_get_info();
        dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v12);
        v13 = v38[3];
        if (v13 && xpc_get_type(v13) == &_xpc_type_dictionary)
        {
          if (xpc_dictionary_get_value(v38[3], "SessionLegacyServiceConfiguration"))
          {
            systemOptions = _CFXPCCreateCFObjectFromXPCObject();
          }

          if (xpc_dictionary_get_value(v38[3], "SessionLegacyUserConfiguration"))
          {
            userOptions = _CFXPCCreateCFObjectFromXPCObject();
          }
        }

        v14 = v38[3];
        if (v14)
        {
          xpc_release(v14);
        }

        _Block_object_dispose(&v37, 8);
      }
    }

    else
    {
      CopyControllerData();
    }
  }

  cfgCache = SCDynamicStoreCreate(0, @"pppd", 0, 0);
  if (!cfgCache)
  {
    v30 = SCError();
    SCErrorString(v30);
    fatal();
  }

  if (nodetach)
  {
    v15 = getpid();
    publish_dictnumentry(kSCEntNetPPP, @"pid", v15);
  }

  publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPStatus, phase);
  if (serverid)
  {
    serveridRef = CFStringCreateWithFormat(0, 0, @"%s", serverid);
    if (!serveridRef)
    {
      v34 = *__error();
      fatal();
    }

    CopyServerData();
    publish_dictstrentry(kSCEntNetInterface, @"ServerID", serverid, 0);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  publish_dict = Mutable;
  if (!controlled && Mutable)
  {
    rls = SCDynamicStoreCreateRunLoopSource(kCFAllocatorDefault, cfgCache, 0);
    if (rls)
    {
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, rls, kCFRunLoopDefaultMode);
    }

    else
    {
      v18 = SCError();
      v19 = SCErrorString(v18);
      notice("SCDynamicStoreCreateRunLoopSource FAILED %s", v20, v21, v22, v23, v24, v25, v26, v19);
    }

    SCDynamicStoreSetDisconnectCallBack();
  }

  add_notifier(&phasechange, sub_100015BCC, 0);
  add_notifier(&exitnotify, sub_100015DD0, 0);
  if (statusfd != -1)
  {
    add_notifier(&ip_up_notify, sub_100015E68, 10);
    add_notifier(&ip_down_notify, sub_100015E68, 11);
    add_notifier(&lcp_up_notify, sub_100015E68, 8);
    add_notifier(&lcp_down_notify, sub_100015E68, 9);
    add_notifier(&lcp_lowerup_notify, sub_100015E68, 6);
    add_notifier(&lcp_lowerdown_notify, sub_100015E68, 7);
    add_notifier(&auth_start_notify, sub_100015E68, 12);
    add_notifier(&auth_withpeer_fail_notify, sub_100015E68, 13);
    add_notifier(&auth_withpeer_success_notify, sub_100015E68, 14);
    add_notifier(&connectscript_started_notify, sub_100015E68, 2);
    add_notifier(&connectscript_finished_notify, sub_100015E68, 3);
    add_notifier(&terminalscript_started_notify, sub_100015E68, 4);
    add_notifier(&terminalscript_finished_notify, sub_100015E68, 5);
    add_notifier(&connect_started_notify, sub_100015E68, 15);
    add_notifier(&connect_success_notify, sub_100015E68, 17);
    add_notifier(&connect_fail_notify, sub_100015E68, 16);
    add_notifier(&disconnect_started_notify, sub_100015E68, 18);
    add_notifier(&disconnect_done_notify, sub_100015E68, 19);
    add_notifier(&stop_notify, sub_100015E68, 20);
    add_notifier(&cont_notify, sub_100015E68, 21);
  }

  add_notifier(&lcp_timeremaining_notify, sub_100015E84, 0);
  add_notifier(&auth_peer_success_notify, sub_100015F68, 0);
  add_notifier(&protocolsready_notifier, sys_protocolsreadynotify, 0);
  add_notifier(&acspdhcpready_notifier, sys_acspdhcpreadynotify, 0);
  if (!mach_timebase_info(&info))
  {
    LODWORD(v27) = info.numer;
    LODWORD(v28) = info.denom;
    *&timeScaleMicroSeconds = v27 / v28 / 1000.0;
    *&timeScaleSeconds = *&timeScaleMicroSeconds / 1000000.0;
  }

  result = 0.0;
  xmmword_10004B720 = 0u;
  unk_10004B730 = 0u;
  xmmword_10004B700 = 0u;
  unk_10004B710 = 0u;
  xmmword_10004B6E0 = 0u;
  unk_10004B6F0 = 0u;
  xmmword_10004B6C0 = 0u;
  *algn_10004B6D0 = 0u;
  xmmword_10004B740 = 0u;
  *algn_10004B750 = 0u;
  xmmword_10004B760 = 0u;
  unk_10004B770 = 0u;
  xmmword_10004B780 = 0u;
  unk_10004B790 = 0u;
  xmmword_10004B7A0 = 0u;
  unk_10004B7B0 = 0u;
  dword_10004B7C0 = 0;
  return result;
}

uint64_t sub_1000158E8()
{
  v0 = socket(34, 3, 1);
  if ((v0 & 0x80000000) != 0)
  {
    error("Couldn't open PF_PPP: %m", v1, v2, v3, v4, v5, v6, v7, v17);
    return 0xFFFFFFFFLL;
  }

  v8 = v0;
  *&v18.sa_len = 74248;
  if (connect(v0, &v18, 8u) < 0)
  {
    error("Couldn't connect to PF_PPP: %m", v9, v10, v11, v12, v13, v14, v15, v17);
    close(v8);
    return 0xFFFFFFFFLL;
  }

  return v8;
}

uint64_t publish_dictnumentry(CFStringRef entity, const void *a2, int a3)
{
  valuePtr = a3;
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, entity);
  if (!NetworkServiceEntity)
  {
    return 12;
  }

  v5 = NetworkServiceEntity;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (v6)
  {
    v7 = v6;
    publish_keyentry(v5, a2, v6);
    CFRelease(v7);
    v8 = 0;
  }

  else
  {
    v8 = 12;
  }

  CFRelease(v5);
  return v8;
}

uint64_t publish_dictstrentry(CFStringRef entity, const void *a2, const char *a3, CFStringEncoding a4)
{
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, entity);
  if (!NetworkServiceEntity)
  {
    return 12;
  }

  v8 = NetworkServiceEntity;
  v9 = CFStringCreateWithCString(0, a3, a4);
  if (v9)
  {
    v10 = v9;
    publish_keyentry(v8, a2, v9);
    CFRelease(v10);
    v11 = 0;
  }

  else
  {
    v11 = 12;
  }

  CFRelease(v8);
  return v11;
}

void sub_100015AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  dbglog("DynamicStore Server has reconnected, republish keys", a2, a3, a4, a5, a6, a7, a8, v37);
  if (publish_dict)
  {
    Count = CFDictionaryGetCount(publish_dict);
    if (Count)
    {
      v9 = Count;
      CFRelease(cfgCache);
      cfgCache = SCDynamicStoreCreate(0, @"pppd", 0, 0);
      if (!cfgCache)
      {
        v36 = SCError();
        SCErrorString(v36);
        fatal();
      }

      dbglog("republish_dict: processing %d keys", v10, v11, v12, v13, v14, v15, v16, v9);
      if (demand)
      {
        v25 = publish_dict;
        if (publish_dict)
        {
          v26 = cfgCache;

          SCDynamicStoreSetMultiple(v26, v25, 0, 0);
        }
      }

      else if (!sub_100014ECC(v17, v18, v19, v20, v21, v22, v23, v24))
      {
        v27 = SCError();
        v28 = SCErrorString(v27);
        warning("republish_dict SCDynamicStoreSetMultiple failed key: %s\n", v29, v30, v31, v32, v33, v34, v35, v28);
      }
    }
  }
}

void sub_100015BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPStatus, a2);
  if (a2 > 3)
  {
    if (a2 <= 10)
    {
      if (a2 != 4)
      {
        if (a2 != 10)
        {
          goto LABEL_19;
        }

        unpublish_dictentry(kSCEntNetPPP, @"AuthPeerName");
        unpublish_dictentry(kSCEntNetPPP, kSCPropNetPPPCommRemoteAddress);
        unpublish_dictentry(kSCEntNetPPP, kSCPropNetPPPConnectTime);
        unpublish_dictentry(kSCEntNetPPP, kSCPropNetPPPDisconnectTime);
        v15 = 23;
        v16 = 0;
        goto LABEL_14;
      }

      dword_10004B990 = (*&timeScaleSeconds * mach_absolute_time());
      publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPConnectTime, dword_10004B990);
      if (maxconnect)
      {
        v20 = kSCPropNetPPPDisconnectTime;
        v18 = dword_10004B990 + maxconnect;
        v19 = kSCEntNetPPP;
LABEL_17:
        publish_dictnumentry(v19, v20, v18);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if (a2 != 11)
    {
      if (a2 != 13)
      {
        goto LABEL_19;
      }

      v17 = redialtimer;
      v18 = (v17 + mach_absolute_time() * *&timeScaleSeconds);
      v19 = kSCEntNetPPP;
      v20 = kSCPropNetPPPRetryConnectTime;
      goto LABEL_17;
    }

LABEL_13:
    v16 = *status;
    v15 = 1;
LABEL_14:
    sys_notify(266, v15, v16, v10, v11, v12, v13, v14, v23);
    goto LABEL_19;
  }

  switch(a2)
  {
    case 0:
      goto LABEL_13;
    case 2:
      unpublish_dictentry(kSCEntNetPPP, kSCPropNetPPPRetryConnectTime);
      break;
    case 3:
      goto LABEL_13;
  }

LABEL_19:
  v21 = phase;
  if (phase)
  {
    v22 = ifunit;

    sys_notify(268, v21, v22, v10, v11, v12, v13, v14, a9);
  }
}

void sub_100015DD0(uint64_t a1, int a2)
{
  unpublish_dict(kSCEntNetPPP);
  unpublish_dict(kSCEntNetDNS);
  unpublish_dict(kSCEntNetProxies);
  unpublish_dict(kSCEntNetInterface);
  sys_notify(266, 1, a2, v3, v4, v5, v6, v7, v8);
  if (cfgCache)
  {
    CFRelease(cfgCache);
    cfgCache = 0;
  }

  if (publish_dict)
  {
    CFRelease(publish_dict);
    publish_dict = 0;
  }
}

void sub_100015E68(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a1 == 16)
  {
    v9 = 8;
  }

  else
  {
    v9 = a2;
  }

  sys_notify(266, a1, v9, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_100015E84(uint64_t a1, _DWORD *a2)
{
  v3 = mach_absolute_time();
  if (*a2 == -1)
  {
    if (!maxconnect || (v4 = dword_10004B990 + maxconnect) == 0)
    {
LABEL_12:

      return unpublish_dictentry(kSCEntNetPPP, kSCPropNetPPPDisconnectTime);
    }
  }

  else
  {
    v4 = *a2 + (*&timeScaleSeconds * v3);
    if (maxconnect && v4 >= dword_10004B990 + maxconnect)
    {
      v4 = dword_10004B990 + maxconnect;
    }

    if (!v4)
    {
      goto LABEL_12;
    }
  }

  return publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPDisconnectTime, v4);
}

uint64_t sys_cleanup()
{
  if (controlled)
  {
    v0 = 1;
  }

  else
  {
    v0 = rls == 0;
  }

  if (!v0)
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, rls, kCFRunLoopDefaultMode);
    CFRunLoopSourceInvalidate(rls);
    CFRelease(rls);
    rls = 0;
  }

  v3 = 0u;
  v4 = 0u;
  result = cifroute();
  if (byte_10004B7C4 == 1)
  {
    __strlcpy_chk();
    result = ioctl(dword_10004B6BC, 0xC0206911uLL, &v3);
    if (result & 0x80000000) == 0 && (v4)
    {
      LOWORD(v4) = v4 & 0xFFFE;
      result = ioctl(dword_10004B6BC, 0x80206910uLL, &v3);
    }
  }

  if (dword_10004B7C8)
  {
    result = cifaddr(result, dword_10004B7C8, dword_10004B7CC);
  }

  if (dword_10004B7D0)
  {
    return cifproxyarp();
  }

  return result;
}

uint64_t cifroute()
{
  if (addifroute)
  {
    v0 = dword_10004B848 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    route_interface(2, dword_10004B840, dword_10004B844, 23, &ifname, 0);
    dword_10004B848 = 0;
  }

  return 1;
}

uint64_t cifaddr(uint64_t a1, int a2, int a3)
{
  v13 = 0u;
  cifroute();
  dword_10004B7C8 = 0;
  __strlcpy_chk();
  v16 = 0;
  v14 = 528;
  v15 = a2;
  v19 = 0;
  v17 = 528;
  v18 = a3;
  v20 = 0uLL;
  if (ioctl(dword_10004B6BC, 0x80206919uLL) < 0)
  {
    if (*__error() != 49)
    {
      warning("Couldn't delete interface address: %m", v6, v7, v8, v9, v10, v11, v12, &v13);
    }

    return 0;
  }

  else
  {
    unpublish_dict(kSCEntNetIPv4);
    return 1;
  }
}

uint64_t cifdefaultroute()
{
  byte_10004B858 = 0;
  ppp_create_ipv6_dummy_primary(1);

  return unpublish_dictentry(kSCEntNetIPv4, kSCPropNetOverridePrimary);
}

uint64_t cifproxyarp()
{
  if (byte_10004B960 != 1)
  {
    return 0;
  }

  byte_10004B960 = 0;
  BYTE3(xmmword_10004B85C) = 2;
  dword_10004B870 = ++dword_10004B95C;
  v1 = socket(17, 3, 17);
  if (v1 < 0)
  {
    error("Couldn't delete proxy arp entry: socket: %m", v2, v3, v4, v5, v6, v7, v8, v0);
  }

  else
  {
    v9 = v1;
    if ((write(v1, &xmmword_10004B85C, xmmword_10004B85C) & 0x8000000000000000) == 0)
    {
      close(v9);
      dword_10004B7D0 = 0;
      return 1;
    }

    error("Couldn't delete proxy arp entry: %m", v10, v11, v12, v13, v14, v15, v16, v0);
    close(v9);
  }

  return 0;
}

void sys_runloop()
{
  if (controlled)
  {
    v1 = 1;
  }

  else
  {
    v1 = rls == 0;
  }

  if (!v1)
  {
    if (kill_link)
    {
      Current = CFRunLoopGetCurrent();

      CFRunLoopStop(Current);
    }

    else
    {

      CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.0, 1u);
    }
  }
}

void set_network_signature(char *__s, const char *a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (qword_10004B7D8)
  {
    free(qword_10004B7D8);
    qword_10004B7D8 = 0;
  }

  if (__s)
  {
    v13 = strlen(__s);
    v14 = strlen(a2) + v13 + 1;
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
    if (!a3)
    {
      goto LABEL_9;
    }
  }

  v15 = strlen(a3);
  v16 = strlen(a4) + v15;
  if (__s)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v14 += v17 + v16;
LABEL_9:
  if (!v14)
  {
    return;
  }

  v18 = v14 + 1;
  v19 = malloc_type_malloc(v18, 0x49FE976AuLL);
  qword_10004B7D8 = v19;
  if (v19)
  {
    *v19 = 0;
    if (__s)
    {
      strlcat(v19, __s, v18);
      strlcat(qword_10004B7D8, "=", v18);
      strlcat(qword_10004B7D8, a2, v18);
      if (!a3)
      {
        return;
      }

      strlcat(qword_10004B7D8, ";", v18);
      v19 = qword_10004B7D8;
    }

    else if (!a3)
    {
      return;
    }

    strlcat(v19, a3, v18);
    strlcat(qword_10004B7D8, "=", v18);
    v27 = qword_10004B7D8;

    strlcat(v27, a4, v18);
  }

  else
  {

    warning("no memory to create network signature", v20, v21, v22, v23, v24, v25, v26, a9);
  }
}

CFStringRef set_server_peer(in_addr a1)
{
  if (qword_10004B7E0)
  {
    CFRelease(qword_10004B7E0);
    qword_10004B7E0 = 0;
  }

  v2.s_addr = a1.s_addr;
  v3 = inet_ntoa(v2);
  result = CFStringCreateWithCString(0, v3, 0x600u);
  qword_10004B7E0 = result;
  return result;
}

uint64_t sys_close()
{
  if (dword_10004B6BC != -1)
  {
    close(dword_10004B6BC);
    dword_10004B6BC = -1;
  }

  result = ppp_sockfd;
  if (ppp_sockfd != -1)
  {
    result = close(ppp_sockfd);
    ppp_sockfd = -1;
  }

  return result;
}

void sys_notify(__int16 a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (statusfd != -1)
  {
    v12 = strlen(serviceid);
    v13 = v12;
    v14 = ((v12 << 32) + 0x1C00000000) >> 32;
    v15 = malloc_type_malloc(v14, 0x5FCC7D7DuLL);
    if (v15)
    {
      v23 = v15;
      bzero(v15, v14);
      v23[1] = a1;
      *v23 |= 0x8000u;
      *(v23 + 3) = v13;
      *(v23 + 4) = 8;
      memmove(v23 + 10, serviceid, v13);
      v24 = (v23 + v13 + 20);
      *v24 = a2;
      v24[1] = a3;
      if (write(statusfd, v23, v14) != v14)
      {
        warning("can't talk to PPPController : %m", v25, v26, v27, v28, v29, v30, v31, v32);
      }

      free(v23);
    }

    else
    {

      warning("no memory to send event to PPPController", v16, v17, v18, v19, v20, v21, v22, a9);
    }
  }
}

uint64_t sys_check_options(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (crtscts != 2)
  {
    return 1;
  }

  warning("DTR/CTS flow control is not supported on this system", a2, a3, a4, a5, a6, a7, a8, v8);
  return 0;
}

uint64_t ppp_available()
{
  no_ppp_msg[0] = "Mac OS X lacks kernel support for PPP.  \nTo include PPP support in the kernel, please follow \nthe steps detailed in the README.MacOSX file.\n";
  v0 = socket(34, 3, 1);
  if (v0 < 0)
  {
    if (noload)
    {
      return 0;
    }

    if (load_kext("com.apple.nke.ppp", 1))
    {
      return 0;
    }

    v0 = socket(34, 3, 1);
    if (v0 < 0)
    {
      return 0;
    }
  }

  close(v0);
  return 1;
}

uint64_t tty_establish_ppp(int a1)
{
  ioctl(a1, 0x2000740DuLL, 0);
  if (sync_serial)
  {
    v2 = 14;
  }

  else
  {
    v2 = 5;
  }

  dword_100045290 = v2;
  if (ioctl(a1, 0x8004741BuLL, &dword_100045290) < 0 && *__error() != 5)
  {
    v13 = "Couldn't set tty to PPP discipline: %m";
    goto LABEL_12;
  }

  v10 = generic_establish_ppp(a1, 0);
  if (v10 == -1)
  {
    v15 = &unk_10004B7E8;
    if ((ioctl(a1, 0x8004741BuLL) & 0x80000000) == 0 || *__error() == 5)
    {
      return 0xFFFFFFFFLL;
    }

    v13 = "ioctl(TIOCSETD, TTYDISC): %m";
LABEL_12:
    error(v13, v3, v4, v5, v6, v7, v8, v9, v15);
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  v12 = sub_100016BE8(dword_100045294);
  sub_100016B7C(v11, v12 & 0xF0FFFFFF);
  return v11;
}

uint64_t generic_establish_ppp(int a1, uint64_t a2)
{
  v42 = 0;
  v39 = &v42;
  if (ioctl(a1, 0x40047437uLL) == -1)
  {
    v37 = "Couldn't get link number: %m";
LABEL_19:
    error(v37, v3, v4, v5, v6, v7, v8, v9, v39);
    return 0xFFFFFFFFLL;
  }

  dbglog("using link %d", v3, v4, v5, v6, v7, v8, v9, v42);
  v10 = sub_1000158E8();
  if (v10 < 0)
  {
    v37 = "Couldn't reopen PF_PPP: %m";
    goto LABEL_19;
  }

  v11 = v10;
  v40 = &v42;
  if (ioctl(v10, 0x80047438uLL) < 0)
  {
    error("Couldn't attach to the ppp link %d: %m", v12, v13, v14, v15, v16, v17, v18, v42);
  }

  else
  {
    v19 = fcntl(v11, 3);
    if (v19 == -1 || (LODWORD(v40) = v19 | 4, fcntl(v11, 4) == -1))
    {
      warning("Couldn't set ppp socket link to nonblock: %m", v20, v21, v22, v23, v24, v25, v26, v40);
    }

    dword_100045294 = v11;
    if (looped || (ifunit = -1, multilink) || (sub_100016E04() & 0x80000000) == 0)
    {
      if (a2 && (v41 = a2, ioctl(ppp_sockfd, 0x80107434uLL) < 0))
      {
        v38 = "Couldn't set the delegate interface: %m";
      }

      else
      {
        if (looped)
        {
          v34 = ppp_sockfd;
          v35 = sub_100016BE8(ppp_sockfd);
          sub_100016B7C(v34, v35 & 0xFFFFFDFF);
          looped = 0;
        }

        if (multilink || (add_fd(ppp_sockfd), (ioctl(v11, 0x8004743AuLL, &ifunit) & 0x80000000) == 0))
        {
          sub_100016FA4(kdebugflag);
          return dword_100045294;
        }

        v41 = ifunit;
        v38 = "Couldn't attach to PPP unit %d: %m";
      }

      error(v38, v27, v28, v29, v30, v31, v32, v33, v41);
    }
  }

  close(v11);
  return 0xFFFFFFFFLL;
}

int *sub_100016B7C(int a1, int a2)
{
  v4 = a2;
  result = ioctl(a1, 0x80047459uLL, &v4);
  if ((result & 0x80000000) != 0)
  {
    result = __error();
    if (*result != 5)
    {
      v3 = *__error();
      fatal();
    }
  }

  return result;
}

uint64_t sub_100016BE8(int a1)
{
  v2 = 0;
  if ((ioctl(a1, 0x4004745AuLL, &v2) & 0x80000000) == 0)
  {
    return v2;
  }

  if (*__error() != 5)
  {
    fatal();
  }

  return 0;
}

void tty_disestablish_ppp(int a1)
{
  if (hungup)
  {
  }

  else
  {
    if (ioctl(a1, 0x8004741BuLL) < 0 && *__error() != 5)
    {
      error("ioctl(TIOCSETD, TTYDISC): %m", v3, v4, v5, v6, v7, v8, v9, &unk_10004B7E8);
    }

    if (ioctl(a1, 0x2000740EuLL, 0) < 0 && *__error() != 5)
    {
      v10 = __error();
      warning("ioctl(TIOCNXCL): %m(%d)", v11, v12, v13, v14, v15, v16, v17, *v10);
    }
  }

  generic_disestablish_ppp();
}

void generic_disestablish_ppp()
{
  v9 = 0;
  close(dword_100045294);
  dword_100045294 = -1;
  if (demand)
  {
    looped = 1;
    v0 = ppp_sockfd;
    v1 = sub_100016BE8(ppp_sockfd);
    sub_100016B7C(v0, v1 | 0x200);
  }

  else
  {
    unpublish_dictentry(kSCEntNetPPP, kSCPropInterfaceName);
    if ((ifunit & 0x80000000) == 0 && ioctl(ppp_sockfd, 0x8004743CuLL, &v9) < 0)
    {
      error("Couldn't release PPP unit ppp_sockfd %d: %m", v2, v3, v4, v5, v6, v7, v8, ppp_sockfd);
    }
  }

  if (!multilink)
  {
    remove_fd(ppp_sockfd);
  }
}

uint64_t sub_100016E04()
{
  ifunit = req_unit;
  v7 = ioctl(ppp_sockfd, 0xC004743EuLL);
  if ((v7 & 0x80000000) != 0 && (req_unit & 0x80000000) == 0)
  {
    if (*__error() != 17)
    {
LABEL_7:
      error("Couldn't create new ppp unit: %m", v0, v1, v2, v3, v4, v5, v6, &ifunit);
      return v7;
    }

    warning("Couldn't allocate PPP unit %d as it is already in use", v0, v1, v2, v3, v4, v5, v6, &ifunit);
    ifunit = -1;
    v7 = ioctl(ppp_sockfd, 0xC004743EuLL);
  }

  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  slprintf(v9, 32, "%s%d");
  publish_dictstrentry(kSCEntNetPPP, kSCPropInterfaceName, v9, 0);
  return v7;
}

uint64_t add_fd(int a1)
{
  result = __darwin_check_fd_set_overflow(a1, &xmmword_10004B6C0, 0);
  if (result)
  {
    *(&xmmword_10004B6C0 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  if (dword_10004B7C0 < a1)
  {
    dword_10004B7C0 = a1;
  }

  return result;
}

void sub_100016FA4(int a1)
{
  v8 = a1;
  if ((ifunit & 0x80000000) == 0 && ioctl(ppp_sockfd, 0x80047440uLL) < 0 && *__error() != 5)
  {
    error("ioctl(PPPIOCSDEBUG): %m", v1, v2, v3, v4, v5, v6, v7, &v8);
  }
}

uint64_t unpublish_dictentry(CFStringRef entity, const void *a2)
{
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, entity);
  if (!NetworkServiceEntity)
  {
    return 12;
  }

  v4 = NetworkServiceEntity;
  unpublish_keyentry(NetworkServiceEntity, a2);
  CFRelease(v4);
  return 0;
}

uint64_t remove_fd(int a1)
{
  result = __darwin_check_fd_set_overflow(a1, &xmmword_10004B6C0, 0);
  if (result)
  {
    *(&xmmword_10004B6C0 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << a1);
  }

  return result;
}

void clean_check()
{
  if (!hungup && (dword_100045294 & 0x80000000) == 0)
  {
    v17 = 0;
    if (!ioctl(dword_100045294, 0x4004745AuLL))
    {
      v7 = (~v17 & 0xF000000) - 0x1000000;
      if (!(v7 >> 27))
      {
        v8 = HIBYTE(v7);
        if ((0x8Bu >> v8))
        {
          v9 = off_10003CBE0[v8];
          warning("Serial link is not 8-bit clean:", v0, v1, v2, v3, v4, v5, v6, &v17);
          warning("All received characters had %s", v10, v11, v12, v13, v14, v15, v16, v9);
        }
      }
    }
  }
}

void set_up_tty(int a1, int a2)
{
  v20 = 0;
  if (ioctl(a1, 0x20007461uLL) == -1)
  {
    error("set_up_tty, can't set controlling terminal: %m", v4, v5, v6, v7, v8, v9, v10, 0);
  }

  memset(&v21, 0, sizeof(v21));
  if (tcgetattr(a1, &v21) < 0)
  {
    error("tcgetattr: %m", v11, v12, v13, v14, v15, v16, v17, v20);
  }

  else
  {
    if ((byte_10004B7EC & 1) == 0)
    {
      *byte_10004B7F0 = v21;
      ioctl(a1, 0x40087468uLL, &unk_10004B838);
    }

    v18 = v21.c_cflag & 0xFFFFFFFFFFFF68FFLL;
    if (a2 || crtscts < 1)
    {
      if (crtscts < 0)
      {
        v18 = v21.c_cflag & 0xFFFFFFFFFFFC68FFLL;
      }
    }

    else if (crtscts != 2)
    {
      v18 = v21.c_cflag & 0xFFFFFFFFFFFC68FFLL | 0x30000;
    }

    v21.c_cflag = v18 | 0x4B00;
    if (a2 || !modem)
    {
      v21.c_cflag = v18 | 0xCB00;
    }

    *&v21.c_iflag = xmmword_10002EEB0;
    v21.c_lflag = 0;
    *&v21.c_cc[16] = 1;
    if (crtscts == -2)
    {
      v21.c_iflag = 1541;
      *&v21.c_cc[12] = 4881;
    }

    if (inspeed)
    {
      cfsetospeed(&v21, inspeed);
      cfsetispeed(&v21, inspeed);
      v19 = inspeed;
    }

    else
    {
      v19 = cfgetospeed(&v21);
      inspeed = v19;
      if (!v19)
      {
        fatal();
      }
    }

    baud_rate = v19;
    if (tcsetattr(a1, 2, &v21) < 0)
    {
      fatal();
    }

    byte_10004B7EC = 1;
  }
}

void set_up_tty_local(int a1, int a2)
{
  memset(&v12, 0, sizeof(v12));
  if (tcgetattr(a1, &v12) < 0)
  {
    error("tcgetattr: %m", v4, v5, v6, v7, v8, v9, v10, v12.c_iflag);
  }

  else
  {
    *&v12.c_cc[16] = 1;
    c_cflag = v12.c_cflag;
    v12.c_cflag &= ~0x8000uLL;
    if (a2 || !modem)
    {
      v12.c_cflag = c_cflag | 0x8000;
    }

    if (tcsetattr(a1, 0, &v12) < 0)
    {
      fatal();
    }
  }
}

uint64_t restore_tty(uint64_t result)
{
  if (byte_10004B7EC == 1)
  {
    v1 = result;
    if (!default_device)
    {
      *&byte_10004B7F0[24] &= 0xFFFFFFFFFFFFFFE7;
    }

    if (!hungup)
    {
      if (tcsetattr(result, 2, byte_10004B7F0) < 0 && *__error() != 6)
      {
        warning("tcsetattr: %m", v2, v3, v4, v5, v6, v7, v8, v9);
      }

      result = ioctl(v1, 0x80087467uLL, &unk_10004B838);
    }

    byte_10004B7EC = 0;
  }

  return result;
}

uint64_t setdtr(int a1, int a2)
{
  v3 = 2;
  if (a2)
  {
    return ioctl(a1, 0x8004746CuLL, &v3);
  }

  else
  {
    return ioctl(a1, 0x8004746BuLL, &v3);
  }
}

uint64_t get_pty(int *a1, int *a2, char *a3, uid_t a4)
{
  if (openpty(a1, a2, a3, 0, 0) < 0)
  {
    return 0;
  }

  memset(&v15, 0, sizeof(v15));
  fchown(*a2, a4, 0xFFFFFFFF);
  fchmod(*a2, 0x180u);
  if (tcgetattr(*a2, &v15))
  {
    v13 = "couldn't get attributes on pty: %m";
  }

  else
  {
    *&v15.c_iflag = xmmword_10002EEC0;
    v15.c_cflag = v15.c_cflag & 0xFFFFFFFFFFFFE0FFLL | 0xB00;
    v15.c_lflag = 0;
    if ((tcsetattr(*a2, 2, &v15) & 0x80000000) == 0)
    {
      return 1;
    }

    v13 = "couldn't set attributes on pty: %m";
  }

  warning(v13, v6, v7, v8, v9, v10, v11, v12, v15.c_iflag);
  return 1;
}

uint64_t open_ppp_loopback()
{
  looped = 1;
  if ((sub_100016E04() & 0x80000000) != 0)
  {
    die(1);
  }

  sub_100016B7C(ppp_sockfd, 512);
  sub_100016FA4(kdebugflag);
  dword_100045294 = -1;
  return ppp_sockfd;
}

void output(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v9 = a3;
  dump_packet("sent", a2, a3, a4, a5, a6, a7, a8);
  v12 = *(a2 + 2);
  v11 = (a2 + 2);
  if (v12 <= 0xBF)
  {
    v13 = &ppp_sockfd;
  }

  else
  {
    v13 = &dword_100045294;
  }

  if (write(*v13, v11, v9 - 2) < 0 && *__error() != 5)
  {

    error("write: %m", v14, v15, v16, v17, v18, v19, v20, a9);
  }
}

double wait_input(timeval *a1)
{
  xmmword_10004B780 = xmmword_10004B700;
  unk_10004B790 = unk_10004B710;
  xmmword_10004B7A0 = xmmword_10004B720;
  unk_10004B7B0 = unk_10004B730;
  xmmword_10004B740 = xmmword_10004B6C0;
  *algn_10004B750 = *algn_10004B6D0;
  xmmword_10004B760 = xmmword_10004B6E0;
  unk_10004B770 = unk_10004B6F0;
  if (select(dword_10004B7C0 + 1, &xmmword_10004B740, 0, 0, a1) < 0)
  {
    if (*__error() != 4)
    {
      fatal();
    }

    result = 0.0;
    xmmword_10004B7A0 = 0u;
    unk_10004B7B0 = 0u;
    xmmword_10004B780 = 0u;
    unk_10004B790 = 0u;
    xmmword_10004B760 = 0u;
    unk_10004B770 = 0u;
    xmmword_10004B740 = 0u;
    *algn_10004B750 = 0u;
  }

  return result;
}

uint64_t wait_input_fd(int a1, int a2)
{
  v6.tv_sec = a2 / 1000;
  *(&v6.tv_usec + 1) = 0;
  v6.tv_usec = a2 % 1000;
  memset(&v8, 0, sizeof(v8));
  if (__darwin_check_fd_set_overflow(a1, &v8, 0))
  {
    *(v8.fds_bits + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  while (1)
  {
    v3 = select(a1 + 1, &v8, 0, &v8, &v6);
    v4 = v3;
    v7 = v3;
    if ((v3 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      return v4;
    }
  }

  if (v3)
  {
    if (ioctl(a1, 0x4004667FuLL, &v7, v6.tv_sec, *&v6.tv_usec) == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v7;
    }
  }

  return v4;
}

uint64_t is_ready_fd(int a1)
{
  result = __darwin_check_fd_set_overflow(a1, &xmmword_10004B740, 0);
  if (result)
  {
    return (*(&xmmword_10004B740 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> a1) & 1;
  }

  return result;
}

uint64_t read_packet(_WORD *a1)
{
  *a1 = 1023;
  v1 = a1 + 1;
  if (dword_100045294 < 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = read(dword_100045294, v1, 0x5DEuLL);
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    if (*__error() != 35 && *__error() != 4)
    {
      error("read from socket link: %m", v3, v4, v5, v6, v7, v8, v9, v18);
    }
  }

  if ((ifunit & 0x80000000) == 0)
  {
    v2 = read(ppp_sockfd, v1, 0x5DEuLL);
    if (v2 < 0 && *__error() != 35 && *__error() != 4)
    {
      error("read from socket bundle: %m", v10, v11, v12, v13, v14, v15, v16, v18);
    }
  }

LABEL_12:
  if (v2 >= 1)
  {
    return (v2 + 2);
  }

  else
  {
    return v2;
  }
}

uint64_t get_loop_output()
{
  packet = read_packet(&inpacket_buf);
  if (packet < 1)
  {
    return 0;
  }

  v7 = packet;
  LODWORD(v8) = 0;
  do
  {
    if (loop_frame(&inpacket_buf, v7, v1, v2, v3, v4, v5, v6))
    {
      v8 = 1;
    }

    else
    {
      v8 = v8;
    }

    v7 = read_packet(&inpacket_buf);
  }

  while (v7 > 0);
  return v8;
}

void tty_send_config(uint64_t a1, int a2, int a3, int a4)
{
  v7 = a2;
  if (!hungup && (dword_100045294 & 0x80000000) == 0)
  {
    v6 = 0;
    if (ioctl(dword_100045294, 0x80047457uLL, &v7) < 0)
    {
      fatal();
    }

    if (ioctl(dword_100045294, 0x4004745AuLL, &v6) < 0)
    {
      fatal();
    }

    v6 = (a3 != 0) | (2 * (a4 != 0)) | v6 & 0xFFDFFFFC | ((sync_serial != 0) << 21);
    if (ioctl(dword_100045294, 0x80047459uLL, &v6) < 0)
    {
      fatal();
    }

    publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPCompressionPField, a3);
    publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPCompressionACField, a4);
    publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPTransmitACCM, v7);
  }
}

void generic_send_config(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!hungup && (dword_100045294 & 0x80000000) == 0)
  {
    v6 = 0;
    if (ioctl(dword_100045294, 0x4004745AuLL, &v6) < 0)
    {
      fatal();
    }

    v6 = (a3 != 0) | (2 * (a4 != 0)) | v6 & 0xFFFFFFFC;
    if (ioctl(dword_100045294, 0x80047459uLL, &v6) < 0)
    {
      fatal();
    }

    publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPCompressionPField, a3);
    publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPCompressionACField, a4);
  }
}

uint64_t netif_set_mtu(uint64_t a1, int a2)
{
  v11 = 0u;
  v12 = 0u;
  __strlcpy_chk();
  LODWORD(v12) = a2;
  if (ioctl(dword_10004B6BC, 0x80206934uLL) < 0)
  {
    error("ioctl (SIOCSIFMTU): %m", v3, v4, v5, v6, v7, v8, v9, &v11);
  }

  return publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPMTU, a2);
}

uint64_t netif_get_mtu()
{
  v8 = 0u;
  v9 = 0u;
  __strlcpy_chk();
  if ((ioctl(dword_10004B6BC, 0xC0206933uLL) & 0x80000000) == 0)
  {
    return v9;
  }

  error("ioctl (SIOCGIFMTU): %m", v0, v1, v2, v3, v4, v5, v6, &v8);
  return 0;
}

void ppp_hold()
{
  v8 = 0;
  if (ioctl(dword_100045294, 0x4004745AuLL) < 0)
  {
    v7 = "ioctl (PPPIOCGFLAGS): %m";
  }

  else
  {
    v8 |= 0x20u;
    if ((ioctl(dword_100045294, 0x80047459uLL) & 0x80000000) == 0)
    {
      return;
    }

    v7 = "ioctl(PPPIOCSFLAGS): %m";
  }

  warning(v7, v0, v1, v2, v3, v4, v5, v6, &v8);
}

void ppp_cont()
{
  v8 = 0;
  if (ioctl(dword_100045294, 0x4004745AuLL) < 0)
  {
    v7 = "ioctl (PPPIOCGFLAGS): %m";
  }

  else
  {
    v8 &= ~0x20u;
    if ((ioctl(dword_100045294, 0x80047459uLL) & 0x80000000) == 0)
    {
      return;
    }

    v7 = "ioctl(PPPIOCSFLAGS): %m";
  }

  warning(v7, v0, v1, v2, v3, v4, v5, v6, &v8);
}

void tty_set_xaccm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (!hungup && (dword_100045294 & 0x80000000) == 0 && ioctl(dword_100045294, 0x8020744FuLL, a1) < 0 && *__error() != 25)
  {

    warning("ioctl(set extended ACCM): %m", v9, v10, v11, v12, v13, v14, v15, a9);
  }
}

uint64_t tty_recv_config(uint64_t result, int a2, uint64_t a3, int a4)
{
  v6 = a2;
  v7 = result;
  if (!hungup)
  {
    result = dword_100045294;
    if ((dword_100045294 & 0x80000000) == 0)
    {
      v5 = 0;
      if (ioctl(dword_100045294, 0x80047452uLL, &v7) < 0)
      {
        fatal();
      }

      if (ioctl(dword_100045294, 0x80047454uLL, &v6) < 0)
      {
        fatal();
      }

      if (ioctl(dword_100045294, 0x4004745AuLL, &v5) < 0)
      {
        fatal();
      }

      v5 = v5 & 0xFFFFFFEF | (16 * (a4 == 0));
      if (ioctl(dword_100045294, 0x80047459uLL, &v5) < 0)
      {
        fatal();
      }

      publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPMRU, v7);
      return publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPReceiveACCM, v6);
    }
  }

  return result;
}

uint64_t generic_recv_config(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = result;
  if (!hungup)
  {
    result = dword_100045294;
    if ((dword_100045294 & 0x80000000) == 0)
    {
      v5 = 0;
      if (ioctl(dword_100045294, 0x80047452uLL, &v6) < 0)
      {
        fatal();
      }

      if (ioctl(dword_100045294, 0x4004745AuLL, &v5) < 0)
      {
        fatal();
      }

      v5 = v5 & 0xFFFFFFEF | (16 * (a4 == 0));
      if (ioctl(dword_100045294, 0x80047459uLL, &v5) < 0)
      {
        fatal();
      }

      return publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPLCPMRU, v6);
    }
  }

  return result;
}

uint64_t ccp_test(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = a2;
  v6 = a3;
  v7 = a4;
  if ((ioctl(ppp_sockfd, 0x8010744DuLL, &v5) & 0x80000000) == 0)
  {
    return 1;
  }

  if (*__error() == 55)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

void ccp_flags_set(uint64_t a1, int a2, int a3)
{
  if (!hungup && (dword_100045294 & 0x80000000) == 0)
  {
    v13 = 0;
    if (ioctl(ppp_sockfd, 0x4004745AuLL) < 0)
    {
      v12 = "ioctl (PPPIOCGFLAGS): %m";
    }

    else
    {
      v13 = ((a2 != 0) << 6) | ((a3 != 0) << 7) | v13 & 0xFFFFFF3F;
      if ((ioctl(ppp_sockfd, 0x80047459uLL) & 0x80000000) == 0)
      {
        return;
      }

      v12 = "ioctl(PPPIOCSFLAGS): %m";
    }

    error(v12, v5, v6, v7, v8, v9, v10, v11, &v13);
  }
}

uint64_t ccp_fatal_error()
{
  v8 = 0;
  if ((ioctl(dword_100045294, 0x4004745AuLL) & 0x80000000) == 0)
  {
    return v8 & 0x800000;
  }

  error("ioctl(PPPIOCGFLAGS): %m", v0, v1, v2, v3, v4, v5, v6, &v8);
  return 0;
}

uint64_t get_ppp_stats(uint64_t a1, _DWORD *a2)
{
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  __strlcpy_chk();
  if (ioctl(dword_10004B6BC, 0xC05C697BuLL) < 0)
  {
    error("Couldn't get PPP statistics: %m", v3, v4, v5, v6, v7, v8, v9, &v14);
    return 0;
  }

  else
  {
    v10 = HIDWORD(v15);
    v11 = DWORD2(v16);
    v12 = v17;
    *a2 = DWORD1(v15);
    a2[1] = v11;
    a2[2] = v10;
    a2[3] = v12;
    return 1;
  }
}

uint64_t sifvjcomp(uint64_t a1, int a2, int a3, int a4)
{
  v16 = 0;
  v17 = a4;
  v15 = &v16;
  if (ioctl(ppp_sockfd, 0x4004745AuLL) < 0)
  {
    v14 = "ioctl (PPPIOCGFLAGS): %m";
  }

  else
  {
    v16 = (4 * (a2 != 0)) | (8 * (a3 == 0)) | v16 & 0xFFFFFFF3;
    v15 = &v16;
    if (ioctl(ppp_sockfd, 0x80047459uLL) < 0)
    {
      v14 = "ioctl(PPPIOCSFLAGS): %m";
    }

    else
    {
      if (!a2 || (v15 = &v17, (ioctl(ppp_sockfd, 0x80047451uLL) & 0x80000000) == 0))
      {
        publish_dictnumentry(kSCEntNetPPP, kSCPropNetPPPIPCPCompressionVJ, a2);
        return 1;
      }

      v14 = "ioctl(PPPIOCSMAXCID): %m";
    }
  }

  error(v14, v6, v7, v8, v9, v10, v11, v12, v15);
  return 0;
}

uint64_t sifup()
{
  v9 = 0u;
  v10 = 0u;
  __strlcpy_chk();
  if (ioctl(dword_10004B6BC, 0xC0206911uLL) < 0)
  {
    v8 = "ioctl (SIOCGIFFLAGS): %m";
  }

  else
  {
    LOWORD(v10) = v10 | 1;
    if ((ioctl(dword_10004B6BC, 0x80206910uLL) & 0x80000000) == 0)
    {
      result = 1;
      byte_10004B7C4 = 1;
      return result;
    }

    v8 = "ioctl(SIOCSIFFLAGS): %m";
  }

  error(v8, v0, v1, v2, v3, v4, v5, v6, &v9);
  return 0;
}

uint64_t sifnpmode(uint64_t a1, int a2, int a3)
{
  v12[0] = a2;
  v12[1] = a3;
  if ((ioctl(ppp_sockfd, 0x8008744BuLL, v12) & 0x80000000) == 0)
  {
    return 1;
  }

  error("ioctl(set NP %d mode to %d): %m", v4, v5, v6, v7, v8, v9, v10, a2);
  return 0;
}

uint64_t sifnpafmode(uint64_t a1, int a2, int a3)
{
  v12[0] = a2;
  v12[1] = a3;
  if ((ioctl(ppp_sockfd, 0x80087435uLL, v12) & 0x80000000) == 0)
  {
    return 1;
  }

  error("ioctl(set NPAF %d mode to %d): %m", v4, v5, v6, v7, v8, v9, v10, a2);
  return 0;
}

uint64_t sifdown()
{
  v12 = 0u;
  v13 = 0u;
  v11 = 33;
  if (ioctl(ppp_sockfd, 0xC008744CuLL, &v11))
  {
    v0 = 1;
  }

  else
  {
    v0 = HIDWORD(v11) == 1;
  }

  if (v0)
  {
    LODWORD(v11) = 87;
    if (ioctl(ppp_sockfd, 0xC008744CuLL, &v11) || HIDWORD(v11) == 1)
    {
      __strlcpy_chk();
      if (ioctl(dword_10004B6BC, 0xC0206911uLL) < 0)
      {
        v10 = "ioctl (SIOCGIFFLAGS): %m";
      }

      else
      {
        LOWORD(v13) = v13 & 0xFFFE;
        if ((ioctl(dword_10004B6BC, 0x80206910uLL) & 0x80000000) == 0)
        {
          byte_10004B7C4 = 0;
          return 1;
        }

        v10 = "ioctl(SIOCSIFFLAGS): %m";
      }

      error(v10, v2, v3, v4, v5, v6, v7, v8, &v12);
    }
  }

  return 0;
}

uint64_t sifroute(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  if (a4 != -1 && addifroute)
  {
    dword_10004B840 = a4 & a2;
    dword_10004B844 = a4;
    dword_10004B848 = route_interface(1, a4 & a2, a4, 23, &ifname, 0);
  }

  return 1;
}

uint64_t route_interface(int a1, int a2, int a3, char a4, const char *a5, int a6)
{
  v30 = a3;
  v31 = a2;
  v11 = socket(17, 3, 17);
  if (v11 < 0)
  {
    v17 = addr2ascii(2, &v31, 4, v33);
    addr2ascii(2, &v30, 4, v32);
    error("route_interface: open routing socket failed, %m. (address %s, mask %s, interface %s, host %d).", v18, v19, v20, v21, v22, v23, v24, v17);
  }

  else
  {
    v12 = v11;
    __buf = 0u;
    v35 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    BYTE3(__buf) = a1;
    if (a6)
    {
      v13 = 2053;
    }

    else
    {
      v13 = 2049;
    }

    BYTE2(__buf) = 5;
    DWORD1(v35) = 1;
    *(&__buf + 1) = v13 | 0x300000000;
    WORD6(v39) = 528;
    LODWORD(v40) = a2;
    v14 = strlen(a5);
    WORD6(v40) = 4628;
    if (v14 >= 0xC)
    {
      v15 = 12;
    }

    else
    {
      v15 = v14;
    }

    LOBYTE(v41) = a4;
    BYTE1(v41) = v15;
    __strncpy_chk();
    if (v30)
    {
      HIDWORD(__buf) |= 4u;
      LOWORD(v42) = 528;
      DWORD1(v42) = v30;
    }

    LOWORD(__buf) = 144;
    if ((write(v12, &__buf, 0x90uLL) & 0x8000000000000000) == 0)
    {
      close(v12);
      return 1;
    }

    if (a1 == 2)
    {
      v25 = 7;
    }

    else
    {
      v25 = 3;
    }

    v26 = __error();
    v27 = strerror(*v26);
    v28 = addr2ascii(2, &v31, 4, v33);
    v29 = addr2ascii(2, &v30, 4, v32);
    sys_log(v25, "route_interface: write routing socket failed, %s. (address %s, mask %s, interface %s, host %d).", v27, v28, v29, a5, a6);
    close(v12);
  }

  return 0;
}

uint64_t sifaddr(uint64_t a1, int a2, unsigned int a3, int a4)
{
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  if ((byte_10004B84C & 1) == 0)
  {
    __strlcpy_chk();
    if (ioctl(dword_10004B6BC, 0xC0206950uLL, &v35) < 0)
    {
      v7 = __error();
      error("Couldn't plumb IP to the interface: %d %m", v8, v9, v10, v11, v12, v13, v14, *v7);
    }

    byte_10004B84C = 1;
  }

  __strlcpy_chk();
  *(&v38 + 1) = 0;
  LODWORD(v38) = 528;
  DWORD1(v38) = a2;
  *(&v39 + 1) = 0;
  LODWORD(v39) = 528;
  DWORD1(v39) = a3;
  v40 = 0uLL;
  if (a4)
  {
    LOWORD(v40) = 528;
    DWORD1(v40) = a4;
  }

  v35 = 0u;
  v36 = 0u;
  __strlcpy_chk();
  if (ioctl(dword_10004B6BC, 0x80206919uLL) < 0 && *__error() != 49)
  {
    warning("Couldn't remove interface address: %m", v15, v16, v17, v18, v19, v20, v21, &v35);
  }

  v22 = ioctl(dword_10004B6BC, 0x8040691AuLL, &v37);
  if ((v22 & 0x80000000) != 0)
  {
    if (*__error() != 17)
    {
      error("Couldn't set interface address: %m", v24, v25, v26, v27, v28, v29, v30, v34);
      return 0;
    }

    warning("Couldn't set interface address: Address %I already exists", v24, v25, v26, v27, v28, v29, v30, a2);
  }

  dword_10004B7C8 = a2;
  dword_10004B7CC = a3;
  if (looplocal)
  {
    v31 = ppp_sockfd;
    v32 = sub_100016BE8(ppp_sockfd);
    sub_100016B7C(v31, v32 | 0x1000000);
    v22 = route_interface(1, a2, 0, 23, &ifname, 1);
  }

  sifroute(v22, a2, v23, a4);
  publish_stateaddr(a2, a3);
  return 1;
}

CFMutableDictionaryRef publish_stateaddr(unsigned int a1, unsigned int a2)
{
  if (!cfgCache)
  {
    return 0;
  }

  result = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (result)
  {
    v5 = result;
    Mutable = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v7 = Mutable;
      v8 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a1, BYTE1(a1), BYTE2(a1), HIBYTE(a1));
      if (v8)
      {
        v9 = v8;
        CFArrayAppendValue(v7, v8);
        CFRelease(v9);
        CFDictionarySetValue(v5, kSCPropNetIPv4Addresses, v7);
      }

      CFRelease(v7);
    }

    v10 = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
    if (v10)
    {
      v11 = v10;
      v12 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a2, BYTE1(a2), BYTE2(a2), HIBYTE(a2));
      if (v12)
      {
        v13 = v12;
        CFArrayAppendValue(v11, v12);
        CFRelease(v13);
        CFDictionarySetValue(v5, kSCPropNetIPv4DestAddresses, v11);
      }

      CFRelease(v11);
    }

    v14 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a1, BYTE1(a1), BYTE2(a1), HIBYTE(a1));
    if (v14)
    {
      v15 = v14;
      CFDictionarySetValue(v5, kSCPropNetIPv4Router, v14);
      CFRelease(v15);
    }

    v16 = CFStringCreateWithFormat(0, 0, @"%s", &ifname);
    if (v16)
    {
      v17 = v16;
      CFDictionarySetValue(v5, kSCPropInterfaceName, v16);
      CFRelease(v17);
    }

    if (qword_10004B7D8)
    {
      v18 = CFStringCreateWithFormat(0, 0, @"%s", qword_10004B7D8);
      if (v18)
      {
        v19 = v18;
        CFDictionarySetValue(v5, @"NetworkSignature", v18);
        CFRelease(v19);
      }
    }

    if (qword_10004B7E0)
    {
      CFDictionarySetValue(v5, @"ServerAddress", qword_10004B7E0);
    }

    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, kSCEntNetIPv4);
    if (NetworkServiceEntity)
    {
      v21 = NetworkServiceEntity;
      if (!sub_100019DA0(NetworkServiceEntity, v5))
      {
        v22 = SCError();
        SCErrorString(v22);
        warning("SCDynamicStoreSetValue IP %s failed: %s\n", v23, v24, v25, v26, v27, v28, v29, &ifname);
      }

      CFRelease(v21);
    }

    CFRelease(v5);
    return 1;
  }

  return result;
}

uint64_t uifaddr(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  cifroute();
  if ((byte_10004B84C & 1) == 0)
  {
    error("Interface should have been plumbed already", v7, v8, v9, v10, v11, v12, v13, v86);
    return 0xFFFFFFFFLL;
  }

  v90 = 0u;
  v88 = 0u;
  v89 = 0u;
  __strlcpy_chk();
  *(&v91 + 1) = 0;
  LODWORD(v91) = 528;
  DWORD1(v91) = a2;
  *(&v92 + 1) = 0;
  LODWORD(v92) = 528;
  DWORD1(v92) = a3;
  v93 = 0uLL;
  if (a4)
  {
    LOWORD(v93) = 528;
    DWORD1(v93) = a4;
  }

  v88 = 0u;
  v89 = 0u;
  __strlcpy_chk();
  if (ioctl(dword_10004B6BC, 0x80206919uLL) < 0 && *__error() != 49)
  {
    warning("Couldn't remove interface address: %m", v14, v15, v16, v17, v18, v19, v20, &v88);
  }

  v21 = ioctl(dword_10004B6BC, 0x8040691AuLL, &v90);
  if ((v21 & 0x80000000) != 0)
  {
    if (*__error() != 17)
    {
      error("Couldn't set interface address: %m", v23, v24, v25, v26, v27, v28, v29, v87);
      return 0;
    }

    warning("Couldn't set interface address: Address %I already exists", v23, v24, v25, v26, v27, v28, v29, a2);
  }

  dword_10004B7C8 = a2;
  dword_10004B7CC = a3;
  sifroute(v21, a2, v22, a4);
  if (cfgCache)
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceidRef, kSCEntNetIPv4);
    if (NetworkServiceEntity)
    {
      v31 = NetworkServiceEntity;
      if (publish_dict)
      {
        Value = CFDictionaryGetValue(publish_dict, NetworkServiceEntity);
        v33 = Value;
        if (Value)
        {
          CFRetain(Value);
LABEL_18:
          v35 = CFGetTypeID(v33);
          if (v35 == CFDictionaryGetTypeID())
          {
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v33);
            CFRelease(v33);
            if (MutableCopy)
            {
              v37 = CFGetTypeID(MutableCopy);
              if (v37 == CFDictionaryGetTypeID())
              {
                Mutable = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
                if (Mutable)
                {
                  v39 = Mutable;
                  v40 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a2, BYTE1(a2), BYTE2(a2), HIBYTE(a2), v88, v89, v90, v91, v92, v93);
                  if (v40)
                  {
                    v41 = v40;
                    CFArrayAppendValue(v39, v40);
                    CFRelease(v41);
                    CFDictionarySetValue(MutableCopy, kSCPropNetIPv4Addresses, v39);
                  }

                  CFRelease(v39);
                }

                v42 = CFArrayCreateMutable(0, 1, &kCFTypeArrayCallBacks);
                if (v42)
                {
                  v43 = v42;
                  v44 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a3, BYTE1(a3), BYTE2(a3), HIBYTE(a3));
                  if (v44)
                  {
                    v45 = v44;
                    CFArrayAppendValue(v43, v44);
                    CFRelease(v45);
                    CFDictionarySetValue(MutableCopy, kSCPropNetIPv4DestAddresses, v43);
                  }

                  CFRelease(v43);
                }

                v46 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", a2, BYTE1(a2), BYTE2(a2), HIBYTE(a2));
                if (v46)
                {
                  v47 = v46;
                  CFDictionarySetValue(MutableCopy, kSCPropNetIPv4Router, v46);
                  CFRelease(v47);
                }

                v48 = CFStringCreateWithFormat(0, 0, @"%s", &ifname);
                if (v48)
                {
                  v49 = v48;
                  CFDictionarySetValue(MutableCopy, kSCPropInterfaceName, v48);
                  CFRelease(v49);
                }

                if (qword_10004B7D8)
                {
                  v50 = CFStringCreateWithFormat(0, 0, @"%s", qword_10004B7D8);
                  if (v50)
                  {
                    v51 = v50;
                    CFDictionarySetValue(MutableCopy, @"NetworkSignature", v50);
                    CFRelease(v51);
                  }
                }

                if (qword_10004B7E0)
                {
                  CFDictionarySetValue(MutableCopy, @"ServerAddress", qword_10004B7E0);
                }

                if (!sub_100019DA0(v31, MutableCopy))
                {
                  v52 = SCError();
                  SCErrorString(v52);
                  warning("SCDynamicStoreSetValue IP %s failed: %s\n", v53, v54, v55, v56, v57, v58, v59, &ifname);
                }
              }

              else
              {
                v78 = SCError();
                SCErrorString(v78);
                warning("CFDictionaryCreateMutableCopy IP %s failed: %s\n", v79, v80, v81, v82, v83, v84, v85, &ifname);
              }

              v69 = MutableCopy;
              goto LABEL_47;
            }

            v70 = SCError();
            SCErrorString(v70);
            warning("CFDictionaryCreateMutableCopy IP %s failed: %s\n", v71, v72, v73, v74, v75, v76, v77, &ifname);
            goto LABEL_48;
          }

          v60 = 0;
LABEL_42:
          v61 = SCError();
          SCErrorString(v61);
          warning("SCDynamicStoreCopyValue IP %s failed: %s\n", v62, v63, v64, v65, v66, v67, v68, &ifname);
          if ((v60 & 1) == 0)
          {
            v69 = v33;
LABEL_47:
            CFRelease(v69);
          }

LABEL_48:
          CFRelease(v31);
          return 1;
        }
      }

      else
      {
        v33 = SCDynamicStoreCopyValue(cfgCache, NetworkServiceEntity);
        if (v33)
        {
          goto LABEL_18;
        }
      }

      v60 = 1;
      goto LABEL_42;
    }
  }

  return 1;
}