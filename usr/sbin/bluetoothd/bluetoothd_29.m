uint64_t sub_100214770(uint64_t a1)
{
  v1 = a1;
  v2 = sub_10020F83C(a1);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (v2 == 8)
  {
    return 1802;
  }

  if ((*(qword_100B5EE08 + 1636) & 0x200) == 0 || (*(qword_100B5EE08 + 200 * v2 + 86) & 0x80) == 0)
  {
    return 2701;
  }

  LODWORD(v4) = 4;
  WORD2(v4) = v1;
  LODWORD(v5) = *(qword_100B5EE08 + 200 * v2 + 164);
  (*(qword_100B5EE08 + 1608))(&v4);
  return 412;
}

uint64_t sub_10021480C(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v4 = sub_10020F83C(a1);
  if (v4 == 8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Device not connected", v5, v6, v7, v8, v9, v10, v11, v24);
      v12 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 1802;
  }

  if ((*(qword_100B5EE08 + 1636) & 0x200) == 0)
  {
    return 2701;
  }

  v14 = v4;
  if ((*(qword_100B5EE08 + 200 * v4 + 86) & 0x80) == 0)
  {
    return 2701;
  }

  v15 = v4;
  v16 = sub_1001F0A88(a2, (a2 + 24), 0);
  v17 = sub_1003072F0(v16);
  if (v17 != *(qword_100B5EE08 + 200 * v15 + 164))
  {
    sub_100212B70(v14, 1810);
    return 2701;
  }

  v18 = v17;
  sub_10020F9D8(a1, 0, 0);
  v19 = qword_100B5EE08;
  v20 = *(qword_100B5EE08 + 200 * v15 + 172);
  if (v20)
  {
    sub_10002242C(v20);
    v19 = qword_100B5EE08;
    *(qword_100B5EE08 + 200 * v15 + 172) = 0;
  }

  v21 = v19 + 200 * v15;
  v23 = *(v21 + 168);
  v22 = (v21 + 168);
  if (v23 == 1)
  {
    *v22 = 0;
    *(v19 + 200 * v15 + 184) = 0;
    LODWORD(v25) = 27;
    WORD2(v25) = a1;
    LODWORD(v26) = v18;
    (*(v19 + 1608))(&v25);
  }

  return 412;
}

uint64_t sub_10021498C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10020F83C(a1);
  if (v4 == 8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Device not connected", v5, v6, v7, v8, v9, v10, v11, v22);
      v12 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 1802;
  }

  else
  {
    v14 = v4;
    v15 = sub_1001F0A88(a2, (a2 + 24), 0);
    if (!v15)
    {
      goto LABEL_36;
    }

    v16 = v15;
    v17 = 0;
    do
    {
      if (v17 <= 6)
      {
        if (v17 > 3)
        {
          if (v17 == 4)
          {
            if (sub_100307330(v16, "1"))
            {
              if (!sub_100307330(v16, "0"))
              {
                *(qword_100B5EE08 + 200 * v14 + 193) = 0;
              }
            }

            else
            {
              *(qword_100B5EE08 + 200 * v14 + 193) = 1;
            }
          }

          else if (v17 == 5)
          {
            if (sub_100307330(v16, "1"))
            {
              if (!sub_100307330(v16, "0"))
              {
                *(qword_100B5EE08 + 200 * v14 + 194) = 0;
              }
            }

            else
            {
              *(qword_100B5EE08 + 200 * v14 + 194) = 1;
            }
          }
        }

        else if (v17)
        {
          if (v17 == 3)
          {
            if (sub_100307330(v16, "1"))
            {
              if (!sub_100307330(v16, "0"))
              {
                *(qword_100B5EE08 + 200 * v14 + 195) = 0;
              }
            }

            else
            {
              *(qword_100B5EE08 + 200 * v14 + 195) = 1;
            }
          }
        }

        else if (sub_100307330(v16, "1"))
        {
          if (!sub_100307330(v16, "0"))
          {
            *(qword_100B5EE08 + 200 * v14 + 192) = 0;
          }
        }

        else
        {
          *(qword_100B5EE08 + 200 * v14 + 192) = 1;
        }
      }

      v18 = v17 + 1;
      v19 = sub_1001F0A88(a2, (a2 + 24), 0);
      v16 = v19;
      if (!v19)
      {
        break;
      }
    }

    while (v17++ < 0x13);
    if (v19 && v18 == 20)
    {
      sub_10020F9D8(a1, 1811, 0);
    }

    else
    {
LABEL_36:
      v21 = sub_10020F9D8(a1, 0, 0);
      if (v21)
      {
        sub_100212578(a1, 1u, v21);
      }
    }

    return 412;
  }
}

uint64_t sub_100214C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10020F83C(a1);
  if (v4 != 8)
  {
    if ((*(qword_100B5EE08 + 1636) & 0x400) == 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Received unsupported AT+BIND command", v14, v15, v16, v17, v18, v19, v20, v43);
        v21 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return 2701;
    }

    v22 = v4;
    if ((*(qword_100B5EE08 + 200 * v4 + 86) & 0x100) == 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Device doesn't support HF indicators. AT+BIND command is invalid", v23, v24, v25, v26, v27, v28, v29, v43);
        v30 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    v31 = *a2;
    if (*a2)
    {
      if (v31 != 1)
      {
        if (v31 != 2)
        {
          return 2701;
        }

        v32 = sub_1001F0A88(a2, (a2 + 24), 0);
        if (v32)
        {
          v33 = 0;
          v34 = 1;
          v35 = v22;
          do
          {
            v36 = v33;
            v37 = *v32;
            if (v37 == 50)
            {
              *(qword_100B5EE08 + 200 * v35 + 197) = 1;
            }

            else
            {
              if (v37 != 49)
              {
                return 134;
              }

              *(qword_100B5EE08 + 200 * v35 + 196) = 1;
            }

            v32 = sub_1001F0A88(a2, (a2 + 24), 0);
            v38 = (v32 != 0) & v34;
            v33 = 1;
            v34 = 0;
          }

          while ((v38 & 1) != 0);
          if (v32 == 0 || (v36 & 1) == 0)
          {
            goto LABEL_30;
          }

          sub_10020F9D8(a1, 114, 0);
          return 412;
        }

LABEL_30:
        v42 = sub_10020F9D8(a1, 0, 0);
        if (v42)
        {
          sub_100212578(a1, 1u, v42);
        }

        return 412;
      }

      sub_10020F54C(a1, 27, "\r\n+BIND:1,1\r\n", 0xDuLL, 0);
      v39 = "\r\n+BIND:2,1\r\n";
      v40 = a1;
      v41 = 13;
    }

    else
    {
      v39 = "\r\n+BIND:(1,2)\r\n";
      v40 = a1;
      v41 = 15;
    }

    sub_10020F54C(v40, 27, v39, v41, 0);
    goto LABEL_30;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Device not connected", v5, v6, v7, v8, v9, v10, v11, v43);
    v12 = sub_10000C050(0x10u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return 1802;
}

uint64_t sub_100214E84(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_10020F83C(a1);
  v62 = 0;
  v63 = 0;
  v64 = 0;
  if (v4 != 8)
  {
    if ((*(qword_100B5EE08 + 1636) & 0x400) == 0)
    {
      if (!sub_10000C240())
      {
        return 2701;
      }

      sub_10000AF54("Received unsupported AT+BIEV command", v14, v15, v16, v17, v18, v19, v20, v61);
      v21 = sub_10000C050(0x10u);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        return 2701;
      }

      goto LABEL_31;
    }

    v22 = v4;
    if ((*(qword_100B5EE08 + 200 * v4 + 86) & 0x100) == 0)
    {
      if (!sub_10000C240())
      {
        return 2701;
      }

      sub_10000AF54("Device doesn't support HF indicators. AT+BIEV command is invalid", v23, v24, v25, v26, v27, v28, v29, v61);
      v30 = sub_10000C050(0x10u);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        return 2701;
      }

      goto LABEL_31;
    }

    v31 = sub_1001F0A88(a2, (a2 + 24), 0);
    v32 = sub_1003072F0(v31);
    if (v32 - 3 <= 0xFFFFFFFD)
    {
      if (!sub_10000C240())
      {
        return 2701;
      }

      sub_10000AF54("Invalid anum received", v33, v34, v35, v36, v37, v38, v39, v61);
      v40 = sub_10000C050(0x10u);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        return 2701;
      }

      goto LABEL_31;
    }

    v41 = sub_1001F0A88(a2, (a2 + 24), 0);
    v42 = sub_1003072F0(v41);
    v43 = qword_100B5EE08 + 200 * v22;
    if (v32 == 1)
    {
      if (*(v43 + 196) != 1 || v42 < 2)
      {
        goto LABEL_33;
      }

      if (!sub_10000C240())
      {
        return 2701;
      }

      sub_10000AF54("Invalid value received for enhanced safety HF indicator", v45, v46, v47, v48, v49, v50, v51, v61);
      v52 = sub_10000C050(0x10u);
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        return 2701;
      }
    }

    else
    {
      if (*(v43 + 197) != 1 || v42 < 0x65)
      {
LABEL_33:
        LODWORD(v62) = 29;
        WORD2(v62) = v3;
        v63 = __PAIR64__(v42, v32);
        (*(qword_100B5EE08 + 1608))(&v62);
        return 412;
      }

      if (!sub_10000C240())
      {
        return 2701;
      }

      sub_10000AF54("Invalid value received for battery level HF indicator", v53, v54, v55, v56, v57, v58, v59, v61);
      v60 = sub_10000C050(0x10u);
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        return 2701;
      }
    }

LABEL_31:
    sub_10080F604();
    return 2701;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Device not connected", v5, v6, v7, v8, v9, v10, v11, v61);
    v12 = sub_10000C050(0x10u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return 1802;
}

uint64_t sub_10021511C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0A88(a2, (a2 + 24), 0);
  v5 = atoi(v4);
  if (v5 == 2)
  {
    v9 = sub_1001F0A88(a2, (a2 + 24), 0);
    v10 = atoi(v9);
    if (v10 == 1)
    {
      v7 = 0;
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid +HAOS close parameter:%d", v19, v20, v21, v22, v23, v24, v25, v10);
        v26 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      v7 = 2701;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("disableAoSEmptyPacketReports - hfpHandle:%d", v27, v28, v29, v30, v31, v32, v33, a1);
      v34 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136446210;
        *(&buf + 4) = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
      }
    }

    v35 = sub_10020F83C(a1);
    if (v35 == 8)
    {
      v36 = 0;
    }

    else
    {
      v36 = qword_100B5EE08 + 200 * v35 + 80;
    }

    *&buf = 0;
    sub_10023DB58(v36, &buf);
    sub_1002A6868();
    if (sub_10000C240())
    {
      sub_10000AF54("exitHRBBand - hfpHandle:%d", v37, v38, v39, v40, v41, v42, v43, a1);
      v44 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = sub_10000C0FC();
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v45;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
      }
    }

    v46 = sub_10020F83C(a1);
    if (v46 == 8)
    {
      v47 = 0;
    }

    else
    {
      v47 = qword_100B5EE08 + 200 * v46 + 80;
    }

    *&buf = 0;
    sub_10023DB58(v47, &buf);
    sub_1002A5E84();
    if (sub_10000C240())
    {
      sub_10000AF54("exitAdvancedSniff - hfpHandle:%d", v48, v49, v50, v51, v52, v53, v54, a1);
      v55 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = sub_10000C0FC();
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v56;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
      }
    }

    v57 = sub_10020F83C(a1);
    if (v57 == 8)
    {
      v58 = 0;
    }

    else
    {
      v58 = qword_100B5EE08 + 200 * v57 + 80;
    }

    *&buf = 0;
    sub_10023DB58(v58, &buf);
    sub_1002A6638();
  }

  else if (v5 == 1)
  {
    v6 = sub_1001F0A88(a2, (a2 + 24), 0);
    buf = 0uLL;
    v74 = 0;
    WORD2(buf) = a1;
    v7 = atoi(v6);
    if (v7 == 1)
    {
      v71 = 0;
      v72 = 0;
      v70 = a1;
      v69 = 30;
      (*(qword_100B5EE08 + 1608))(&v69);
      v8 = 0;
      v7 = 0;
    }

    else if (v7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid +HAOS setup parameter:%d", v59, v60, v61, v62, v63, v64, v65, v7);
        v66 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      v8 = 0;
      v7 = 2701;
    }

    else
    {
      LODWORD(buf) = 1;
      *(&buf + 1) = qword_100B5EE08 + 200 * sub_10020F83C(a1) + 80;
      LODWORD(v74) = 1802;
      sub_1002167D4(a1, 0);
      v8 = 122;
    }

    LODWORD(buf) = 5;
    DWORD2(buf) = v8;
    (*(qword_100B5EE08 + 1608))(&buf);
    sub_1002167D4(a1, 3);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid +HAOS command:%d", v11, v12, v13, v14, v15, v16, v17, v5);
      v18 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v7 = 2701;
  }

  v67 = sub_10020F948(a1, v7);
  if (v67)
  {
    sub_100212578(a1, 1u, v67);
  }

  return 412;
}

uint64_t sub_1002155BC(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v4 = sub_10020F83C(a1);
  if (v4 == 8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Device not connected", v5, v6, v7, v8, v9, v10, v11, v23);
      v12 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 1802;
  }

  v14 = v4;
  v15 = sub_1001F0A88(a2, (a2 + 24), 0);
  v16 = sub_1003072F0(v15);
  if (!v16)
  {
    sub_100212C1C(v14, 1819);
    return 2701;
  }

  v17 = v16;
  if (sub_10020F9D8(a1, 0, 0))
  {
    return 2701;
  }

  v18 = qword_100B5EE08;
  v19 = *(qword_100B5EE08 + 200 * v14 + 180);
  if (v19)
  {
    sub_10002242C(v19);
    v18 = qword_100B5EE08;
    *(qword_100B5EE08 + 200 * v14 + 180) = 0;
  }

  v20 = v18 + 200 * v14;
  v22 = *(v20 + 176);
  v21 = (v20 + 176);
  if (v22 == 1)
  {
    *v21 = 0;
    LODWORD(v24) = 31;
    WORD2(v24) = a1;
    LODWORD(v25) = v17;
    (*(v18 + 1608))(&v24);
  }

  return 412;
}

void sub_100215704(__int16 a1)
{
  v10 = 0;
  WORD2(v10) = a1;
  v11[1] = &v10;
  v11[0] = 8;
  if (sub_1000228C0(sub_1002157A0, v11, 0) && sub_10000C240())
  {
    sub_10000AF54("Failed to register with dispatcher!\n", v1, v2, v3, v4, v5, v6, v7, v9);
    v8 = sub_10000C050(0x10u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_1002157A0(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = sub_10020F83C(v3);
  if (v4 == 8)
  {
    v11 = 0;
    v5 = qword_100B5EE08;
  }

  else
  {
    v5 = qword_100B5EE08;
    v6 = v4;
    v7 = *(qword_100B5EE08 + 200 * v4 + 8);
    if (v7)
    {
      sub_10002242C(v7);
      v5 = qword_100B5EE08;
      *(qword_100B5EE08 + 200 * v6 + 8) = 0;
    }

    v8 = v5 + 200 * v6;
    *(v8 + 12) = 0;
    *(v8 + 4) = v2;
    v11 = v8 + 80;
  }

  LODWORD(v12) = v2;
  WORD2(v10) = v3;
  LODWORD(v10) = 1;
  return (*(v5 + 1608))(&v10);
}

void sub_100215864(char a1)
{
  if (!dword_100BCE270)
  {
    sub_1000D660C();
  }

  *(qword_100B5EE10 + 401) = a1;
}

uint64_t sub_1002158A4(uint64_t a1, _DWORD *a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  if (!a1 || !a4)
  {
    sub_1000D660C();
    return 101;
  }

  if (dword_100BCE270)
  {
    return 140;
  }

  v14 = sub_1001BBBD8(0x198uLL, 0x10A0040D48D3414uLL);
  qword_100B5EE10 = v14;
  if (!v14)
  {
    return 106;
  }

  v15 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  do
  {
    *&v14[v15] = -1;
    v15 += 48;
  }

  while (v15 != 384);
  v16 = sub_1003045A0(0x10u);
  v17 = qword_100B5EE10;
  *(qword_100B5EE10 + 400) = *v16;
  *(v17 + 402) = a5;
  *(v17 + 404) = a6;
  v7 = sub_1002EF24C(sub_100215B18, off_100AE7270, a5, a6, (v17 + 400), &unk_100AE7298);
  if (v7)
  {
LABEL_13:
    sub_10000C1E8(qword_100B5EE10);
    qword_100B5EE10 = 0;
    return v7;
  }

  byte_100B5EE18 = 1;
  word_100B5EE1A = 1;
  dword_100B5EE20 = *(qword_100B5EE10 + 400);
  byte_100B5EE28 = 1;
  word_100B5EE2A = 1;
  dword_100B5EE30 = (a3 >> 5) & 1;
  byte_100B5EE38 = 1;
  word_100B5EE3A = 2;
  dword_100B5EE40 = a3 & 0x1F | (32 * ((a3 >> 9) & 1));
  *&v28 = &unk_100AE72C8;
  WORD4(v28) = 5;
  *&v29 = *a1;
  WORD4(v29) = *(a1 + 8);
  v24 = &unk_100AE7340;
  LOWORD(v25) = 5;
  v26 = v29;
  LOWORD(v27) = WORD4(v29);
  v20 = &unk_100AE73B8;
  LOWORD(v21) = 5;
  v22 = v29;
  LOWORD(v23) = WORD4(v29);
  v18 = sub_1002F7E1C(&v28, (qword_100B5EE10 + 388));
  v19 = qword_100B5EE10;
  if (v18)
  {
    v7 = v18;
    sub_1002EF558(*(qword_100B5EE10 + 400));
    goto LABEL_13;
  }

  *(qword_100B5EE10 + 392) = a4;
  sub_1002F8134(*(v19 + 388), &v24);
  sub_1002F8134(*(qword_100B5EE10 + 388), &v20);
  if (a2)
  {
    *a2 = *(qword_100B5EE10 + 388);
  }

  sub_10029FAE0(sub_100215C78);
  sub_100244814(6291456);
  v7 = 0;
  dword_100BCE270 = 1;
  return v7;
}

uint64_t sub_100215B18(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v6 = qword_100B5EE10 + 16;
  v7 = 8;
  do
  {
    if (*v6 == *a1 && *(v6 + 4) == *(a1 + 4))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ERROR : We are already connected to this device %:", v18, v19, v20, v21, v22, v23, v24, a1);
        v25 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
LABEL_13:
          sub_10080F604();
        }
      }

      return sub_1002EFBAC(sub_100216134, a4, 0);
    }

    v6 += 48;
    --v7;
  }

  while (v7);
  v9 = sub_1002164D8(a1, 2, a4);
  if (v9 == 8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("ERROR : We are out of connection slots. %d", v10, v11, v12, v13, v14, v15, v16, 8);
      v17 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }
    }

    return sub_1002EFBAC(sub_100216134, a4, 0);
  }

  WORD2(v27) = a4;
  v28 = qword_100B5EE10 + 48 * v9 + 16;
  LODWORD(v27) = 0;
  return (*(qword_100B5EE10 + 392))(&v27);
}

void sub_100215C78(uint64_t a1, int a2, int a3)
{
  if (dword_100BCE270)
  {
    v4 = sub_1000ABB80(a2);
    v30 = 0;
    v29 = 0;
    sub_10023DC00(v4, &v29);
    v5 = 0;
    v6 = qword_100B5EE10 + 16;
    do
    {
      if (*v6 == v29 && *(v6 + 4) == v30)
      {
        break;
      }

      ++v5;
      v6 += 48;
    }

    while (v5 != 8);
    v16 = v5;
    v17 = *(qword_100B5EE10 + 48 * v5 + 32);
    if (sub_10000C240())
    {
      sub_10000AF54("AdvancedSniffModeChangeCB - deviceID:%d mode:%d mediaState:%s", v18, v19, v20, v21, v22, v23, v24, v16);
      v25 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = sub_10000C0FC();
        buf = 136446210;
        *buf_4 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
      }
    }

    if (!a3 && v17 == 4)
    {
      v27 = *(qword_100B5EE10 + 48 * v16);
      sub_1002167D4(v27, 0);
      *&buf_4[2] = 0;
      *&buf_4[4] = 0;
      v33 = 0;
      *buf_4 = v27;
      buf = 6;
      (*(qword_100B5EE10 + 392))(&buf);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("AdvancedSniffModeChangeCB - VSE has fired but module is not initialized", v8, v9, v10, v11, v12, v13, v14, v28);
    v15 = sub_10000C050(0x10u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10080F6C8();
    }
  }
}

uint64_t sub_100215E78()
{
  if (!dword_100BCE270)
  {
    return 408;
  }

  if (*(qword_100B5EE10 + 384))
  {
    return 141;
  }

  result = sub_1002EF558(*(qword_100B5EE10 + 400));
  if (!result)
  {
    sub_1002448C8(6291456);
    sub_1002F8018(*(qword_100B5EE10 + 388));
    v1 = qword_100B5EE10;
    *(qword_100B5EE10 + 392) = 0;
    sub_10000C1E8(v1);
    result = 0;
    qword_100B5EE10 = 0;
    dword_100BCE270 = 0;
  }

  return result;
}

uint64_t sub_100215EFC(uint64_t a1, int a2)
{
  if (!dword_100BCE270)
  {
    return 408;
  }

  v4 = 0;
  while (*(qword_100B5EE10 + v4) != a1)
  {
    v4 += 48;
    if (v4 == 384)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not find addr for device %d", v5, v6, v7, v8, v9, v10, v11, a1);
        v12 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      sub_10021609C(a1);
      return 1802;
    }
  }

  v13 = sub_10021609C(a1);
  if (v13 == 8)
  {
    return 1802;
  }

  v15 = v13;
  if (*(qword_100B5EE10 + 48 * v13 + 28) != 2)
  {
    return 408;
  }

  if (a2)
  {
    v14 = sub_1002EFBAC(sub_100216134, a1, 1);
    if (v14)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_RFCOMM_Accept failed: %! %d\n", v16, v17, v18, v19, v20, v21, v22, v14);
        v23 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      sub_100216338(v15);
    }

    return v14;
  }

  v25 = sub_1002EFBAC(sub_100216134, a1, 0);
  sub_100216338(v15);
  return v25;
}

uint64_t sub_10021609C(uint64_t a1)
{
  v2 = 0;
  v3 = qword_100B5EE10;
  while (1)
  {
    v4 = *v3;
    v3 += 24;
    if (v4 == a1)
    {
      break;
    }

    if (++v2 == 8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not find link handle for device %d", v5, v6, v7, v8, v9, v10, v11, a1);
        v12 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      LOBYTE(v2) = 8;
      return v2;
    }
  }

  return v2;
}

void sub_100216134(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  v6 = sub_10021609C(a1);
  if (v6 != 8)
  {
    v7 = v6;
    v8 = v6;
    v9 = (qword_100B5EE10 + 48 * v6);
    if (*v9 == a1)
    {
      if (a3)
      {
        v28 = a1;
        v30 = a3;
        v29 = qword_100B5EE10 + 48 * sub_10021609C(a1) + 16;
        v31 = a2;
        v27 = 1;
        (*(qword_100B5EE10 + 392))(&v27);
        sub_100216338(v7);
      }

      else
      {
        v18 = sub_100248374(off_100AE7430, (v9 + 8));
        if (v18)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Could not register sco for link %d : %!", v19, v20, v21, v22, v23, v24, v25, a1);
            v26 = sub_10000C050(0x10u);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }

          *(qword_100B5EE10 + 48 * v8 + 4) = 1817;
          sub_1002EFF1C(a1, 1817);
        }

        else
        {
          *(qword_100B5EE10 + 48 * v8 + 28) = 3;
        }

        v28 = a1;
        v30 = v18;
        v29 = qword_100B5EE10 + 48 * sub_10021609C(a1) + 16;
        v31 = a2;
        v27 = 1;
        (*(qword_100B5EE10 + 392))(&v27);
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Links do not match... %!", v10, v11, v12, v13, v14, v15, v16, a3);
        v17 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      *(qword_100B5EE10 + 48 * v8 + 4) = 1816;
      sub_1002EFF1C(a1, 1816);
    }
  }
}

double sub_100216338(unsigned int a1)
{
  v2 = sub_100248578(qword_100B5EE10 + 48 * a1 + 16);
  if (v2)
  {
    v3 = v2;
    if (sub_10000C240())
    {
      sub_10000AF54("DeregisterScoApplicationByAddr failed %!", v4, v5, v6, v7, v8, v9, v10, v3);
      v11 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  v12 = qword_100B5EE10;
  v13 = (qword_100B5EE10 + 48 * a1);
  result = 0.0;
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  *v13 = -1;
  --*(v12 + 384);
  return result;
}

uint64_t sub_1002163F8(uint64_t a1, char a2)
{
  if (!dword_100BCE270)
  {
    return 1804;
  }

  if (a1)
  {
    if (*(qword_100B5EE10 + 384) == 8)
    {
      return 133;
    }

    v4 = sub_1002164D8(a1, 1, 0);
    if (v4 == 8)
    {
      return 133;
    }

    else
    {
      v6 = v4;
      v5 = sub_1002EF8BC(sub_100216134, off_100AE7270, a1, a2, 0x3FAu, 0, (qword_100B5EE10 + 48 * v4), &unk_100AE7298);
      if (v5)
      {
        sub_100216338(v6);
      }
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return v5;
}

uint64_t sub_1002164D8(uint64_t a1, char a2, __int16 a3)
{
  v4 = 0;
  for (i = 0; i != 8; ++i)
  {
    if (*(qword_100B5EE10 + v4) == -1)
    {
      v6 = qword_100B5EE10 + v4;
      if (!*(qword_100B5EE10 + v4 + 16) && *(qword_100B5EE10 + v4 + 20) == 0)
      {
        v16 = *a1;
        *(v6 + 20) = *(a1 + 4);
        *(v6 + 16) = v16;
        v17 = qword_100B5EE10;
        v18 = qword_100B5EE10 + v4;
        *v18 = a3;
        *(v18 + 28) = a2;
        ++*(v17 + 384);
        return i;
      }
    }

    v4 += 48;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Could not create raw device addr %:, state %d", v8, v9, v10, v11, v12, v13, v14, a1);
    v15 = sub_10000C050(0x10u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  LOBYTE(i) = 8;
  return i;
}

uint64_t sub_1002165D4(uint64_t a1, int a2)
{
  if (!dword_100BCE270)
  {
    return 408;
  }

  v3 = sub_10021609C(a1);
  if (v3 == 8)
  {
    return 1802;
  }

  v5 = qword_100B5EE10;
  v6 = qword_100B5EE10 + 48 * v3;
  v9 = *(v6 + 28);
  v7 = (v6 + 28);
  v8 = v9;
  if ((v9 - 4) < 2)
  {
    return 116;
  }

  if (v8 != 3)
  {
    return 1802;
  }

  *v7 = 4;
  *(v5 + 48 * v3 + 4) = a2;

  return sub_100217340(v3, a2);
}

uint64_t sub_100216684(uint64_t a1, uint64_t a2)
{
  if (!dword_100BCE270)
  {
    return 408;
  }

  v3 = sub_10021609C(a1);
  if (v3 == 8)
  {
    return 1802;
  }

  v11 = qword_100B5EE10 + 48 * v3;
  if (*(v11 + 32) != 1)
  {
    return 1807;
  }

  v12 = v3;
  result = sub_100249720(v11 + 16, a2, v4, v5, v6, v7, v8, v9);
  if ((a2 & (result == 0)) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  *(qword_100B5EE10 + 48 * v12 + 32) = v13;
  return result;
}

uint64_t sub_100216734(uint64_t a1)
{
  if (!dword_100BCE270)
  {
    return 408;
  }

  v1 = sub_10021609C(a1);
  if (v1 == 8)
  {
    return 1802;
  }

  v2 = v1;
  v3 = qword_100B5EE10 + 48 * v1;
  if (*(v3 + 28) != 3)
  {
    return 1802;
  }

  if (*(v3 + 32))
  {
    return 1806;
  }

  result = sub_10024871C(v3 + 16);
  if (!result)
  {
    *(qword_100B5EE10 + 48 * v2 + 32) = 2;
  }

  return result;
}

uint64_t sub_1002167D4(uint64_t a1, int a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("OI_HandsfreeAG_SetAoSMediaState - handle:%d mediaState:%s", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0x10u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v12 = sub_10021609C(a1);
  if (v12 == 8)
  {
    return 1802;
  }

  v14 = v12;
  result = 0;
  *(qword_100B5EE10 + 48 * v14 + 32) = a2;
  return result;
}

uint64_t sub_100216924(uint64_t a1)
{
  if (!dword_100BCE270)
  {
    return 408;
  }

  v2 = sub_10021609C(a1);
  if (v2 == 8)
  {
    return 1802;
  }

  v4 = v2;
  v5 = qword_100B5EE10 + 48 * v2;
  v6 = *(v5 + 32);
  if (v6 == 3)
  {
    v8 = sub_1002119B0(a1);
    v9 = qword_100B5EE10 + 48 * v4;
    if (v8)
    {
      if (*(v9 + 32) == 4)
      {
        result = sub_10000C240();
        if (result)
        {
          sub_10000AF54("Trying to close HAOS while another request is in flight", v10, v11, v12, v13, v14, v15, v16, v18);
          v17 = sub_10000C050(0x10u);
          result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
          if (result)
          {
            sub_10080F6C8();
            result = 0;
          }
        }
      }

      else
      {
        result = sub_1002116EC(a1);
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
      result = sub_100248688(*(v9 + 8));
      if (result)
      {
        return result;
      }
    }

    v7 = 4;
  }

  else
  {
    if (v6 != 2)
    {
      return 1807;
    }

    LODWORD(result) = sub_10024A388(v5 + 16);
    v7 = 0;
    if (result == 1301)
    {
      result = 1807;
    }

    else
    {
      result = result;
    }
  }

  *(qword_100B5EE10 + 48 * v4 + 32) = v7;
  return result;
}

BOOL sub_100216A60(uint64_t a1)
{
  if (!dword_100BCE270)
  {
    return 0;
  }

  v1 = sub_10021609C(a1);
  return v1 != 8 && *(qword_100B5EE10 + 48 * v1 + 32) == 3;
}

uint64_t sub_100216AC0(uint64_t a1, uint64_t a2, char *a3, size_t a4)
{
  if (!dword_100BCE270)
  {
    return 408;
  }

  if (a2)
  {
    v7 = a1;
    v8 = sub_10021609C(a1);
    if (v8 == 8)
    {
      return 1802;
    }

    else
    {
      v10 = v8;
      v11 = qword_100B5EE10 + 48 * v8;
      if (*(v11 + 28) == 3)
      {
        if (*(v11 + 40))
        {
          return 118;
        }

        else
        {
          result = sub_1002EF8B0(sub_100216BAC, v7, a3, a4);
          if (!result)
          {
            *(qword_100B5EE10 + 48 * v10 + 40) = a2;
          }
        }
      }

      else
      {
        return 408;
      }
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return result;
}

uint64_t sub_100216BAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100B5EE10)
  {
    v7 = result;
    result = sub_10021609C(result);
    if (result != 8)
    {
      v8 = qword_100B5EE10 + 48 * result;
      v11 = *(v8 + 40);
      v10 = (v8 + 40);
      v9 = v11;
      if (v11)
      {
        *v10 = 0;

        return v9(v7, a2, a3, a4);
      }
    }
  }

  return result;
}

uint64_t sub_100216C4C(uint64_t a1)
{
  if (*(a1 + 2) != 1)
  {
    sub_1000D660C();
  }

  v2 = (qword_100B5EE10 + 8);
  v3 = 8;
  while (*v2 != a1)
  {
    v2 += 6;
    if (!--v3)
    {
      goto LABEL_8;
    }
  }

  result = *(v2 - 4);
  if (*(v2 - 4))
  {
    return result;
  }

LABEL_8:
  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("Could not find sco hfp handle for sco hci connection handle %d", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x10u);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10080F604();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100216D00(uint64_t a1)
{
  if (*(a1 + 2))
  {
    sub_1000D660C();
  }

  v2 = qword_100B5EE10 + 16;
  v3 = 8;
  while (*v2 != *(a1 + 48) || *(v2 + 4) != *(a1 + 52))
  {
    v2 += 48;
    if (!--v3)
    {
      goto LABEL_11;
    }
  }

  result = *(v2 - 16);
  if (*(v2 - 16))
  {
    return result;
  }

LABEL_11:
  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("Could not find sco hfp handle for sco hci connection handle %d", v6, v7, v8, v9, v10, v11, v12, a1);
    v13 = sub_10000C050(0x10u);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10080F604();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100216DD0(uint64_t a1, char a2, _WORD *a3, _WORD *a4, int a5)
{
  if (!dword_100BCE270)
  {
    return 1804;
  }

  if (a1)
  {
    if (*(qword_100B5EE10 + 384) == 8)
    {
      return 133;
    }

    v10 = sub_1002164D8(a1, 1, 0);
    if (v10 == 8)
    {
      return 133;
    }

    v12 = v10;
    v13 = sub_1002F011C(sub_100216134, off_100AE7270, a1, a2, *(qword_100B5EE10 + 402), 0, (qword_100B5EE10 + 48 * v10), a3, &unk_100AE7298, a5);
    if (v13)
    {
      v11 = v13;
      sub_100216338(v12);
      return v11;
    }

    v15 = *(qword_100B5EE10 + 48 * v12);
    *a4 = v15;
    if (sub_100211AB0(v15, a1) == 255)
    {
      return 133;
    }

    else
    {
      v11 = sub_100248374(off_100AE7430, qword_100B5EE10 + 48 * v12 + 16);
      if (v11)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not register sco for link", v16, v17, v18, v19, v20, v21, v22, v24);
          v23 = sub_10000C050(0x10u);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }

      else
      {
        *(qword_100B5EE10 + 48 * v12 + 28) = 3;
      }
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return v11;
}

void sub_100216F84(uint64_t a1, unsigned int a2)
{
  if (dword_100BCE270)
  {
    sub_100248578(a1);
    v4 = 0;
    v5 = qword_100B5EE10 + 16;
    while (*v5 != *a1 || *(v5 + 4) != *(a1 + 4))
    {
      ++v4;
      v5 += 48;
      if (v4 == 8)
      {
        goto LABEL_14;
      }
    }

    sub_100216338(v4);
LABEL_14:

    sub_1002F04F0(a1, a2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_HandsfreeRaw_FastConnect_DestroyChannel Handsfree AG service not started!", v7, v8, v9, v10, v11, v12, v13, v15);
    v14 = sub_10000C050(0x10u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_100217074(uint64_t a1, int a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("HANDSFREE RFCOMM_ReleaseInd, link=%d, reason=%!", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0x10u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v15 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  result = sub_10021609C(a1);
  if (result != 8)
  {
    v13 = qword_100B5EE10 + 48 * result;
    *(v13 + 28) = 0;
    *(v13 + 4) = a2;
    return sub_100217340(result, a2);
  }

  return result;
}

void sub_100217174(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a1;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = sub_10021609C(a1);
  if (v6 == 8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Ignoring received data, we are not connected to this device ... %d", v7, v8, v9, v10, v11, v12, v13, 8);
      v14 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_14:
        sub_10080F604();
      }
    }
  }

  else
  {
    v15 = v6;
    if ((*(qword_100B5EE10 + 48 * v6 + 28) & 0xFE) == 4)
    {
      if (sub_10000C240())
      {
        v23 = *(qword_100B5EE10 + 48 * v15 + 28);
        v24 = v23 > 5 ? "UNKNOWN" : off_100AE74E0[v23];
        sub_10000AF54("Ignoring received data while in state %s", v16, v17, v18, v19, v20, v21, v22, v24);
        v25 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }
      }
    }

    else if (a3 == 3)
    {
      strcpy(v29, "\r\nAT+OK\r\n");
      sub_1002EF8B0(sub_100216BAC, v5, v29, 0xAuLL);
    }

    else
    {
      LODWORD(v26) = 7;
      WORD2(v26) = v5;
      v27 = a2;
      LOWORD(v28) = a3;
      (*(qword_100B5EE10 + 392))(&v26);
    }
  }
}

uint64_t sub_100217340(unsigned int a1, int a2)
{
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v4 = qword_100B5EE10;
  v6 = qword_100B5EE10 + 48 * a1;
  if ((*(v6 + 32) | 4) == 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_100248688(*(v6 + 8));
    if (v7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ScoDisconnect failed - %!, setting as disconnected, State %d\n", v8, v9, v10, v11, v12, v13, v14, v7);
        v15 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      v16 = 0;
    }

    else
    {
      v16 = 4;
    }

    v4 = qword_100B5EE10;
    *(qword_100B5EE10 + 48 * a1 + 32) = v16;
  }

  v17 = (v4 + 48 * a1);
  if (*(v17 + 28))
  {
    v18 = *(v17 + 28) == 5;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v31 = sub_1002EFF1C(*v17, a2);
    v7 = v31;
    if (!v31)
    {
      v4 = qword_100B5EE10;
      *(qword_100B5EE10 + 48 * a1 + 28) = 4;
      goto LABEL_17;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("RFCOMM_Disconnect failed - %!, forcing disconnect!, state %d\n", v32, v33, v34, v35, v36, v37, v38, v7);
      v39 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    goto LABEL_16;
  }

  if (v7)
  {
LABEL_16:
    sub_1002175D4(a1);
    v4 = qword_100B5EE10;
  }

LABEL_17:
  v19 = v4 + 48 * a1;
  if (*(v19 + 32) || *(v19 + 28))
  {
    v20 = v4 + 48 * a1;
    v22 = *(v20 + 24);
    v21 = (v20 + 24);
    if (!v22)
    {
      v44[1] = (v4 + 48 * a1);
      v44[0] = 2;
      v7 = sub_10002195C(sub_100217684, v44, 50, v21);
      if (v7)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Register disconnect timeout handler failed %!\n", v23, v24, v25, v26, v27, v28, v29, v7);
          v30 = sub_10000C050(0x10u);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }
    }
  }

  else
  {
    v40 = *(v19 + 24);
    if (v40)
    {
      sub_10002242C(v40);
      v4 = qword_100B5EE10;
      *(qword_100B5EE10 + 48 * a1 + 24) = 0;
    }

    v41 = *(v4 + 392);
    if (v41)
    {
      v42 = v4 + 48 * a1;
      WORD2(v45) = *v42;
      LODWORD(v45) = 2;
      LODWORD(v46) = *(v42 + 4);
      v41(&v45);
    }

    sub_100216338(a1);
  }

  return v7;
}

void sub_1002175D4(unsigned int a1)
{
  v2 = qword_100B5EE10 + 48 * a1;
  *(v2 + 28) = 5;
  v3 = sub_10023BD60(v2 + 16);
  if (v3)
  {
    v4 = v3;
    if (sub_10000C240())
    {
      sub_10000AF54("ForceDisconnect failed - %!, assuming already disconnected\n", v5, v6, v7, v8, v9, v10, v11, v4);
      v12 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    *(qword_100B5EE10 + 48 * a1 + 28) = 0;
  }
}

uint64_t sub_100217684(uint64_t a1)
{
  result = sub_10021609C(**(a1 + 8));
  if (result != 8)
  {
    v2 = result;
    *(qword_100B5EE10 + 48 * result + 24) = 0;
    sub_1002175D4(result);
    *(qword_100B5EE10 + 48 * v2 + 4) = 1814;

    return sub_100217340(v2, 1814);
  }

  return result;
}

uint64_t sub_100217710(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = qword_100B5EE10;
  v5 = -384;
  while (*(qword_100B5EE10 + v5 + 400) != *a3 || *(qword_100B5EE10 + v5 + 404) != *(a3 + 4))
  {
    ++v3;
    v5 += 48;
    if (!v5)
    {
      return result;
    }
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v7 = qword_100B5EE10 + v5;
  if (result)
  {
    if (*(v7 + 416) == 3)
    {
      return result;
    }

    *(v7 + 416) = 0;
  }

  else
  {
    *(v7 + 392) = a2;
    *(v7 + 416) = 3;
  }

  LODWORD(v12) = 5;
  WORD2(v12) = *(v4 + v5 + 384);
  LODWORD(v13) = result;
  result = (*(v4 + 392))(&v12);
  v8 = *(qword_100B5EE10 + v5 + 412);
  v9 = v8 > 5;
  v10 = (1 << v8) & 0x31;
  if (!v9 && v10 != 0)
  {
    return sub_100217340(v3, *(qword_100B5EE10 + v5 + 388));
  }

  return result;
}

void sub_100217804(int a1, uint64_t a2)
{
  if (*(a2 + 2) != 1)
  {
    sub_1000D660C();
  }

  v4 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v5 = qword_100B5EE10;
  v6 = -384;
  while (*(qword_100B5EE10 + v6 + 392) != a2)
  {
    ++v4;
    v6 += 48;
    if (!v6)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not find sco handle for device %d", v7, v8, v9, v10, v11, v12, v13, a2);
        v14 = sub_10000C050(0x10u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
LABEL_8:
          sub_10080F604();
          return;
        }
      }

      return;
    }
  }

  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("SCO disconnect failed for handle %d, %!", v15, v16, v17, v18, v19, v20, v21, *(qword_100B5EE10 + v6 + 384));
      v22 = sub_10000C050(0x10u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v23 = qword_100B5EE10 + v6;
    *(v23 + 416) = 0;
    *(v23 + 392) = 0;
    LODWORD(v28) = 6;
    WORD2(v28) = *(v5 + v6 + 384);
    LODWORD(v29) = 0;
    (*(v5 + 392))(&v28);
    v24 = *(qword_100B5EE10 + v6 + 412);
    v25 = v24 > 5;
    v26 = (1 << v24) & 0x31;
    if (!v25 && v26 != 0)
    {
      sub_100217340(v4, *(qword_100B5EE10 + v6 + 388));
    }
  }
}

uint64_t sub_100217984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = qword_100B5EE10;
  v9 = qword_100B5EE10 + 16;
  v10 = 8;
  while (*v9 != *a1 || *(v9 + 4) != *(a1 + 4))
  {
    v9 += 48;
    if (!--v10)
    {
      goto LABEL_11;
    }
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (*(v9 + 12) == 3 && (*(v9 + 16) | 2) == 2)
  {
    *(v9 + 16) = 1;
    LODWORD(v13) = 3;
    LODWORD(v14) = 1;
    WORD2(v13) = *(v9 - 16);
    return (*(v8 + 392))(&v13);
  }

LABEL_11:

  return sub_100249720(a1, 0, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100217A48(uint64_t *a1)
{
  xmmword_100B5EE68 = 0u;
  unk_100B5EE78 = 0u;
  xmmword_100B5EE88 = 0u;
  unk_100B5EE98 = 0u;
  xmmword_100B5EEA8 = 0u;
  xmmword_100B5EE48 = 0u;
  unk_100B5EE58 = 0u;
  xmmword_100B5EEB8 = 0u;
  *&off_100B5EEC8 = 0u;
  off_100B5EED8 = 0;
  LOBYTE(xmmword_100B5EE48) = -1;
  BYTE10(xmmword_100B5EE48) = -1;
  BYTE2(xmmword_100B5EE68) = -1;
  byte_100B5EE80 = -1;
  BYTE2(xmmword_100B5EE88) = -1;
  byte_100B5EEA2 = -1;
  if (!a1 || (v2 = *a1) == 0 || (v3 = a1[1]) == 0)
  {
    sub_1000D660C();
    v2 = *a1;
    v3 = a1[1];
  }

  *&xmmword_100B5EEB8 = v2;
  *(&xmmword_100B5EEB8 + 1) = v3;
  return 0;
}

uint64_t sub_100217AD4(uint64_t a1)
{
  if (!a1 || (v2 = *a1) == 0 || (v3 = *(a1 + 8)) == 0)
  {
    sub_1000D660C();
    v2 = *a1;
    v3 = *(a1 + 8);
  }

  off_100B5EEC8 = v2;
  off_100B5EED0 = v3;
  return 0;
}

uint64_t sub_100217B20(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (v10 > 0xEF)
  {
    return 101;
  }

  if ((*(a1 + 1) - 0x100000) < 0xFFF000FF)
  {
    return 101;
  }

  if ((*(a1 + 2) - 0x100000) < 0xFFF000FF)
  {
    return 101;
  }

  if (a1[12] > 7u)
  {
    return 101;
  }

  if (a1[13] > 1u)
  {
    return 101;
  }

  if (a1[14] > 1u)
  {
    return 101;
  }

  if (*(a1 + 8) - 4001 < 0xFFFFF064)
  {
    return 101;
  }

  if (*(a1 + 9) - 4001 < 0xFFFFF064)
  {
    return 101;
  }

  v11 = a1[20];
  if (v11 > 0x1F)
  {
    return 101;
  }

  v58 = v8;
  v59 = v9;
  if (v11)
  {
    v13 = (*(a1 + 3) + 9);
    v14 = v11;
    while (*(v13 - 9) <= 0xEFu && *(v13 - 7) <= 0xFFFu && *(v13 - 5) <= 0xFFFu && *(v13 - 3) <= 7u && *(v13 - 2) <= 7u && *(v13 - 1) <= 0xFu && *v13 <= 0xFu)
    {
      v13 += 10;
      if (!--v14)
      {
        if (v11 <= 2)
        {
          goto LABEL_23;
        }

        return 101;
      }
    }

    return 101;
  }

  else
  {
LABEL_23:
    v15 = 0;
    v16 = 1;
    while (1)
    {
      v17 = v16;
      v18 = &xmmword_100B5EE48 + 56 * v15;
      if (v18[2] == 1 && *v18 == v10)
      {
        break;
      }

      v16 = 0;
      v15 = 1;
      if ((v17 & 1) == 0)
      {
        v19 = 0;
        for (i = 1; ; i = 0)
        {
          v21 = i;
          v22 = &xmmword_100B5EE48 + 56 * v19;
          if ((v22[2] & 1) == 0)
          {
            break;
          }

          v19 = 1;
          if ((v21 & 1) == 0)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("allocCigCtx no more CIG context", v23, v24, v25, v26, v27, v28, v29, v53);
              v30 = sub_10000C050(0x46u);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                sub_10080F604();
              }
            }

            return 104;
          }
        }

        v22[2] = 1;
        *v22 = v10;
        if (!v11)
        {
          goto LABEL_42;
        }

        v31 = 0;
        v32 = 0;
        v33 = &xmmword_100B5EE48 + 56 * v19 + 12;
        do
        {
          *(v33 - 1) = 1;
          v34 = (*(a1 + 3) + v31);
          *(v33 - 2) = *v34;
          v35 = *v34;
          *(v33 + 4) = *(v34 + 4);
          *v33 = v35;
          v33 += 24;
          ++v32;
          v36 = a1[20];
          v31 += 10;
        }

        while (v32 < v36);
        goto LABEL_41;
      }
    }

    if (v11)
    {
      v37 = 0;
      v38 = 0;
      v39 = &xmmword_100B5EE48 + 56 * v15 + 12;
      do
      {
        *(v39 - 1) = 1;
        v40 = (*(a1 + 3) + v37);
        *(v39 - 2) = *v40;
        v41 = *v40;
        *(v39 + 4) = *(v40 + 4);
        *v39 = v41;
        v39 += 24;
        ++v38;
        v36 = a1[20];
        v37 += 10;
      }

      while (v38 < v36);
LABEL_41:
      v42 = v36;
      goto LABEL_43;
    }

LABEL_42:
    v42 = 0;
LABEL_43:
    v57 = 0;
    v56 = 0;
    v54 = 0;
    v55 = 0;
    if (v42)
    {
      v43 = v42;
      v44 = (*(a1 + 3) + 9);
      v45 = &v54;
      v46 = &v54 + 2;
      v47 = &v55;
      v48 = &v55 + 2;
      v49 = &v56;
      v50 = &v56 + 2;
      v51 = &v57;
      do
      {
        *v51 = *(v44 - 9);
        v51 = (v51 + 1);
        *v50++ = *(v44 - 7);
        *v49 = *(v44 - 5);
        v49 = (v49 + 2);
        *v48++ = *(v44 - 3);
        *v47 = *(v44 - 2);
        v47 = (v47 + 1);
        *v46++ = *(v44 - 1);
        v52 = *v44;
        v44 += 10;
        *v45 = v52;
        v45 = (v45 + 1);
        --v43;
      }

      while (v43);
    }

    return sub_100018960(230, sub_100217EA8, a3, a4, a5, a6, a7, a8, *a1);
  }
}

void sub_100217EA8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = 1;
  while (1)
  {
    v10 = v9;
    v11 = &xmmword_100B5EE48 + 56 * v8;
    if (v11[2] == 1 && *v11 == a2)
    {
      break;
    }

    v9 = 0;
    v8 = 1;
    if ((v10 & 1) == 0)
    {
      sub_1000D660C();
      v11 = 0;
      break;
    }
  }

  v49[0] = 0;
  v49[1] = 0;
  if (a1)
  {
    goto LABEL_7;
  }

  if (!a3)
  {
LABEL_22:
    a1 = 0;
    goto LABEL_23;
  }

  v20 = 0;
  v21 = a3;
  v22 = v11 + 24;
  while (1)
  {
    v23 = *(a4 + 2 * v20);
    *(v22 - 8) = v23;
    v24 = sub_1000ABB80(v23);
    if (sub_1000B8B5C(v24))
    {
      v49[v20] = v24;
      if (sub_10000C240())
      {
        sub_10000AF54("CIS connection handle %p already exists", v25, v26, v27, v28, v29, v30, v31, v24);
        v32 = sub_10000C050(0x46u);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = sub_10000C0FC();
          *buf = 136446466;
          v46 = v33;
          v47 = 1024;
          v48 = 0xFFFF;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
        }
      }
    }

    else
    {
      v24 = sub_1002560B4(*(a4 + 2 * v20));
      v49[v20] = v24;
    }

    if (!v24)
    {
      break;
    }

    *v22 = v24;
    v22 += 3;
    v24[28] = 7;
    if (v21 == ++v20)
    {
      goto LABEL_22;
    }
  }

  if (sub_10000C240() && (sub_10000AF54("No resource for cisHandle %:", v34, v35, v36, v37, v38, v39, v40, *(a4 + 2 * v20)), v41 = sub_10000C050(0x46u), os_log_type_enabled(v41, OS_LOG_TYPE_ERROR)))
  {
    v44 = sub_10000C0FC();
    *buf = 136446466;
    v46 = v44;
    v47 = 1024;
    v48 = 0xFFFF;
    _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
    if (v20)
    {
LABEL_29:
      for (i = 0; i != v20; ++i)
      {
        v43 = v49[i];
        if (!v43)
        {
          sub_1000D660C();
        }

        sub_1000E12C4(v43);
      }
    }
  }

  else if (v20)
  {
    goto LABEL_29;
  }

  a1 = 104;
LABEL_7:
  if (sub_10000C240())
  {
    sub_10000AF54("Set CIG parameters complete with status %!", v12, v13, v14, v15, v16, v17, v18, a1);
    v19 = sub_10000C050(0x46u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  if ((v11[2] & 1) == 0)
  {
    sub_1000D660C();
  }

  *(v11 + 6) = 0;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *v11 = 0u;
LABEL_23:
  if (off_100B5EEC8)
  {
    off_100B5EEC8(a1, a2);
  }
}

uint64_t sub_10021819C(uint64_t a1)
{
  v2 = 0;
  v3 = 1;
  do
  {
    while (1)
    {
      v4 = v3;
      v5 = &xmmword_100B5EE48 + 56 * v2;
      if (v5[2] == 1)
      {
        break;
      }

      v3 = 0;
      v2 = 1;
      if ((v4 & 1) == 0)
      {
        v7 = 0;
        goto LABEL_10;
      }
    }

    v3 = 0;
    v6 = *v5;
    v2 = 1;
  }

  while ((v4 & (v6 != a1)) != 0);
  if (v6 == a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

LABEL_10:
  if (sub_10000C240())
  {
    sub_10000AF54("LE_CIS_Central_RemoveCig", v8, v9, v10, v11, v12, v13, v14, v22);
    v15 = sub_10000C050(0x46u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v24 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!v7)
  {
    return 120;
  }

  v16 = 0;
  for (i = 1; ; i = 0)
  {
    v18 = i;
    v19 = &v7[24 * v16 + 8];
    if (*(v19 + 3) == 1)
    {
      v20 = *(v19 + 16);
      if (v20)
      {
        if (*(v20 + 56) < 2u)
        {
          break;
        }
      }
    }

    v16 = 1;
    if ((v18 & 1) == 0)
    {
      return sub_100018960(233, sub_10021833C, v9, v10, v11, v12, v13, v14, a1);
    }
  }

  return 117;
}

uint64_t sub_10021833C(uint64_t a1, int a2)
{
  v3 = 0;
  for (i = 1; ; i = 0)
  {
    v5 = i;
    v6 = &xmmword_100B5EE48 + 56 * v3;
    if (v6[2] == 1 && *v6 == a2)
    {
      break;
    }

    v3 = 1;
    if ((v5 & 1) == 0)
    {
      sub_100813F30();
    }
  }

  *(v6 + 6) = 0;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *v6 = 0u;
  v7 = off_100B5EED0;
  if (off_100B5EED0)
  {

    return v7();
  }

  return result;
}

uint64_t sub_1002183BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  if (!a3 || !a4)
  {
    sub_1000D660C();
  }

  if (a2 > 2)
  {
    return 101;
  }

  v54[0] = 0;
  v54[1] = 0;
  v53[0] = 0;
  v53[1] = 0;
  if (!a2)
  {
LABEL_20:
    result = sub_1000D6178(0xE8u, a2, a3, a4, a5, a6, a7, a8, a2);
    if (!result && a2)
    {
      v22 = v53;
      v23 = v54;
      v24 = a2;
      do
      {
        *(*v23 + 58) = a1;
        v25 = *v9++;
        *(*v23 + 59) = v25;
        *(*v23 + 56) = 1;
        *(*v23 + 132) = 0;
        v27 = *v22++;
        v26 = v27;
        v28 = *v23++;
        *(v28 + 48) = v26;
        --v24;
      }

      while (v24);
      return 0;
    }

    return result;
  }

  v12 = 0;
  while (2)
  {
    v13 = 0;
    v14 = v9[v12];
    v15 = 1;
    while (1)
    {
      v16 = v15;
      v17 = &xmmword_100B5EE48 + 56 * v13;
      if (*v17 == a1)
      {
        if (v17[10] == v14)
        {
          v18 = 8;
          goto LABEL_15;
        }

        if (v17[34] == v14)
        {
          break;
        }
      }

      v15 = 0;
      v13 = 1;
      if ((v16 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v18 = 32;
LABEL_15:
    v19 = *&v17[v18 + 16];
    if (!v19)
    {
LABEL_25:
      if (sub_10000C240())
      {
        sub_10000AF54("LE_CIS_Central_CreateCis, no CIS Handle found for CIG ID[%d] CIS ID[%d]", v29, v30, v31, v32, v33, v34, v35, a1);
        v36 = sub_10000C050(0x46u);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
LABEL_27:
          sub_1000E09C0();
        }
      }

      return 101;
    }

    v20 = sub_100255740(*(a4 + 4 * v12));
    if (!v20)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("LE_CIS_Central_CreateCis, no ACL Handle found for ACL Identifier[%d]:%d", v45, v46, v47, v48, v49, v50, v51, v12);
        v52 = sub_10000C050(0x46u);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }
      }

      return 101;
    }

    v54[v12] = v19;
    v53[v12] = v20;
    if (*(v19 + 56) == 7 && !*(v20 + 124))
    {
      if (++v12 != a2)
      {
        continue;
      }

      goto LABEL_20;
    }

    break;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("LE_CIS_Central_CreateCis failed. CIS State:%d, LE State:%d", v37, v38, v39, v40, v41, v42, v43, *(v19 + 56));
    v44 = sub_10000C050(0x46u);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 114;
}

uint64_t sub_100218668(int a1, int a2)
{
  v2 = sub_10025581C(a1, a2);
  if (v2)
  {
    v10 = v2;
    v11 = sub_1000D6178(5u, v3, v4, v5, v6, v7, v8, v9, v2);

    return sub_1000D6410(v10, v11);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE_CIS_DisconnectCis, invalid connection handle", v13, v14, v15, v16, v17, v18, v19, v21);
      v20 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 101;
  }
}

uint64_t sub_100218728(int a1, int a2, int a3)
{
  v4 = 0;
  for (i = 1; ; i = 0)
  {
    v6 = i;
    v7 = &xmmword_100BC9C20 + 24 * v4;
    if (v7[16] == 1 && v7[10] == a2 && v7[11] == a3)
    {
      break;
    }

    v4 = 1;
    if ((v6 & 1) == 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("LE_CIS_HandleCisRequest couldn't find pending CIS request", v8, v9, v10, v11, v12, v13, v14, v66);
        v15 = sub_10000C050(0x46u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 101;
    }
  }

  v7[16] = 0;
  v18 = *v7;
  if (*v7 && !*(v18 + 124) && sub_1000ABD24(*v7))
  {
    if (a1)
    {
      v25 = sub_1002560B4(*(v7 + 4));
      if (v25)
      {
        v33 = v25;
        v16 = sub_1000D6178(0xEAu, v26, v27, v28, v29, v30, v31, v32, v25);
        if (v16)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("OI_HCI_CMD_LE_AcceptCisRequestCommand failed", v34, v35, v36, v37, v38, v39, v40, v67);
            v41 = sub_10000C050(0x46u);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          sub_1000E12C4(v33);
        }

        else
        {
          v33[28] = 258;
          *(v33 + 33) = 0;
          *(v33 + 58) = v7[10];
          *(v33 + 59) = v7[11];
          *(v33 + 6) = v18;
        }
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not allocate connection handle", v58, v59, v60, v61, v62, v63, v64, v66);
          v65 = sub_10000C050(0x46u);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        return 104;
      }
    }

    else
    {
      v16 = sub_100018960(235, nullsub_135, v19, v20, v21, v22, v23, v24, *(v7 + 4));
      if (v16)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCI_CMD_LE_RejectCisRequestCommand failed", v50, v51, v52, v53, v54, v55, v56, v68);
          v57 = sub_10000C050(0x46u);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE_CIS_HandleCisRequest invalid acl connection handle", v42, v43, v44, v45, v46, v47, v48, v66);
      v49 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1310;
  }

  return v16;
}

void sub_1002189A0(uint64_t a1, unsigned __int16 *a2)
{
  v4 = sub_1000ABB80(*a2);
  v5 = v4;
  if (!v4 || !sub_1002555B4(v4))
  {
    sub_1000D660C();
  }

  v6 = *(v5 + 57);
  if (a1)
  {
    if (*(v5 + 57))
    {
      sub_1000E12C4(v5);
      v5 = 0;
    }

    else
    {
LABEL_28:
      *(v5 + 56) = 7;
    }
  }

  else
  {
    v7 = *(v5 + 56);
    v9 = v7 == 1 && v6 == 0;
    v10 = v6 == 1 && v7 == 2;
    if (!v10 && !v9)
    {
      sub_1000D660C();
    }

    *(v5 + 56) = 0;
    v11 = *a2;
    v12 = *(a2 + 1);
    *(v5 + 32) = *(a2 + 8);
    v5[6] = v11;
    v5[7] = v12;
    if (!*(v5 + 57))
    {
      v13 = 0;
      v14 = 1;
      while (1)
      {
        v15 = v14;
        v16 = &xmmword_100B5EE48 + 56 * v13;
        if (v16[2] == 1)
        {
          break;
        }

LABEL_26:
        v14 = 0;
        v13 = 1;
        if ((v15 & 1) == 0)
        {
          sub_1000D660C();
          __break(1u);
          goto LABEL_28;
        }
      }

      v17 = 0;
      v18 = 1;
      while (1)
      {
        v19 = v18;
        v20 = &v16[24 * v17 + 8];
        if (v20[3] == 1 && *v20 == *a2)
        {
          break;
        }

        v18 = 0;
        v17 = 1;
        if ((v19 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      ++v16[1];
    }
  }

  v21 = xmmword_100B5EEB8;
  if (xmmword_100B5EEB8)
  {
    v22 = *(v5 + 58);
    v23 = *(v5 + 59);

    v21(a1, v22, v23, v5, v6 == 0);
  }
}

void sub_100218B20(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a2)
  {
    if (!sub_1002555B4(a2))
    {
      sub_1000D660C();
    }

    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = v7;
      v9 = &xmmword_100B5EE48 + 56 * v6;
      if (v9[2] == 1)
      {
        break;
      }

LABEL_10:
      v7 = 0;
      v6 = 1;
      if ((v8 & 1) == 0)
      {
        v9 = 0;
        goto LABEL_12;
      }
    }

    v10 = 0;
    v11 = 1;
    while (1)
    {
      v12 = v11;
      v13 = &v9[24 * v10 + 8];
      if (v13[3] == 1 && *v13 == *a2)
      {
        break;
      }

      v11 = 0;
      v10 = 1;
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v14 = 0;
    v15 = v9 + 8;
    v16 = 1;
    do
    {
      v17 = v16;
      if (sub_1002555B4(a2))
      {
        v18 = &v15[24 * v14];
        if (*(v18 + 2) == a2)
        {
          *(v18 + 2) = 0;
          v18[3] = 0;
          goto LABEL_23;
        }
      }

      v16 = 0;
      v14 = 1;
    }

    while ((v17 & 1) != 0);
    if (sub_10000C240())
    {
      sub_10000AF54("LE_CIS_ClearConnHandleInCig failed", v19, v20, v21, v22, v23, v24, v25, v35);
      v26 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

LABEL_23:
    if (*(&xmmword_100B5EEB8 + 1))
    {
      (*(&xmmword_100B5EEB8 + 1))(a1, *(a2 + 58), *(a2 + 59), a2, a3, *(a2 + 57) == 0);
    }

    *(a2 + 6) = 0;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIEventHandler_DisconnectionComplete no connection handle: reason %! ignoring", v27, v28, v29, v30, v31, v32, v33, a3);
    v34 = sub_10000C050(0x46u);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_100218CF0(uint64_t a1)
{
  if (sub_1000ABD24(*a1) && *(a1 + 10) <= 0xEFu && *(a1 + 11) <= 0xEFu && *(a1 + 8) < 0xF00u)
  {
    if (*a1)
    {
      if (*(*a1 + 124))
      {
        if (sub_100018960(235, nullsub_135, v2, v3, v4, v5, v6, v7, *(a1 + 8)))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("OI_HCI_CMD_LE_RejectCisRequestCommand failed", v16, v17, v18, v19, v20, v21, v22, v73);
            v23 = sub_10000C050(0x46u);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_8;
            }
          }
        }
      }

      else
      {
        v32 = &xmmword_100BC9C20;
        if ((byte_100BC9C30 & 1) != 0 && (v32 = &xmmword_100BC9C38, byte_100BC9C48 == 1))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Pending cis request buffer is full", v33, v34, v35, v36, v37, v38, v39, v71);
            v40 = sub_10000C050(0x46u);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
          *v32 = *a1;
          *(v32 + 16) = 1;
          v41 = off_100B5EED8;
          if (off_100B5EED8)
          {

            v41(a1);
          }

          else
          {
            v42 = 0;
            v43 = 1;
            while (1)
            {
              v44 = v43;
              v45 = &xmmword_100BC9C20 + 24 * v42;
              if (v45[16] == 1 && v45[10] == *(a1 + 10) && v45[11] == *(a1 + 11))
              {
                break;
              }

              v43 = 0;
              v42 = 1;
              if ((v44 & 1) == 0)
              {
                goto LABEL_36;
              }
            }

            v45[16] = 0;
LABEL_36:
            v46 = sub_1002560B4(*(a1 + 8));
            if (v46)
            {
              v54 = v46;
              if (sub_1000D6178(0xEAu, v47, v48, v49, v50, v51, v52, v53, v46))
              {
                if (sub_10000C240())
                {
                  sub_10000AF54("OI_HCI_CMD_LE_AcceptCisRequestCommand failed", v55, v56, v57, v58, v59, v60, v61, v75);
                  v62 = sub_10000C050(0x46u);
                  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000E09C0();
                  }
                }

                sub_1000E12C4(v54);
              }

              else
              {
                v54[28] = 258;
                *(v54 + 58) = *(a1 + 10);
                *(v54 + 59) = *(a1 + 11);
                *(v54 + 6) = *a1;
              }
            }

            else if (sub_100018960(235, nullsub_135, v48, v49, v50, v51, v52, v53, *(a1 + 8)))
            {
              if (sub_10000C240())
              {
                sub_10000AF54("OI_HCI_CMD_LE_RejectCisRequestCommand failed", v63, v64, v65, v66, v67, v68, v69, v76);
                v70 = sub_10000C050(0x46u);
                if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_8;
                }
              }
            }
          }
        }
      }
    }

    else if (sub_100018960(235, nullsub_135, v2, v3, v4, v5, v6, v7, *(a1 + 8)))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCI_CMD_LE_RejectCisRequestCommand failed", v24, v25, v26, v27, v28, v29, v30, v74);
        v31 = sub_10000C050(0x46u);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }
      }
    }
  }

  else if (sub_100018960(235, nullsub_135, v2, v3, v4, v5, v6, v7, *(a1 + 8)))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCI_CMD_LE_RejectCisRequestCommand failed", v8, v9, v10, v11, v12, v13, v14, v72);
      v15 = sub_10000C050(0x46u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_8:
        sub_1000E09C0();
      }
    }
  }
}

uint64_t sub_10021907C()
{
  sub_100304AF8("LE_CIS_DumpState:\n");
  v0 = 0;
  v1 = 1;
  do
  {
    v10 = v1;
    v2 = &xmmword_100B5EE48 + 56 * v0;
    sub_100304AF8("CIG_ID=%d", *v2);
    sub_100304AF8("\t inUse=%d numCisEsted=%d \n", v2[2], v2[1]);
    v3 = 0;
    v4 = v2 + 8;
    v5 = 1;
    do
    {
      v6 = v5;
      v7 = &v4[24 * v3];
      sub_100304AF8("cisId=%d inUse=%d", *(v7 + 2), *(v7 + 3));
      result = sub_100304AF8("\t cisHandle=%x", *v7);
      v9 = *(v7 + 2);
      if (v9)
      {
        sub_100304AF8("\t role=%d inUse=%d", *(v9 + 57), *(v9 + 56));
        sub_100304AF8("\t connID=%d lmHandle=%d", *(*(v7 + 2) + 4), **(v7 + 2));
        sub_100304AF8("\t cigSyncDelay=%d cisSyncDelay=%d", *(*(v7 + 2) + 100), *(*(v7 + 2) + 104));
        sub_100304AF8("\t bnCtoP=%d bnPToC=%d", *(*(v7 + 2) + 119), *(*(v7 + 2) + 120));
        sub_100304AF8("\t ftCToP=%d ftPToC=%d", *(*(v7 + 2) + 121), *(*(v7 + 2) + 122));
        sub_100304AF8("\t nse=%d isoInterval=%d", *(*(v7 + 2) + 118), *(*(v7 + 2) + 128));
        sub_100304AF8("\t maxPduCToP=%d maxPduPToC=%d", *(*(v7 + 2) + 124), *(*(v7 + 2) + 126));
        sub_100304AF8("\t phyCToP=%d phyPToC=%d", *(*(v7 + 2) + 116), *(*(v7 + 2) + 117));
        result = sub_100304AF8("\t transLatCToP=%d transLatPToC=%d", *(*(v7 + 2) + 108), *(*(v7 + 2) + 112));
      }

      v5 = 0;
      v3 = 1;
    }

    while ((v6 & 1) != 0);
    v1 = 0;
    v0 = 1;
  }

  while ((v10 & 1) != 0);
  return result;
}

uint64_t sub_100219284(int a1)
{
  v1 = sub_1002192EC(a1);
  v4 = v1;
  if (!v1)
  {
    sub_1000D660C();
  }

  v3[1] = &v4;
  v3[0] = 8;
  return sub_10002195C(sub_100219344, v3, 30, (v1 + 200));
}

uint64_t sub_1002192EC(int a1)
{
  result = 0;
  if (a1 && dword_100BCE284)
  {
    v3 = *(qword_100B5EEE0 + 36);
    if (*(qword_100B5EEE0 + 36))
    {
      for (result = *qword_100B5EEE0; !*(result + 196) || *(result + 192) != a1; result += 216)
      {
        if (!--v3)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100219344(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (sub_10000C240() && (sub_10000AF54("Didn't get transaction response within timeout period", v2, v3, v4, v5, v6, v7, v8, v19), v9 = sub_10000C050(0x15u), os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
  {
    sub_10080F7A0();
    if (v1)
    {
LABEL_4:
      *(v1 + 200) = 0;
      v10 = *(*(qword_100B5EEE0 + 8) + 40);
      if (v10)
      {
        v10(v1);
      }

      return;
    }
  }

  else if (v1)
  {
    goto LABEL_4;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid HID host handle in transaction timeout", v11, v12, v13, v14, v15, v16, v17, v19);
    v18 = sub_10000C050(0x15u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_100219410(uint64_t a1)
{
  v2 = sub_1002192EC(a1);
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + 200);
    if (v4)
    {
      sub_10002242C(v4);
      *(v3 + 200) = 0;
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("CancelTransactionTimeout called on invalid handle %d", v5, v6, v7, v8, v9, v10, v11, a1);
    v12 = sub_10000C050(0x15u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

double sub_10021949C(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (!*(a1 + 196))
  {
    sub_1000D660C();
  }

  if (*(a1 + 200))
  {
    sub_100219410(*(a1 + 192));
  }

  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  --*(qword_100B5EEE0 + 37);
  return result;
}

uint64_t sub_100219518(uint64_t a1)
{
  result = 0;
  if (a1 && dword_100BCE284)
  {
    v3 = *(qword_100B5EEE0 + 36);
    if (*(qword_100B5EEE0 + 36))
    {
      for (result = *qword_100B5EEE0; ; result += 216)
      {
        if (*(result + 196))
        {
          if (*a1 == *result && *(a1 + 4) == *(result + 4))
          {
            break;
          }
        }

        if (!--v3)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100219580(int a1)
{
  i = 0;
  if (a1 && dword_100BCE284)
  {
    v2 = *(qword_100B5EEE0 + 36);
    if (*(qword_100B5EEE0 + 36))
    {
      v3 = 0;
      for (i = *qword_100B5EEE0; *(i + 16) != a1; i += 216)
      {
        if (*(i + 104) == a1)
        {
          return *qword_100B5EEE0 + 216 * v3;
        }

        ++v3;
        if (!--v2)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return i;
}

uint64_t sub_1002195F4(int a1, int a2)
{
  v3 = sub_1002192EC(a1);
  v4 = v3 + 104;
  v5 = v3 + 16;
  if (a2 != 17)
  {
    v5 = 0;
  }

  if (a2 != 19)
  {
    v4 = v5;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100219638(void *a1, unsigned int a2, void *a3)
{
  if (dword_100BCE284)
  {
    return 119;
  }

  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  if (!*a1 || !a1[1] || !a1[2] || !a1[3] || !a1[4])
  {
    sub_1000D660C();
    if (!*a1)
    {
      return 101;
    }
  }

  if (!a1[1] || !a1[2] || !a1[3] || !a1[4])
  {
    return 101;
  }

  v7 = sub_1001BBBD8(0x28uLL, 0x10600408F19DE6DuLL);
  qword_100B5EEE0 = v7;
  if (!v7)
  {
    return 106;
  }

  v7[37] = 0;
  v7[36] = a2;
  v8 = sub_1001BBBD8(216 * a2, 0x10F0040D7A785B2uLL);
  v9 = qword_100B5EEE0;
  *qword_100B5EEE0 = v8;
  *(v9 + 8) = a1;
  if (v8)
  {
    v10 = sub_1002967FC(17, sub_100219870);
    if (v10)
    {
      v3 = v10;
      if (!sub_10000C240())
      {
        goto LABEL_25;
      }

      sub_10000AF54("Couldn't regster OI_PSM_HID_CONTROL: %!", v11, v12, v13, v14, v15, v16, v17, v3);
      v18 = sub_10000C050(0x15u);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }
    }

    else
    {
      v3 = sub_1002967FC(19, sub_100219974);
      if (!v3)
      {
        dword_100BCE284 = 1;
        *a3 = qword_100B5EEE0;
        return v3;
      }

      if (!sub_10000C240())
      {
        goto LABEL_25;
      }

      sub_10000AF54("Couldn't regster OI_PSM_HID_INTERRUPT: %!", v20, v21, v22, v23, v24, v25, v26, v3);
      v27 = sub_10000C050(0x15u);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }
    }

    sub_10080F7A0();
  }

  else
  {
    v3 = 106;
  }

LABEL_25:
  if (*qword_100B5EEE0)
  {
    sub_10000C1E8(*qword_100B5EEE0);
    *qword_100B5EEE0 = 0;
  }

  sub_1002969F8(17);
  sub_1002969F8(19);
  if (qword_100B5EEE0)
  {
    sub_10000C1E8(qword_100B5EEE0);
    qword_100B5EEE0 = 0;
  }

  return v3;
}

void sub_100219870(int a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  if (a1 != 17)
  {
    sub_1000D660C();
  }

  if (dword_100BCE284 || (sub_1000D660C(), dword_100BCE284))
  {
    v5 = sub_100219C90(a2, 0, &v8);
    v6 = v8;
    if (v5)
    {
      if (v8)
      {
        v7 = *(v8 + 24);
      }

      else
      {
        v7 = 0;
      }

      sub_100290164(sub_100219DF0, sub_10021A00C, sub_10021A148, a3, v7, 0, &unk_1008A3B80);
    }

    else
    {
      *(v8 + 192) = a3;
      *(v6 + 16) = a3;
      *(v6 + 40) = 1;
      *(v6 + 96) = 0;
      *(v6 + 7) = 0;
      (**(qword_100B5EEE0 + 8))(a2, a3);
    }
  }
}

void sub_100219974(int a1, uint64_t a2, unsigned int a3)
{
  if (a1 != 19)
  {
    sub_1000D660C();
  }

  if (dword_100BCE284 || (sub_1000D660C(), dword_100BCE284))
  {
    v5 = sub_100219518(a2);
    if (v5)
    {
      if ((*(v5 + 40) - 1) < 2)
      {
        *(v5 + 104) = a3;
        v6 = 1;
        *(v5 + 128) = 1;
        v7 = *(v5 + 112);
LABEL_15:
        sub_100290164(sub_10021AD0C, sub_10021AE5C, sub_10021A148, a3, v7, v6, &unk_1008A3B80);
        return;
      }

      if (!sub_10000C240() || (sub_10000AF54("Control channel must be connected first. Refusing.", v16, v17, v18, v19, v20, v21, v22, v24), v23 = sub_10000C050(0x15u), !os_log_type_enabled(v23, OS_LOG_TYPE_ERROR)))
      {
LABEL_14:
        v7 = 0;
        v6 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        goto LABEL_14;
      }

      sub_10000AF54("No connection associated with this BDADDR.", v8, v9, v10, v11, v12, v13, v14, v24);
      v15 = sub_10000C050(0x15u);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    sub_10080F7A0();
    goto LABEL_14;
  }
}

uint64_t sub_100219AC0()
{
  if (!dword_100BCE284)
  {
    return 121;
  }

  if (*(qword_100B5EEE0 + 37))
  {
    return 141;
  }

  result = sub_1002969F8(17);
  if (!result)
  {
    result = sub_1002969F8(19);
    if (!result)
    {
      v1 = qword_100B5EEE0;
      *(qword_100B5EEE0 + 8) = 0;
      *(v1 + 36) = 0;
      if (*v1)
      {
        sub_10000C1E8(*v1);
        v1 = qword_100B5EEE0;
        *qword_100B5EEE0 = 0;
      }

      sub_10000C1E8(v1);
      result = 0;
      qword_100B5EEE0 = 0;
      dword_100BCE284 = 0;
    }
  }

  return result;
}

uint64_t sub_100219B58(uint64_t a1, uint64_t *a2, _WORD *a3, void *a4)
{
  if (!dword_100BCE284)
  {
    return 408;
  }

  v17 = 0;
  v8 = sub_100219C90(a1, 1, &v17);
  if (!v8)
  {
    if (a2)
    {
      v9 = v17;
      v10 = *a2;
      v11 = a2[1];
      *(v17 + 24) = *a2;
      *(v9 + 32) = v11;
      *(v9 + 112) = a2[2];
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v9 = v17;
      *(v17 + 112) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
    }

    *(v9 + 120) = v11;
    if (a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = &unk_1008A3B80;
    }

    v8 = sub_10028F454(sub_100219DF0, sub_10021A00C, sub_10021A148, 17, v9, v10, (v9 + 16), v12);
    v13 = v17;
    if (v8)
    {
      sub_10021949C(v17);
    }

    else
    {
      v14 = *(v17 + 16);
      *(v17 + 192) = v14;
      *(v13 + 40) = 1;
      *(v13 + 196) = 1;
      *a3 = v14;
      v15 = sub_1000E1FE8(a1);
      v8 = 0;
      if (v15)
      {
        *(v15 + 256) = 0;
      }
    }
  }

  return v8;
}

uint64_t sub_100219C90(uint64_t a1, char a2, uint64_t a3)
{
  if (!a3)
  {
    sub_1000D660C();
  }

  v6 = qword_100B5EEE0;
  v7 = *(qword_100B5EEE0 + 36);
  if (*(qword_100B5EEE0 + 36))
  {
    v8 = 0;
    v9 = *qword_100B5EEE0;
    do
    {
      v10 = v9;
      if (*(v9 + 196))
      {
        v11 = *a1 == *v9 && *(a1 + 4) == *(v9 + 4);
        v10 = v8;
        if (v11)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("A connection to %: already exists", v22, v23, v24, v25, v26, v27, v28, a1);
            v29 = sub_10000C050(0x15u);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          return 133;
        }
      }

      v9 += 216;
      v8 = v10;
      --v7;
    }

    while (v7);
    if (!v10)
    {
      goto LABEL_13;
    }

    result = 0;
    *a3 = v10;
    ++*(v6 + 37);
    *(v10 + 196) = 1;
    v13 = *a1;
    *(v10 + 4) = *(a1 + 4);
    *v10 = v13;
    *(*a3 + 6) = a2;
  }

  else
  {
LABEL_13:
    if (sub_10000C240())
    {
      sub_10000AF54("Too many connections. Refusing connection allocation request.", v14, v15, v16, v17, v18, v19, v20, v30);
      v21 = sub_10000C050(0x15u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 104;
  }

  return result;
}

void sub_100219DF0(int a1, __int16 a2, __int16 a3, uint64_t a4)
{
  if (!dword_100BCE284)
  {
    sub_1000D660C();
    if (!dword_100BCE284)
    {
      return;
    }
  }

  v8 = sub_100219580(a1);
  if (!v8)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Unexpected L2cap connection confirmation", v19, v20, v21, v22, v23, v24, v25, v35);
    v26 = sub_10000C050(0x15u);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_11:
    sub_10080F7A0();
    return;
  }

  v9 = v8;
  if (a4)
  {
    v10 = *(v8 + 192);
    if (sub_10000C240())
    {
      sub_10000AF54("L2capControlConnectCfm: %!", v11, v12, v13, v14, v15, v16, v17, a4);
      v18 = sub_10000C050(0x15u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    (*(*(qword_100B5EEE0 + 8) + 8))(v10, a4);
    sub_10021949C(v9);
    return;
  }

  if (*(v8 + 40) != 1)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Unexpected L2cap connection confirmation", v27, v28, v29, v30, v31, v32, v33, v35);
    v34 = sub_10000C050(0x15u);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_11;
  }

  *(v8 + 40) = 2;
  *(v8 + 44) = a2;
  *(v8 + 46) = a3;
  if (*(v8 + 6) == 1)
  {
    if (sub_10028F454(sub_10021AD0C, sub_10021AE5C, sub_10021A148, 19, v8, *(v8 + 112), (v8 + 104), &unk_1008A3B80))
    {
      *(v9 + 196) = 5;

      sub_10021AF68(v9, 436);
    }

    else
    {
      *(v9 + 128) = 1;
    }
  }
}

void sub_10021A00C(int a1, uint64_t a2)
{
  if (!dword_100BCE284)
  {
    sub_1000D660C();
    if (!dword_100BCE284)
    {
      return;
    }
  }

  v4 = sub_100219580(a1);
  if (v4)
  {
    v5 = v4;
    if ((*(v4 + 196) | 4) == 5)
    {
      (*(*(qword_100B5EEE0 + 8) + 8))(*(v4 + 192), 2603);
LABEL_6:

      sub_10021949C(v5);
      return;
    }

    if (!*(v4 + 128))
    {
      (*(*(qword_100B5EEE0 + 8) + 16))(*(v4 + 192), a2);
      goto LABEL_6;
    }

    *(v4 + 16) = 0;
    *(v4 + 40) = 0;

    sub_10021A49C(v4, a2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Unexpected L2cap disconnect indication", v6, v7, v8, v9, v10, v11, v12, v14);
    v13 = sub_10000C050(0x15u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_10021A148(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (!dword_100BCE284)
  {
    sub_1000D660C();
    if (!dword_100BCE284)
    {
      return;
    }
  }

  v9 = sub_100219580(a1);
  if (!v9)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Unexpected L2capRecvDataInd", v18, v19, v20, v21, v22, v23, v24, v43);
    v25 = sub_10000C050(0x15u);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_22;
  }

  if (!a3)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("0 bytes received", v26, v27, v28, v29, v30, v31, v32, v43);
    v33 = sub_10000C050(0x15u);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_22;
  }

  v10 = v9;
  v11 = *(v9 + 44);
  if (v11 < a3)
  {
    sub_1000D660C();
    v11 = v10[22];
  }

  v14 = *a2;
  v13 = a2 + 1;
  v12 = v14;
  v15 = v14 >> 4;
  if (v10[8] != a1)
  {
    if (v10[52] == a1)
    {
      v16 = v11 > a3;
      v17 = *(*(qword_100B5EEE0 + 8) + 32);
      goto LABEL_17;
    }

    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("recvDataInd cid (%d) doesn't match control (%d) or interrupt (%d)", v35, v36, v37, v38, v39, v40, v41, a1);
    v42 = sub_10000C050(0x15u);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_22:
    sub_10080F7A0();
    return;
  }

  v16 = v11 > a3;
  v17 = *(*(qword_100B5EEE0 + 8) + 24);
LABEL_17:
  v34 = v10[96];

  v17(v34, v15, v12 & 0xF, v13, (a3 - 1), v16, a5);
}

uint64_t sub_10021A334(int a1, uint64_t a2, void *a3, int a4)
{
  if (!dword_100BCE284)
  {
    return 408;
  }

  v7 = sub_1002192EC(a1);
  if (!v7)
  {
    return 414;
  }

  v8 = v7;
  if (a2)
  {
    v9 = *a2;
    v10 = *(a2 + 8);
  }

  else
  {
    v9 = 0;
    v10 = 0uLL;
  }

  v7[1].i64[1] = v9;
  v7[2].i64[0] = v10.i64[0];
  v7[7] = vextq_s8(v10, v10, 8uLL);
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = &unk_1008A3B80;
  }

  v13 = sub_100290164(sub_100219DF0, sub_10021A00C, sub_10021A148, v7[1].u16[0], v9, a4, v12);
  v11 = v13;
  if (a4 && !v13 || (sub_10021949C(v8), !v11))
  {
    v14 = sub_1000E1FE8(v8);
    v11 = 0;
    if (v14)
    {
      *(v14 + 256) = 0;
    }
  }

  return v11;
}

uint64_t sub_10021A434(int a1)
{
  if (!dword_100BCE284)
  {
    return 408;
  }

  v1 = sub_1002192EC(a1);
  if (!v1)
  {
    return 414;
  }

  if (*(v1 + 196) != 2)
  {
    return 122;
  }

  *(v1 + 196) = 4;
  sub_10021A49C(v1, 436);
  return 0;
}

void sub_10021A49C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 104);
  if (*(a1 + 104))
  {
    *(a1 + 128) = 4;

    sub_10021AFF8(sub_10021AE5C, v5, a2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("DoInterruptDisconnect called on connection with cid 0", v6, v7, v8, v9, v10, v11, v12, v2);
    v13 = sub_10000C050(0x15u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_10021A52C(uint64_t a1, uint64_t a2, int a3, char a4, char a5)
{
  if (!dword_100BCE284)
  {
    return 408;
  }

  if (!sub_1002192EC(a2))
  {
    return 414;
  }

  v10 = sub_1000B914C(0);
  if (!v10)
  {
    return 106;
  }

  v11 = v10;
  if (sub_10000C240())
  {
    sub_10000AF54("SendSimple on handle 0x%x for channel 0x%x transtype 0x%x transparam 0x%x", v12, v13, v14, v15, v16, v17, v18, a2);
    v19 = sub_10000C050(0x15u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v31 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
    }
  }

  v20 = sub_10021A6D4(a1, a2, a3, a4, a5, v11);
  if (v20)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("SendSimple failed on handle 0x%x with status %!", v21, v22, v23, v24, v25, v26, v27, a2);
      v28 = sub_10000C050(0x15u);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1000BB9CC(v11);
  }

  return v20;
}

uint64_t sub_10021A6D4(uint64_t a1, uint64_t a2, int a3, char a4, char a5, uint64_t a6)
{
  if (!dword_100BCE284)
  {
    return 408;
  }

  if (!a6)
  {
    sub_1000D660C();
    return 101;
  }

  v12 = sub_1002192EC(a2);
  if (!v12)
  {
    return 414;
  }

  v13 = *(v12 + 196);
  if (v13 != 2)
  {
    if (v13 != 4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("connection isn't in connected state", v14, v15, v16, v17, v18, v19, v20, v50);
        v21 = sub_10000C050(0x15u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    return 122;
  }

  if (a3 != 17)
  {
    if (a3 == 19)
    {
      v24 = 104;
      goto LABEL_19;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("channel must be OI_PSM_HID_INTERRUPT or OI_PSM_HID_CONTROL", v34, v35, v36, v37, v38, v39, v40, v50);
      v41 = sub_10000C050(0x15u);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 101;
  }

  v24 = 16;
LABEL_19:
  v25 = v12 + v24;
  if (*(v12 + v24 + 72))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("SendMbuf busy for handle 0x%x", v26, v27, v28, v29, v30, v31, v32, a2);
      v33 = sub_10000C050(0x15u);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 410;
  }

  else
  {
    *(v25 + 72) = a6;
    *(v25 + 48) = a1;
    *(v25 + 57) = a4;
    *(v25 + 58) = a5;
    v22 = sub_10021AB20(v25, 1);
    if (v22)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("SendFragment failed for handle 0x%x with status %!", v42, v43, v44, v45, v46, v47, v48, a2);
        v49 = sub_10000C050(0x15u);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      *(v25 + 72) = 0;
    }
  }

  return v22;
}

uint64_t sub_10021A8DC(uint64_t a1, uint64_t a2, int a3, char a4, char a5, char *a6, size_t a7)
{
  if (!dword_100BCE284)
  {
    return 408;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Endpoint SendData(sendCfm=0x%08x, handle=0x%x, chan=%d, transType=0x%1x, transParam=0x%1x, len=%d)", v14, v15, v16, v17, v18, v19, v20, a1);
    v21 = sub_10000C050(0x15u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v48 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
    }
  }

  v22 = sub_1002192EC(a2);
  if (!v22)
  {
    return 414;
  }

  v23 = v22;
  if (a3 == 17)
  {
    v24 = 16;
LABEL_12:
    v26 = sub_1003053B4(a6, a7, 2);
    if (!v26)
    {
      return 106;
    }

    v27 = v26;
    v28 = v23 + v24;
    v25 = sub_10021A6D4(a1, a2, a3, a4, a5, v26);
    if (v25)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Endpoint SendByte failed on handle 0x%x with status %!", v29, v30, v31, v32, v33, v34, v35, a2);
        v36 = sub_10000C050(0x15u);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      *(v28 + 32) = 0;
      *(v28 + 40) = 0;
      sub_1000BB9CC(v27);
    }

    else
    {
      *(v28 + 32) = a6;
      *(v28 + 40) = a7;
    }

    return v25;
  }

  if (a3 == 19)
  {
    v24 = 104;
    goto LABEL_12;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("channel must be OI_PSM_HID_INTERRUPT or OI_PSM_HID_CONTROL", v37, v38, v39, v40, v41, v42, v43, v46);
    v44 = sub_10000C050(0x15u);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 101;
}

uint64_t sub_10021AB20(unsigned __int16 *a1, int a2)
{
  v4 = *(a1 + 9);
  if (a2)
  {
    sub_100305614(v4, (a1[15] - 1));
  }

  else
  {
    sub_100305660(v4, (a1[15] - 1));
  }

  v5 = *(*(a1 + 9) + 4) + 1;
  v6 = a1[15];
  if (v6 < v5)
  {
    sub_1000D660C();
    v6 = a1[15];
  }

  *(a1 + 56) = v6 != v5;
  v7 = sub_1000B914C(2u);
  if (!v7)
  {
    return 106;
  }

  v8 = v7;
  if (a2)
  {
    v9 = 16 * *(a1 + 57);
  }

  else
  {
    v9 = -80;
  }

  *(a1 + 59) = a1[29] & 0xF | v9;
  v11 = sub_10001F968(v7, a1 + 59, 1uLL, 2u);
  if (v11 || (v11 = sub_1000BAD68(v8, *(a1 + 9)), v11))
  {
    v10 = v11;
  }

  else
  {
    *(v8 + 8) = a1;
    v10 = sub_1000B7EDC(sub_10021AC44, *a1, 0, v8, 0);
    if (!v10)
    {
      return v10;
    }
  }

  sub_1000BB9CC(v8);
  return v10;
}

void sub_10021AC44(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    sub_1000D660C();
  }

  v7 = a2[1];
  sub_1000BB9CC(a2);
  if (!v7)
  {
    sub_1000D660C();
  }

  if (*v7 != a1)
  {
    sub_1000D660C();
  }

  v8 = *(v7 + 56);
  if (!a4 && (v7[28] & 1) == 0)
  {
    a4 = sub_10021AB20(v7, 0);
  }

  if ((v8 & 1) != 0 || a4)
  {
    v9 = *(v7 + 9);
    *(v7 + 9) = 0;
    v10 = *(v7 + 6);
    if (v10)
    {
      v10(v7, v9, a4);
    }

    if (v9)
    {

      sub_1000BB9CC(v9);
    }
  }
}

void sub_10021AD0C(int a1, __int16 a2, __int16 a3, uint64_t a4)
{
  if (dword_100BCE284 || (sub_1000D660C(), dword_100BCE284))
  {
    v8 = sub_100219580(a1);
    if (v8 && (v9 = v8, *(v8 + 128) == 1))
    {
      v10 = *(v8 + 192);
      if (a4)
      {
        (*(*(qword_100B5EEE0 + 8) + 8))(v10, a4);

        sub_10021949C(v9);
      }

      else
      {
        *(v9 + 196) = 2;
        *(v9 + 128) = 2;
        *(v9 + 132) = a2;
        *(v9 + 134) = a3;
        *(v9 + 8) = 1;
        v19 = *(*(qword_100B5EEE0 + 8) + 8);

        v19(v10, 0);
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Unexpected L2cap connection confirmation", v11, v12, v13, v14, v15, v16, v17, v20);
      v18 = sub_10000C050(0x15u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

double sub_10021AE5C(int a1, uint64_t a2)
{
  if (dword_100BCE284 || (sub_1000D660C(), dword_100BCE284))
  {
    v5 = sub_100219580(a1);
    if (v5)
    {
      v6 = v5;
      *(v5 + 104) = 0;
      *(v5 + 128) = 0;
      if (*(v5 + 196) == 4)
      {
        sub_10021AF68(v5, a2);
      }

      else
      {
        *(v5 + 196) = 4;
      }

      if (!*(v6 + 40))
      {
        (*(*(qword_100B5EEE0 + 8) + 16))(*(v6 + 192), a2);

        return sub_10021949C(v6);
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Unexpected L2cap disconnect indication", v7, v8, v9, v10, v11, v12, v13, v15);
      v14 = sub_10000C050(0x15u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  return result;
}

void sub_10021AF68(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    *(a1 + 40) = 4;

    sub_10021AFF8(sub_10021A00C, v5, a2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("DoInterruptDisconnect called on connection with cid 0", v6, v7, v8, v9, v10, v11, v12, v2);
    v13 = sub_10000C050(0x15u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_10021AFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = sub_10029104C(a2, a3);
  if (v5)
  {
    v16 = a1;
    v17 = v3;
    v18 = v5;
    v19[1] = &v16;
    v19[0] = 16;
    v6 = sub_1000228C0(sub_10021B0B8, v19, 0);
    if (v6)
    {
      v7 = v6;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_Dispatch_RegisterFunc failed: %!\n", v8, v9, v10, v11, v12, v13, v14, v7);
        v15 = sub_10000C050(0x15u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }
  }
}

const char *sub_10021B0CC(unsigned int a1)
{
  if (a1 > 5)
  {
    return "??";
  }

  else
  {
    return (&off_100AE7540)[a1];
  }
}

uint64_t sub_10021B0F0(unsigned int *a1, void *a2)
{
  if (!a1 || !a2)
  {
    sub_1000D660C();
    return 101;
  }

  if (!*a2 || !a2[1] || !a2[2] || !a2[3])
  {
    sub_1000D660C();
    if (!*a2)
    {
      return 101;
    }
  }

  if (!a2[1] || !a2[2] || !a2[3])
  {
    return 101;
  }

  v24 = 0;
  result = sub_100219638(off_100AE7510, *a1, &v24);
  if (!result)
  {
    qword_100B5EEE8 = a2;
    result = _os_feature_enabled_impl();
    if (result)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Registering for modeChangedCB", v5, v6, v7, v8, v9, v10, v11, v23);
        v12 = sub_10000C050(0x15u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = sub_10000C0FC();
          *buf = 136446210;
          v26 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
        }
      }

      result = sub_1002418E0(sub_10021B2AC, 0);
      if (result)
      {
        v14 = result;
        result = sub_10000C240();
        if (result)
        {
          sub_10000AF54("Error registering for modeChangedCB: %d", v15, v16, v17, v18, v19, v20, v21, v14);
          v22 = sub_10000C050(0x15u);
          result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
          if (result)
          {
            sub_10080F7A0();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_10021B2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!_os_feature_enabled_impl())
  {
    return;
  }

  if (!a2)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("modeChangedCB : NULL address", v32, v33, v34, v35, v36, v37, v38, v56);
    v39 = sub_10000C050(0x15u);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_25:
    sub_10080F7A0();
    return;
  }

  v7 = sub_1000E1FE8(a2);
  if (!v7)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("modeChangedCB : The connection is gone.", v40, v41, v42, v43, v44, v45, v46, v56);
    v47 = sub_10000C050(0x15u);
    if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_25;
  }

  v8 = v7;
  v9 = sub_100219518(a2);
  if (v9)
  {
    if (a3 == 2)
    {
      v10 = v9;
      v11 = *(v8 + 136);
      HIDWORD(v13) = -1431655765 * v11;
      LODWORD(v13) = -1431655765 * v11;
      v12 = v13 >> 2;
      v16 = v11 == 18 || v12 < 0x15555556 || v11 > 0x40;
      if (sub_10000C240())
      {
        sub_100304810(a2, v17, v18, v19, v20, v21, v22, v23);
        sub_10000AF54("SniffInterval %d for %s previous: %s (%d)", v24, v25, v26, v27, v28, v29, v30, v11);
        v31 = sub_10000C050(0x15u);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          v58 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
        }
      }

      if (v11)
      {
        if (v16)
        {
          if (*(v10 + 211))
          {
            if ((*(v10 + 210) & 1) == 0)
            {
              *(v10 + 211) = 0;
              (*(qword_100B5EEE8 + 120))(a2, a4, 0);
            }
          }
        }

        else if ((*(v10 + 211) & 1) == 0 && (*(v10 + 210) & 1) == 0)
        {
          *(v10 + 211) = 1;
          (*(qword_100B5EEE8 + 120))(a2, a4, 1);
        }

        *(v10 + 210) = 1;
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("Sniff interval should never be 0 when in sniff mode.", v48, v49, v50, v51, v52, v53, v54, v56);
        v55 = sub_10000C050(0x15u);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    (*(qword_100B5EEE8 + 128))(a2, a4, a3);
  }
}

uint64_t sub_10021B574()
{
  if (_os_feature_enabled_impl())
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Unregistering the modeChangedCB", v0, v1, v2, v3, v4, v5, v6, v19);
      v7 = sub_10000C050(0x15u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v21 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
      }
    }

    v8 = sub_1002418F0(sub_10021B2AC);
    if (v8)
    {
      v9 = v8;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to unregister modeChangedCB with error: %d", v10, v11, v12, v13, v14, v15, v16, v9);
        v17 = sub_10000C050(0x15u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }
  }

  return sub_100219AC0();
}

uint64_t sub_10021B6AC(uint64_t a1, uint64_t *a2, _WORD *a3, void *a4)
{
  if (dword_100BCE284)
  {
    return sub_100219B58(a1, a2, a3, a4);
  }

  else
  {
    return 2601;
  }
}

uint64_t sub_10021B6D0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1002192EC(a1);
  if (!v6)
  {
    return 414;
  }

  v7 = v6;
  if (*(v6 + 73))
  {
    if (!sub_10000C240())
    {
      goto LABEL_11;
    }

    sub_10021B0CC(a2);
    sub_10000AF54("Send HID control - returning busy due for handle 0x%x to transtype %d controlop %s", v8, v9, v10, v11, v12, v13, v14, a1);
    v15 = sub_10000C050(0x15u);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*(v6 + 76))
  {
    if (!sub_10000C240())
    {
      goto LABEL_11;
    }

    sub_10021B0CC(*(v7 + 76));
    sub_10021B0CC(a2);
    sub_10000AF54("Send HID control - returning busy for handle 0x%x due to pendingControlOp %s controlop %s", v17, v18, v19, v20, v21, v22, v23, a1);
    v15 = sub_10000C050(0x15u);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

LABEL_10:
    *buf = 136446210;
    v47 = sub_10000C0FC();
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
LABEL_11:
    if (a2 == 5)
    {
      *(v7 + 77) |= 0x20u;
    }

    return 118;
  }

  v25 = sub_1000B914C(0);
  if (!v25)
  {
    return 106;
  }

  v26 = v25;
  v27 = sub_10021A6D4(sub_10021B9A8, a1, 17, 1, a2, v25);
  if (v27)
  {
    v16 = v27;
    if (sub_10000C240())
    {
      v28 = sub_10021B0CC(a2);
      sub_10000AF54("SendHidControl failed for op %s with status %!", v29, v30, v31, v32, v33, v34, v35, v28);
      v36 = sub_10000C050(0x15u);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    *(v7 + 76) = 0;
    *(v7 + 80) = 0;
    sub_1000BB9CC(v26);
  }

  else
  {
    *(v7 + 73) = 0;
    *(v7 + 76) = a2;
    *(v7 + 80) = a3;
    if (sub_10000C240())
    {
      v37 = sub_10021B0CC(*(v7 + 76));
      sub_10000AF54("SendHidControl with pendingControlOp %s", v38, v39, v40, v41, v42, v43, v44, v37);
      v45 = sub_10000C050(0x15u);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v47 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
      }
    }

    return 0;
  }

  return v16;
}

void sub_10021B9A8(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = *(a1 + 60);
    *(a1 + 60) = 0;
    if (sub_10000C240())
    {
      v6 = sub_10021B0CC(v5);
      sub_10000AF54("_SendHidControlCfm for pending control op %s with status %!", v7, v8, v9, v10, v11, v12, v13, v6);
      v14 = sub_10000C050(0x15u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v27 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
      }
    }

    v15 = sub_100219580(*a1);
    if (v15)
    {
      v16 = *(v15 + 80);
      if (v16)
      {
        v16(*(v15 + 192), v5, a3);
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Send HID control - channel is invalid", v17, v18, v19, v20, v21, v22, v23, v25);
    v24 = sub_10000C050(0x15u);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_10021BAF4(uint64_t a1, char a2, int a3, int a4)
{
  v8 = sub_1002192EC(a1);
  if (!v8)
  {
    return 414;
  }

  v9 = v8;
  v16 = 0;
  if (a3 == -1)
  {
    v10 = 0;
  }

  else
  {
    LOBYTE(v16) = a3;
    v10 = 1;
  }

  v12 = a2 & 3;
  if (a4 != 0xFFFF)
  {
    *(&v16 | v10) = a4;
    v10 = v10 | 2;
    v12 |= 8u;
  }

  v13 = sub_1003053B4(&v16, v10, 0);
  if (!v13)
  {
    return 106;
  }

  v14 = v13;
  if (*(v9 + 73))
  {
    sub_1000BB9CC(v13);
    return 118;
  }

  else
  {
    *(v9 + 73) = 4;
    v11 = sub_10021A6D4(0, a1, 17, 4, v12, v13);
    if (v11)
    {
      sub_1000BB9CC(v14);
      *(v9 + 73) = 0;
    }

    else
    {
      sub_100219284(a1);
    }
  }

  return v11;
}

uint64_t sub_10021BC0C(uint64_t a1, char a2, char *a3, size_t a4)
{
  v8 = sub_1002192EC(a1);
  if (!v8)
  {
    return 414;
  }

  v9 = v8;
  if (*(v8 + 73))
  {
    return 118;
  }

  *(v8 + 73) = 5;
  result = sub_10021A8DC(nullsub_136, a1, 17, 5, a2, a3, a4);
  if (result)
  {
    *(v9 + 73) = 0;
  }

  else
  {
    sub_100219284(a1);
    return 0;
  }

  return result;
}

uint64_t sub_10021BCBC(uint64_t a1, char a2)
{
  v4 = sub_1002192EC(a1);
  if (!v4)
  {
    return 414;
  }

  v5 = v4;
  if (*(v4 + 73))
  {
    return 118;
  }

  *(v4 + 73) = 7;
  *(v4 + 9) = a2;
  v6 = sub_10021A52C(0, a1, 17, 7, a2);
  if (v6)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Set Protocol failed for handle %d with status %!", v7, v8, v9, v10, v11, v12, v13, v6);
      v14 = sub_10000C050(0x15u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    *(v5 + 73) = 0;
  }

  else
  {
    sub_100219284(a1);
  }

  return v6;
}

uint64_t sub_10021BD98(uint64_t a1, char a2, char *a3, size_t a4)
{
  v8 = sub_1002195F4(a1, 19);
  if (!v8)
  {
    return 101;
  }

  v9 = v8;
  v10 = sub_100219580(*v8);
  if (!v10)
  {
    return 414;
  }

  v11 = v10;
  if (*(v10 + 73))
  {
    return 118;
  }

  result = sub_10021A8DC(sub_10021BE58, a1, 19, 10, a2, a3, a4);
  if (result)
  {
    a3 = 0;
    LOWORD(a4) = 0;
    *(v11 + 73) = 0;
  }

  *(v9 + 4) = a3;
  v9[20] = a4;
  return result;
}

void sub_10021BE58(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100219580(*a1);
  if (v5)
  {
    v6 = *(qword_100B5EEE8 + 88);
    if (v6)
    {
      v7 = *(v5 + 192);
      v8 = *(a1 + 4);
      v9 = a1[20];

      v6(v7, v8, v9, a3);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Couldn't get endpoint handle in OutputReportSendDataCfm", v10, v11, v12, v13, v14, v15, v16, v18);
    v17 = sub_10000C050(0x15u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_10021BF14(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_10021CA7C(a1);
  }

  v4 = *(qword_100B5EEE8 + 8);

  return v4(a1, a2);
}

void sub_10021BF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002192EC(a1);
  if (v4)
  {
    if (*(v4 + 196))
    {
      (*(qword_100B5EEE8 + 16))(a1, a2);
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("DisconnectInd received for connection that is already disconnected", v13, v14, v15, v16, v17, v18, v19, v22);
      v20 = sub_10000C050(0x15u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v21 = sub_1002192EC(a1);
    if (!v21)
    {
      sub_1000D660C();
    }

    sub_10002242C(*(v21 + 204));
    *(v21 + 204) = 0;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("HID endpoint disconnect ind on unknown connection. Ignoring.", v5, v6, v7, v8, v9, v10, v11, v22);
    v12 = sub_10000C050(0x15u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_10021C058(uint64_t a1, int a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1002192EC(a1);
  if (!v12)
  {
    return;
  }

  v13 = v12;
  sub_100219410(a1);
  if (a2 == 1 && a3 == 5)
  {
    v14 = *(qword_100B5EEE8 + 24);

    v14(a1);
    return;
  }

  if (!*(v13 + 204))
  {
    sub_10021CA7C(a1);
  }

  v15 = *(v13 + 73);
  *(v13 + 73) = 0;
  if (v15 > 6)
  {
    switch(v15)
    {
      case 7:
        if (a2)
        {
          a3 = 15;
          v22 = 1;
        }

        else
        {
          v22 = *(v13 + 9);
        }

        *(v13 + 8) = v22;
        v18 = *(qword_100B5EEE8 + 56);
        if (!v18)
        {
          return;
        }

        v20 = a1;
        v19 = a3;
        break;
      case 8:
        if (a2 == 10 && a5 == 1)
        {
          v17 = *(qword_100B5EEE8 + 64);
          if (!v17)
          {
            return;
          }

          v16 = *a4;
LABEL_46:
          v35 = a1;
          v36 = 0;
LABEL_59:
          v40 = 0;
LABEL_60:

          v17(v35, v16, v36, v40);
          return;
        }

        v17 = *(qword_100B5EEE8 + 64);
        if (a2)
        {
LABEL_54:
          if (!v17)
          {
            return;
          }

          v35 = a1;
          v16 = 0;
          v36 = 15;
          v40 = 411;
          goto LABEL_60;
        }

LABEL_57:
        if (!v17)
        {
          return;
        }

        v35 = a1;
        v16 = 0;
        v36 = a3;
        goto LABEL_59;
      case 9:
        v18 = *(qword_100B5EEE8 + 72);
        if (!v18)
        {
          return;
        }

        if (a2)
        {
          v19 = 15;
        }

        else
        {
          v19 = a3;
        }

        v20 = a1;
        break;
      default:
        goto LABEL_32;
    }

    v18(v20, v19, 0);
  }

  else
  {
    switch(v15)
    {
      case 4:
        if ((a2 - 10) >= 2)
        {
          if (a2)
          {
            v37 = *(qword_100B5EEE8 + 32);
            if (!v37)
            {
              return;
            }

            v39 = a1;
            v38 = 14;
          }

          else
          {
            v37 = *(qword_100B5EEE8 + 32);
            if (!v37)
            {
              return;
            }

            if (a3)
            {
              v38 = a3;
            }

            else
            {
              v38 = 14;
            }

            v39 = a1;
          }

          v37(v39, v38, 0, 0, 0, 1, 1);
        }

        else
        {
          v21 = *(qword_100B5EEE8 + 32);
          if (v21)
          {
            v21(a1, 0, a3 & 3, a4, a5, a2 == 10, a6);
          }

          if ((a6 & 1) == 0)
          {
            *(v13 + 73) = 4;
          }
        }

        break;
      case 5:
        v31 = *(qword_100B5EEE8 + 40);
        if (v31)
        {
          if (a2)
          {
            v32 = 15;
          }

          else
          {
            v32 = a3;
          }

          v33 = *(v13 + 48);
          v34 = *(v13 + 56);

          v31(a1, v32, v33, v34, 0);
        }

        break;
      case 6:
        if (a2 == 10 && a5 == 1)
        {
          v16 = *a4;
          *(v13 + 8) = v16;
          v17 = *(qword_100B5EEE8 + 48);
          if (!v17)
          {
            return;
          }

          goto LABEL_46;
        }

        v17 = *(qword_100B5EEE8 + 48);
        if (a2)
        {
          goto LABEL_54;
        }

        goto LABEL_57;
      default:
LABEL_32:
        if (sub_10000C240())
        {
          sub_10000AF54("No transactions outstanding, ignoring packet from device", v23, v24, v25, v26, v27, v28, v29, v41);
          v30 = sub_10000C050(0x15u);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        return;
    }
  }
}

void sub_10021C3FC(uint64_t a1, int a2, int a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1002192EC(a1);
  if (v14)
  {
    if ((a2 - 12) > 0xFFFFFFFD)
    {
      if (a3 == 1)
      {
        v31 = v14;
        if (*(v14 + 204))
        {
          *(v14 + 208) = 1;
        }

        else
        {
          sub_10021CA7C(a1);
        }

        if (*(v31 + 8))
        {
          v40 = *(qword_100B5EEE8 + 80);
          if (v40)
          {

            v40(a1, a4, a5, a2 == 10, a6, a7);
          }

          else if (sub_10000C240())
          {
            sub_10000AF54("No report-protocol handler present. Ignoring.", v50, v51, v52, v53, v54, v55, v56, v96);
            v57 = sub_10000C050(0x15u);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_14;
            }
          }
        }

        else if (a5)
        {
          if (a2 == 10 && (a6 & 1) != 0)
          {
            v41 = *a4;
            if (v41 == 2)
            {
              if (a5 > 3)
              {
                v92 = *(qword_100B5EEE8 + 104);
                if (v92)
                {
                  v93 = a4[1];
                  v94 = a4[2];
                  v95 = a4[3];

                  v92(a1, v93, v94, v95);
                }
              }

              else if (sub_10000C240())
              {
                sub_10000AF54("Boot-mode mouse report too short. Ignoring.", v74, v75, v76, v77, v78, v79, v80, v96);
                v81 = sub_10000C050(0x15u);
                if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_14;
                }
              }
            }

            else if (v41 == 1)
            {
              if (a5 > 8)
              {
                v90 = *(qword_100B5EEE8 + 96);
                if (v90)
                {
                  v91 = a4[1];

                  v90(a1, v91, a4 + 3);
                }
              }

              else if (sub_10000C240())
              {
                sub_10000AF54("Boot-mode keyboard report too short. Ignoring.", v42, v43, v44, v45, v46, v47, v48, v96);
                v49 = sub_10000C050(0x15u);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_14;
                }
              }
            }

            else if (sub_10000C240())
            {
              sub_10000AF54("Received unknown boot protocol report ID %d", v82, v83, v84, v85, v86, v87, v88, *a4);
              v89 = sub_10000C050(0x15u);
              if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_14;
              }
            }
          }

          else if (sub_10000C240())
          {
            sub_10000AF54("Received segmented boot report. Ignoring.", v66, v67, v68, v69, v70, v71, v72, v96);
            v73 = sub_10000C050(0x15u);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_14;
            }
          }
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("Received empty boot report. Ignoring.", v58, v59, v60, v61, v62, v63, v64, v96);
          v65 = sub_10000C050(0x15u);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }
        }
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("Received non-input report type on interrupt endpoint. Ignoring.", v32, v33, v34, v35, v36, v37, v38, v96);
        v39 = sub_10000C050(0x15u);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Received non DATA/DATC transaction on interrupt endpoint. Ignoring.", v15, v16, v17, v18, v19, v20, v21, v96);
      v22 = sub_10000C050(0x15u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_14:
        sub_10080F7A0();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Unknown connection. Ignoring interrupt data.", v23, v24, v25, v26, v27, v28, v29, v96);
    v30 = sub_10000C050(0x15u);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }
  }
}

void sub_10021C800(uint64_t a1)
{
  if (!a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid HID host handle in transaction timeout", v12, v13, v14, v15, v16, v17, v18, v33);
      v19 = sub_10000C050(0x15u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }
    }

    return;
  }

  v1 = *(a1 + 192);
  *(a1 + 200) = 0;
  v2 = *(a1 + 73);
  *(a1 + 73) = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("HID Transaction Timeout - for handle 0x%x and previousTransType %d", v3, v4, v5, v6, v7, v8, v9, v1);
    v10 = sub_10000C050(0x15u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  if (v2 > 6)
  {
    if (v2 > 8)
    {
      if (v2 != 9)
      {
        if (v2 == 10)
        {
          v21 = sub_1002195F4(v1, 19);
          if (v21)
          {
            v22 = *(qword_100B5EEE8 + 88);
            if (v22)
            {
              v22(v1, *(v21 + 32), *(v21 + 40), 112);
            }
          }

          return;
        }

        goto LABEL_33;
      }

      v23 = *(qword_100B5EEE8 + 72);
      if (!v23)
      {
        return;
      }
    }

    else
    {
      if (v2 != 7)
      {
        v20 = *(qword_100B5EEE8 + 64);
        if (!v20)
        {
          return;
        }

        goto LABEL_20;
      }

      v23 = *(qword_100B5EEE8 + 56);
      if (!v23)
      {
        return;
      }
    }

    v23(v1, 15, 2604);
    return;
  }

  if (v2 > 4)
  {
    if (v2 == 5)
    {
      v24 = *(qword_100B5EEE8 + 40);
      if (v24)
      {
        v24(v1, 15, 0, 0, 2604);
      }

      return;
    }

    v20 = *(qword_100B5EEE8 + 48);
    if (!v20)
    {
      return;
    }

LABEL_20:
    v20(v1, 0, 15, 2604);
    return;
  }

  if (v2 == 1)
  {
    sub_10021A434(v1);
    return;
  }

  if (v2 == 4)
  {
    v11 = *(qword_100B5EEE8 + 32);
    if (v11)
    {
      v11(v1, 15, 0, 0, 0, 1, 1);
    }

    return;
  }

LABEL_33:
  sub_10021A434(v1);
  if (sub_10000C240())
  {
    sub_10000AF54("No transactions outstanding, disconnecting", v25, v26, v27, v28, v29, v30, v31, v33);
    v32 = sub_10000C050(0x15u);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
LABEL_35:
      sub_10080F7A0();
    }
  }
}

uint64_t sub_10021CA7C(int a1)
{
  v4 = a1;
  v1 = sub_1002192EC(a1);
  if (!v1)
  {
    sub_1000D660C();
  }

  if (*(v1 + 204))
  {
    sub_1000D660C();
  }

  if (*(v1 + 208) == 1)
  {
    sub_1000D660C();
  }

  v3[1] = &v4;
  v3[0] = 2;
  return sub_10002195C(sub_10021CB04, v3, 300, (v1 + 204));
}

uint64_t sub_10021CB04(uint64_t a1)
{
  v1 = **(a1 + 8);
  result = sub_1002192EC(v1);
  if (result)
  {
    v3 = *(result + 208);
    *(result + 204) = 0;
    *(result + 208) = 0;
    if (v3)
    {

      return sub_10021CA7C(v1);
    }

    else
    {
      v4 = *(qword_100B5EEE8 + 112);

      return v4(v1);
    }
  }

  return result;
}

void sub_10021CB90(void *a1)
{
  if (a1)
  {
    if (xpc_get_type(a1) == &_xpc_type_error)
    {
      xpc_dictionary_get_string(a1, _xpc_error_key_description);
      sub_100304AF8("%s:%06u Got an XPC error: %s\n");
    }
  }

  else
  {
    sub_100304AF8("%s:%06u Received NULL reply\n");
  }
}

uint64_t sub_10021CC30()
{
  if (qword_100B5EEF0)
  {
    return 1;
  }

  mach_service = xpc_connection_create_mach_service(off_100B52138[0], qword_100BC9200, 2uLL);
  qword_100B5EEF0 = mach_service;
  if (mach_service)
  {
    xpc_connection_set_event_handler(mach_service, &stru_100AE7590);
    xpc_connection_activate(qword_100B5EEF0);
    return 1;
  }

  sub_100304AF8("%s:%06u failed to create MACH service\n", "cc_xpc_create_connection", 89);
  return 0;
}

void sub_10021CCC0(id a1, void *a2)
{
  if (xpc_get_type(a2) == &_xpc_type_error)
  {
    if (a2 == &_xpc_error_connection_interrupted)
    {
      sub_100304AF8("%s:%06u XPC connection interrupted - will auto-reconnect\n");
    }

    else if (a2 == &_xpc_error_connection_invalid)
    {
      sub_100304AF8("%s:%06u XPC connection invalidated\n");
    }

    else
    {
      xpc_dictionary_get_string(a2, _xpc_error_key_description);
      sub_100304AF8("%s:%06u XPC connection error: %s\n");
    }
  }

  else
  {

    sub_10021CB90(a2);
  }
}

xpc_object_t sub_10021CDB0(int a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    errorCode = 0;
    if (a1)
    {
      v3 = sub_10021D04C();
      if (v3)
      {
        v4 = v3;
        if (CFDataGetBytePtr(v3))
        {
          if (CFDataGetLength(v4))
          {
            v5 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/private/var/tmp/com.apple.corecaptured/com.apple.bluetooth.logging.plist", kCFURLPOSIXPathStyle, 0);
            v6 = malloc_type_malloc(0x28uLL, 0x100004077774924uLL);
            if (v6 && (v7 = v6, strcpy(v6, "/private/var/tmp/com.apple.corecaptured"), v8 = sub_10021D164(v6), free(v7), (v8 & 1) != 0))
            {
              if (CFURLWriteDataAndPropertiesToResource(v5, v4, 0, &errorCode))
              {
                v9 = CFURLCopyFileSystemPath(v5, kCFURLPOSIXPathStyle);
                if (v9)
                {
                  v10 = v9;
                  Length = CFStringGetLength(v9);
                  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0);
                  v13 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
                  if (v13)
                  {
                    v14 = v13;
                    if (CFStringGetCString(v10, v13, MaximumSizeForEncoding + 1, 0))
                    {
                      v15 = open(v14, 0);
                      if ((v15 & 0x80000000) == 0)
                      {
                        v16 = v15;
                        fsync(v15);
                        close(v16);
                      }
                    }

                    free(v14);
                  }

                  CFRelease(v10);
                }

                v17 = off_100B52140;
                v18 = "ProfileLoaded";
                goto LABEL_19;
              }

              sub_100304AF8("%s:%06u unable to write bt profile plist. error code: %d\n");
            }

            else
            {
              sub_100304AF8("%s:%06u unable to create intermediate directory for logging plist");
            }
          }

          else
          {
            sub_100304AF8("%s:%06u invalid xml data length\n");
          }
        }

        else
        {
          sub_100304AF8("%s:%06u invalid xml data ptr\n");
        }

        xpc_release(v2);
        CFRelease(v4);
      }

      else
      {
        sub_100304AF8("%s:%06u invalid xml data\n", "cc_xpc_create_payload", 184);
        xpc_release(v2);
      }

      return 0;
    }

    unlink("/private/var/tmp/com.apple.corecaptured/com.apple.bluetooth.logging.plist");
    v17 = off_100B52140;
    v18 = "ProfileRemoved";
LABEL_19:
    xpc_dictionary_set_string(v2, v17, v18);
    return v2;
  }

  sub_100304AF8("%s:%06u unable to create XPC dictionary\n", "cc_xpc_create_payload", 171);
  return v2;
}

uint64_t sub_10021D04C()
{
  v0 = qword_100B5EEF8;
  if (!qword_100B5EEF8)
  {
    v1 = sub_10021E670();
    if (v1)
    {
      v2 = v1;
      Mutable = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v4 = Mutable;
        CFDictionaryAddValue(Mutable, @"CoreCaptureConfig", v2);
        Data = CFPropertyListCreateData(0, v4, kCFPropertyListXMLFormat_v1_0, 0, 0);
        v0 = Data;
        if (Data)
        {
          qword_100B5EEF8 = Data;
        }

        else
        {
          sub_100304AF8("%s:%06u unable to create property list data\n", "getProfileDictionary", 846);
        }

        CFRelease(v4);
      }

      else
      {
        sub_100304AF8("%s:%06u unable to build result dictionary\n", "getProfileDictionary", 838);
        v0 = 0;
      }

      CFRelease(v2);
    }

    else
    {
      sub_100304AF8("%s:%06u unable to build ccconfig dictionary\n", "getProfileDictionary", 832);
      return 0;
    }
  }

  return v0;
}

uint64_t sub_10021D164(char *a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!mkdir(a1, 0x1EDu) || *__error() == 17)
  {
    return 1;
  }

  v3 = strrchr(a1, 47);
  v4 = v3 - a1;
  if (v3 <= a1)
  {
    return 0;
  }

  result = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
  if (!result)
  {
    return result;
  }

  v5 = result;
  strncpy(result, a1, v4)[v4] = 0;
  v6 = sub_10021D164();
  free(v5);
  return v6 && mkdir(a1, 0x1EDu) == 0;
}

void sub_10021D23C(xpc_object_t *a1)
{
  if (*a1)
  {
    xpc_connection_send_message(qword_100B5EEF0, *a1);
    xpc_release(*a1);
    *a1 = 0;
  }

  else
  {
    sub_100304AF8("%s:%06u xpc message is not valid", "cc_xpc_send_message", 270);
  }
}

void sub_10021D2A4()
{
  if (qword_100B5EEF8)
  {
    CFRelease(qword_100B5EEF8);
    qword_100B5EEF8 = 0;
  }
}

void sub_10021D2D4()
{
  if (qword_100B5EEF0)
  {
    xpc_connection_cancel(qword_100B5EEF0);
    xpc_release(qword_100B5EEF0);
    qword_100B5EEF0 = 0;
  }
}

CFPropertyListRef sub_10021D30C(const __CFString *a1)
{
  Value = CFPreferencesCopyAppValue(a1, @"com.apple.corecapture.configure.bt");
  if (Value)
  {
    return Value;
  }

  error = 0;
  v3 = CFURLCreateWithString(kCFAllocatorDefault, @"file:///private/var/Managed%20Preferences/mobile/com.apple.corecapture.configure.bt.plist", 0);
  if (!v3)
  {
    return CFPreferencesCopyValue(a1, @"com.apple.corecapture.configure.bt", @"mobile", kCFPreferencesAnyHost);
  }

  v4 = v3;
  if (!CFURLResourceIsReachable(v3, &error))
  {
    Value = kCFBooleanFalse;
    goto LABEL_10;
  }

  if (qword_100B5EF08 != -1)
  {
    sub_100813F48();
  }

  if (!qword_100B5EF00)
  {
    Value = 0;
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(qword_100B5EF00, a1);
  if (Value)
  {
LABEL_10:
    CFRetain(Value);
  }

LABEL_12:
  CFRelease(v4);
  if (error)
  {
    CFRelease(error);
  }

  if (!Value)
  {
    return CFPreferencesCopyValue(a1, @"com.apple.corecapture.configure.bt", @"mobile", kCFPreferencesAnyHost);
  }

  return Value;
}

BOOL sub_10021D41C(const __CFString *a1, BOOL *a2)
{
  v3 = sub_10021D30C(a1);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    v6 = v5 == CFBooleanGetTypeID();
    v7 = v6;
    if (v6)
    {
      *a2 = CFBooleanGetValue(v4) != 0;
    }

    else
    {
      sub_100304AF8("%s:%06u value is of incorrect type", "BTPreferencesGetAppBooleanValue", 393);
    }

    CFRelease(v4);
  }

  else
  {
    sub_100304AF8("%s:%06u cannot get property value", "BTPreferencesGetAppBooleanValue", 388);
    return 0;
  }

  return v7;
}

CFDictionaryRef sub_10021D4D4(int a1)
{
  valuePtr = a1;
  v1 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  values = v1;
  keys = @"Policy";
  if (v1)
  {
    v2 = v1;
    v3 = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFRelease(v2);
  }

  else
  {
    sub_100304AF8("%s:%06u unable to create policy CFNumber", "createPolicyDict", 417);
    return 0;
  }

  return v3;
}

CFDictionaryRef sub_10021D5A4(int a1, int a2)
{
  v7 = a2;
  valuePtr = a1;
  v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v2)
  {
    sub_100304AF8("%s:%06u unable to create flags CFNumber", "createLogFlagsLevelDict", 428);
  }

  v3 = CFNumberCreate(0, kCFNumberIntType, &v7);
  if (!v3)
  {
    sub_100304AF8("%s:%06u unable to create level CFNumber", "createLogFlagsLevelDict", 433);
  }

  *keys = *&off_100AE75B0;
  values[0] = v2;
  values[1] = v3;
  if (v2 && v3)
  {
    v4 = CFDictionaryCreate(0, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  CFRelease(v2);
  v5 = v4;
LABEL_10:
  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

CFDictionaryRef sub_10021D6D8()
{
  v0 = sub_10021D4D4(1);
  if (!v0)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCPipeBetaDict", 455);
  }

  v1 = sub_10021D4D4(1);
  if (!v1)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCPipeBetaDict", 460);
  }

  v2 = sub_10021D4D4(1);
  if (!v2)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCPipeBetaDict", 465);
  }

  v3 = sub_10021D4D4(1);
  if (!v3)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCPipeBetaDict", 470);
  }

  *keys = *&off_100AE75D0;
  v9 = *&off_100AE75E0;
  values[0] = v0;
  values[1] = v1;
  values[2] = v2;
  values[3] = v3;
  if (v0 && v1 && v2 && v3)
  {
    v4 = CFDictionaryCreate(0, keys, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    if (!v0)
    {
      goto LABEL_16;
    }
  }

  CFRelease(v0);
  v5 = v4;
LABEL_16:
  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

CFDictionaryRef sub_10021D87C()
{
  v0 = sub_10021D4D4(1);
  if (!v0)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCPipeControlDict", 494);
  }

  v1 = sub_10021D4D4(1);
  if (!v1)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCPipeControlDict", 499);
  }

  v2 = sub_10021D4D4(1);
  if (!v2)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCPipeControlDict", 504);
  }

  v3 = sub_10021D4D4(1);
  if (!v3)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCPipeControlDict", 509);
  }

  *keys = *&off_100AE75F0;
  v9 = *&off_100AE7600;
  values[0] = v0;
  values[1] = v1;
  values[2] = v2;
  values[3] = v3;
  if (v0 && v1 && v2 && v3)
  {
    v4 = CFDictionaryCreate(0, keys, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    if (!v0)
    {
      goto LABEL_16;
    }
  }

  CFRelease(v0);
  v5 = v4;
LABEL_16:
  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v5;
}

CFDictionaryRef sub_10021DA20()
{
  v0 = sub_10021D4D4(1);
  if (!v0)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCPipeCentauriManagerDict", 533);
  }

  v1 = sub_10021D4D4(1);
  if (!v1)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCPipeCentauriManagerDict", 538);
  }

  *keys = *&off_100AE7610;
  values[0] = v0;
  values[1] = v1;
  if (v0 && v1)
  {
    v2 = CFDictionaryCreate(0, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    if (!v0)
    {
      goto LABEL_10;
    }
  }

  CFRelease(v0);
  v3 = v2;
LABEL_10:
  if (v1)
  {
    CFRelease(v1);
  }

  return v3;
}

CFDictionaryRef sub_10021DB40()
{
  v0 = sub_10021D6D8();
  if (!v0)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createPipeDict", 560);
  }

  v1 = sub_10021D87C();
  if (!v1)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createPipeDict", 565);
  }

  v2 = sub_10021DA20();
  if (!v2)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createPipeDict", 570);
  }

  *keys = *&off_100AE7620;
  v8 = @"com.apple.driver.AppleCentauriManager";
  values[0] = v0;
  values[1] = v1;
  values[2] = v2;
  if (v0 && v1 && v2)
  {
    v3 = CFDictionaryCreate(0, keys, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    v3 = 0;
    v4 = 0;
    if (!v0)
    {
      goto LABEL_13;
    }
  }

  CFRelease(v0);
  v4 = v3;
LABEL_13:
  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

CFDictionaryRef sub_10021DCA4(int a1, int a2, int a3, int a4)
{
  v6 = sub_10021D5A4(a1, a2);
  if (!v6)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createStreamConfigDict", 597);
  }

  v7 = sub_10021D5A4(a3, a4);
  if (!v7)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createStreamConfigDict", 602);
  }

  *keys = *&off_100AE75C0;
  values[0] = v6;
  values[1] = v7;
  if (v6 && v7)
  {
    v8 = CFDictionaryCreate(0, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  CFRelease(v6);
  v9 = v8;
LABEL_10:
  if (v7)
  {
    CFRelease(v7);
  }

  return v9;
}

CFDictionaryRef sub_10021DDCC()
{
  v0 = sub_10021DCA4(0, -1, 0, 127);
  if (!v0)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCStreamBetaDict", 624);
  }

  v1 = sub_10021DCA4(0, 6, 0, 6);
  if (!v1)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCStreamBetaDict", 629);
  }

  v2 = sub_10021DCA4(0, 6, 0, 6);
  if (!v2)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCStreamBetaDict", 634);
  }

  v3 = sub_10021DCA4(0, -1, 0, 127);
  if (v3)
  {
    v4 = 0;
    if (v0 && v1 && v2)
    {
      *v17 = *&off_100AE75D0;
      v18 = *&off_100AE75E0;
      values = v0;
      keys = @"lfevents";
      v16[0] = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v12 = v1;
      v13 = @"loggerstream";
      v16[1] = CFDictionaryCreate(0, &v13, &v12, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v10 = v2;
      v11 = @"loggerstream";
      v16[2] = CFDictionaryCreate(0, &v11, &v10, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v8 = v3;
      v9 = @"FaultReporter";
      v16[3] = CFDictionaryCreate(0, &v9, &v8, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v4 = CFDictionaryCreate(0, v17, v16, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      for (i = 0; i != 4; ++i)
      {
        v6 = v16[i];
        if (v6)
        {
          CFRelease(v6);
          v16[i] = 0;
        }
      }
    }

    if (v0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCStreamBetaDict", 639);
    v4 = 0;
    if (v0)
    {
LABEL_16:
      CFRelease(v0);
    }
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

CFDictionaryRef sub_10021E070()
{
  v0 = sub_10021DCA4(0, -1, 0, 127);
  if (!v0)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCStreamControlDict", 676);
  }

  v1 = sub_10021DCA4(0, 6, 0, 6);
  if (!v1)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCStreamControlDict", 681);
  }

  v2 = sub_10021DCA4(0, 6, 0, 6);
  if (!v2)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCStreamControlDict", 686);
  }

  v3 = sub_10021DCA4(0, -1, 0, 127);
  if (v3)
  {
    v4 = 0;
    if (v0 && v1 && v2)
    {
      *v17 = *&off_100AE75F0;
      v18 = *&off_100AE7600;
      values = v0;
      keys = @"lfevents";
      v16[0] = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v12 = v1;
      v13 = @"loggerstream";
      v16[1] = CFDictionaryCreate(0, &v13, &v12, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v10 = v2;
      v11 = @"loggerstream";
      v16[2] = CFDictionaryCreate(0, &v11, &v10, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v8 = v3;
      v9 = @"FaultReporter";
      v16[3] = CFDictionaryCreate(0, &v9, &v8, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v4 = CFDictionaryCreate(0, v17, v16, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      for (i = 0; i != 4; ++i)
      {
        v6 = v16[i];
        if (v6)
        {
          CFRelease(v6);
          v16[i] = 0;
        }
      }
    }

    if (v0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_100304AF8("%s:%06u unable to create dict", "createCCStreamControlDict", 691);
    v4 = 0;
    if (v0)
    {
LABEL_16:
      CFRelease(v0);
    }
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

CFDictionaryRef sub_10021E314()
{
  v0 = sub_10021DCA4(0, 6, 0, 6);
  if (v0)
  {
    v1 = sub_10021DCA4(0, -1, 0, 127);
    if (v1)
    {
      v2 = v1;
      *v16 = *&off_100AE7610;
      values = v0;
      keys = @"loggerstream";
      v3 = 1;
      v14 = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v10 = v2;
      v11 = @"FaultReporter";
      v15 = CFDictionaryCreate(0, &v11, &v10, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v4 = &v14;
      v5 = CFDictionaryCreate(0, v16, &v14, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      do
      {
        v6 = v3;
        if (*v4)
        {
          CFRelease(*v4);
          *v4 = 0;
        }

        v3 = 0;
        v4 = &v15;
      }

      while ((v6 & 1) != 0);
      v7 = 0;
      goto LABEL_8;
    }

LABEL_15:
    sub_100304AF8("%s:%06u unable to create dict", "createCCStreamCentauriManagerDict", 733);
    v2 = 0;
    v5 = 0;
    v7 = 1;
    if (!v0)
    {
LABEL_9:
      if (v7)
      {
        return v5;
      }

      goto LABEL_13;
    }

LABEL_8:
    CFRelease(v0);
    goto LABEL_9;
  }

  sub_100304AF8("%s:%06u unable to create dict", "createCCStreamCentauriManagerDict", 728);
  v8 = sub_10021DCA4(0, -1, 0, 127);
  if (!v8)
  {
    goto LABEL_15;
  }

  v2 = v8;
  v5 = 0;
LABEL_13:
  CFRelease(v2);
  return v5;
}

CFDictionaryRef sub_10021E50C()
{
  v0 = sub_10021DDCC();
  if (!v0)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createStreamDict", 765);
  }

  v1 = sub_10021E070();
  if (!v1)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createStreamDict", 770);
  }

  v2 = sub_10021E314();
  if (!v2)
  {
    sub_100304AF8("%s:%06u unable to create dict", "createStreamDict", 775);
  }

  *keys = *&off_100AE7620;
  v8 = @"com.apple.driver.AppleCentauriManager";
  values[0] = v0;
  values[1] = v1;
  values[2] = v2;
  if (v0 && v1 && v2)
  {
    v3 = CFDictionaryCreate(0, keys, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    v3 = 0;
    v4 = 0;
    if (!v0)
    {
      goto LABEL_13;
    }
  }

  CFRelease(v0);
  v4 = v3;
LABEL_13:
  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

CFDictionaryRef sub_10021E670()
{
  v0 = sub_10021DB40();
  if (!v0)
  {
    sub_100304AF8("%s:%06u unable to create ccpipe dict", "createCCConfigDict", 799);
  }

  v1 = sub_10021E50C();
  if (!v1)
  {
    sub_100304AF8("%s:%06u unable to create ccstream dict", "createCCConfigDict", 804);
  }

  *keys = *&off_100AE7638;
  values[0] = v0;
  values[1] = v1;
  if (v0 && v1)
  {
    v2 = CFDictionaryCreate(0, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    if (!v0)
    {
      goto LABEL_10;
    }
  }

  CFRelease(v0);
  v3 = v2;
LABEL_10:
  if (v1)
  {
    CFRelease(v1);
  }

  return v3;
}

void sub_10021E788(id a1)
{
  resourceData = 0;
  v1 = CFURLCreateWithString(kCFAllocatorDefault, @"file:///private/var/Managed%20Preferences/mobile/com.apple.corecapture.configure.bt.plist", 0);
  if (v1)
  {
    v2 = v1;
    if (CFURLCreateDataAndPropertiesFromResource(kCFAllocatorDefault, v1, &resourceData, 0, 0, 0))
    {
      qword_100B5EF00 = CFPropertyListCreateWithData(kCFAllocatorDefault, resourceData, 0, 0, 0);
    }

    else
    {
      sub_100304AF8("%s:%06u cannot retrieve profile data", "getManagedPreferencesDict_block_invoke", 312);
    }

    CFRelease(@"file:///private/var/Managed%20Preferences/mobile/com.apple.corecapture.configure.bt.plist");
    CFRelease(v2);
    if (resourceData)
    {
      CFRelease(resourceData);
    }
  }

  else
  {
    sub_100304AF8("%s:%06u cannot create file url", "getManagedPreferencesDict_block_invoke", 307);

    CFRelease(@"file:///private/var/Managed%20Preferences/mobile/com.apple.corecapture.configure.bt.plist");
  }
}

uint64_t sub_10021E89C(uint64_t a1)
{
  v2 = 0;
  for (i = 0; i != 7; ++i)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("getDevicePosFromAddress i: %d, inUse %d, addr: %:", v4, v5, v6, v7, v8, v9, v10, i);
      v11 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = sub_10000C0FC();
        *buf = 136446210;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (*(qword_100B5EF10 + v2) == 1 && *a1 == *(qword_100B5EF10 + v2 + 1) && *(a1 + 4) == *(qword_100B5EF10 + v2 + 5))
    {
      break;
    }

    v2 += 32;
  }

  return i;
}

uint64_t sub_10021E9EC(_WORD *a1)
{
  if (sub_10021E89C(a1) != 7)
  {
    return 3450;
  }

  v2 = sub_100007618(0xB0uLL, 0x10200402849DC56uLL);
  if (!v2)
  {
    return 106;
  }

  v3 = v2;
  v4 = *a1;
  *(v2 + 2) = a1[2];
  *v2 = v4;
  v2[2] = 4403;
  v5 = sub_1002F51BC(v2, 2, sub_10021EB20);
  if (v5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error connecting to SDP %!", v6, v7, v8, v9, v10, v11, v12, v5);
      v13 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_10000C1E8(v3);
    if (v5 == 924 || v5 == 821)
    {
      v15[1] = a1;
      v15[0] = 6;
      return sub_10002195C(sub_10021EEE0, v15, 20, 0);
    }
  }

  return v5;
}

void sub_10021EB20(unsigned __int16 *a1, uint64_t a2)
{
  v55 = 0;
  if (a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error connecting to SDP %!", v4, v5, v6, v7, v8, v9, v10, a2);
      v11 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100813F70();
      }
    }

    goto LABEL_33;
  }

  byte_100B5EF80 = 70;
  qword_100B5EF90 = &unk_1008A3BB0;
  word_100B5EF88 = 16;
  qword_100B5EF70 = &byte_100B5EF80;
  byte_100B5EF78 = 1;
  v54 = 0;
  if (sub_10023DB58(a1, &v54))
  {
    v12 = a1[83];
    if (a1[83])
    {
      goto LABEL_7;
    }

LABEL_14:
    v13 = sub_10024A544(a1, *(a1 + 164), 0, &qword_100B5EF70, sub_10021F37C, sub_10021F448, sub_10021F48C, &v55, &unk_100AE7688);
    v14 = 0;
    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v23 = sub_1002F8670(v54);
  v12 = a1[83];
  if (!a1[83] || v23 && *(v23 + 13) == 257)
  {
    goto LABEL_14;
  }

LABEL_7:
  v13 = sub_1001B9B6C(a1, v12, 0, &qword_100B5EF70, sub_10021F37C, sub_10021F448, sub_10021F48C, &v55, &unk_100AE7688);
  v14 = 1;
  if (v13)
  {
LABEL_8:
    if (sub_10000C240())
    {
      sub_10000AF54("Error connecting to the message notification service %!", v15, v16, v17, v18, v19, v20, v21, v13);
      v22 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100813F70();
      }
    }

    goto LABEL_33;
  }

LABEL_15:
  if (*(qword_100B5EF10 + 224) == 7)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No connection slots left", v24, v25, v26, v27, v28, v29, v30, v53);
      v31 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    v32 = v55;
    v33 = (qword_100B5EF10 + 8);
    v34 = 7;
    while (1)
    {
      if (*(v33 - 8) == 1)
      {
        if (*v33 == v55)
        {
          break;
        }

        if (*a1 == *(v33 - 7) && a1[2] == *(v33 - 3))
        {
          break;
        }
      }

      v33 += 16;
      if (!--v34)
      {
        v36 = 0;
        v37 = qword_100B5EF10;
        do
        {
          v38 = *v37;
          v37 += 32;
          if (v38 != 1)
          {
            break;
          }

          ++v36;
        }

        while (v36 != 7);
        v39 = v36;
        v40 = qword_100B5EF10 + 32 * v36;
        *v40 = 0u;
        *(v40 + 16) = 0u;
        *(v40 + 8) = v32;
        v41 = *a1;
        *(v40 + 5) = a1[2];
        *(v40 + 1) = v41;
        v42 = qword_100B5EF10;
        v43 = (qword_100B5EF10 + 32 * v36);
        *v43 = 1;
        v43[24] = v14;
        ++*(v42 + 224);
        if (sub_10000C240())
        {
          sub_10000AF54("Created MNS Device with i: %d, inUse %d, addr: %:", v44, v45, v46, v47, v48, v49, v50, v39);
          v51 = sub_10000C050(0x50u);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = sub_10000C0FC();
            *buf = 136446210;
            v57 = v52;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        break;
      }
    }
  }

LABEL_33:
  sub_10000C1E8(a1);
}

uint64_t sub_10021EEE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 2);
  v4 = *v1;
  v5 = v2;
  result = sub_10021F640(&v4);
  if (result)
  {
    return sub_10021E9EC(&v4);
  }

  return result;
}

uint64_t sub_10021EF24(uint64_t a1)
{
  v2 = sub_10021E89C(a1);
  if (v2 == 7)
  {
    return 0;
  }

  v3 = sub_1002250C8(*(qword_100B5EF10 + 32 * v2 + 8));
  if (v3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not disconnect MNS from %: : %!", v4, v5, v6, v7, v8, v9, v10, a1);
      v11 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  return v3;
}

uint64_t sub_10021EFC8()
{
  qword_100B5EF10 = sub_1001BBBD8(0xE8uLL, 0x108004086D9C1B4uLL);
  if (qword_100B5EF10)
  {
    return 0;
  }

  else
  {
    return 106;
  }
}

uint64_t sub_10021F034(unsigned int *a1, void (*a2)(unint64_t, uint64_t), char a3, uint64_t a4, __int16 a5)
{
  v10 = sub_10021E89C(a1);
  v38 = 271;
  v39 = a3;
  if (v10 == 7)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid connection for address %:", v11, v12, v13, v14, v15, v16, v17, a1);
      v18 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v19 = *a1 | (*(a1 + 2) << 32);
    v20 = 122;
    v21 = 122;
  }

  else
  {
    qword_100B5EF18 = byte_100B5EF28;
    v22 = v10;
    v23 = qword_100B5EF10 + 32 * v10;
    if (*(v23 + 24) == 1)
    {
      byte_100B5EF28[0] = -105;
      v24 = 1;
      byte_100B5EF30 = 1;
    }

    else
    {
      v24 = 0;
    }

    v25 = &byte_100B5EF28[24 * v24];
    *v25 = 66;
    *(v25 + 2) = "x-bt/MAP-event-report";
    *(v25 + 4) = 22;
    v26 = &byte_100B5EF28[24 * (v24 + 1)];
    *v26 = 76;
    *(v26 + 2) = &v38;
    *(v26 + 4) = 3;
    v27 = &byte_100B5EF28[24 * (v24 | 2)];
    *v27 = 73;
    *(v27 + 2) = a4;
    *(v27 + 4) = a5;
    byte_100B5EF20 = v24 + 3;
    v28 = *(v23 + 8);
    v20 = sub_100224218(*(v23 + 8), &qword_100B5EF18, sub_10021F234, 0);
    if (!v20)
    {
      *(qword_100B5EF10 + 32 * v22 + 16) = a2;
      return v20;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("MAP MNS failed to send message on connection %d : %!", v29, v30, v31, v32, v33, v34, v35, v28);
      v36 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v19 = *a1 | (*(a1 + 2) << 32);
    v21 = v20;
  }

  a2(v19, v21);
  return v20;
}

void sub_10021F234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (qword_100B5EF10 + 8);
  while (*(v6 - 8) != 1 || *v6 != a1)
  {
    ++v5;
    v6 += 16;
    if (v5 == 7)
    {
      v7 = 7;
      if (!a3)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }
  }

  v7 = v5;
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (a3 != 1701)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Server didn't ACK send for connection %d : %!", v8, v9, v10, v11, v12, v13, v14, a1);
      v15 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

LABEL_12:
  if (v7 == 7)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid connection ID %d", v16, v17, v18, v19, v20, v21, v22, a1);
      v23 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    v24 = qword_100B5EF10 + 32 * v7;
    v25 = *(v24 + 16);
    if (v25)
    {
      v25(*(v24 + 1) | (*(v24 + 5) << 32), a3);
    }
  }
}

double sub_10021F37C(int a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to connect to MNS : %!", v5, v6, v7, v8, v9, v10, v11, a3);
      v13 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100813F70();
      }
    }

    if (qword_100B5EF10)
    {
      v14 = (qword_100B5EF10 + 8);
      v15 = 7;
      while (*(v14 - 8) != 1 || *v14 != a1)
      {
        v14 += 16;
        if (!--v15)
        {
          return result;
        }
      }

      return sub_10021F4F8(a1);
    }
  }

  return result;
}

double sub_10021F448(int a1)
{
  if (qword_100B5EF10)
  {
    v1 = (qword_100B5EF10 + 8);
    v2 = 7;
    while (*(v1 - 8) != 1 || *v1 != a1)
    {
      v1 += 16;
      if (!--v2)
      {
        return result;
      }
    }

    return sub_10021F4F8(a1);
  }

  return result;
}

void sub_10021F48C(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("MNS AUTH required. Handle=%d", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x50u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

double sub_10021F4F8(int a1)
{
  v1 = 0;
  v2 = (qword_100B5EF10 + 8);
  while (*(v2 - 8) != 1 || *v2 != a1)
  {
    ++v1;
    v2 += 16;
    if (v1 == 7)
    {
      v3 = 7;
      goto LABEL_7;
    }
  }

  v3 = v1;
LABEL_7:
  if (sub_10000C240())
  {
    sub_10000AF54("Deleting MNS Device at position i: %d, inUse %d, addr: %:", v4, v5, v6, v7, v8, v9, v10, v3);
    v11 = sub_10000C050(0x50u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (v3 == 7)
  {
    sub_1000D660C();
  }

  v12 = qword_100B5EF10;
  v13 = (qword_100B5EF10 + 32 * v3);
  result = 0.0;
  *v13 = 0u;
  v13[1] = 0u;
  --*(v12 + 224);
  return result;
}

uint64_t sub_10021F660(uint64_t a1)
{
  v1 = 0;
  v2 = qword_100B5EF98 + 9;
  do
  {
    if (*(v2 - 1) == 1 && *a1 == *v2 && *(a1 + 4) == *(v2 + 4))
    {
      break;
    }

    ++v1;
    v2 += 32;
  }

  while (v1 != 7);
  return v1;
}

uint64_t sub_10021F6B0(_OWORD *a1, uint64_t a2, uint64_t *a3, int a4, int a5)
{
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v58 = unk_100AE76B8;
  qword_100B5EF98 = sub_1001BBBD8(0x160uLL, 0x10A004040EDCB41uLL);
  if (qword_100B5EF98)
  {
    v10 = sub_10021EFC8();
    if (v10)
    {
      v11 = v10;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to register the MAP client %!", v12, v13, v14, v15, v16, v17, v18, v11);
        v19 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return v11;
    }

    v29 = qword_100B5EF98;
    *(qword_100B5EF98 + 4) = 2;
    v30 = sub_1002265FC(&v58, off_100AE76C8, 0, (v29 + 4), &unk_100AE76F0);
    if (v30)
    {
      v11 = v30;
      if (!sub_10000C240())
      {
        return v11;
      }

      sub_10000AF54("Failed to register the MAP OBEX server %!", v31, v32, v33, v34, v35, v36, v37, v11);
      v38 = sub_10000C050(0x50u);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        return v11;
      }

      goto LABEL_14;
    }

    v39 = sub_100307CB0(&v58, off_100AE76C8, 0, (qword_100B5EF98 + 6), &unk_100AE76F0, 1);
    if (v39)
    {
      v11 = v39;
      if (!sub_10000C240())
      {
        return v11;
      }

      sub_10000AF54("Failed to register the MAP OBEX server %!", v40, v41, v42, v43, v44, v45, v46, v11);
      v47 = sub_10000C050(0x50u);
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        return v11;
      }

LABEL_14:
      sub_10080F7A0();
      return v11;
    }

    byte_100B5EFA0 = 1;
    word_100B5EFA2 = 1;
    dword_100B5EFA8 = *(qword_100B5EF98 + 4);
    byte_100B5EFB0 = 1;
    word_100B5EFB2 = 1;
    dword_100B5EFB8 = a5;
    byte_100B5EFC0 = 1;
    word_100B5EFC2 = 4;
    dword_100B5EFC8 = a4;
    byte_100B5EFD0 = 1;
    word_100B5EFD2 = 2;
    dword_100B5EFD8 = *(qword_100B5EF98 + 6);
    v63 = &unk_100AE7720;
    LOWORD(v64) = 7;
    v65 = *a3;
    LOWORD(v66) = *(a3 + 4);
    v59 = &unk_100AE77C8;
    LOWORD(v60) = 5;
    v61 = v65;
    LOWORD(v62) = v66;
    v11 = sub_1002F7E1C(&v63, qword_100B5EF98);
    if (v11)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_SDPDB_AddServiceRecord failed: %!", v48, v49, v50, v51, v52, v53, v54, v11);
        v55 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      sub_100226A9C(*(qword_100B5EF98 + 4));
    }

    else
    {
      sub_1002F8134(*qword_100B5EF98, &v59);
      v56 = qword_100B5EF98;
      *(qword_100B5EF98 + 240) = *a1;
      *(v56 + 256) = *a2;
      *(v56 + 272) = *(a2 + 16);
      *(v56 + 288) = *(a2 + 32);
      *(v56 + 304) = *(a2 + 40);
      *(v56 + 296) = *(a2 + 56);
      *(v56 + 320) = *(a2 + 64);
      *(v56 + 344) = 0;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to allocate memory for MAP server structure", v20, v21, v22, v23, v24, v25, v26, v57);
      v27 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100813FF0();
      }
    }

    return 106;
  }

  return v11;
}

void sub_10021FA30()
{
  if (qword_100B5EF98)
  {
    if (sub_100226A9C(*(qword_100B5EF98 + 4)))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Error deregistering server", v0, v1, v2, v3, v4, v5, v6, v32);
        v7 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_100812B34();
        }
      }
    }

    if (sub_100308060(*(qword_100B5EF98 + 6)))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Error deregistering L2CAP server", v8, v9, v10, v11, v12, v13, v14, v32);
        v15 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100812B34();
        }
      }
    }

    if (sub_1002F8018(*qword_100B5EF98) && sub_10000C240())
    {
      sub_10000AF54("Error removing service record", v16, v17, v18, v19, v20, v21, v22, v32);
      v23 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100812B34();
      }
    }

    sub_10021F008();
    sub_10000C1E8(qword_100B5EF98);
    qword_100B5EF98 = 0;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("MAP is not registered.", v24, v25, v26, v27, v28, v29, v30, v32);
    v31 = sub_10000C050(0x50u);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_10021FBB8(uint64_t a1)
{
  v21 = 0;
  v20 = 0;
  if (qword_100B5EF98)
  {
    if (sub_10021FCB4(a1) == 7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid connection ID %d.", v2, v3, v4, v5, v6, v7, v8, a1);
        v9 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 3454;
    }

    else
    {
      if (!sub_1001C32B4(a1, &v20))
      {
        sub_10021EF24(&v20);
      }

      return sub_1001C3364(a1);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MAP is not initialized", v11, v12, v13, v14, v15, v16, v17, v19);
      v18 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 103;
  }
}

uint64_t sub_10021FCB4(uint64_t a1)
{
  if (qword_100B5EF98)
  {
    v2 = 0;
    v3 = (qword_100B5EF98 + 16);
    while (*(v3 - 8) != 1 || *v3 != a1)
    {
      ++v2;
      v3 += 16;
      if (v2 == 7)
      {
        if (!sub_10000C240())
        {
          goto LABEL_12;
        }

        sub_10000AF54("Cannot retrieve device position for connectionId %d", v4, v5, v6, v7, v8, v9, v10, a1);
        v11 = sub_10000C050(0x50u);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MAP server has been unregistered. Cannot retrieve device position for connectionId %d", v12, v13, v14, v15, v16, v17, v18, a1);
      v19 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        sub_10080F7A0();
      }
    }

LABEL_12:
    LOBYTE(v2) = 7;
  }

  return v2;
}

uint64_t sub_10021FDA8(uint64_t a1, int a2)
{
  if (qword_100B5EF98)
  {
    if (sub_10021FCB4(a1) == 7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid connection ID %d.", v4, v5, v6, v7, v8, v9, v10, a1);
        v11 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 3455;
    }

    else
    {
      if (a2)
      {
        v21 = 0;
      }

      else
      {
        sub_10021FEBC(a1);
        v21 = 1735;
      }

      return sub_1001C2ABC(a1, a2, v21);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MAP is not initialized", v13, v14, v15, v16, v17, v18, v19, v22);
      v20 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 103;
  }
}

double sub_10021FEBC(uint64_t a1)
{
  v1 = sub_10021FCB4(a1);
  if (v1 == 7)
  {
    sub_1000D660C();
  }

  v2 = qword_100B5EF98;
  v3 = *(qword_100B5EF98 + 32 * v1 + 24);
  if (v3)
  {
    sub_100222088(v3);
    v2 = qword_100B5EF98;
  }

  sub_1000BBDD0(*(v2 + 32 * v1 + 32));
  v4 = qword_100B5EF98;
  v5 = qword_100B5EF98 + 32 * v1;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  --*(v4 + 232);
  return result;
}

void sub_10021FF38(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  if (qword_100B5EF98)
  {
    v6 = sub_10021FCB4(a1);
    if (v6 == 7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid connection ID %d.", v7, v8, v9, v10, v11, v12, v13, a1);
        v14 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
LABEL_5:
          sub_10080F7A0();
        }
      }
    }

    else
    {
      v26[0] = a2;
      v26[1] = a3;
      v23 = v6;
      v24 = sub_10000C248(*(qword_100B5EF98 + 32 * v6 + 32));
      sub_1000B8B8C(*(qword_100B5EF98 + 32 * v23 + 32), v26, 16);
      if (!v24)
      {
        sub_100220050(a1);
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("MAP is not initialized", v15, v16, v17, v18, v19, v20, v21, v25);
    v22 = sub_10000C050(0x50u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }
  }
}

void sub_100220050(uint64_t a1)
{
  v2 = sub_10021FCB4(a1);
  if (v2 == 7)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid connection ID %d.", v3, v4, v5, v6, v7, v8, v9, a1);
      v10 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    v11 = v2;
    v12 = sub_1000BA5F8(*(qword_100B5EF98 + 32 * v2 + 32));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = (qword_100B5EF98 + 32 * v11 + 9);

    sub_10021F034(v15, sub_100223714, 0, v13, v14);
  }
}

uint64_t sub_100220128(uint64_t a1, uint64_t a2, __int16 a3, char a4, uint64_t a5)
{
  v42 = 278;
  v43 = a4;
  if (qword_100B5EF98)
  {
    if (sub_10021FCB4(a1) == 7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid connection ID %d.", v9, v10, v11, v12, v13, v14, v15, a1);
        v16 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 3457;
    }

    v25 = &qword_100B5F028;
    qword_100B5F028 = byte_100B5EFE0;
    byte_100B5F030 = 0;
    if (a5 || (v26 = *(qword_100B5EF98 + 344), (v26 & 1) == 0))
    {
      if (a5)
      {
        v25 = 0;
LABEL_18:
        v30 = sub_1001C25BC(a1, v25, a5);
        if (v30)
        {
          v31 = v30;
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to send GET response %!", v32, v33, v34, v35, v36, v37, v38, v31);
            v39 = sub_10000C050(0x50u);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }
        }

        return a5;
      }

      v27 = 0;
    }

    else
    {
      byte_100B5EFE0[0] = -105;
      v27 = 1;
      byte_100B5EFE8 = 1;
      *(qword_100B5EF98 + 344) = v26 & 0xFA | 4;
    }

    v28 = &byte_100B5EFE0[24 * v27];
    *v28 = 76;
    *(v28 + 2) = &v42;
    *(v28 + 4) = 3;
    v29 = &byte_100B5EFE0[24 * (v27 + 1)];
    *v29 = 73;
    *(v29 + 2) = a2;
    *(v29 + 4) = a3;
    byte_100B5F030 = v27 | 2;
    goto LABEL_18;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("MAP is not initialized", v17, v18, v19, v20, v21, v22, v23, v41);
    v24 = sub_10000C050(0x50u);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 103;
}

uint64_t sub_100220318(uint64_t a1, char *a2, uint64_t a3)
{
  if (qword_100B5EF98)
  {
    if (sub_10021FCB4(a1) == 7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid connection ID %d.", v6, v7, v8, v9, v10, v11, v12, a1);
        v13 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 3459;
    }

    v22 = &qword_100B5F080;
    qword_100B5F080 = byte_100B5F038;
    byte_100B5F088 = 0;
    if (a3 || (v23 = *(qword_100B5EF98 + 344), (v23 & 1) == 0))
    {
      if (a3)
      {
        v22 = 0;
LABEL_17:
        if (sub_1001C28A0(a1, v22, a3))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to send PUT response %!", v28, v29, v30, v31, v32, v33, v34, a3);
            v35 = sub_10000C050(0x50u);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }
        }

        return a3;
      }
    }

    else
    {
      byte_100B5F038[0] = -105;
      byte_100B5F040 = 1;
      byte_100B5F088 = 1;
      *(qword_100B5EF98 + 344) = v23 & 0xFA | 4;
    }

    memset(v38, 0, sizeof(v38));
    v24 = strlen(a2);
    sub_100306E84(a2, v24, v38, 16);
    v25 = byte_100B5F088;
    v26 = &byte_100B5F038[24 * byte_100B5F088];
    *v26 = 1;
    *(v26 + 2) = v38;
    *(v26 + 4) = 16;
    v27 = &byte_100B5F038[24 * (v25 + 1)];
    *v27 = 73;
    *(v27 + 2) = 0;
    *(v27 + 4) = 0;
    byte_100B5F088 = v25 + 2;
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("MAP is not initialized", v14, v15, v16, v17, v18, v19, v20, v37);
    v21 = sub_10000C050(0x50u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 103;
}

uint64_t sub_10022055C(uint64_t a1, char a2, __int16 a3, uint64_t a4, int a5, char *__s)
{
  v43 = 269;
  v44 = a2;
  v45 = 3865;
  qmemcpy(&v46, "YYYYMMDDTHHM", 12);
  HIDWORD(v46) = 307450701;
  v47 = 2;
  v48 = HIBYTE(a3);
  v49 = a3;
  if (__s && strlen(__s) == 15)
  {
    *&v46 = *__s;
    *(&v46 + 7) = *(__s + 7);
  }

  if (qword_100B5EF98)
  {
    if (sub_10021FCB4(a1) == 7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid connection ID %d.", v10, v11, v12, v13, v14, v15, v16, a1);
        v17 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 3459;
    }

    else
    {
      qword_100B5F0D8 = byte_100B5F090;
      v27 = *(qword_100B5EF98 + 344);
      if (v27)
      {
        byte_100B5F090[0] = -105;
        v28 = 1;
        byte_100B5F098 = 1;
        *(qword_100B5EF98 + 344) = v27 & 0xFA | 4;
      }

      else
      {
        v28 = 0;
      }

      v29 = &byte_100B5F090[24 * v28];
      *v29 = 76;
      *(v29 + 2) = &v43;
      *(v29 + 4) = 24;
      v30 = &byte_100B5F090[24 * (v28 + 1)];
      *v30 = 73;
      *(v30 + 2) = a4;
      *(v30 + 4) = a5;
      v31 = v28 | 2;
      if (a5)
      {
        v32 = a4 == 0;
      }

      else
      {
        v32 = 1;
      }

      if (v32)
      {
        v31 = v28 + 1;
      }

      byte_100B5F0E0 = v31;
      v18 = sub_1001C25BC(a1, &qword_100B5F0D8, 0);
      if (v18)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send GET response %!", v33, v34, v35, v36, v37, v38, v39, v18);
          v40 = sub_10000C050(0x50u);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MAP is not initialized", v19, v20, v21, v22, v23, v24, v25, v42);
      v26 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 103;
  }

  return v18;
}

uint64_t sub_1002207D4(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  v38 = 529;
  v39 = HIBYTE(a2);
  v40 = a2;
  if (qword_100B5EF98)
  {
    if (sub_10021FCB4(a1) == 7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid connection ID %d.", v7, v8, v9, v10, v11, v12, v13, a1);
        v14 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 3460;
    }

    else
    {
      qword_100B5F130 = byte_100B5F0E8;
      v24 = *(qword_100B5EF98 + 344);
      if (v24)
      {
        byte_100B5F0E8[0] = -105;
        v25 = 1;
        byte_100B5F0F0 = 1;
        *(qword_100B5EF98 + 344) = v24 & 0xFA | 4;
      }

      else
      {
        v25 = 0;
      }

      v26 = &byte_100B5F0E8[24 * v25];
      *v26 = 76;
      *(v26 + 2) = &v38;
      *(v26 + 4) = 4;
      v27 = &byte_100B5F0E8[24 * (v25 + 1)];
      *v27 = 73;
      *(v27 + 2) = a3;
      *(v27 + 4) = a4;
      byte_100B5F138 = v25 | 2;
      v15 = sub_1001C25BC(a1, &qword_100B5F130, 0);
      if (v15)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send GET response %!", v28, v29, v30, v31, v32, v33, v34, v15);
          v35 = sub_10000C050(0x50u);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MAP is not initialized", v16, v17, v18, v19, v20, v21, v22, v37);
      v23 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 103;
  }

  return v15;
}

void sub_1002209B0(unsigned int a1, int a2)
{
  v2 = sub_1001C31BC(a1, a2);
  if (v2)
  {
    v3 = v2;
    if (sub_10000C240())
    {
      sub_10000AF54("Can't confirm SetPath %!", v4, v5, v6, v7, v8, v9, v10, v3);
      v11 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

void sub_100220A24(unsigned int a1, int a2)
{
  v2 = sub_1001C28A0(a1, 0, a2);
  if (v2)
  {
    v3 = v2;
    if (sub_10000C240())
    {
      sub_10000AF54("Could not send SetMessageStatus response : %!", v4, v5, v6, v7, v8, v9, v10, v3);
      v11 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

void sub_100220AA0(unsigned int a1, int a2)
{
  qword_100B5F158 = &byte_100B5F140;
  byte_100B5F160 = 0;
  if (!a2)
  {
    v2 = *(qword_100B5EF98 + 344);
    if (v2)
    {
      byte_100B5F140 = -105;
      byte_100B5F148 = 1;
      byte_100B5F160 = 1;
      *(qword_100B5EF98 + 344) = v2 & 0xFA | 4;
    }
  }

  v3 = sub_1001C28A0(a1, &qword_100B5F158, a2);
  if (v3)
  {
    v4 = v3;
    if (sub_10000C240())
    {
      sub_10000AF54("Could not send BT_MAP_SetNotificationFilter response : %!", v5, v6, v7, v8, v9, v10, v11, v4);
      v12 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

void sub_100220B70(unsigned int a1, int a2)
{
  v2 = 0;
  qword_100B5F198 = byte_100B5F168;
  if (!a2)
  {
    v3 = *(qword_100B5EF98 + 344);
    if (v3)
    {
      byte_100B5F168[0] = -105;
      v2 = 1;
      byte_100B5F170 = 1;
      *(qword_100B5EF98 + 344) = v3 & 0xFA | 4;
    }
  }

  v4 = &byte_100B5F168[24 * v2];
  *v4 = 73;
  *(v4 + 2) = "Apple Inc.";
  *(v4 + 4) = 11;
  byte_100B5F1A0 = v2 + 1;
  v5 = sub_1001C25BC(a1, &qword_100B5F198, 0);
  if (v5)
  {
    v6 = v5;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send GET response %!", v7, v8, v9, v10, v11, v12, v13, v6);
      v14 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

void sub_100220C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = 0;
  v60 = 0;
  if (sub_1001C32B4(a1, &v60))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to get client address", v8, v9, v10, v11, v12, v13, v14, v59);
      v15 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100812B34();
      }
    }

    goto LABEL_30;
  }

  if (sub_10021F660(&v60) == 7)
  {
    if (*(qword_100B5EF98 + 232) == 7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("No connection slots left", v16, v17, v18, v19, v20, v21, v22, v59);
        v23 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      v32 = (qword_100B5EF98 + 16);
      v33 = 7;
      while (1)
      {
        if (*(v32 - 8) == 1)
        {
          if (*v32 == a1)
          {
            break;
          }

          if (v60 == *(v32 - 7) && v61 == *(v32 - 3))
          {
            break;
          }
        }

        v32 += 16;
        if (!--v33)
        {
          v35 = 0;
          v36 = (qword_100B5EF98 + 8);
          while (1)
          {
            v37 = *v36;
            v36 += 32;
            if (v37 != 1)
            {
              break;
            }

            if (++v35 == 7)
            {
              v38 = 7;
              goto LABEL_26;
            }
          }

          v38 = v35;
LABEL_26:
          v39 = qword_100B5EF98 + 8 + 32 * v38;
          *v39 = 0u;
          *(v39 + 16) = 0u;
          *(v39 + 8) = a1;
          v40 = v60;
          *(v39 + 5) = v61;
          *(v39 + 1) = v40;
          *(qword_100B5EF98 + 32 * v38 + 8) = 1;
          v41 = sub_1000BAE38(sub_100221780, sub_1002217D4);
          v42 = qword_100B5EF98;
          *(qword_100B5EF98 + 32 * v38 + 32) = v41;
          ++*(v42 + 232);
          if (v38 != 7)
          {
            (*(v42 + 240))(&v60, a2, a3, a4, a1);
            return;
          }

          break;
        }
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Could not create new device.", v43, v44, v45, v46, v47, v48, v49, v59);
      v50 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Device is already connected.", v24, v25, v26, v27, v28, v29, v30, v59);
    v31 = sub_10000C050(0x50u);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
LABEL_29:
      sub_10080F7A0();
    }
  }

LABEL_30:
  if (sub_1001C2ABC(a1, 0, 3451) && sub_10000C240())
  {
    sub_10000AF54("Failed to inform client of connection failure", v51, v52, v53, v54, v55, v56, v57, v59);
    v58 = sub_10000C050(0x50u);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      sub_100812B34();
    }
  }
}

uint64_t sub_100220F58(uint64_t a1)
{
  result = sub_10021FCB4(a1);
  if (result != 7)
  {
    v3.n128_f64[0] = sub_10021FEBC(a1);
    v4 = *(qword_100B5EF98 + 248);

    return v4(a1, 0, v3);
  }

  return result;
}

uint64_t sub_100220FBC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_10021FCB4(a1);
  if (v6 >= 7)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not get the device.", v7, v8, v9, v10, v11, v12, v13, v80);
      v14 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 3452;
  }

  v16 = v6;
  v17 = *(qword_100B5EF98 + 32 * v6 + 24);
  if (a3 != 1752 && a3 != 1701)
  {
    v15 = 0;
    goto LABEL_23;
  }

  if (a2 && !v17)
  {
    v18 = sub_1001BBBD8(0x1B0uLL, 0x10900408862A91FuLL);
    if (!v18)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ERROR : OI_STATUS_OUT_OF_MEMORY", v45, v46, v47, v48, v49, v50, v51, v80);
        v52 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v15 = 106;
      goto LABEL_25;
    }

    v17 = v18;
    *v18 = 2;
    v19 = sub_1002217DC(a2, v18);
    if (v19)
    {
      v15 = v19;
      if (!sub_10000C240())
      {
        goto LABEL_24;
      }

      sub_10000AF54("ERROR (parsing): %!", v20, v21, v22, v23, v24, v25, v26, v15);
      v27 = sub_10000C050(0x50u);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      goto LABEL_46;
    }

    goto LABEL_47;
  }

  if (!a2 && v17)
  {
    if (*v17 != 2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("ERROR : OI_OBEX_PRECONDITION_FAILED", v28, v29, v30, v31, v32, v33, v34, v80);
        v35 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v15 = 1741;
      goto LABEL_24;
    }

    goto LABEL_47;
  }

  if (a2 && v17)
  {
    v36 = sub_1002217DC(a2, v17);
    if (v36)
    {
      v15 = v36;
      if (!sub_10000C240())
      {
        goto LABEL_24;
      }

      sub_10000AF54("ERROR (parsing): %!", v37, v38, v39, v40, v41, v42, v43, v15);
      v44 = sub_10000C050(0x50u);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      goto LABEL_46;
    }

    if (a3 == 1752)
    {
      v53 = sub_1001C25BC(a1, 0, 1701);
      if (!v53)
      {
LABEL_48:
        *(qword_100B5EF98 + 32 * v16 + 24) = v17;
        v15 = sub_1001C25BC(a1, 0, 1701);
        if (!v15)
        {
          return v15;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("ERROR (OI_OBEXSRV_GetResponse): %!", v62, v63, v64, v65, v66, v67, v68, v15);
          v69 = sub_10000C050(0x50u);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

LABEL_23:
        if (!v17)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v15 = v53;
      if (!sub_10000C240())
      {
        goto LABEL_24;
      }

      sub_10000AF54("ERROR (OI_OBEXSRV_GetResponse): %!", v54, v55, v56, v57, v58, v59, v60, v15);
      v61 = sub_10000C050(0x50u);
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

LABEL_46:
      sub_10080F7A0();
LABEL_24:
      sub_100222088(v17);
      *(qword_100B5EF98 + 32 * v16 + 24) = 0;
      goto LABEL_25;
    }
  }

  else if (!(a2 | v17))
  {
    if (a3 != 1701)
    {
      v15 = 1741;
LABEL_25:
      if ((*(qword_100B5EF98 + 344) & 4) != 0)
      {
        *(qword_100B5EF98 + 344) = 0;
      }

      return v15;
    }

    if ((*(qword_100B5EF98 + 344) & 4) != 0)
    {
      sub_1001C2744(a1);
    }

    return 0;
  }

LABEL_47:
  if (a3 != 1701)
  {
    goto LABEL_48;
  }

  v70 = *(v17 + 16);
  if (v70)
  {
    v70(v17, a1);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No function defined for this GET.", v71, v72, v73, v74, v75, v76, v77, v80);
      v78 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1001C25BC(a1, 0, 0);
  }

  sub_100222088(v17);
  v15 = 0;
  *(qword_100B5EF98 + 32 * v16 + 24) = 0;
  return v15;
}

uint64_t sub_10022140C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_10021FCB4(a1);
  if (v6 >= 7)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not get the device.", v7, v8, v9, v10, v11, v12, v13, v41);
      v14 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 3453;
  }

  v15 = v6;
  v16 = *(qword_100B5EF98 + 32 * v6 + 24);
  if (v16)
  {
    if (*v16 != 1)
    {
      a2 = 1741;
      goto LABEL_13;
    }
  }

  else
  {
    v16 = sub_1001BBBD8(0x1B0uLL, 0x10900408862A91FuLL);
    *v16 = 1;
  }

  if (!a2)
  {
LABEL_13:
    sub_100222088(v16);
    v18 = qword_100B5EF98;
    *(qword_100B5EF98 + 32 * v15 + 24) = 0;
    if ((*(v18 + 344) & 4) != 0)
    {
      *(v18 + 344) = 0;
    }

    return a2;
  }

  v17 = sub_1002217DC(a2, v16);
  if (v17)
  {
LABEL_12:
    a2 = v17;
    goto LABEL_13;
  }

  if (a3 != 1701)
  {
    v24 = v16[2];
    if (!v24)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("No function defined for this PUT.", v33, v34, v35, v36, v37, v38, v39, v41);
        v40 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      a2 = 0;
      goto LABEL_13;
    }

    v17 = v24(v16, a1);
    goto LABEL_12;
  }

  v20 = qword_100B5EF98;
  *(qword_100B5EF98 + 32 * v15 + 24) = v16;
  v21 = *(v20 + 344);
  if (v21)
  {
    v23 = &qword_100B5F1D8;
    qword_100B5F1D8 = &byte_100B5F1A8;
    byte_100B5F1A8 = -105;
    byte_100B5F1B0 = 1;
    byte_100B5F1E0 = 1;
    *(v20 + 344) = v21 & 0xFA | 4;
    v22 = a1;
  }

  else
  {
    if ((*(v20 + 344) & 4) != 0)
    {
      return 0;
    }

    v22 = a1;
    v23 = 0;
  }

  a2 = sub_1001C28A0(v22, v23, 1701);
  if (a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not send PUT response (continue) %!", v25, v26, v27, v28, v29, v30, v31, a2);
      v32 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_13;
  }

  return a2;
}

uint64_t sub_10022164C(uint64_t a1, unsigned __int16 *a2, uint64_t a3, char a4)
{
  v8 = sub_100007618(0x100uLL, 0x100004077774924uLL);
  if (a4)
  {
    return 1735;
  }

  v10 = v8;
  if (a2)
  {
    v11 = sub_100306F34(*(a2 + 1), *a2, v8, 256);
    if (v11)
    {
      v12 = v11;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to get UTF8 string from UTF16 : %!", v13, v14, v15, v16, v17, v18, v19, v12);
        v20 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      v21 = strlen(v10);
      (*(qword_100B5EF98 + 288))(a1, v10, v21, a3, 0);
    }
  }

  else
  {
    (*(qword_100B5EF98 + 288))(a1, "", 0, a3, 0);
  }

  sub_10000C1E8(v10);
  return 0;
}

void *sub_100221780(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = sub_100007618(v4, 0xF8CF9302uLL);
  *a1 = v5;
  result = memmove(v5, *a2, v4);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1002217DC(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v4 = 0;
  v115 = a2 + 24;
  while (1)
  {
    v5 = (*a1 + 24 * v4);
    v6 = *v5;
    if (v6 <= 0x48)
    {
      switch(v6)
      {
        case 1u:
          if (!*(a2 + 8))
          {
            if (*(v5 + 2) && *(v5 + 4))
            {
              v79 = sub_100007618(*(v5 + 4), 0x1BE61D79uLL);
              *(a2 + 8) = v79;
              if (!v79)
              {
                return 106;
              }

              if (sub_100306F34(*(v5 + 2), *(v5 + 4), v79, *(v5 + 4)))
              {
                sub_10000C1E8(*(a2 + 8));
                *(a2 + 8) = 0;
              }
            }

            goto LABEL_115;
          }

          if (sub_10000C240())
          {
            sub_10000AF54("Got 2 names. ignoring.", v64, v65, v66, v67, v68, v69, v70, v114);
            v71 = sub_10000C050(0x50u);
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_110;
            }
          }

          break;
        case 0x42u:
          if (*(a2 + 16))
          {
            if (sub_10000C240())
            {
              sub_10000AF54("2 Header types in this header.", v106, v107, v108, v109, v110, v111, v112, v114);
              v113 = sub_10000C050(0x50u);
              if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
              {
                sub_10080F7A0();
              }
            }

            return 1720;
          }

          if (!*(v5 + 4) || !*(v5 + 2))
          {
            return 1735;
          }

          v75 = 8;
          v76 = &off_100AE7848;
          while (1)
          {
            v77 = strlen(*(v5 + 2));
            if (!sub_100307234(*(v5 + 2), *(v76 - 1), v77))
            {
              break;
            }

            v76 += 2;
            if (!--v75)
            {
              goto LABEL_115;
            }
          }

          *(a2 + 16) = *v76;
          goto LABEL_115;
        case 0x48u:
          goto LABEL_85;
      }

      goto LABEL_115;
    }

    if (*v5 > 0x96u)
    {
      if (v6 == 151)
      {
        if (v5[8] != 1)
        {
          goto LABEL_115;
        }

        v62 = qword_100B5EF98;
        v63 = *(qword_100B5EF98 + 344) | 1;
      }

      else
      {
        if (v6 != 152 || v5[8] != 1)
        {
          goto LABEL_115;
        }

        v62 = qword_100B5EF98;
        v63 = *(qword_100B5EF98 + 344) | 2;
      }

      *(v62 + 344) = v63;
      goto LABEL_115;
    }

    if (v6 == 73)
    {
      *(a2 + 426) = 1;
LABEL_85:
      v72 = *(v5 + 4);
      if (*(a2 + 416))
      {
        if (*(v5 + 4))
        {
          v73 = sub_100007618(*(a2 + 424) + v72, 0x92DD43D8uLL);
          if (v73)
          {
            v74 = v73;
            memmove(v73, *(a2 + 416), *(a2 + 424));
            memmove(&v74[*(a2 + 424)], *(v5 + 2), *(v5 + 4));
            sub_10000C1E8(*(a2 + 416));
            *(a2 + 424) += *(v5 + 4);
            *(a2 + 416) = v74;
          }
        }
      }

      else if (*(v5 + 4))
      {
        *(a2 + 424) = v72;
        v78 = sub_100007618(v72, 0x51B28918uLL);
        *(a2 + 416) = v78;
        if (v78)
        {
          memmove(v78, *(v5 + 2), *(a2 + 424));
        }

        else
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Could not store body length.", v88, v89, v90, v91, v92, v93, v94, v114);
            v95 = sub_10000C050(0x50u);
            if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
            {
              v96 = sub_10000C0FC();
              *buf = 136446466;
              v119 = v96;
              v120 = 1024;
              v121 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          *(a2 + 424) = 0;
        }
      }

      goto LABEL_115;
    }

    if (v6 == 76)
    {
      break;
    }

LABEL_115:
    if (++v4 >= *(a1 + 8))
    {
      return 0;
    }
  }

  v7 = *(v5 + 4);
  if (!*(v5 + 4))
  {
    if (!sub_10000C240())
    {
      goto LABEL_115;
    }

    sub_10000AF54("App Params = 0. Ignoring", v80, v81, v82, v83, v84, v85, v86, v114);
    v71 = sub_10000C050(0x50u);
    if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

LABEL_110:
    v87 = sub_10000C0FC();
    *buf = 136446466;
    v119 = v87;
    v120 = 1024;
    v121 = 0xFFFF;
    _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
    goto LABEL_115;
  }

  v8 = *(v5 + 2);
  if (!v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/map/map_server.c", 1123, "appParams->data");
  }

  v9 = 0;
  v10 = 0;
  v117 = 0;
  v116 = 0;
  while (1)
  {
LABEL_10:
    if (v7 <= v9)
    {
      goto LABEL_115;
    }

    v11 = v9;
    v12 = v9 + 1;
    if (v7 <= (v9 + 1))
    {
      v13 = 1;
      v9 = v9 + 1;
    }

    else
    {
      v13 = 0;
      v9 += 2;
      v10 = *(v8 + v12);
    }

    v14 = *(v8 + v11);
    if ((v14 - 42) >= 0xFFFFFFD7)
    {
      break;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Unknown tag.", v15, v16, v17, v18, v19, v20, v21, v114);
      v22 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v29 = sub_10000C0FC();
        *buf = 136446466;
        v119 = v29;
        v120 = 1024;
        v121 = 0xFFFF;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
      }
    }

    if (v7 <= v12)
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/map/map_server.c");
      goto LABEL_118;
    }

    v23 = v7 - v9;
    v24 = v23 < v10;
    if (v23 >= v10)
    {
      v25 = v10;
    }

    else
    {
      v25 = 0;
    }

    v9 += v25;
    if (v24)
    {
      goto LABEL_118;
    }
  }

  v26 = &byte_1008A3BF2;
  v27 = 27;
  while (2)
  {
    if (*(v26 - 2) == v14)
    {
      v30 = *(v26 - 1);
      v28 = *v26;
      if (v30)
      {
        v116 = v28;
        goto LABEL_32;
      }

LABEL_33:
      if (v28 == v10)
      {
        v117 = 0;
        v116 = v10;
        goto LABEL_35;
      }

      v116 = v28;
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid size %d != %d.", v42, v43, v44, v45, v46, v47, v48, v116);
        v49 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v61 = sub_10000C0FC();
          *buf = 136446466;
          v119 = v61;
          v120 = 1024;
          v121 = 0xFFFF;
          _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
        }
      }

      if (v7 <= v12)
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/map/map_server.c");
        v50 = 0;
      }

      else
      {
        v50 = v7 - v9;
      }

      v59 = v50 < v10;
      if (v50 >= v10)
      {
        v58 = v10;
      }

      else
      {
        v58 = 0;
      }

      if (v59)
      {
        goto LABEL_118;
      }

      v117 = 0;
LABEL_70:
      v9 += v58;
      if (!v13)
      {
        goto LABEL_10;
      }

      goto LABEL_118;
    }

    v26 += 3;
    if (--v27)
    {
      continue;
    }

    break;
  }

  if ((v117 & 1) == 0)
  {
    v28 = v116;
    goto LABEL_33;
  }

LABEL_32:
  v117 = 1;
LABEL_35:
  v31 = sub_100007618(v10, 0xABCBD5F8uLL);
  if (!v31)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not allocate buffer of size %d.", v33, v34, v35, v36, v37, v38, v39, v10);
      v40 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v60 = sub_10000C0FC();
        *buf = 136446466;
        v119 = v60;
        v120 = 1024;
        v121 = 0xFFFF;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
      }
    }

    if (v7 <= v12)
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/map/map_server.c");
      v41 = 0;
    }

    else
    {
      v41 = v7 - v9;
    }

    v57 = v41 < v10;
    if (v41 >= v10)
    {
      v58 = v10;
    }

    else
    {
      v58 = 0;
    }

    if (v57)
    {
      goto LABEL_118;
    }

    goto LABEL_70;
  }

  if (v7 <= v12)
  {
    v51 = v31;
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/map/map_server.c");
    v31 = v51;
    v32 = 0;
  }

  else
  {
    v32 = v7 - v9;
  }

  if (v32 >= v10)
  {
    if (v10)
    {
      v52 = (v8 + v9);
      v53 = v31;
      do
      {
        v54 = *v52++;
        *v53++ = v54;
      }

      while (v53 < &v31[v10]);
    }

    v9 += v10;
  }

  else
  {
    v13 = 1;
  }

  v55 = *(a2 + 408);
  v56 = v115 + 24 * v55;
  *v56 = v14;
  *(v56 + 8) = v31;
  *(v56 + 16) = v10;
  *(a2 + 408) = v55 + 1;
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_118:
  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/map/map_server.c");
  if (sub_10000C240())
  {
    sub_10000AF54("MAP: Application parameters are corrupted", v98, v99, v100, v101, v102, v103, v104, v114);
    v105 = sub_10000C050(0x50u);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      sub_100814070();
    }
  }

  return 1741;
}