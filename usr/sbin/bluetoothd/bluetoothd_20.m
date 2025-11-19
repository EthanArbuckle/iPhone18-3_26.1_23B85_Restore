uint64_t sub_10019CBAC(__int128 *a1, unsigned __int16 *a2, unsigned int a3)
{
  if (a3 <= 3)
  {
    *buf = 264;
    buf[2] = 4;
    return sub_100196E20(a1, buf, 3u, 0);
  }

  v5 = *a2;
  v6 = a2[1];
  if (sub_10000C240())
  {
    sub_10000AF54("Received create channel for service %d, CID = %d from %p !", v7, v8, v9, v10, v11, v12, v13, v6);
    v14 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v32 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_1000B6E74(a1) || (v15 = sub_1000B7E7C(a1), v15 == -1))
  {
    v21 = a1;
    v22 = 1;
    return sub_10019FE00(v21, v22, v6, v5, 0);
  }

  v16 = v15;
  v17 = *(&xmmword_100B5A1A0 + v15);
  v18 = *(v17 + 16);
  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = *(v17 + 8);
  v20 = 80;
  while (*(v19 + v20 - 40) != v6)
  {
    v20 += 88;
    if (!--v18)
    {
      goto LABEL_18;
    }
  }

  v23 = word_100B5A220;
  if (!word_100B5A220)
  {
LABEL_18:
    v21 = a1;
    v22 = 5;
    return sub_10019FE00(v21, v22, v6, v5, 0);
  }

  v24 = 0;
  v25 = v19 + v20 - 80;
  v26 = &byte_100B5A23C;
  while (!sub_100198FFC(v25, v24))
  {
    ++v24;
    v26 += 72;
    if (v23 == v24)
    {
      goto LABEL_18;
    }
  }

  if (*(v26 - 4) == 1)
  {
    if (sub_1000CC63C(a1))
    {
      v17 = *(&xmmword_100B5A1A0 + v16);
      goto LABEL_24;
    }

    v21 = a1;
    v22 = 3;
    return sub_10019FE00(v21, v22, v6, v5, 0);
  }

LABEL_24:
  if ((dword_100B5A90C & 0x10) != 0 && (*(v17 + 52) & 0x10) != 0)
  {
    v27 = 2576;
  }

  else
  {
    v27 = 2042;
  }

  if (sub_10019ABC0(a1, v16, *(v17 + 8) + v20 - 80, 1, v27))
  {
    v21 = a1;
    v22 = 6;
    return sub_10019FE00(v21, v22, v6, v5, 0);
  }

  *(sub_1000B12AC(*(*(*(&xmmword_100B5A1A0 + v16) + 8) + v20 - 16)) + 8) = v5;
  result = sub_10019FE00(a1, 0, v6, v5, *(*(*(*(&xmmword_100B5A1A0 + v16) + 8) + v20 - 16) + 4));
  v28 = *(*(&xmmword_100B5A1A0 + v16) + 8);
  if (result)
  {
    result = sub_10028E908(*(v28 + v20 - 16));
    *(*(*(&xmmword_100B5A1A0 + v16) + 8) + v20 - 16) = 0;
  }

  else
  {
    v29 = (v28 + v20);
    *(v29 - 14) = *(*(v29 - 2) + 4);
    *v29 = v26[5];
    v30 = *(v26 + 20);
    if (v30)
    {
      return v30(a1);
    }
  }

  return result;
}

void sub_10019CEC4(__int128 *a1, unsigned __int8 *a2, unsigned int a3)
{
  v6 = sub_1000B7E7C(a1);
  if (v6 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Unknown peer.", v9, v10, v11, v12, v13, v14, v15, v38);
      v16 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v7 = v6;
    if (!sub_1000B6E74(a1))
    {
      *buf = 264;
      v8 = 1;
      goto LABEL_9;
    }

    if (a3 <= 4)
    {
      *buf = 264;
      v8 = 4;
LABEL_9:
      buf[2] = v8;
      sub_100196E20(a1, buf, 3u, 0);
      return;
    }

    v17 = *a2;
    v18 = *(a2 + 1);
    v19 = *(a2 + 3);
    if (sub_10000C240())
    {
      sub_10000AF54("Received accept channel for service %d, CID = %d from %p !", v20, v21, v22, v23, v24, v25, v26, v18);
      v27 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v40 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v28 = *(&xmmword_100B5A1A0 + v7);
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = 0;
      v31 = *(v28 + 8);
      v32 = &byte_100B5A241;
      while (*(v31 + v30 + 40) != v18)
      {
        v32 += 72;
        v30 += 88;
        if (!--v29)
        {
          return;
        }
      }

      v33 = *(v31 + v30 + 64);
      if (v33)
      {
        if (v17)
        {
          sub_10028E908(v33);
          *(*(*(&xmmword_100B5A1A0 + v7) + 8) + v30 + 64) = 0;
        }

        else
        {
          *(sub_1000B12AC(v33) + 8) = v19;
          *(sub_1000B12AC(*(*(*(&xmmword_100B5A1A0 + v7) + 8) + v30 + 64)) + 16) = 4;
          v34 = *(*(&xmmword_100B5A1A0 + v7) + 8) + v30;
          *(v34 + 80) = *v32;
          *(v34 + 52) = *(*(v34 + 64) + 4);
          v35 = word_100B5A220;
          if (word_100B5A220)
          {
            for (i = &byte_100B5A23C; *(i - 1) != v18; i += 72)
            {
              if (!--v35)
              {
                return;
              }
            }

            v37 = *(i + 20);
            if (v37)
            {
              v37(a1);
            }
          }
        }
      }
    }
  }
}

void sub_10019D160(__int128 *a1, unsigned __int16 *a2, unsigned int a3)
{
  v6 = sub_1000B7E7C(a1);
  if (v6 == -1)
  {
    goto LABEL_6;
  }

  v7 = v6;
  if (!sub_10019F974(v6))
  {
    return;
  }

  if (a3 <= 4)
  {
    *buf = 264;
    v8 = 4;
LABEL_7:
    buf[2] = v8;
    sub_100196E20(a1, buf, 3u, 0);
    return;
  }

  if (sub_1000B6E74(a1))
  {
LABEL_6:
    *buf = 264;
    v8 = 1;
    goto LABEL_7;
  }

  v9 = *a2;
  v71 = *a2;
  if (*(a2 + 3) >= 0x20u)
  {
    v10 = 32;
  }

  else
  {
    v10 = *(a2 + 3);
  }

  if (!*(a2 + 3) || v10 + 4 > a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Service name length (%d) doesn't match data size (%d).", v11, v12, v13, v14, v15, v16, v17, v10);
      v18 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (a3 - v10 == 4)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(a2 + v10 + 4);
  }

  v20 = *(a2 + 2);
  if (sub_10000C240())
  {
    sub_10000AF54("Received service added on lm 0x%4x with service ID %d, eRTM %d", v21, v22, v23, v24, v25, v26, v27, *a1);
    v28 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v73 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!sub_10019FB14(v7, a2 + 2, v10, a1))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Service ID %d is not supported. OI_STATUS_WATCH_TS_REMOTE_UNSUPPORTED", v46, v47, v48, v49, v50, v51, v52, v9);
    v53 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_49:
    sub_1000E09C0();
    return;
  }

  v29 = *(&xmmword_100B5A1A0 + v7);
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = *(v29 + 8);
    v32 = *(v29 + 16);
    while (v31[10] != v9)
    {
      if (sub_100198434(v31, a2 + 2, v10, v20))
      {
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Already have this service name for this peer !", v62, v63, v64, v65, v66, v67, v68, v70);
        v69 = sub_10000C050(0x51u);
        if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        goto LABEL_49;
      }

      v31 += 22;
      if (!--v32)
      {
        goto LABEL_29;
      }
    }

    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Already have this service ID for this peer !", v54, v55, v56, v57, v58, v59, v60, v70);
    v61 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_49;
  }

LABEL_29:
  v33 = sub_1001BBBD8(88 * (v30 + 1), 0x1020040CA479C79uLL);
  if (v33)
  {
    v34 = v33;
    v35 = *(&xmmword_100B5A1A0 + v7);
    v36 = *(v35 + 8);
    if (v36)
    {
      memmove(v33, v36, 88 * *(v35 + 16));
      sub_10000C1E8(*(*(&xmmword_100B5A1A0 + v7) + 8));
      v35 = *(&xmmword_100B5A1A0 + v7);
    }

    v37 = &v34[88 * *(v35 + 16)];
    *(v37 + 8) = v10;
    *(v37 + 9) = v20;
    *(v37 + 10) = v9;
    *(v37 + 44) = 0x100000001;
    memmove(v37, a2 + 2, v10);
    v38 = *(&xmmword_100B5A1A0 + v7);
    v39 = *(v38 + 16);
    v40 = &v34[88 * v39];
    *(v40 + 8) = 0;
    v40[56] = v19 & 1;
    v40[57] = (v19 & 2) != 0;
    *(v40 + 26) = 0;
    *(v38 + 8) = v34;
    *(v38 + 16) = v39 + 1;
    v41 = word_100B5A220;
    if (word_100B5A220)
    {
      if (v10 >= 0xF)
      {
        v42 = 15;
      }

      else
      {
        v42 = v10;
      }

      v43 = 0;
      v44 = byte_100B5A198 | (memcmp("com.apple.BT.TS", a2 + 2, v42) != 0);
      v45 = &byte_100B5A23C;
      while ((v44 & 1) == 0 || !sub_100198FFC(&v34[88 * v39], v43))
      {
        ++v43;
        v45 += 72;
        if (v41 == v43)
        {
          return;
        }
      }

      v34[88 * v39 + 54] = *v45;
      sub_1001984B8(a1, 1u, &v71);
    }
  }
}

void sub_10019D5BC(__int128 *a1, unsigned __int16 *a2, unsigned int a3)
{
  v6 = sub_1000B7E7C(a1);
  if (v6 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Service removed error: Invalid peer", v17, v18, v19, v20, v21, v22, v23, v89);
      v24 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    *buf = 264;
    v16 = 1;
    goto LABEL_12;
  }

  v7 = v6;
  if (!sub_10019F974(v6))
  {
    return;
  }

  if (a3 <= 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Service removed error  Invalid peer", v8, v9, v10, v11, v12, v13, v14, v89);
      v15 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    *buf = 264;
    v16 = 4;
LABEL_12:
    buf[2] = v16;
    sub_100196E20(a1, buf, 3u, 0);
    return;
  }

  v25 = *a2;
  v26 = *(&xmmword_100B5A1A0 + v7);
  v27 = *(v26 + 16);
  if (!v27)
  {
LABEL_17:
    if (sub_10000C240())
    {
      sub_10000AF54("Got a remove request but can't find a service to remove.", v31, v32, v33, v34, v35, v36, v37, v89);
      v38 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_54;
  }

  v28 = 0;
  v29 = 0;
  v30 = *(v26 + 8) + 40;
  while (*(v30 + v28) != v25)
  {
    ++v29;
    v28 += 88;
    if (v27 == v29)
    {
      goto LABEL_17;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Received service removed on peerID %d, channelID %d, serviceID %d, ServiceState [local %s, remote %s], channel 0x%x", v39, v40, v41, v42, v43, v44, v45, v7);
    v46 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v91 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v47 = *(*(&xmmword_100B5A1A0 + v7) + 8) + v28;
  *(v47 + 48) = 2;
  if (!*(v47 + 64))
  {
    v50 = sub_1000B6E74(a1);
    v51 = *(&xmmword_100B5A1A0 + v7);
    if (v50 && (*(*(v51 + 8) + v28 + 55) & 1) == 0)
    {
      sub_1000D660C();
      v51 = *(&xmmword_100B5A1A0 + v7);
    }

    v52 = *(v51 + 8);
    if (*(v52 + v28 + 44) == 2)
    {
      if (!sub_10000C240())
      {
        goto LABEL_58;
      }

      sub_10000AF54("Initiated service removal, but received service removed, delay channel removal until remove cfm is received", v53, v54, v55, v56, v57, v58, v59, v89);
      v60 = sub_10000C050(0x51u);
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

LABEL_53:
      v81 = sub_10000C0FC();
      *buf = 136446210;
      v91 = v81;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
LABEL_58:
      v82 = a1;
      v83 = v25;
      v84 = 0;
      goto LABEL_59;
    }

    v85 = *(v51 + 16) - 1;
    *(v51 + 16) = v85;
    memmove((v52 + v28), (v52 + 88 * v85), 0x58uLL);
    v86 = *(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v85;
LABEL_57:
    *(v86 + 80) = 0;
    *(v86 + 48) = 0u;
    *(v86 + 64) = 0u;
    *(v86 + 16) = 0u;
    *(v86 + 32) = 0u;
    *v86 = 0u;
    goto LABEL_58;
  }

  if (!word_100B5A220)
  {
    v48 = 0;
    goto LABEL_42;
  }

  v48 = 0;
  v49 = &byte_100B5A23D;
  while ((!sub_1000B6E74(a1) || !sub_100198F90((*(*(&xmmword_100B5A1A0 + v7) + 8) + v28), v48)) && (sub_1000B6E74(a1) || !sub_100198FFC(*(*(&xmmword_100B5A1A0 + v7) + 8) + v28, v48)))
  {
    ++v48;
    v49 += 72;
    if (v48 >= word_100B5A220)
    {
      goto LABEL_42;
    }
  }

  if (*v49 != 1 || sub_1000B6E74(a1))
  {
LABEL_42:
    if (v48 < word_100B5A220)
    {
      v61 = &qword_100B5A228[9 * v48];
      if (*(v61 + 20) == 13)
      {
        *(*(&xmmword_100B5A1A0 + v7) + 75) = 0;
        if (sub_10019496C(a1, 0))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Force upgrade TS not ready B", v62, v63, v64, v65, v66, v67, v68, v89);
            v69 = sub_10000C050(0x51u);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              v70 = sub_10000C0FC();
              *buf = 136446210;
              v91 = v70;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }
        }
      }

      v71 = v61[6];
      v72 = *(&xmmword_100B5A1A0 + v7);
      if (v71)
      {
        v71(*(*(v72 + 8) + v28 + 52), 5101);
        v72 = *(&xmmword_100B5A1A0 + v7);
      }

      v73 = *(v72 + 8) + v28;
      if (*(v73 + 44) == 2)
      {
        if (!sub_10000C240())
        {
          goto LABEL_58;
        }

        sub_10000AF54("Initiated service removal, but received service removed, delay channel removal until remove cfm is received", v74, v75, v76, v77, v78, v79, v80, v89);
        v60 = sub_10000C050(0x51u);
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_58;
        }

        goto LABEL_53;
      }

      v87 = *(v72 + 16) - 1;
      *(v72 + 16) = v87;
      sub_10028E908(*(v73 + 64));
      v88 = *(*(&xmmword_100B5A1A0 + v7) + 8);
      memmove((v88 + v28), (v88 + 88 * v87), 0x58uLL);
      v86 = *(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v87;
      goto LABEL_57;
    }

LABEL_54:
    v82 = a1;
    v83 = v25;
    v84 = 5;
LABEL_59:
    sub_1001A0040(v82, v83, v84);
  }
}

void sub_10019DB98(uint64_t a1, unsigned __int16 *a2, unsigned int a3)
{
  v6 = sub_1000B7E7C(a1);
  if (a3 < 3)
  {
    return;
  }

  v7 = v6;
  if (v6 == -1)
  {
    return;
  }

  v8 = *a2;
  if (sub_10000C240())
  {
    v9 = sub_1000B6E74(a1);
    v17 = "Peripheral";
    if (v9)
    {
      v17 = "Central";
    }

    sub_10000AF54("%s received service remove confirmation for id %d", v10, v11, v12, v13, v14, v15, v16, v17);
    v18 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v132 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v19 = *(&xmmword_100B5A1A0 + v7);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = *(v19 + 8);
    if (*(v21 + 40) == v8)
    {
      v22 = 0;
      v130 = 0;
LABEL_15:
      if (sub_10000C240())
      {
        v32 = *(*(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v22 + 44);
        v33 = v32 > 2 ? "unknown CL service state" : off_100AE4BC8[v32];
        sub_10000AF54("Removal confirmed and local service exists, removing while in state %s ", v25, v26, v27, v28, v29, v30, v31, v33);
        v36 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = sub_10000C0FC();
          *buf = 136446210;
          v132 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v38 = *(*(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v22 + 32);
      if (v38 >= 0x20)
      {
        v34 = 32;
      }

      else
      {
        v34 = v38;
      }

      v39 = sub_100007618(v34, 0xF0F4909DuLL);
      v35 = v39;
      if (v39)
      {
        memmove(v39, (*(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v22), v34);
      }

      v127 = *(*(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v22 + 36);
      v40 = sub_1000B6E74(a1);
      v41 = *(&xmmword_100B5A1A0 + v7);
      if (v40 || (v45 = *(v41 + 8) + 88 * v22, *(v45 + 48) == 2) && *(v45 + 44) == 2)
      {
        v42 = *(v41 + 16);
        if (v42 || (sub_1000D660C(), v41 = *(&xmmword_100B5A1A0 + v7), (v42 = *(v41 + 16)) != 0))
        {
          v43 = v42 - 1;
          *(v41 + 16) = v42 - 1;
          memmove((*(v41 + 8) + 88 * v22), (*(v41 + 8) + 88 * (v42 - 1)), 0x58uLL);
          v44 = *(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v43;
          *(v44 + 80) = 0;
          *(v44 + 48) = 0u;
          *(v44 + 64) = 0u;
          *(v44 + 16) = 0u;
          *(v44 + 32) = 0u;
          *v44 = 0u;
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("PeerID %d nb channels was zero when serviced was removed", v118, v119, v120, v121, v122, v123, v124, v126);
          v125 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Peripheral resetting service-state for id %d, channel %d", v46, v47, v48, v49, v50, v51, v52, v8);
          v53 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = sub_10000C0FC();
            *buf = 136446210;
            v132 = v54;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        *(*(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v22 + 44) = 0x100000001;
      }

      goto LABEL_37;
    }

    v22 = 0;
    v23 = (v21 + 128);
    while (v20 - 1 != v22)
    {
      v24 = *v23;
      v23 += 22;
      ++v22;
      if (v24 == v8)
      {
        v130 = v22 >= v20;
        goto LABEL_15;
      }
    }
  }

  v127 = 0;
  v34 = 0;
  v35 = 0;
  v130 = 1;
LABEL_37:
  __s2 = v35;
  v129 = v34;
  v55 = word_100B5A19A;
  if (word_100B5A19A)
  {
    v56 = 0;
    v57 = 0;
    do
    {
      if (*(*(&xmmword_100B5A1A0 + v56) + 16))
      {
        v58 = 0;
        v59 = 40;
        do
        {
          if (sub_1000B6E74(a1) && *(*(*(&xmmword_100B5A1A0 + v56) + 8) + v59) == v8)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Central waiting for more", v60, v61, v62, v63, v64, v65, v66, v126);
              v67 = sub_10000C050(0x51u);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                v68 = sub_10000C0FC();
                *buf = 136446210;
                v132 = v68;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            v57 = 1;
          }

          ++v58;
          v59 += 88;
        }

        while (v58 < *(*(&xmmword_100B5A1A0 + v56) + 16));
        v55 = word_100B5A19A;
      }

      ++v56;
    }

    while (v56 < v55);
  }

  else
  {
    v57 = 0;
  }

  if ((v57 & 1) != 0 || !word_100B5A220)
  {
LABEL_82:
    v87 = __s2;
  }

  else
  {
    v69 = 0;
    v70 = qword_100B5A228;
    while (1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("receivedServiceRemovedCfm:  unregistering service[%d]= %d", v71, v72, v73, v74, v75, v76, v77, v69);
        v78 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
        {
          v79 = sub_10000C0FC();
          *buf = 136446210;
          v132 = v79;
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
        }
      }

      if (sub_1000B6E74(a1) && v8 == *(v70 + 9))
      {
        break;
      }

      if (((v130 | sub_1000B6E74(a1)) & 1) == 0)
      {
        v80 = &qword_100B5A228[9 * v69];
        if (v129 == *(v80 + 8) && !memcmp(*v80, __s2, v129))
        {
          v81 = *(v80 + 3);
          v82 = v127 == 1 && v81 == 0;
          v83 = v82;
          v84 = !v127 && v81 == 1;
          v85 = v84;
          v86 = v81 == 2 && v127 == 2;
          if (v86 || v83 || v85)
          {
            break;
          }
        }
      }

      ++v69;
      v70 += 9;
      if (v69 >= word_100B5A220)
      {
        goto LABEL_82;
      }
    }

    if (*(v70 + 21) && (!sub_1000B6E74(a1) || *(v70 + 9) == v8))
    {
      v96 = v70[8];
      v87 = __s2;
      if (sub_10000C240())
      {
        sub_10000AF54("Found matching services, unregistering serviceID %d, unregisterCb %p", v97, v98, v99, v100, v101, v102, v103, v8);
        v104 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
        {
          v105 = sub_10000C0FC();
          *buf = 136446210;
          v132 = v105;
          _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v106 = *(v70 + 3);
      if (!__s2)
      {
        v107 = *(v70 + 8) >= 0x20u ? 32 : *(v70 + 8);
        v129 = v107;
        v108 = sub_100007618(v107, 0x2AA3C139uLL);
        v87 = v108;
        if (v108)
        {
          memmove(v108, *v70, v107);
        }
      }

      sub_10000C1E8(*v70);
      v109 = &qword_100B5A228[9 * --word_100B5A220];
      memmove(v70, v109, 0x48uLL);
      *v109 = 0u;
      *(v109 + 1) = 0u;
      *(v109 + 2) = 0u;
      *(v109 + 3) = 0u;
      v109[8] = 0;
      if (v96)
      {
        v96(v87, v129, v106);
      }
    }

    else
    {
      v87 = __s2;
      if (sub_10000C240())
      {
        sub_10000AF54("Got an unregister for something not being unregistered...", v110, v111, v112, v113, v114, v115, v116, v126);
        v117 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  if (v130 && !(v57 & 1 | (word_100B5A220 == 0)) && !sub_1000B6E74(a1) && sub_10000C240() && (sub_10000AF54("receivedServiceRemovedCfm: ignored, no matching local service", v88, v89, v90, v91, v92, v93, v94, v126), v95 = sub_10000C050(0x51u), os_log_type_enabled(v95, OS_LOG_TYPE_ERROR)))
  {
    sub_1000E09C0();
    if (!v87)
    {
      return;
    }
  }

  else if (!v87)
  {
    return;
  }

  sub_10000C1E8(v87);
}

uint64_t sub_10019E3F0(__int128 *a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Signaling error %d", v4, v5, v6, v7, v8, v9, v10, *(a2 + 2));
    v11 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  result = sub_1000B7E7C(a1);
  if (result == -1 || (v13 = result, v14 = *(&xmmword_100B5A1A0 + result), (*(v14 + 73) & 1) != 0) || *(v14 + 74) != 1 || (result = sub_1000B6E74(a1), !result))
  {
    if (off_100BC9CA0)
    {
      return off_100BC9CA0(a1, 81, 3221, *(a2 + 2));
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received an Error response from the other side, we're not rxOK yet, and we're central, and we're pending version, this is a response for version msg", v15, v16, v17, v18, v19, v20, v21, v23);
      v22 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v25 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    *(*(&xmmword_100B5A1A0 + v13) + 74) = 0;
    sub_10019F180(a1);
    return sub_100197374(a1);
  }

  return result;
}

void sub_10019E584(unsigned __int16 *a1)
{
  v2 = sub_1000B7E7C(a1);
  if (v2 == -1)
  {
    sub_1000D660C();
  }

  if (*(*(&xmmword_100B5A1A0 + v2) + 72))
  {
    sub_1000D660C();
  }

  if (v2 != -1)
  {
    v3 = *(&xmmword_100B5A1A0 + v2);
    if ((*(v3 + 72) & 1) == 0)
    {
      *(v3 + 72) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("AssertPower for lm 0x%4x", v4, v5, v6, v7, v8, v9, v10, *a1);
        v11 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v55 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      sub_1000C2558();
    }
  }

  v52 = 0;
  v53 = 0;
  v51 = 0;
  v12 = sub_1000B7E7C(a1);
  if (v12 == -1)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("sendTimeSyncCorrection peerID is invalid", v21, v22, v23, v24, v25, v26, v27, v50);
    v28 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_23:
    sub_1000E09C0();
    return;
  }

  v13 = v12;
  v14 = *(*(&xmmword_100B5A1A0 + v12) + 48);
  if (v14 <= 7)
  {
    v15 = 20;
  }

  else
  {
    v15 = 21;
  }

  if (v14 <= 7)
  {
    v16 = 20;
  }

  else
  {
    v16 = 21;
  }

  v17 = sub_100007618(v16, 0x7A4486FCuLL);
  if (!v17)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("sendTimeSyncCorrection memory allocation failed", v29, v30, v31, v32, v33, v34, v35, v50);
    v36 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_23;
  }

  v18 = v17;
  sub_1001BADC4(&v53);
  sub_1001BAE20(&v52);
  sub_1001BAD68(&v51);
  v19 = v51 / 60;
  *v18 = 113;
  if (*(*(&xmmword_100B5A1A0 + v13) + 48) < 8u)
  {
    v20 = 2;
  }

  else
  {
    v18[2] = 0;
    v20 = 3;
  }

  v18[1] = 18;
  v37 = &v18[v20];
  *v37 = HIDWORD(v53);
  v38 = WORD1(v53);
  *(v37 + 2) = v53;
  *(v37 + 3) = v38;
  v39 = HIWORD(v52);
  *(v37 + 4) = WORD2(v52);
  *(v37 + 5) = v39;
  v40 = WORD1(v52);
  *(v37 + 6) = v52;
  *(v37 + 7) = v40;
  *(v37 + 8) = v19;
  *(qword_100B5A8F0 + 128) = sub_1001A0214;
  if (sub_10000C240())
  {
    sub_10000AF54("Sending time info t1={%u,%u}, m1={%u,%u} GMT:%d index %d", v41, v42, v43, v44, v45, v46, v47, v53);
    v48 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = sub_10000C0FC();
      *buf = 136446210;
      v55 = v49;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_100196E20(a1, v18, v15, 1))
  {
    sub_100199E24(a1);
  }
}

void sub_10019E914(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v35 = 0;
  sub_1001BAE20(&v35);
  v6 = sub_1000B7E7C(a1);
  if (v6 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid peer for time data", v15, v16, v17, v18, v19, v20, v21, v34);
      v22 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }
    }
  }

  else if (a3 > 0xF)
  {
    v23 = v6;
    v24 = *(&xmmword_100B5A1A0 + v6);
    *(v24 + 28) = v35;
    *(v24 + 40) = *a2;
    *(v24 + 36) = *(a2 + 4);
    *(v24 + 24) = *(a2 + 8);
    *(v24 + 20) = *(a2 + 12);
    *(v24 + 44) = 0;
    if (a3 == 18)
    {
      *(v24 + 44) = 60 * ((*(a2 + 17) << 8) | *(a2 + 16));
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Received time info t1={%u,%u}, m1={%u,%u} at {%u,%u} GMT:%d", v25, v26, v27, v28, v29, v30, v31, *(*(&xmmword_100B5A1A0 + v23) + 36));
      v32 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = sub_10000C0FC();
        *buf = 136446210;
        v37 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Wrong size for time data", v7, v8, v9, v10, v11, v12, v13, v34);
    v14 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_5:
      sub_1000E09C0();
    }
  }
}

void sub_10019EB10(uint64_t a1, double *a2, unsigned int a3)
{
  v6 = sub_1000B7E7C(a1);
  if (v6 != -1)
  {
    v59 = 0;
    if (a3 > 0xF)
    {
      v17 = v6;
      v19 = *a2;
      v18 = *(a2 + 1);
      v62 = a2[1];
      sub_1001BAE88(v18 | (v19 << 32), *(*(&xmmword_100B5A1A0 + v6) + 20), &v62, &v59, v62, v7, v8);
      if (v20)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid time, newer is smaller ({%u,%u} vs {%u,%u})", v21, v22, v23, v24, v25, v26, v27, v18);
          v28 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        *(*(&xmmword_100B5A1A0 + v17) + 56) = 0;
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Time was {%u,%u} at remote {%u,%u} received at {%u,%u}", v29, v30, v31, v32, v33, v34, v35, *(*(&xmmword_100B5A1A0 + v17) + 36));
          v36 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = sub_10000C0FC();
            *buf = 136446210;
            v61 = v37;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Remote TX of {%u,%u}", v38, v39, v40, v41, v42, v43, v44, v18);
          v45 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = sub_10000C0FC();
            *buf = 136446210;
            v61 = v46;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Remote correction by {%u,%u}", v47, v48, v49, v50, v51, v52, v53, v59);
          v54 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v55 = sub_10000C0FC();
            *buf = 136446210;
            v61 = v55;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v56 = *(&xmmword_100B5A1A0 + v17);
        v57 = *(v56 + 56);
        if (v57)
        {
          v57(a1, *(v56 + 36), *(v56 + 28), *(v56 + 20), v59, *(v56 + 44), *(v56 + 64));
          v56 = *(&xmmword_100B5A1A0 + v17);
        }

        *(v56 + 56) = 0;
        *(v56 + 20) = 0;
        *(v56 + 36) = 0;
        *(v56 + 28) = 0;
        *(v56 + 44) = 0;
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Wrong size for time data", v9, v10, v11, v12, v13, v14, v15, v58);
      v16 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }
}

uint64_t sub_10019EE10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = byte_100B5A098;
  if (byte_100B5A098)
  {
    v8 = result;
    v9 = 0;
    v10 = &qword_100B5A0A0;
    do
    {
      if (*v10)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Received cl data with size %d for session %d", v11, v12, v13, v14, v15, v16, v17, a3);
          v18 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = sub_10000C0FC();
            *buf = 136446210;
            v21 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        result = (*v10)(v8, a2, a3, v10[1], a4);
        v4 = byte_100B5A098;
      }

      ++v9;
      v10 += 2;
    }

    while (v9 < v4);
  }

  return result;
}

void sub_10019EF5C(__int128 *a1, _WORD *a2, uint64_t a3)
{
  v6 = sub_1000B7E7C(a1);
  if (v6 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received DID Info for an unknown peer", v15, v16, v17, v18, v19, v20, v21, v35);
      v22 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else if (a3 > 5)
  {
    if (!a2)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c", 1932, "data");
    }

    v23 = a2[1];
    v24 = a2[2];
    if (a3 == 6)
    {
      v25 = -1;
    }

    else
    {
      if ((a3 & 0xFFF8) == 0)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c", 1939, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      v25 = a2[3];
    }

    v26 = *(&xmmword_100B5A1A0 + v6);
    v26[50] = *a2;
    v26[51] = v23;
    v26[52] = v24;
    v26[53] = v25;
    if (sub_10000C240())
    {
      sub_10000AF54("Received DeviceID for %: vid 0x%x pid 0x%x version 0x%x chipset 0x%x", v27, v28, v29, v30, v31, v32, v33, a1 + 49);
      v34 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v37 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Data size error %d", v7, v8, v9, v10, v11, v12, v13, a3);
      v14 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    *buf = 264;
    buf[2] = 1;
    sub_100196E20(a1, buf, 3u, 0);
  }
}

void sub_10019F180(__int128 *a1)
{
  v2 = sub_1000B7E7C(a1);
  if (v2 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Can not send services, peer is invalid for handle %p", v10, v11, v12, v13, v14, v15, v16, a1);
      v17 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  v3 = v2;
  if (!sub_10019F974(v2))
  {
    return;
  }

  if (*(*(&xmmword_100B5A1A0 + v3) + 48) <= 7u)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  v5 = v4 + 1;
  if (word_100B5A220)
  {
    v6 = 0;
    v7 = qword_100B5A228;
    v8 = v4 + 1;
    while (1)
    {
      v9 = v8;
      if (sub_10019FA7C(v7, a1, v3, v6))
      {
        v8 += *(v7 + 8) + 6;
        if (*(*(&xmmword_100B5A1A0 + v3) + 48) <= 7u && v8 >= 0x100)
        {
          break;
        }
      }

      ++v6;
      v7 += 9;
      if (v6 >= word_100B5A220)
      {
        LODWORD(v6) = 0;
        v9 = v8;
        goto LABEL_21;
      }
    }

    v18 = sub_10000C240();
    if (v18)
    {
      sub_10000AF54("Services limit found for peerID %d, remote version %d, pdu-size %d, temp pdu-size %d, index Limit %d", v19, v20, v21, v22, v23, v24, v25, v3);
      v26 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v113 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
    v9 = v4 + 1;
  }

LABEL_21:
  v27 = v9;
  v28 = sub_100007618(v9, 0xBFD68456uLL);
  if (!v28)
  {
    return;
  }

  v29 = v28;
  v109 = v4;
  v30 = v6;
  v108 = v27;
  bzero(v28, v27);
  *v29 = 1;
  if (!word_100B5A220)
  {
    *&v111 = 0;
    goto LABEL_44;
  }

  v33 = 0;
  *&v111 = 0;
  v34 = qword_100B5A228;
  *&v32 = 136446210;
  v110 = v32;
  while (1)
  {
    v35 = *(v34 + 8) >= 0x20u ? 32 : *(v34 + 8);
    __chkstk_darwin(v31, (v35 + 1));
    v37 = &v108 - v36;
    bzero(&v108 - v36, v38);
    memcpy(v37, *v34, v35);
    v37[v35] = 0;
    if (sub_10019FA7C(v34, a1, v3, v33))
    {
      break;
    }

    v44 = "Skipping";
LABEL_35:
    v31 = sub_10000C240();
    if (v31)
    {
      sub_10000AF54("%s service %s requiresEncryption=%d unpublishing=%d, pduCounter %d", v45, v46, v47, v48, v49, v50, v51, v44);
      v52 = sub_10000C050(0x51u);
      v31 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
      if (v31)
      {
        v53 = sub_10000C0FC();
        *buf = v110;
        v113 = v53;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    ++v33;
    v34 += 9;
    if (v33 >= word_100B5A220)
    {
      goto LABEL_44;
    }
  }

  if (!v30 || v30 != v33)
  {
    v29[v5] = v35 + 5;
    v29[v5 + 1] = *(v34 + 18);
    v29[v5 + 2] = *(v34 + 19);
    v39 = v5 + 4;
    v29[v5 + 3] = *(v34 + 3);
    v40 = (v5 + 5);
    v29[v39] = v35;
    memmove(&v29[v40], *v34, v35);
    v41 = v40 + v35;
    v29[v41] = 0;
    v42 = *(v34 + 22);
    v29[v41] = v42;
    if (*(v34 + 23))
    {
      v43 = 2;
    }

    else
    {
      v43 = 0;
    }

    v29[v41] = v43 | v42;
    v5 = v41 + 1;
    *&v111 = (v111 + 1);
    v44 = "Sending";
    goto LABEL_35;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Exiting due to limit found for peerID %d, lNbServices %d, i %d, singleByteLengthIndex %d", v54, v55, v56, v57, v58, v59, v60, v3);
    v61 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = sub_10000C0FC();
      *buf = v110;
      v113 = v62;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

LABEL_44:
  v63 = v5 - v109;
  if (*(*(&xmmword_100B5A1A0 + v3) + 48) < 8u)
  {
    v64 = 2;
  }

  else
  {
    v29[2] = HIBYTE(v63);
    v64 = 3;
  }

  v65 = v108;
  v66 = v111;
  v29[1] = v63;
  v29[v64] = v66;
  if (sub_10000C240())
  {
    sub_10000AF54("Sending %d out of total %d registered services to %p, pduCounter %d", v67, v68, v69, v70, v71, v72, v73, v66);
    v74 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = sub_10000C0FC();
      *buf = 136446210;
      v113 = v75;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (v66)
  {
    v76 = sub_100196E20(a1, v29, v65, 1);
    if (v76 && sub_10000C240() && (sub_10000AF54("Sending services PDU failed with %!", v77, v78, v79, v80, v81, v82, v83, v76), v84 = sub_10000C050(0x51u), os_log_type_enabled(v84, OS_LOG_TYPE_ERROR)))
    {
      sub_1000E09C0();
      if (v30)
      {
        goto LABEL_55;
      }
    }

    else if (v30)
    {
LABEL_55:
      if (sub_10000C240())
      {
        sub_10000AF54("Sending left over services: singleByteLengthIndex is %d, lNbServices %d, adding services, status %!", v85, v86, v87, v88, v89, v90, v91, v30);
        v93 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          v94 = sub_10000C0FC();
          *buf = 136446210;
          v113 = v94;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      if (v30 < word_100B5A220)
      {
        v95 = &qword_100B5A228[9 * v30 + 1] + 4;
        *&v92 = 136446466;
        v111 = v92;
        do
        {
          if ((v95[9] & 1) == 0)
          {
            if (*(v95 - 4) >= 0x20u)
            {
              v96 = 32;
            }

            else
            {
              v96 = *(v95 - 4);
            }

            v97 = sub_100198190(a1, *(v95 + 3), *(v95 - 12), v96, *v95, v30);
            if (v97)
            {
              v98 = v97;
              if (sub_10000C240())
              {
                sub_10000AF54("Sending services added PDU failed with %!", v99, v100, v101, v102, v103, v104, v105, v98);
                v106 = sub_10000C050(0x51u);
                if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                {
                  v107 = sub_10000C0FC();
                  *buf = v111;
                  v113 = v107;
                  v114 = 1024;
                  v115 = 0xFFFF;
                  _os_log_error_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
                }
              }
            }
          }

          ++v30;
          v95 += 72;
        }

        while (v30 < word_100B5A220);
      }
    }
  }
}

void sub_10019F900(uint64_t a1)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("PhyStatsEnabled with error %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

BOOL sub_10019F974(unsigned int a1)
{
  v1 = *(*(&xmmword_100B5A1A0 + a1) + 52);
  if ((v1 & 0x200) != 0 && sub_10000C240())
  {
    v10 = **(&xmmword_100B5A1A0 + a1);
    v11 = 49;
    if (*(v10 + 55))
    {
      v11 = 57;
    }

    sub_10000AF54("Peer %: does not support CL Services", v3, v4, v5, v6, v7, v8, v9, v10 + v11);
    v12 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v15 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return (v1 & 0x200) == 0;
}

uint64_t sub_10019FA7C(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (!a1 || (*(a1 + 21) & 1) != 0 || *(a1 + 16) == 1 && !sub_1000CC63C(a2))
  {
    return 0;
  }

  v8 = &qword_100B5A228[9 * a4];
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_10019FB14(a3, v9, v10, a2);
}

uint64_t sub_10019FB14(unsigned int a1, const void *a2, unsigned int a3, uint64_t a4)
{
  if (a2 && a3)
  {
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    if (a3 > 0x20)
    {
      __strlcpy_chk();
    }

    else
    {
      __strncpy_chk();
    }

    v18 = sub_1000B6E74(a4);
    if (a3 >= 0xF)
    {
      v19 = 15;
    }

    else
    {
      v19 = a3;
    }

    v20 = memcmp("com.apple.BT.TS", a2, v19);
    result = 1;
    if ((byte_100B5A198 & 1) == 0 && !v20)
    {
      v21 = *(&xmmword_100B5A1A0 + a1);
      if (*(v21 + 48) > 8u)
      {
        if (v18)
        {
          if ((dword_100B5A90C & 0x400) != 0 && (*(v21 + 53) & 8) != 0)
          {
            return result;
          }
        }

        else if ((dword_100B5A90C & 0x800) != 0 && (*(v21 + 53) & 4) != 0)
        {
          return result;
        }

        result = sub_10000C240();
        if (result)
        {
          v38 = **(&xmmword_100B5A1A0 + a1);
          v39 = 49;
          if (*(v38 + 55))
          {
            v39 = 57;
          }

          sub_10000AF54("Peer %: ver9 We do not support TS isCentral=%d isPhone=%d isWatch=%d . %s ", v31, v32, v33, v34, v35, v36, v37, v38 + v39);
          v16 = sub_10000C050(0x51u);
          result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
LABEL_34:
            *buf = 136446210;
            v41 = sub_10000C0FC();
            v17 = buf;
            goto LABEL_35;
          }
        }
      }

      else
      {
        if (v18)
        {
          if ((dword_100B5A90C & 0x100) != 0)
          {
            return result;
          }
        }

        else if ((dword_100B5A90C & 0x80) != 0)
        {
          return result;
        }

        result = sub_10000C240();
        if (result)
        {
          v29 = **(&xmmword_100B5A1A0 + a1);
          v30 = 49;
          if (*(v29 + 55))
          {
            v30 = 57;
          }

          sub_10000AF54("Peer %: We do not support TS isCentral=%d isPhone=%d isWatch=%d . %s ", v22, v23, v24, v25, v26, v27, v28, v29 + v30);
          v16 = sub_10000C050(0x51u);
          result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            goto LABEL_34;
          }
        }
      }
    }
  }

  else
  {
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("Invalid service name query over %p", v9, v10, v11, v12, v13, v14, v15, a4);
      v16 = sub_10000C050(0x51u);
      result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        LODWORD(v42[0]) = 136446210;
        *(v42 + 4) = sub_10000C0FC();
        v17 = v42;
LABEL_35:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", v17, 0xCu);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10019FE00(__int128 *a1, char a2, __int16 a3, uint64_t a4, __int16 a5)
{
  v10 = sub_1000B7E7C(a1);
  if (v10 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Can not send accept channel, peer is invalid for handle %p", v18, v19, v20, v21, v22, v23, v24, a1);
      v25 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 414;
  }

  else
  {
    v11 = v10;
    v12 = *(*(&xmmword_100B5A1A0 + v10) + 48);
    if (v12 <= 7)
    {
      v13 = 7;
    }

    else
    {
      v13 = 8;
    }

    if (v12 <= 7)
    {
      v14 = 7;
    }

    else
    {
      v14 = 8;
    }

    v15 = sub_100007618(v14, 0xC198DF71uLL);
    if (v15)
    {
      v16 = v15;
      *v15 = 4;
      if (*(*(&xmmword_100B5A1A0 + v11) + 48) < 8u)
      {
        v17 = 2;
      }

      else
      {
        v15[2] = 0;
        v17 = 3;
      }

      v15[1] = 5;
      v35 = &v15[v17];
      *v35 = a2;
      *(v35 + 1) = a3;
      *(v35 + 3) = a5;
      if (sub_10000C240())
      {
        sub_10000AF54("Sending accept channel 0x%x(%d) / 0x%x(%d) for service %d to %p index %d", v36, v37, v38, v39, v40, v41, v42, a4);
        v43 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v46 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      return sub_100196E20(a1, v16, v13, 1);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Can not allocate memory for channel creation after acceptance", v27, v28, v29, v30, v31, v32, v33, v44);
        v34 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 106;
    }
  }
}

void sub_1001A0040(__int128 *a1, uint64_t a2, char a3)
{
  v6 = sub_1000B7E7C(a1);
  if (v6 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Can not send accept channel, peer is invalid for handle %p", v14, v15, v16, v17, v18, v19, v20, a1);
      v21 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v7 = v6;
    if (sub_10019F974(v6))
    {
      v8 = *(*(&xmmword_100B5A1A0 + v7) + 48);
      v9 = v8 <= 7 ? 5 : 6;
      v10 = v8 <= 7 ? 5 : 6;
      v11 = sub_100007618(v10, 0x5349237BuLL);
      if (v11)
      {
        v12 = v11;
        *v11 = 7;
        if (*(*(&xmmword_100B5A1A0 + v7) + 48) < 8u)
        {
          v13 = 2;
        }

        else
        {
          v11[2] = 0;
          v13 = 3;
        }

        v11[1] = 3;
        v22 = &v11[v13];
        *v22 = a2;
        v22[2] = a3;
        if (sub_10000C240())
        {
          sub_10000AF54("Sending removed service %d confirmation with error %d to %p index %d", v23, v24, v25, v26, v27, v28, v29, a2);
          v30 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v32 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        sub_100196E20(a1, v12, v9, 1);
      }
    }
  }
}

void sub_1001A0214(__int128 *a1)
{
  v40 = 0;
  v43 = 0;
  v2 = sub_1000B7E7C(a1);
  if (v2 == -1)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("sendTimeSyncCorrection peerID is invalid", v10, v11, v12, v13, v14, v15, v16, v39);
    v17 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_13:
    sub_1000E09C0();
    return;
  }

  v3 = v2;
  v4 = *(*(&xmmword_100B5A1A0 + v2) + 48);
  if (v4 <= 7)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (v4 <= 7)
  {
    v6 = 18;
  }

  else
  {
    v6 = 19;
  }

  v7 = sub_100007618(v6, 0x61574E84uLL);
  if (!v7)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("sendTimeSyncCorrection memory allocation failed", v18, v19, v20, v21, v22, v23, v24, v39);
    v25 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_13;
  }

  v8 = v7;
  sub_1001BAE20(&v40);
  sub_1001BAE4C(&v43);
  *v8 = 114;
  if (*(*(&xmmword_100B5A1A0 + v3) + 48) < 8u)
  {
    v9 = 2;
  }

  else
  {
    v8[2] = 0;
    v9 = 3;
  }

  v8[1] = v6 - v5;
  v26 = &v8[v9];
  *v26 = HIDWORD(v40);
  v27 = WORD1(v40);
  *(v26 + 2) = v40;
  *(v26 + 3) = v27;
  numer_high = HIWORD(v43.numer);
  *(v26 + 4) = v43.numer;
  *(v26 + 5) = numer_high;
  denom_high = HIWORD(v43.denom);
  *(v26 + 6) = v43.denom;
  *(v26 + 7) = denom_high;
  if (sub_10000C240())
  {
    sub_10000AF54("Sending time sync correction {%u,%u} with conversion {%u,%u} index %d", v30, v31, v32, v33, v34, v35, v36, v40);
    v37 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = sub_10000C0FC();
      *buf = 136446210;
      v42 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_100196E20(a1, v8, v6, 1);
  sub_100199E24(a1);
}

void sub_1001A0498()
{
  v0 = &byte_100B5A000;
  if (word_100B5A220)
  {
    v1 = 0;
    do
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Looping through service[%d][%d]= %d serviceType=%d", v2, v3, v4, v5, v6, v7, v8, v1);
        v9 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = sub_10000C0FC();
          *buf = 136446210;
          *&buf[4] = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
        }
      }

      v11 = &qword_100B5A228[9 * v1];
      if (*(v11 + 21))
      {
        v12 = *(v11 + 3);
        if (*(v11 + 8) >= 0x20u)
        {
          v13 = 32;
        }

        else
        {
          v13 = *(v11 + 8);
        }

        v14 = sub_100007618(v13, 0x6B018DE2uLL);
        memmove(v14, *v11, v13);
        v15 = word_100B5A19A;
        if (!word_100B5A19A)
        {
          goto LABEL_26;
        }

        v37 = v1;
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *(&xmmword_100B5A1A0 + v16);
          if (*(v18 + 16))
          {
            v19 = 0;
            v20 = 0;
            do
            {
              v21 = (*(v18 + 8) + v19);
              if (v21[8] == v13 && !memcmp(v21, v14, v13))
              {
                v22 = sub_1000B6E74(*v18);
                v23 = *(&xmmword_100B5A1A0 + v16);
                if (v22)
                {
                  v17 |= *(v23[1] + v19 + 36) == v12;
                }

                v24 = sub_1000B6E74(*v23);
                v18 = *(&xmmword_100B5A1A0 + v16);
                if (!v24)
                {
                  v17 |= sub_100198434((*(v18 + 8) + v19), v14, v13, v12);
                }
              }

              ++v20;
              v19 += 88;
            }

            while (v20 < *(v18 + 16));
            v15 = word_100B5A19A;
          }

          ++v16;
        }

        while (v16 < v15);
        v0 = &byte_100B5A000;
        v1 = v37;
        if (v17)
        {
          v1 = (v37 + 1);
        }

        else
        {
LABEL_26:
          v25 = v11[8];
          v42 = 0;
          *buf = 0u;
          v41 = 0u;
          if (*v11 && *(v11 + 8) - 1 <= 0x1F)
          {
            __strncpy_chk();
          }

          else
          {
            __strlcpy_chk();
          }

          if (sub_10000C240())
          {
            sub_10000AF54("Looping through service[%d][%d]=%s id=%d serviceType=%d ToRemove", v26, v27, v28, v29, v30, v31, v32, v1);
            v33 = sub_10000C050(0x51u);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = sub_10000C0FC();
              *v38 = 136446210;
              v39 = v34;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, " %{public}s", v38, 0xCu);
            }
          }

          sub_10000C1E8(*v11);
          v35 = *(v0 + 272) - 1;
          *(v0 + 272) = v35;
          v36 = &qword_100B5A228[9 * v35];
          memmove(v11, v36, 0x48uLL);
          *v36 = 0u;
          *(v36 + 1) = 0u;
          *(v36 + 2) = 0u;
          *(v36 + 3) = 0u;
          v36[8] = 0;
          if (v25)
          {
            v25(v14, v13, v12);
          }
        }

        sub_10000C1E8(v14);
      }

      else
      {
        v1 = (v1 + 1);
      }
    }

    while (v1 < *(v0 + 272));
  }
}

uint64_t sub_1001A0840()
{
  sub_1001A170C(&dword_100B5A920);
  sub_1001A170C(&dword_100B5A924);
  byte_100B5A928 = 0;
  sub_1001A1584();

  return sub_10002195C(sub_1001A08B0, 0, 3, &dword_100B5A920);
}

uint64_t sub_1001A08B0()
{
  if ((byte_100B5A928 & 8) == 0)
  {
    return sub_1001A08D0(5);
  }

  byte_100B5A928 |= 0x10u;
  return result;
}

void sub_1001A08D0(int a1)
{
  v1 = byte_100B5A928 & 7;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      if (a1 != 1)
      {
LABEL_17:
        if (a1 == 3)
        {

          sub_1001A15C0();
        }

        return;
      }

      sub_1001A16F0(10);
      v4 = byte_100B5A928 & 0xF8 | 3;
      goto LABEL_33;
    }

    if (v1 == 3)
    {
      return;
    }
  }

  else
  {
    if ((byte_100B5A928 & 7) == 0)
    {
      if (a1 == 1)
      {
LABEL_27:

        sub_1001A1598();
        return;
      }

      if (a1 != 2)
      {
        if (a1 != 5)
        {
          return;
        }

        sub_1001A1584();
        v2 = &dword_100B5A920;
        v3 = sub_1001A08B0;
LABEL_24:

        sub_10002195C(v3, 0, 3, v2);
        return;
      }

      sub_1001A16F0(8);
      sub_1001A15AC();
      sub_10002195C(sub_1001A0A90, 0, 3, &dword_100B5A924);
      v4 = byte_100B5A928 & 0xF8 | 1;
LABEL_33:
      byte_100B5A928 = v4;
      return;
    }

    if (v1 == 1)
    {
      if (a1 <= 3)
      {
        if (a1 == 1)
        {
          goto LABEL_27;
        }

        goto LABEL_17;
      }

      if (a1 != 4)
      {
        if (a1 != 6)
        {
          return;
        }

        sub_1001A15AC();
        v2 = &dword_100B5A924;
        v3 = sub_1001A0A90;
        goto LABEL_24;
      }

      sub_1001A16F0(9);
      v4 = byte_100B5A928 & 0xF8 | 2;
      goto LABEL_33;
    }
  }

  sub_1001A1758("LE state machine, invalid state");
}

uint64_t sub_1001A0A90()
{
  if ((byte_100B5A928 & 8) == 0)
  {
    return sub_1001A08D0(6);
  }

  byte_100B5A928 |= 0x20u;
  return result;
}

void sub_1001A0AF8()
{
  v0 = byte_100B5A928;
  v1 = byte_100B5A928 & 0xF7;
  byte_100B5A928 &= ~8u;
  if ((v0 & 0x10) != 0)
  {
    byte_100B5A928 = v0 & 0xE7;
    sub_1001A08D0(5);
    v1 = byte_100B5A928;
  }

  if ((v1 & 0x20) != 0)
  {
    byte_100B5A928 = v1 & 0xDF;
    if ((v1 & 8) != 0)
    {
      byte_100B5A928 = v1;
    }

    else
    {

      sub_1001A08D0(6);
    }
  }
}

uint64_t sub_1001A0B88()
{
  if ((byte_100B5A929 & 1) == 0)
  {
    byte_100B5A929 = 1;
    return sub_1000228C0(sub_1001A0B7C, 0, 0);
  }

  return result;
}

uint64_t sub_1001A0BC8(uint64_t a1, unsigned int a2)
{
  v3 = a1;
  if (byte_100B5A92D == 1)
  {
    a1 = sub_1000228C0(sub_100195A80, 0, 0);
  }

  if (a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (v3 + v4);
      v7 = a2 - v5;
      v25 = 0;
      v24 = 0;
      v8 = byte_100B5A92C & 7;
      if (v8 == 2)
      {
        a1 = sub_1001A0F5C((v3 + v4), v7, &v25);
        v11 = a1;
        if (a1 > 5)
        {
          if (a1 > 7)
          {
            switch(a1)
            {
              case 8:
                v12 = 2;
                break;
              case 9:
                v12 = 3;
                break;
              case 0xA:
                v12 = 4;
                break;
              default:
LABEL_54:
                sub_1001A1758("RX: unknown message id");
LABEL_55:
                byte_100B5A92C &= 0xF8u;
                if (!v11 || v11 == 6)
                {
                  goto LABEL_52;
                }

LABEL_51:
                sub_100195B04();
                goto LABEL_52;
            }

LABEL_49:
            sub_1001A08D0(v12);
LABEL_50:
            byte_100B5A92C &= 0xF8u;
            goto LABEL_51;
          }

          if (a1 != 6)
          {
            v12 = 1;
            goto LABEL_49;
          }

          sub_100195A60();
LABEL_13:
          v10 = byte_100B5A92C & 0xF8;
LABEL_24:
          byte_100B5A92C = v10;
          goto LABEL_52;
        }

        if (a1 > 2)
        {
          if ((a1 - 3) < 2)
          {
            goto LABEL_55;
          }

          if (a1 != 5)
          {
            goto LABEL_54;
          }

          sub_100195A58();
          goto LABEL_50;
        }

        if (a1)
        {
          if (a1 == 1)
          {
            if (sub_100195B2C() && !sub_1001A0AB0())
            {
              sub_1001A16F0(3);
            }
          }

          else
          {
            if (a1 != 2)
            {
              goto LABEL_54;
            }

            sub_100195A50();
          }

          goto LABEL_50;
        }
      }

      else if (v8 == 1)
      {
        a1 = sub_1001A17C8((v3 + v4), v7, &v24);
        v25 = a1;
        if (v24 == 1)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if ((byte_100B5A92C & 7) == 0)
        {
          v9 = *v6;
          if ((v9 - 2) >= 3)
          {
            if (!*v6)
            {
              a1 = nullsub_21(a1);
LABEL_42:
              v25 = 1;
              goto LABEL_52;
            }

            if (v9 != 64)
            {
              a1 = sub_100195B2C();
              if (a1)
              {
                a1 = sub_1001A0AB0();
                if (!a1)
                {
                  byte_100B5A92C = byte_100B5A92C & 0xF8 | 1;
                  v13 = sub_10000C240();
                  if (v13)
                  {
                    sub_10000AF54("xh4ds_uart_deliverbytes: garbage received when searching for new packet identifier: %x\n", v14, v15, v16, v17, v18, v19, v20, *v6);
                    v21 = sub_10000C050(0x3Au);
                    v13 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
                    if (v13)
                    {
                      v22 = sub_10000C0FC();
                      *buf = 136446466;
                      v27 = v22;
                      v28 = 1024;
                      v29 = 0xFFFF;
                      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
                    }
                  }

                  nullsub_21(v13);
                  sub_1001A16F0(3);
                }
              }

              goto LABEL_42;
            }

            sub_1001A0F48();
            v10 = byte_100B5A92C & 0xF8 | 2;
          }

          else
          {
            a1 = sub_100195B2C();
            if (!a1)
            {
              goto LABEL_42;
            }

            a1 = sub_1001A0AC8();
            if (a1)
            {
              goto LABEL_42;
            }

            v10 = byte_100B5A92C & 0xF8 | 1;
          }

          goto LABEL_24;
        }

        sub_1001A1758("RX: invalid state ");
      }

LABEL_52:
      v5 = v4 + v25;
      v4 = (v4 + v25);
    }

    while (v4 < a2);
  }

  return 0xFFFFLL;
}

uint64_t sub_1001A0F5C(unsigned __int8 *a1, unsigned int a2, _WORD *a3)
{
  if (!a2)
  {
LABEL_19:
    result = 0;
    *a3 = a2;
    return result;
  }

  v6 = 0;
  v7 = byte_100B5A930;
  while (1)
  {
    v8 = (v7 >> 4) & 7;
    if (v8 == 2)
    {
      break;
    }

    if (v8 == 1)
    {
      v11 = "tick";
      v12 = &off_100AE4BE0;
      while (*v11 != *a1)
      {
        v13 = v12[2];
        v12 += 2;
        v11 = v13;
        if (!v13)
        {
          qword_100B5A938 = 0;
          goto LABEL_20;
        }
      }

      qword_100B5A938 = v12;
      v17 = v7 & 0xFFFFFF80 | 0x21;
      byte_100B5A930 = v17;
      v10 = v17;
    }

    else if (v8)
    {
      sub_1001A1758("Scanner, no match");
      v10 = byte_100B5A930;
    }

    else
    {
      v9 = *a1;
      v10 = v7 & 0xFFFFFFF0 | (v7 + 1) & 0xF;
      byte_100B5A930 = v7 & 0xF0 | (v7 + 1) & 0xF;
      if (v9 != *(&qword_1008A3146 + (v7 & 0xF)))
      {
        goto LABEL_20;
      }

      if (((v7 + 1) & 0xFu) >= 8)
      {
        v10 = v7 & 0xFFFFFF80 | (v7 + 1) & 0xF | 0x10;
        byte_100B5A930 = v7 & 0x80 | (v7 + 1) & 0xF | 0x10;
      }
    }

LABEL_18:
    ++v6;
    ++a1;
    v7 = v10;
    if (v6 >= a2)
    {
      goto LABEL_19;
    }
  }

  v14 = *a1;
  v15 = qword_100B5A938;
  v16 = *qword_100B5A938;
  v10 = v7 & 0xFFFFFFF0 | (v7 + 1) & 0xF;
  byte_100B5A930 = v7 & 0xF0 | (v7 + 1) & 0xF;
  if (v14 == *(v16 + (v7 & 0xF)))
  {
    if (((v7 + 1) & 0xFu) >= 4)
    {
      *a3 = v6 + 1;
      byte_100B5A930 = v7 & 0x80;
      return *(v15 + 8);
    }

    goto LABEL_18;
  }

LABEL_20:
  byte_100B5A930 = v7 & 0x80;
  *a3 = v6;
  return 1;
}

void sub_1001A1100()
{
  byte_100B5A940 = 0;
  v0 = 3;
  do
  {
    qword_100B5A950 = *(&qword_100B5A950 + 4);
    dword_100B5A958 = 0;
    --v0;
  }

  while (v0);
  dword_100B5A944 = 0;
  word_100B5A948 = 0;
}

uint64_t sub_1001A113C(int a1)
{
  if (!(sub_1001A0AB0() | byte_100B5A940) && sub_100195B14() && !(qword_100B5A950 | dword_100B5A944))
  {
    return 1;
  }

  if (!sub_1001A0AB0())
  {
    sub_100195A48();
    if (!a1)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (a1)
  {
LABEL_7:
    sub_1001A11BC();
  }

  return 0;
}

uint64_t sub_1001A11BC()
{
  v0 = dword_100B5A944;
  if (!dword_100B5A944)
  {
    v0 = qword_100B5A950;
    qword_100B5A950 = *(&qword_100B5A950 + 4);
    dword_100B5A958 = 0;
    dword_100B5A944 = v0;
  }

  if (v0 > 1)
  {
    if (v0 != 2 && v0 != 3)
    {
      goto LABEL_24;
    }

    sub_10022DBCC();
    sub_100195B04();
    goto LABEL_20;
  }

  if (!v0)
  {
    v1 = byte_100B5A940;
    if (!byte_100B5A940)
    {
      return sub_100195ACC();
    }

    v2 = sub_100195B14();
    if (v2)
    {
      v3 = byte_100B5A940;
      if (qword_100B5A950 | dword_100B5A944)
      {
        goto LABEL_35;
      }

      if (byte_100B5A940)
      {
        sub_10022DBCC();
        sub_100195B04();
        v3 = byte_100B5A940 & 0xFE;
      }

      else if ((byte_100B5A940 & 2) != 0)
      {
        sub_10022DBCC();
        sub_100195B04();
        v3 = byte_100B5A940 & 0xFD;
      }

      else if ((byte_100B5A940 & 4) != 0)
      {
        sub_1001A1514();
        v3 = byte_100B5A940 & 0xFB;
      }

      else
      {
        if ((byte_100B5A940 & 8) == 0)
        {
          goto LABEL_35;
        }

        sub_1001A1514();
        v3 = byte_100B5A940 & 0xF7;
      }

      byte_100B5A940 = v3;
    }

    else
    {
      v3 = byte_100B5A940;
    }

LABEL_35:
    if (v3 == v1)
    {
      v2 = sub_100195A48();
      v3 = byte_100B5A940;
    }

    goto LABEL_26;
  }

  if (v0 == 1)
  {
    if (word_100B5A948 <= 9u || word_100B5A948 == 10)
    {
      sub_10022DBCC();
      sub_100195B04();
      ++word_100B5A948;
      if (dword_100B5A944)
      {
        goto LABEL_24;
      }
    }

    else
    {
      sub_10022DBCC();
      sub_100195B04();
      word_100B5A948 = 0;
    }

LABEL_20:
    v4 = qword_100B5A950;
    qword_100B5A950 = *(&qword_100B5A950 + 4);
    dword_100B5A958 = 0;
    dword_100B5A944 = v4;
    if (!v4)
    {
      goto LABEL_25;
    }
  }

LABEL_24:
  v2 = (sub_1001A0B88)();
LABEL_25:
  v3 = byte_100B5A940;
LABEL_26:
  if (v3)
  {
    sub_1001A0B88(v2);
  }

  return sub_100195ACC();
}

void sub_1001A1498()
{
  sub_10022DBCC();
  sub_100195B04();
  sub_100195A38();
}

uint64_t sub_1001A15DC(uint64_t result)
{
  if (dword_100B5A944 != result || qword_100B5A950 != 0)
  {
    v2 = &qword_100B5A950 + 1;
    v3 = -2;
    while (*(v2 - 1) != result)
    {
      ++v2;
      if (++v3 == 1)
      {
        goto LABEL_14;
      }
    }

    if (v3)
    {
      v4 = -v3;
      do
      {
        *(v2 - 1) = *v2;
        ++v2;
        --v4;
      }

      while (v4);
    }

    dword_100B5A958 = 0;
LABEL_14:
    v5 = 0;
    while (*(&qword_100B5A950 + v5))
    {
      v5 += 4;
      if (v5 == 12)
      {
        return sub_1001A0B88();
      }
    }

    *(&qword_100B5A950 + v5) = result;
    return sub_1001A0B88();
  }

  return result;
}

void sub_1001A16BC()
{
  sub_1001A0BBC();
  sub_1001A1100();
  sub_100195548();
  sub_1001A0840();

  sub_1001A0B70();
}

void sub_1001A16F0(int a1)
{
  if (a1 == 10)
  {
    sub_1001A16BC();
  }

  else if (a1 == 5)
  {
    sub_1001A1E60();
  }
}

uint64_t sub_1001A170C(unsigned int *a1)
{
  result = sub_10002260C(*a1);
  if (result)
  {
    v3 = *a1;

    return sub_10002242C(v3);
  }

  return result;
}

void sub_1001A1758(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("%s", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100810070(v9);
    }
  }

  sub_1001A16BC();
}

uint64_t sub_1001A17C8(char *__src, int a2, _BYTE *a3)
{
  if (!a2)
  {
    LOWORD(v6) = 0;
    return v6;
  }

  v4 = a2;
  v6 = 0;
  v7 = qword_100B5A960;
  while (1)
  {
    v8 = *(v7 + 652);
    if (v8 <= 1)
    {
      if (v8 == 1)
      {
        v12 = *__src;
        if ((v12 - 1) >= 4u)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("unknown packet type received %d", v30, v31, v32, v33, v34, v35, v36, v12);
            v37 = sub_10000C050(0x3Au);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v61 = sub_10000C0FC();
              *buf = 136446466;
              v66 = v61;
              v67 = 1024;
              v68 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          v38 = qword_100B5A960;
          *(qword_100B5A960 + 652) = 4;
          *(v38 + 656) = 1;
          v13 = 5;
        }

        else
        {
          *(v7 + 4) = 0x2000300040003uLL >> (16 * ((v12 - 1) & 0xF));
          *(v7 + 650) = v12;
          *(v7 + 6) = 0;
          *(v7 + 652) = 2;
          v13 = 10;
        }

        sub_1001A242C(v13);
        v7 = qword_100B5A960;
        if (*(qword_100B5A960 + 652) == 2)
        {
          --v4;
          ++v6;
          ++__src;
        }

        goto LABEL_57;
      }

      if (!v8)
      {
LABEL_60:
        *a3 = 1;
        LOWORD(v6) = v6 + v4;
        return v6;
      }

      goto LABEL_26;
    }

    if (v8 != 2)
    {
      break;
    }

    v14 = 0;
    v15 = *(v7 + 4);
    if (v15 >= (v4 - 1))
    {
      v16 = (v4 - 1);
    }

    else
    {
      v16 = *(v7 + 4);
    }

    v17 = v16 + 1;
    v18 = __src;
    while (v15)
    {
      v19 = *v18++;
      v20 = *(v7 + 6);
      *(v7 + 10 + v20) = v19;
      *(v7 + 6) = v20 + 1;
      LOWORD(v15) = v15 - 1;
      *(v7 + 4) = v15;
      if (++v14 >= v4)
      {
        if (v15)
        {
          v16 = v4;
          if (v17 != v4)
          {
            sub_1000D660C();
            v16 = v17;
          }

          goto LABEL_55;
        }

        ++v16;
        break;
      }
    }

    *(v7 + 652) = 3;
    v39 = *(v7 + 650);
    if (v39 > 2)
    {
      if (v39 != 4)
      {
        if (v39 != 3)
        {
LABEL_45:
          if (sub_10000C240())
          {
            sub_10000AF54("Invalid packet type %d", v41, v42, v43, v44, v45, v46, v47, *(qword_100B5A960 + 650));
            v48 = sub_10000C050(0x3Au);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              v63 = sub_10000C0FC();
              *buf = 136446466;
              v66 = v63;
              v67 = 1024;
              v68 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          v49 = qword_100B5A960;
          *(qword_100B5A960 + 652) = 4;
          *(v49 + 656) = 1;
          sub_1001A242C(5);
          sub_1000D660C();
          v16 = 0;
          goto LABEL_55;
        }

LABEL_44:
        v40 = *(v7 + 12);
        goto LABEL_50;
      }

      v40 = *(v7 + 11);
    }

    else
    {
      if (v39 == 1)
      {
        goto LABEL_44;
      }

      if (v39 != 2)
      {
        goto LABEL_45;
      }

      v40 = *(v7 + 12);
    }

LABEL_50:
    *(v7 + 4) = v40;
    v50 = *(v7 + 6) + v40;
    *(v7 + 8) = v50;
    if (v50 >= 0x281u)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("RxPacketHeader - bogus packet length (%d)", v51, v52, v53, v54, v55, v56, v57, *(qword_100B5A960 + 8));
        v58 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v62 = sub_10000C0FC();
          *buf = 136446466;
          v66 = v62;
          v67 = 1024;
          v68 = 0xFFFF;
          _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
        }
      }

      v59 = qword_100B5A960;
      *(qword_100B5A960 + 652) = 4;
      *(v59 + 656) = 1;
      sub_1001A242C(5);
    }

LABEL_55:
    v6 += v16;
    v7 = qword_100B5A960;
    if (!*(qword_100B5A960 + 4))
    {
      goto LABEL_61;
    }

    __src += v16;
    v4 -= v16;
LABEL_57:
    if (!v4)
    {
      return v6;
    }
  }

  if (v8 != 3)
  {
    if (v8 == 4)
    {
      goto LABEL_60;
    }

LABEL_26:
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid receive state %d", v21, v22, v23, v24, v25, v26, v27, *(qword_100B5A960 + 652));
      v28 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v60 = sub_10000C0FC();
        *buf = 136446466;
        v66 = v60;
        v67 = 1024;
        v68 = 0xFFFF;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
      }
    }

    v29 = qword_100B5A960;
    *(qword_100B5A960 + 652) = 4;
    *(v29 + 656) = 1;
    sub_1001A242C(5);
    sub_1000D660C();
    v7 = qword_100B5A960;
    goto LABEL_57;
  }

  if (v4 >= *(v7 + 4))
  {
    v9 = *(v7 + 4);
  }

  else
  {
    v9 = v4;
  }

  memmove((v7 + *(v7 + 6) + 10), __src, v9);
  v7 = qword_100B5A960;
  v10 = *(qword_100B5A960 + 4);
  *(qword_100B5A960 + 6) += v9;
  v6 += v9;
  v11 = v10 - v9;
  *(v7 + 4) = v11;
  if (v11)
  {
    v4 -= v9;
    __src += v9;
    goto LABEL_57;
  }

LABEL_61:
  *a3 = 1;
  if (*(v7 + 656) == 1)
  {
    sub_1001A1D18();
  }

  else
  {
    sub_1001A1DE0();
  }

  return v6;
}

void sub_1001A1D18()
{
  v0 = qword_100B5A960;
  if (*(qword_100B5A960 + 650) != 4)
  {
    goto LABEL_9;
  }

  if (*(qword_100B5A960 + 8) != 6)
  {
    goto LABEL_9;
  }

  v1 = 0;
  LOBYTE(v2) = 1;
  v3 = &byte_1008A3173;
  do
  {
    v4 = (*(v3 - 1) & *(qword_100B5A960 + 10 + v1));
    v5 = *v3;
    v3 += 2;
    v2 = (v4 == v5) & v2;
    ++v1;
  }

  while (v1 != 6);
  if (v2)
  {
    *(qword_100B5A960 + 656) = 0;
    *(v0 + 652) = 1;
    *(v0 + 4) = 5;
    sub_1001A242C(0x7FFF);

    sub_10024D814();
  }

  else
  {
LABEL_9:
    sub_1001A242C(5);
    *(qword_100B5A960 + 652) = 4;
  }
}

uint64_t sub_1001A1DE0()
{
  if (*(qword_100B5A960 + 8) >= 0x281u)
  {
    sub_1000D660C();
  }

  v2[1] = 0;
  v2[0] = mach_continuous_time();
  sub_10000394C(*(qword_100B5A960 + 650), (qword_100B5A960 + 10), *(qword_100B5A960 + 8), v2);
  v0 = qword_100B5A960;
  *(qword_100B5A960 + 652) = 1;
  *(v0 + 4) = 5;
  return sub_1001A242C(0x7FFF);
}

uint64_t sub_1001A1E60()
{
  v0 = 0;
  LOBYTE(v1) = 1;
  do
  {
    v2 = v1;
    v1 = *(&dword_100B5A994 + v0);
    if (*(&dword_100B5A994 + v0))
    {
      byte_100B5A990 = *(&word_100B5A998 + v0);
      v3 = qword_100B5A9A0[v0];
      qword_100B5A970 = v3;
      qword_100B5A978 = v3;
      word_100B5A988 = v1;
      *(&dword_100B5A994 + v0) = 0;
      goto LABEL_7;
    }

    v0 = &_mh_execute_header.magic + 1;
  }

  while ((v2 & 1) != 0);
  v1 = word_100B5A988;
  if (!word_100B5A988)
  {
    return 0;
  }

  v3 = qword_100B5A978;
LABEL_7:
  if (v1 >= word_100B5A980)
  {
    v4 = word_100B5A980;
  }

  else
  {
    v4 = v1;
  }

  memmove(qword_100B5A968, v3, v4);
  qword_100B5A978 += v4;
  word_100B5A988 -= v4;
  byte_100B5A98C = 1;
  sub_10022DBCC();
  return 0;
}

uint64_t sub_1001A1F54(int a1, __int16 a2, int a3)
{
  if (*(qword_100B5A960 + 656))
  {
    return 129;
  }

  if (a1 == 2)
  {
    v7 = 5;
  }

  else
  {
    v7 = 4;
  }

  if (sub_1001A113C(1) && byte_100B5A98C != 1)
  {
    if (!qword_100B5A968)
    {
      sub_1000D660C();
    }

    v21 = word_100B5A980;
    if (!word_100B5A980)
    {
      sub_1000D660C();
      v21 = word_100B5A980;
    }

    v22 = qword_100B5A968;
    result = 105;
    if (qword_100B5A968 && v21)
    {
      if (a3 + v7 <= v21)
      {
        *qword_100B5A968 = a1;
        *(v22 + 1) = a2;
        *(v22 + 3) = a3;
        if (a3)
        {
          sub_10001F6DC((v22 + v7));
        }

        qword_100B5A978 = 0;
        word_100B5A988 = 0;
      }

      else
      {
        v23 = v7 - 1;
        word_100B5A988 = v23 + a3;
        *qword_100B5A968 = a1;
        v24 = sub_100007618((v23 + a3), 0xEC0CE362uLL);
        qword_100B5A970 = v24;
        if (!v24)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("OI_Malloc failed, unable to segment packet", v25, v26, v27, v28, v29, v30, v31, v33);
            v32 = sub_10000C050(0x3Au);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          return 106;
        }

        qword_100B5A978 = v24;
        *v24 = a2;
        *(v24 + 1) = a3;
        if (a3)
        {
          sub_10001F6DC(&v24[v23]);
        }
      }

      byte_100B5A990 = a1;
      byte_100B5A98C = 1;
      sub_10022DBCC();
      sub_100195B04();
      return 0;
    }
  }

  else
  {
    v8 = 0;
    for (i = 1; ; i = 0)
    {
      v10 = i;
      if (!*(&dword_100B5A994 + v8))
      {
        break;
      }

      v8 = &_mh_execute_header.magic + 1;
      if ((v10 & 1) == 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCIIfc_Send_Req, backlog queue is full, busy fail", v11, v12, v13, v14, v15, v16, v17, v33);
          v18 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        sub_1000D660C();
        return 118;
      }
    }

    v19 = sub_100007618(a3 + v7, 0x6997F564uLL);
    v20 = v19;
    *v19 = a1;
    *(v19 + 1) = a2;
    v19[3] = a3;
    if (a1 == 2)
    {
      v19[4] = BYTE1(a3);
    }

    if (a3)
    {
      sub_10001F6DC(&v19[v7]);
    }

    result = 0;
    *(&word_100B5A998 + v8) = a1;
    *(&dword_100B5A994 + v8) = a3 + v7;
    qword_100B5A9A0[v8] = v20;
  }

  return result;
}

void sub_1001A21FC(uint64_t a1, __int16 a2, int a3)
{
  qword_100B5A968 = a1;
  word_100B5A980 = a2;
  if (a3 == 1216)
  {
    return;
  }

  v23 = 0;
  v24 = 0;
  v22 = 0;
  if (byte_100B5A98C)
  {
    if (!a3)
    {
      v3 = word_100B5A988;
      if (word_100B5A988)
      {
LABEL_26:
        if (v3 >= word_100B5A980)
        {
          v20 = word_100B5A980;
        }

        else
        {
          v20 = v3;
        }

        v21 = qword_100B5A978;
        memmove(qword_100B5A968, qword_100B5A978, v20);
        qword_100B5A978 = v21 + v20;
        word_100B5A988 -= v20;
        byte_100B5A98C = 1;
        sub_10022DBCC();
        return;
      }
    }

    byte_100B5A98C = 0;
    LODWORD(v24) = a3;
    BYTE4(v24) = byte_100B5A990;
    v23 = &v24;
    LOWORD(v22) = 8;
    v4 = sub_1000228C0(sub_1001A2810, &v22, 0);
    if (v4)
    {
      v5 = v4;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_Dispatch_RegisterFunc failed %!", v6, v7, v8, v9, v10, v11, v12, v5);
        v13 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    if (qword_100B5A970)
    {
      sub_10000C1E8(qword_100B5A970);
      qword_100B5A970 = 0;
      word_100B5A988 = 0;
    }

    v14 = 0;
    LOBYTE(v3) = 1;
    while (1)
    {
      v15 = v3;
      v3 = *(&dword_100B5A994 + v14);
      if (*(&dword_100B5A994 + v14))
      {
        break;
      }

      v14 = &_mh_execute_header.magic + 1;
      if ((v15 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_25:
    byte_100B5A990 = *(&word_100B5A998 + v14);
    qword_100B5A970 = qword_100B5A9A0[v14];
    qword_100B5A978 = qword_100B5A970;
    word_100B5A988 = v3;
    *(&dword_100B5A994 + v14) = 0;
    goto LABEL_26;
  }

  v16 = 0;
  v17 = 0;
  do
  {
    v18 = *(&dword_100B5A994 + v17);
    if (v16)
    {
      break;
    }

    v16 = 1;
    v17 = 1;
  }

  while (!v18);
  if (v18 && sub_1001A113C(0))
  {
    v14 = 0;
    LOBYTE(v3) = 1;
    while (1)
    {
      v19 = v3;
      v3 = *(&dword_100B5A994 + v14);
      if (*(&dword_100B5A994 + v14))
      {
        goto LABEL_25;
      }

      v14 = 1;
      if ((v19 & 1) == 0)
      {
LABEL_23:
        v3 = word_100B5A988;
        if (word_100B5A988)
        {
          goto LABEL_26;
        }

        return;
      }
    }
  }
}

uint64_t sub_1001A242C(int a1)
{
  v2 = sub_10002260C(*qword_100B5A960);
  v3 = qword_100B5A960;
  if (v2)
  {
    v4 = *qword_100B5A960;

    return sub_1000B7ADC(v4, a1);
  }

  else
  {

    return sub_10002195C(sub_1001A24B0, 0, a1, v3);
  }
}

void sub_1001A24B0()
{
  v0 = qword_100B5A960;
  v1 = *(qword_100B5A960 + 652);
  if (v1 < 2)
  {
    if (*(qword_100B5A960 + 656) == 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("timed out waiting for reset response", v11, v12, v13, v14, v15, v16, v17, v28);
        v18 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v1 - 2 < 2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Timed out while receiving a packet", v2, v3, v4, v5, v6, v7, v8, v28);
      v9 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v10 = qword_100B5A960;
    *(qword_100B5A960 + 652) = 4;
    *(v10 + 656) = 1;
    sub_1001A242C(5);
    return;
  }

  if (v1 == 4)
  {
    if (*(qword_100B5A960 + 656) == 1)
    {

LABEL_16:
      sub_1001A2678();
      return;
    }

    *(qword_100B5A960 + 652) = 1;
    *(v0 + 4) = 5;
LABEL_22:

    sub_1001A242C(0x7FFFLL);
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid receive state %d", v19, v20, v21, v22, v23, v24, v25, *(qword_100B5A960 + 652));
    v26 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  v27 = qword_100B5A960;
  *(qword_100B5A960 + 652) = 4;
  *(v27 + 656) = 1;
  sub_1001A242C(5);
  sub_1000D660C();
}

uint64_t sub_1001A2678()
{
  *(qword_100B5A960 + 656) = 0;
  v0 = sub_10001F958();
  v1 = qword_100B5A960;
  *(qword_100B5A960 + 656) = 1;
  if (v0)
  {
    v2 = v0;
    if (sub_10000C240())
    {
      sub_10000AF54("startResynchronize, OI_HCIIfc_Send failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
      v10 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return sub_1001A242C(5);
  }

  else
  {
    *(v1 + 652) = 1;
    *(v1 + 4) = 5;

    return sub_1001A242C(20);
  }
}

uint64_t sub_1001A2754()
{
  qword_100B5A9A0[0] = 0;
  *algn_100B5A9A8 = 0;
  word_100B5A998 = 0;
  dword_100B5A994 = 0;
  result = sub_10022DB60();
  if (!result)
  {
    qword_100B5A960 = sub_1001BBBD8(0x294uLL, 0x100004038BAECBDuLL);
    sub_1001A16BC();
    v1 = qword_100B5A960;
    *(qword_100B5A960 + 652) = 1;
    *(v1 + 4) = 5;
    sub_1001A242C(0x7FFF);
    return 109;
  }

  return result;
}

uint64_t sub_1001A27DC()
{
  if (sub_1001A113C(1))
  {
    return 0;
  }

  else
  {
    return 109;
  }
}

void sub_1001A2810(uint64_t a1)
{
  if ((*(qword_100B5A960 + 656) & 1) == 0)
  {
    sub_100256D50(*(*(a1 + 8) + 4), **(a1 + 8));
  }
}

uint64_t sub_1001A2834()
{
  if (sub_100195B48())
  {
    return 0;
  }

  sub_1001A1498();
  return 118;
}

uint64_t sub_1001A2860()
{
  result = dword_100B5A9B0;
  if (dword_100B5A9B0)
  {
    return sub_1000B7ADC(dword_100B5A9B0, word_100BC91F4);
  }

  return result;
}

uint64_t sub_1001A2890(int a1)
{
  result = sub_10002195C(sub_1001A2D80, 0, a1, &dword_100BC91F8);
  if (result)
  {
    sub_1000C52F4(result);
    return sub_1001A28D0();
  }

  return result;
}

void sub_1001A28D0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2 < 2)
  {
    return;
  }

  v2 = *a1;
  if (v2 <= 3)
  {
    switch(v2)
    {
      case 1u:
        if (a2 != 2 || a1[1] != 126)
        {
          return;
        }

        v4 = 0;
        v5 = 0;
        v6 = 1;
        break;
      case 2u:
        if (a2 != 2 || a1[1] != 125)
        {
          return;
        }

        v4 = 0;
        v5 = 0;
        v6 = 2;
        break;
      case 3u:
        v3 = a1[1];
        if (v3 == 252)
        {
          v4 = 0;
          v5 = 0;
          v6 = 3;
          break;
        }

        goto LABEL_22;
      default:
        return;
    }
  }

  else
  {
    if (*a1 <= 5u)
    {
      if (v2 != 4)
      {
        if (v2 != 5)
        {
          return;
        }

LABEL_24:
        if (a2 != 2 || a1[1] != 250)
        {
          return;
        }

        v5 = 0;
        v6 = 5;
        v4 = 1;
        goto LABEL_33;
      }

      v3 = a1[1];
LABEL_22:
      if (v3 == 123)
      {
        v4 = 0;
        v5 = 0;
        v6 = 4;
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (v2 == 6)
    {
      if (a2 != 2 || a1[1] != 249)
      {
        return;
      }

      v4 = 0;
      v6 = 6;
      v5 = 1;
    }

    else
    {
      if (v2 != 7 || a2 != 2 || a1[1] != 120)
      {
        return;
      }

      v4 = 0;
      v5 = 0;
      v6 = 7;
    }
  }

LABEL_33:
  if (dword_100BC91EC > 1)
  {
    if (dword_100BC91EC != 2)
    {
      if (dword_100BC91EC != 3)
      {
        if (dword_100BC91EC != 4 || !v5)
        {
          return;
        }

        v7 = 2;
LABEL_56:
        dword_100BC91EC = v7;
        return;
      }

      if (!v4)
      {
        return;
      }

      dword_100BC91EC = 2;
LABEL_57:
      v8 = &unk_1008A3182;
      goto LABEL_58;
    }

    if (v6 > 4)
    {
      if (v6 != 5)
      {
        if (v6 != 7)
        {
          return;
        }

        v7 = 3;
        goto LABEL_56;
      }

      goto LABEL_57;
    }

    if (v6 != 1)
    {
      if (v6 != 3)
      {
        return;
      }

      goto LABEL_47;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Transport resynching", v22, v23, v24, v25, v26, v27, v28, v30);
      v29 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    dword_100BC91EC = 0;
    sub_1001A39C4();
    sub_1001A2F3C();
    byte_100B5A9B7 = 1;
LABEL_83:
    sub_1001A2890(1);
    return;
  }

  if (!dword_100BC91EC)
  {
    if (v6 == 2)
    {
      dword_100BC91EC = 1;
      if (word_100BC91E8)
      {
        v10 = 8;
      }

      else
      {
        v10 = 0;
      }

      if (HIBYTE(word_100BC91E8))
      {
        v11 = 16;
      }

      else
      {
        v11 = 0;
      }

      v8 = &word_100B5A9B4;
      word_100B5A9B4 = -1021;
      byte_100B5A9B6 = v10 | byte_100BC91F2 | v11;
      v9 = 3;
LABEL_59:

      sub_1001A4280(v8, v9, 15);
      return;
    }

    goto LABEL_51;
  }

  if (dword_100BC91EC != 1)
  {
    return;
  }

  if (v6 != 4)
  {
    if (v6 == 3)
    {
LABEL_47:
      v8 = &unk_1008A3180;
LABEL_58:
      v9 = 2;
      goto LABEL_59;
    }

LABEL_51:
    if (v6 != 1)
    {
      return;
    }

    v8 = &unk_1008A317E;
    goto LABEL_58;
  }

  dword_100BC91EC = 2;
  v12 = a1[2];
  if (word_100BC91E8 == 1 && (a1[2] & 8) == 0)
  {
    LOBYTE(word_100BC91E8) = 0;
  }

  if ((v12 & 0x10) == 0)
  {
    HIBYTE(word_100BC91E8) = 0;
  }

  v13 = v12 & 7;
  byte_100BC91F3 = v13;
  if (v13 > byte_100BC91F2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Configuration failed - device is not configuring link correctly", v14, v15, v16, v17, v18, v19, v20, v30);
      v21 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    dword_100BC91EC = 0;
    goto LABEL_83;
  }

  if (byte_100B5A9B7 == 1)
  {
    byte_100B5A9B7 = 0;

    sub_10024D814();
  }
}

uint64_t sub_1001A2CA0()
{
  dword_100B5A9B0 = 0;
  dword_100BC91EC = 0;
  byte_100B5A9B7 = 0;
  result = sub_10022DB60();
  if (!result)
  {
    byte_100BC91F2 = 4;
    word_100BC91F0 = 1024;
    word_100BC91E8 = 256;
    result = sub_1001A36B8();
    if (!result)
    {
      result = sub_1001A2EAC();
      if (!result)
      {
        dword_100BC91EC = 0;
        sub_1001A2890(1);
        return 109;
      }
    }
  }

  return result;
}

uint64_t sub_1001A2D24()
{
  if (dword_100BC91EC == 2)
  {
    return 0;
  }

  else
  {
    return 109;
  }
}

void sub_1001A2D80()
{
  if (dword_100BC91EC != dword_100B5A9BC)
  {
    dword_100B5A9B8 = 0;
    dword_100B5A9BC = dword_100BC91EC;
    if (!dword_100BC91EC)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (dword_100B5A9B8 < 26)
  {
    ++dword_100B5A9B8;
    if (!dword_100BC91EC)
    {
LABEL_4:
      v0 = 2;
      sub_1001A4280(&unk_1008A3186, 2uLL, 15);
LABEL_10:

      sub_1001A2890(v0);
      return;
    }

LABEL_6:
    if (dword_100BC91EC == 1)
    {
      sub_1001A4280(&word_100B5A9B4, 3uLL, 15);
      v0 = 2;
    }

    else
    {
      if (dword_100BC91EC != 4)
      {
        return;
      }

      sub_1001A4280(&unk_1008A3184, 2uLL, 15);
      v0 = 1;
    }

    goto LABEL_10;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("H5 transport error sending link packet: retry limit exceeded, giving up", v1, v2, v3, v4, v5, v6, v7, v9);
    v8 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_1000C52F4(112);
  sub_1001A2EA4();
}

uint64_t sub_1001A2EAC()
{
  if (!word_100BC91F0)
  {
    return 103;
  }

  qword_100B5A9C0 = 0;
  byte_100B5A9C8 = 0;
  word_100B5A9CA = word_100BC91F0 + 6;
  qword_100B5A9C0 = sub_1001BBBD8(0x10uLL, 0x1010040AEFA612BuLL);
  v0 = sub_1001BBBD8(word_100B5A9CA, 0x75E1F57CuLL);
  result = 0;
  *qword_100B5A9C0 = v0;
  return result;
}

uint64_t sub_1001A2F3C()
{
  byte_100B5A9C8 = 0;
  *(qword_100B5A9C0 + 12) = 0;
  return 0;
}

uint64_t sub_1001A2F58(unsigned __int8 *a1, uint64_t a2)
{
  v2 = qword_100B5A9C0;
  if (a2)
  {
    v3 = a1;
    while (1)
    {
      v4 = (a2 - 1);
      v6 = *v3++;
      v5 = v6;
      v7 = *(v2 + 3);
      if (v7 > 1)
      {
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            if (v5 != 192)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }

LABEL_16:
          sub_1000D660C();
          v2 = qword_100B5A9C0;
          goto LABEL_72;
        }

        *(v2 + 3) = 1;
        if (v5 == 221)
        {
          v18 = *v2;
          v19 = *(v2 + 4);
          *(v2 + 4) = v19 + 1;
          v20 = -37;
        }

        else
        {
          if (v5 != 220)
          {
            *(v2 + 3) = 0;
            v3 = a1;
            v4 = a2;
            goto LABEL_72;
          }

          v18 = *v2;
          v19 = *(v2 + 4);
          *(v2 + 4) = v19 + 1;
          v20 = -64;
        }

        *(v18 + v19) = v20;
      }

      else
      {
        if (!v7)
        {
          if (v5 == 192)
          {
            v17 = 1;
          }

          else
          {
            v17 = 2;
          }

          *(v2 + 3) = v17;
          *(v2 + 4) = 0;
          goto LABEL_72;
        }

        if (v7 != 1)
        {
          goto LABEL_16;
        }

        if (v5 == 219)
        {
          *(v2 + 3) = 3;
        }

        else
        {
          if (v5 == 192)
          {
            v89 = 0;
            v8 = *(v2 + 4);
            if (v8 <= 3)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("Short packet %@", v9, v10, v11, v12, v13, v14, v15, *v2);
                v16 = sub_10000C050(0x3Au);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_42;
                }
              }

LABEL_70:
              v2 = qword_100B5A9C0;
LABEL_71:
              *(v2 + 3) = 0;
              goto LABEL_72;
            }

            v23 = *v2;
            v24 = **v2;
            v25 = (*v2)[1];
            v26 = (*v2)[2];
            if (((v25 + **v2 + v26) ^ (*v2)[3]) != 0xFF)
            {
              if (!sub_10000C240())
              {
                goto LABEL_70;
              }

              sub_10000AF54("Header checksum error", v27, v28, v29, v30, v31, v32, v33, v87);
              v16 = sub_10000C050(0x3Au);
              if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_70;
              }

              goto LABEL_42;
            }

            if ((v24 & 0x40) != 0)
            {
              LOWORD(v8) = v8 - 2;
              *(v2 + 4) = v8;
              v34 = &v23[v8];
              v35 = v23[1];
              v26 = v23[2];
            }

            else
            {
              v34 = 0;
              v35 = (*v2)[1];
            }

            v36 = (v35 >> 4) | (16 * v26);
            if (v8 - 4 != v36)
            {
              if (!sub_10000C240())
              {
                goto LABEL_70;
              }

              sub_10000AF54("Wrong packet length header says %d read %d bytes", v38, v39, v40, v41, v42, v43, v44, v36);
              v16 = sub_10000C050(0x3Au);
              if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_70;
              }

              goto LABEL_42;
            }

            v37 = v25 & 0xF;
            if (v37 == 15)
            {
              sub_1001A28D0(v23 + 4, (v35 >> 4) | (16 * v26));
              goto LABEL_70;
            }

            if (dword_100BC91EC != 2)
            {
              goto LABEL_70;
            }

            sub_1001A2860();
            if ((v24 & 0x40) != 0)
            {
              if ((word_100BC91E8 & 0x100) != 0)
              {
                v88 = -1;
                sub_1003046D8(*v2, *(v2 + 4), &v88);
                sub_100304714(v88, &v89);
                if (__PAIR64__(v34[1], *v34) == __PAIR64__(HIBYTE(v89), v89))
                {
                  goto LABEL_45;
                }

                if (!sub_10000C240())
                {
                  goto LABEL_70;
                }

                sub_10000AF54("Data integrity error - discarding packet\n%@", v46, v47, v48, v49, v50, v51, v52, *v2);
                v16 = sub_10000C050(0x3Au);
                if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_70;
                }
              }

              else
              {
                if (!sub_10000C240())
                {
                  goto LABEL_70;
                }

                sub_10000AF54("Data integrity bit not allowed", v53, v54, v55, v56, v57, v58, v59, v87);
                v16 = sub_10000C050(0x3Au);
                if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_70;
                }
              }

              goto LABEL_42;
            }

LABEL_45:
            sub_1001A45D4((v24 >> 3) & 7);
            if (v37 > 2)
            {
              if (v37 != 3)
              {
                if (v37 != 4)
                {
                  goto LABEL_74;
                }

                goto LABEL_59;
              }

              if ((v24 & 0x80000000) != 0)
              {
                if (!sub_10000C240())
                {
                  goto LABEL_70;
                }

                sub_10000AF54("Reliable flag not expected on SCO data packet", v78, v79, v80, v81, v82, v83, v84, v87);
                v16 = sub_10000C050(0x3Au);
                if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_70;
                }

                goto LABEL_42;
              }

              *&buf[8] = 0;
              *buf = mach_continuous_time();
              buf[8] = 0;
              v69 = (*v2 + 4);
              v70 = 3;
            }

            else
            {
              if ((v37 - 1) >= 2)
              {
                if (!v37)
                {
                  goto LABEL_70;
                }

LABEL_74:
                if (!sub_10000C240())
                {
                  goto LABEL_70;
                }

                sub_10000AF54("Unknown packet type", v71, v72, v73, v74, v75, v76, v77, v87);
                v16 = sub_10000C050(0x3Au);
                if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_70;
                }

LABEL_42:
                v45 = sub_10000C0FC();
                *buf = 136446466;
                *&buf[4] = v45;
                *&buf[12] = 1024;
                *&buf[14] = 0xFFFF;
                _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
                goto LABEL_70;
              }

LABEL_59:
              if ((v24 & 0x80000000) == 0)
              {
                if (sub_10000C240())
                {
                  sub_10000AF54("Data packets expected to have reliable flag set", v60, v61, v62, v63, v64, v65, v66, v87);
                  v67 = sub_10000C050(0x3Au);
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                  {
                    v85 = sub_10000C0FC();
                    *buf = 136446466;
                    *&buf[4] = v85;
                    *&buf[12] = 1024;
                    *&buf[14] = 0xFFFF;
                    _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
                  }
                }
              }

              v68 = v24 & 7;
              if ((v24 & 7) != byte_100B5A9C8)
              {
                if (((~byte_100B5A9C8 + v24) & 7u) >= byte_100BC91F3)
                {
                  sub_1001A46E0(v68);
                }

                goto LABEL_70;
              }

              byte_100B5A9C8 = (v24 + 1) & 7;
              sub_1001A46E0(v68);
              *&buf[8] = 0;
              *buf = mach_continuous_time();
              buf[8] = 0;
              v69 = (*v2 + 4);
              v70 = v37;
            }

            sub_10000394C(v70, v69, v36, buf);
            goto LABEL_70;
          }

          v21 = *(v2 + 4);
          if (v21 == word_100B5A9CA)
          {
            goto LABEL_71;
          }

          v22 = *v2;
          *(v2 + 4) = v21 + 1;
          *(v22 + v21) = v5;
        }
      }

LABEL_72:
      a2 = v4;
      a1 = v3;
      if (!v4)
      {
        v2 = qword_100B5A9C0;
        return word_100B5A9CA - *(v2 + 4);
      }
    }
  }

  return word_100B5A9CA - *(v2 + 4);
}

uint64_t sub_1001A36B8()
{
  if (!word_100BC91F0)
  {
    return 103;
  }

  qword_100B5A9D0 = 0;
  qword_100B5A9D8 = 0;
  qword_100B5A9E0 = 0;
  qword_100B5A9E8 = 0;
  qword_100B5A9F0 = 0;
  qword_100B5A9F8 = 0;
  word_100B5AA00 = 0;
  byte_100B5AA02 = 0;
  dword_100BC91FC = 0;
  dword_100B5AA04 = 0;
  byte_100B5AA08 = 0;
  dword_100B5AA0C = 0;
  byte_100B5AA10 = 0;
  byte_100B5AA11 = 0;
  if (byte_100BC91F2)
  {
    v0 = 0;
    v1 = 0;
    do
    {
      qword_100B5A9E0 = sub_1001BBBD8(0x18uLL, 0x1030040A9CFD972uLL);
      v2 = sub_1001BBBD8(word_100BC91F0, 0xB98D728AuLL);
      v3 = qword_100B5A9E0;
      *(qword_100B5A9E0 + 16) = v2;
      *v3 = v0;
      ++v1;
      v0 = v3;
    }

    while (v1 < byte_100BC91F2);
  }

  qword_100B5A9E8 = sub_1001BBBD8(0x18uLL, 0x1030040A9CFD972uLL);
  *(qword_100B5A9E8 + 16) = sub_1001BBBD8(0x102uLL, 0x1ED1D232uLL);
  qword_100B5A9F0 = sub_1001BBBD8(0x18uLL, 0x1030040A9CFD972uLL);
  *(qword_100B5A9F0 + 16) = sub_1001BBBD8(0x102uLL, 0x4CFE145AuLL);
  result = sub_10002195C(sub_1001A3890, 0, 0x7FFF, &dword_100B5AA04);
  if (!result)
  {

    return sub_10002195C(sub_1001A3964, 0, 0x7FFF, &dword_100B5AA0C);
  }

  return result;
}

void sub_1001A3890()
{
  byte_100B5AA08 = 0;
  v0 = sub_10002195C(sub_1001A3890, 0, 0x7FFF, &dword_100B5AA04);
  if (v0)
  {
    sub_1000C52F4(v0);
    sub_1001A3964();
  }

  else
  {
    v1 = qword_100B5A9D8;
    if (dword_100BC91EC == 2 && qword_100B5A9D8 != 0)
    {
      do
      {
        v3 = v1;
        v1 = *v1;
      }

      while (v1);
      if (qword_100B5A9D0 == qword_100B5A9F0)
      {
        *v3 = *qword_100B5A9D0;
        *qword_100B5A9D0 = v3;
      }

      else
      {
        *v3 = qword_100B5A9D0;
        qword_100B5A9D0 = qword_100B5A9D8;
      }

      qword_100B5A9D8 = 0;
      if (!dword_100BC91FC)
      {

        sub_1001A3DB4();
      }
    }
  }
}

uint64_t sub_1001A3964()
{
  if (byte_100B5AA10)
  {
    byte_100B5AA10 = 0;
    sub_1001A4280(0, 0, 0);
  }

  result = sub_10002195C(sub_1001A3964, 0, 0x7FFF, &dword_100B5AA0C);
  if (result)
  {
    sub_1000C52F4(result);
    return sub_1001A39C4();
  }

  return result;
}

uint64_t sub_1001A39C4()
{
  result = sub_1000B7ADC(dword_100B5AA04, 0x7FFF);
  if (!result)
  {
    result = sub_1000B7ADC(dword_100B5AA0C, 0x7FFF);
    if (!result)
    {
      v1 = qword_100B5A9E0;
      v2 = qword_100B5A9D8;
      if (qword_100B5A9D8)
      {
        do
        {
          v3 = *v2;
          qword_100B5A9D8 = *v2;
          if (*(v2 + 11) == 2)
          {
            *v2 = v1;
            qword_100B5A9E0 = v2;
            v3 = qword_100B5A9D8;
            v1 = v2;
          }

          v2 = v3;
        }

        while (v3);
      }

      v4 = qword_100B5A9D0;
      if (qword_100B5A9D0)
      {
        do
        {
          v5 = *v4;
          qword_100B5A9D0 = *v4;
          if (*(v4 + 11) == 2)
          {
            *v4 = v1;
            qword_100B5A9E0 = v4;
            v1 = v4;
          }

          v4 = v5;
        }

        while (v5);
      }

      result = 0;
      dword_100BC91FC = 0;
      byte_100B5AA10 = 0;
      byte_100B5AA11 = 0;
      word_100B5AA00 = 0;
      byte_100B5AA02 = 0;
      byte_100B5AA08 = 0;
    }
  }

  return result;
}

void sub_1001A3AA8(int a1, __int16 a2, __int16 a3)
{
  if ((a1 - 1) >= 4u)
  {
    sub_1000D660C();
  }

  v6 = dword_100BC91EC;
  if (dword_100BC91EC == 3)
  {
    sub_1001A287C();
    v6 = dword_100BC91EC;
    if (dword_100BC91EC == 4)
    {
      goto LABEL_11;
    }

    sub_1000D660C();
    v6 = dword_100BC91EC;
  }

  if (v6 != 2 && v6 != 4)
  {
    v13 = a1;
LABEL_24:

    sub_1001A3D60(v13);
    return;
  }

LABEL_11:
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v14 = qword_100B5A9E8;
      *(qword_100B5A9E8 + 11) = 1;
      *(v14 + 8) = a3 + 3;
      sub_10001F6DC((*(v14 + 16) + 3));
      v15 = qword_100B5A9E8;
      **(qword_100B5A9E8 + 16) = a2;
      *(*(v15 + 16) + 2) = a3;
      v16 = byte_100B5AA02;
      *(v15 + 10) = byte_100B5AA02;
      *v15 = 0;
      byte_100B5AA02 = (v16 + 1) & 7;
      v17 = &qword_100B5A9D0;
      v18 = qword_100B5A9D0;
      if (qword_100B5A9D0)
      {
        do
        {
          v17 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      *v17 = v15;
      goto LABEL_37;
    }

    if (a1 == 2)
    {
      v8 = qword_100B5A9E0;
      if (!qword_100B5A9E0)
      {
        sub_1000D660C();
        v8 = qword_100B5A9E0;
      }

      qword_100B5A9E0 = *v8;
      *(v8 + 11) = 2;
      *(v8 + 8) = a3 + 4;
      sub_10001F6DC((*(v8 + 16) + 4));
      **(v8 + 16) = a2;
      *(*(v8 + 16) + 2) = a3;
      v9 = byte_100B5AA02;
      *(v8 + 10) = byte_100B5AA02;
      *v8 = 0;
      byte_100B5AA02 = (v9 + 1) & 7;
      v10 = &qword_100B5A9D0;
      v11 = qword_100B5A9D0;
      if (qword_100B5A9D0)
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      *v10 = v8;
      if (!qword_100B5A9E0)
      {
        goto LABEL_37;
      }

      v12 = 2;
      goto LABEL_36;
    }

LABEL_23:
    sub_1000D660C();
    goto LABEL_37;
  }

  if (a1 != 3)
  {
    goto LABEL_23;
  }

  if (v6 == 4)
  {
    v13 = 3;
    goto LABEL_24;
  }

  v19 = qword_100B5A9F0;
  *(qword_100B5A9F0 + 11) = 3;
  *(v19 + 8) = a3 + 3;
  sub_10001F6DC((*(v19 + 16) + 3));
  v20 = qword_100B5A9F0;
  **(qword_100B5A9F0 + 16) = a2;
  *(*(v20 + 16) + 2) = a3;
  if (*(v20 + 11))
  {
    v21 = 0;
  }

  else
  {
    v21 = byte_100B5AA11;
  }

  *(v20 + 10) = v21;
  if (qword_100B5A9D0 != v20)
  {
    *v20 = qword_100B5A9D0;
    qword_100B5A9D0 = v20;
  }

  v12 = 3;
LABEL_36:
  sub_1001A3D60(v12);
LABEL_37:
  if (!dword_100BC91FC)
  {

    sub_1001A3DB4();
  }
}

void sub_1001A3D60(char a1)
{
  v3 = a1;
  v2[1] = &v3;
  v2[0] = 1;
  v1 = sub_1000228C0(sub_1001A4760, v2, 0);
  if (v1)
  {
    sub_1000C52F4(v1);
    sub_1001A3DB4();
  }
}

void sub_1001A3DB4()
{
  v0 = qword_100B5A9D0;
  qword_100B5A9F8 = qword_100B5A9D0;
  v1 = *(qword_100B5A9D0 + 11);
  if (v1 > 4 || ((1 << v1) & 0x16) == 0)
  {
    v6 = 0;
  }

  else
  {
    v3 = &qword_100B5A9D8;
    v4 = -1;
    do
    {
      v3 = *v3;
      ++v4;
    }

    while (v3);
    v5 = byte_100BC91F3;
    if (v4 > byte_100BC91F3)
    {
      sub_1000D660C();
      v5 = byte_100BC91F3;
    }

    if (v5 == v4)
    {
      dword_100BC91FC = 0;
      return;
    }

    v0 = qword_100B5A9F8;
    v6 = *(qword_100B5A9F8 + 10) | 0xFFFFFF80;
    v1 = *(qword_100B5A9F8 + 11);
  }

  v11 = v6;
  qword_100B5A9D0 = *v0;
  *v0 = 0;
  dword_100BC91FC = 1;
  if (v1 != 15)
  {
    v6 |= 8 * byte_100B5AA11;
    LOBYTE(v11) = v6;
    if (byte_100B5AA10)
    {
      byte_100B5AA10 = 0;
      sub_1000B7ADC(dword_100B5AA0C, 0x7FFF);
      v0 = qword_100B5A9F8;
      v1 = *(qword_100B5A9F8 + 11);
    }
  }

  v7 = *(v0 + 8);
  v8 = v1 | (16 * v7);
  BYTE1(v11) = v8;
  BYTE2(v11) = v7 >> 4;
  *qword_100B5AA20 = -64;
  word_100B5AA2A = 1;
  if (HIBYTE(word_100BC91E8) != 1 || ((v9 = *(v0 + 11)) != 0 ? (v10 = v9 == 15) : (v10 = 1), v10))
  {
    HIBYTE(v11) = ~(v8 + v6 + (v7 >> 4));
  }

  else
  {
    LOBYTE(v11) = v6 | 0x40;
    HIBYTE(v11) = ~(v8 + (v6 | 0x40) + (v7 >> 4));
    word_100B5AA18 = -1;
    sub_1003046D8(&v11, 4, &word_100B5AA18);
    sub_1003046D8(*(qword_100B5A9F8 + 16), *(qword_100B5A9F8 + 8), &word_100B5AA18);
  }

  sub_1001A4784(&v11, 4);
  word_100B5AA00 = 0;
  sub_1001A2860();
  sub_1001A443C();
}

void sub_1001A3F9C(int a1, __int16 a2, unsigned int a3, const void *a4)
{
  if ((a1 - 1) >= 4u)
  {
    sub_1000D660C();
  }

  v8 = dword_100BC91EC;
  if (dword_100BC91EC == 3)
  {
    sub_1001A287C();
    v8 = dword_100BC91EC;
    if (dword_100BC91EC == 4)
    {
      goto LABEL_11;
    }

    sub_1000D660C();
    v8 = dword_100BC91EC;
  }

  if (v8 != 2 && v8 != 4)
  {
    v15 = a1;
LABEL_24:

    sub_1001A3D60(v15);
    return;
  }

LABEL_11:
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v16 = qword_100B5A9E8;
      *(qword_100B5A9E8 + 11) = 1;
      *(v16 + 8) = a3 + 3;
      memmove((*(v16 + 16) + 3), a4, a3);
      v17 = qword_100B5A9E8;
      **(qword_100B5A9E8 + 16) = a2;
      *(*(v17 + 16) + 2) = a3;
      v18 = byte_100B5AA02;
      *(v17 + 10) = byte_100B5AA02;
      *v17 = 0;
      byte_100B5AA02 = (v18 + 1) & 7;
      v19 = &qword_100B5A9D0;
      v20 = qword_100B5A9D0;
      if (qword_100B5A9D0)
      {
        do
        {
          v19 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      *v19 = v17;
      goto LABEL_37;
    }

    if (a1 == 2)
    {
      v10 = qword_100B5A9E0;
      if (!qword_100B5A9E0)
      {
        sub_1000D660C();
        v10 = qword_100B5A9E0;
      }

      qword_100B5A9E0 = *v10;
      *(v10 + 11) = 2;
      *(v10 + 8) = a3 + 4;
      memmove((*(v10 + 16) + 4), a4, a3);
      **(v10 + 16) = a2;
      *(*(v10 + 16) + 2) = a3;
      v11 = byte_100B5AA02;
      *(v10 + 10) = byte_100B5AA02;
      *v10 = 0;
      byte_100B5AA02 = (v11 + 1) & 7;
      v12 = &qword_100B5A9D0;
      v13 = qword_100B5A9D0;
      if (qword_100B5A9D0)
      {
        do
        {
          v12 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      *v12 = v10;
      if (!qword_100B5A9E0)
      {
        goto LABEL_37;
      }

      v14 = 2;
      goto LABEL_36;
    }

LABEL_23:
    sub_1000D660C();
    goto LABEL_37;
  }

  if (a1 != 3)
  {
    goto LABEL_23;
  }

  if (v8 == 4)
  {
    v15 = 3;
    goto LABEL_24;
  }

  v21 = qword_100B5A9F0;
  *(qword_100B5A9F0 + 11) = 3;
  *(v21 + 8) = a3 + 3;
  memmove((*(v21 + 16) + 3), a4, a3);
  v22 = qword_100B5A9F0;
  **(qword_100B5A9F0 + 16) = a2;
  *(*(v22 + 16) + 2) = a3;
  if (*(v22 + 11))
  {
    v23 = 0;
  }

  else
  {
    v23 = byte_100B5AA11;
  }

  *(v22 + 10) = v23;
  if (qword_100B5A9D0 != v22)
  {
    *v22 = qword_100B5A9D0;
    qword_100B5A9D0 = v22;
  }

  v14 = 3;
LABEL_36:
  sub_1001A3D60(v14);
LABEL_37:
  if (!dword_100BC91FC)
  {

    sub_1001A3DB4();
  }
}

void sub_1001A4280(void *__src, size_t __len, int a3)
{
  v3 = a3;
  v4 = __len;
  if (a3 && a3 != 15)
  {
    sub_1000D660C();
  }

  if (v4 >= 0x103)
  {
    sub_1000D660C();
    v6 = qword_100B5A9F0;
    *(qword_100B5A9F0 + 11) = v3;
    goto LABEL_8;
  }

  v6 = qword_100B5A9F0;
  *(qword_100B5A9F0 + 11) = v3;
  if (v4)
  {
LABEL_8:
    memmove(*(v6 + 16), __src, v4);
    v6 = qword_100B5A9F0;
    v3 = *(qword_100B5A9F0 + 11);
  }

  *(v6 + 8) = v4;
  v7 = byte_100B5AA11;
  if (v3)
  {
    v7 = 0;
  }

  *(v6 + 10) = v7;
  if (qword_100B5A9D0 != v6)
  {
    *v6 = qword_100B5A9D0;
    qword_100B5A9D0 = v6;
  }

  if (!dword_100BC91FC)
  {

    sub_1001A3DB4();
  }
}

uint64_t sub_1001A435C(uint64_t result, __int16 a2, int a3)
{
  qword_100B5AA20 = result;
  word_100B5AA28 = a2;
  word_100B5AA2A = 0;
  if (a3)
  {
    if (a3 == 1216)
    {
      return result;
    }

    dword_100BC91FC = 2;
  }

  else if (dword_100BC91FC == 1)
  {

    return sub_1001A443C();
  }

  if (qword_100B5A9D8 && (byte_100B5AA08 & 1) == 0)
  {
    result = sub_1000B7ADC(dword_100B5AA04, 2);
    if (!result)
    {
      byte_100B5AA08 = 1;
      goto LABEL_12;
    }

    sub_1000C52F4(result);
    return sub_1001A443C();
  }

LABEL_12:
  if (qword_100B5A9D0)
  {

    return sub_1001A3DB4();
  }

  else
  {
    dword_100BC91FC = 0;
  }

  return result;
}

uint64_t sub_1001A443C()
{
  word_100B5AA00 += sub_1001A4784(*(qword_100B5A9F8 + 16) + word_100B5AA00, (*(qword_100B5A9F8 + 8) - word_100B5AA00));
  v0 = qword_100B5A9F8;
  v1 = word_100B5AA2A;
  if (*(qword_100B5A9F8 + 8) > word_100B5AA00)
  {
    goto LABEL_14;
  }

  v2 = word_100B5AA28;
  if (HIBYTE(word_100BC91E8) != 1 || (*(qword_100B5A9F8 + 11) ? (v3 = *(qword_100B5A9F8 + 11) == 15) : (v3 = 1), v3))
  {
    if (word_100B5AA28 == word_100B5AA2A)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
    if ((word_100B5AA28 - word_100B5AA2A) <= 4u)
    {
      goto LABEL_14;
    }

    sub_100304714(word_100B5AA18, &v7);
    sub_1001A4784(&v7, 2);
    if (v2 == v1)
    {
      goto LABEL_14;
    }

    v0 = qword_100B5A9F8;
    v1 = word_100B5AA2A;
  }

  word_100B5AA2A = v1 + 1;
  *(qword_100B5AA20 + v1) = -64;
  dword_100BC91FC = 2;
  if (v0 != qword_100B5A9F0)
  {
    v4 = &qword_100B5A9D8;
    v5 = qword_100B5A9D8;
    if (qword_100B5A9D8)
    {
      do
      {
        v4 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    *v4 = v0;
  }

  qword_100B5A9F8 = 0;
LABEL_14:
  result = sub_10022DBCC();
  if (result == 625)
  {
    return sub_1001A435C(qword_100B5AA20, word_100B5AA28, 625);
  }

  return result;
}

uint64_t sub_1001A45D4(uint64_t result)
{
  v1 = qword_100B5A9D8;
  if (!qword_100B5A9D8)
  {
    return result;
  }

  v2 = result + 7;
  if (((result + 7 - *(qword_100B5A9D8 + 10)) & 7u) >= byte_100BC91F3)
  {
    return result;
  }

  do
  {
    qword_100B5A9D8 = *v1;
    v3 = *(v1 + 11);
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        if (v3 == 4)
        {
          goto LABEL_9;
        }

        sub_1000D660C();
      }

      v4 = qword_100B5A9E0;
      *v1 = qword_100B5A9E0;
      qword_100B5A9E0 = v1;
      if (v4)
      {
        goto LABEL_10;
      }

      v3 = 2;
    }

LABEL_9:
    sub_100256D50(v3, 0);
LABEL_10:
    v1 = qword_100B5A9D8;
    if (!qword_100B5A9D8)
    {
      result = sub_1000B7ADC(dword_100B5AA04, 0x7FFF);
      byte_100B5AA08 = 0;
      return result;
    }
  }

  while (((v2 - *(qword_100B5A9D8 + 10)) & 7u) < byte_100BC91F3);
  v5 = dword_100B5AA04;

  return sub_1000B7ADC(v5, 2);
}

void sub_1001A46E0(char a1)
{
  if (((~a1 + byte_100B5AA11) & 7u) >= byte_100BC91F3)
  {
    byte_100B5AA11 = (a1 + 1) & 7;
  }

  if (!dword_100BC91FC)
  {
    v1 = byte_100B5AA10;
    v2 = ++byte_100B5AA10;
    if (v1)
    {
      if (byte_100BC91F3 == v2)
      {
        sub_1001A4280(0, 0, 0);
      }
    }

    else
    {
      sub_1000B7ADC(dword_100B5AA0C, 1);
    }
  }
}

void sub_1001A4760(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (dword_100BC91EC == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 1215;
  }

  sub_100256D50(v1, v2);
}

uint64_t sub_1001A4784(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = 0;
    while (1)
    {
      v4 = word_100B5AA2A;
      if (word_100B5AA2A == word_100B5AA28)
      {
        break;
      }

      v5 = *(a1 + v3);
      if (v5 == 219 || v5 == 192)
      {
        if (word_100B5AA2A + 1 == word_100B5AA28)
        {
          break;
        }

        ++word_100B5AA2A;
        *(qword_100B5AA20 + v4) = -37;
        if (v5 == 219)
        {
          LOBYTE(v5) = -35;
        }

        else
        {
          LOBYTE(v5) = -36;
        }

        v4 = word_100B5AA2A;
      }

      word_100B5AA2A = v4 + 1;
      *(qword_100B5AA20 + v4) = v5;
      if (a2 == ++v3)
      {
        goto LABEL_14;
      }
    }

    v2 = v3;
  }

LABEL_14:
  if (word_100B5AA2A > word_100B5AA28)
  {
    sub_1000D660C();
  }

  return v2;
}

uint64_t sub_1001A484C(unint64_t *a1, unint64_t a2, uint64_t *a3, unint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *a3;
  if (*a1 < a2)
  {
    v7 = *a1;
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      v10 = v9 & 0xFC00;
      if (v10 == 55296)
      {
        if (v7 >= a2)
        {
          v15 = 1;
          goto LABEL_33;
        }

        v11 = *v7;
        if ((v11 & 0xFC00) == 0xDC00)
        {
          v8 = v11 + (v8 << 10) - 56613888;
          v7 = v5 + 2;
        }

        else if (!a5)
        {
          goto LABEL_31;
        }
      }

      else if (!a5 && v10 == 56320)
      {
LABEL_31:
        v15 = 3;
        goto LABEL_33;
      }

      if (v8 < 0x10000)
      {
        v12 = 3;
      }

      else
      {
        v12 = 4;
      }

      if (v8 < 0x800)
      {
        v12 = 2;
      }

      if (v8 >= 0x80)
      {
        v13 = v12;
      }

      else
      {
        v13 = 1;
      }

      v14 = v6 + v13;
      if (v14 > a4)
      {
        v15 = 2;
        goto LABEL_33;
      }

      if (v13 > 2u)
      {
        if (v13 != 3)
        {
          *--v14 = v8 & 0x3F | 0x80;
          v8 >>= 6;
        }

        *--v14 = v8 & 0x3F | 0x80;
        v8 >>= 6;
      }

      else if (v13 == 1)
      {
        goto LABEL_27;
      }

      *--v14 = v8 & 0x3F | 0x80;
      v8 >>= 6;
LABEL_27:
      *(v14 - 1) = byte_1008A3188[v13] | v8;
      v6 = v14 - 1 + v13;
      v5 = v7;
      if (v7 >= a2)
      {
        v15 = 0;
        v5 = v7;
        goto LABEL_33;
      }
    }
  }

  v15 = 0;
LABEL_33:
  *a1 = v5;
  *a3 = v6;
  return v15;
}

BOOL sub_1001A4998(unsigned __int8 *a1, int a2)
{
  v2 = 0;
  v3 = &a1[a2];
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return v2;
      }

      v4 = *--v3;
      if (v4 > -65)
      {
        return 0;
      }
    }

    v5 = *--v3;
    if (v5 > -65)
    {
      return 0;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v7 = *a1;
      return v7 > -63 && v7 < 0xF5;
    }

    if (a2 != 2)
    {
      return v2;
    }
  }

  v6 = *(v3 - 1);
  if (v6 > 0xBF)
  {
    return 0;
  }

  v7 = *a1;
  if (v7 > 0xEF)
  {
    if (v7 != 240)
    {
      if (v7 == 244)
      {
        if (v6 > 0x8F)
        {
          return 0;
        }

        v7 = 244;
        return v7 > -63 && v7 < 0xF5;
      }

      goto LABEL_28;
    }

    if (v6 < 0x90)
    {
      return 0;
    }

    v7 = 240;
  }

  else
  {
    if (v7 != 224)
    {
      if (v7 == 237)
      {
        if (v6 > 0x9F)
        {
          return 0;
        }

        v7 = 237;
        return v7 > -63 && v7 < 0xF5;
      }

LABEL_28:
      if ((v6 & 0x80) == 0)
      {
        return 0;
      }

      return v7 > -63 && v7 < 0xF5;
    }

    if (v6 < 0xA0)
    {
      return 0;
    }

    v7 = 224;
  }

  return v7 > -63 && v7 < 0xF5;
}

uint64_t sub_1001A4A8C(unsigned __int8 **a1, unint64_t a2, _WORD **a3, unint64_t a4, int a5)
{
  v7 = *a1;
  v8 = *a3;
  if (*a1 >= a2)
  {
LABEL_30:
    result = 0;
    goto LABEL_36;
  }

  while (1)
  {
    v12 = *v7;
    v13 = byte_1008A318F[*v7];
    if (&v7[v13] >= a2)
    {
      result = 1;
      goto LABEL_36;
    }

    v14 = v13 + 1;
    if (!sub_1001A4998(v7, v13 + 1))
    {
      goto LABEL_35;
    }

    v15 = 0;
    if (v13 > 2)
    {
      if (v13 != 3)
      {
        if (v13 != 4)
        {
          if (v13 != 5)
          {
            goto LABEL_17;
          }

          v15 = v12 << 6;
          v16 = *++v7;
          v12 = v16;
        }

        v17 = v15 + v12;
        v18 = *++v7;
        v12 = v18;
        v15 = v17 << 6;
      }

      v19 = v15 + v12;
      v20 = *++v7;
      v12 = v20;
      v15 = v19 << 6;
LABEL_14:
      v21 = v15 + v12;
      v22 = *++v7;
      v12 = v22;
      v15 = v21 << 6;
      goto LABEL_15;
    }

    if (!v13)
    {
      v25 = 0;
      goto LABEL_16;
    }

    if (v13 != 1)
    {
      goto LABEL_14;
    }

LABEL_15:
    v23 = v15 + v12;
    v24 = *++v7;
    v12 = v24;
    v25 = v23 << 6;
LABEL_16:
    ++v7;
    v15 = v25 + v12;
LABEL_17:
    if (v8 >= a4)
    {
      v7 -= v14;
LABEL_33:
      result = 2;
      goto LABEL_36;
    }

    v26 = v15 - dword_1008A3290[v13];
    if (!HIWORD(v26))
    {
      break;
    }

    if (v26 >= 0x110000)
    {
      goto LABEL_22;
    }

    if ((v8 + 1) >= a4)
    {
      v7 -= v14;
      goto LABEL_33;
    }

    *v8 = ((v26 + 67043328) >> 10) - 10240;
    v8[1] = v26 & 0x3FF | 0xDC00;
    v8 += 2;
LABEL_27:
    if (v7 >= a2)
    {
      goto LABEL_30;
    }
  }

  if ((v26 & 0xF800) != 0xD800)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (a5)
  {
    LOWORD(v26) = -3;
LABEL_24:
    *v8++ = v26;
    goto LABEL_27;
  }

  v7 -= v14;
LABEL_35:
  result = 3;
LABEL_36:
  *a1 = v7;
  *a3 = v8;
  return result;
}

void sub_1001A4C5C(uint64_t a1, uint64_t a2)
{
  if (*(qword_100BC9C18 + 32))
  {
    v4 = *(qword_100BC9C18 + 8);
    if (!v4)
    {
      sub_1000D660C();
      v4 = *(qword_100BC9C18 + 8);
    }

    if (!*v4)
    {
      sub_1000D660C();
    }

    v5 = sub_1002030D8(a1, 1);
    if (v5)
    {
      v6 = qword_100BC9C18;
      if (*(qword_100BC9C18 + 88))
      {
        v7 = v5;
        v8 = 0;
        v9 = 0;
        do
        {
          if (*(*(v7 + 8) + v8))
          {
            sub_1001A4D20(a1, v9, a2);
            v6 = qword_100BC9C18;
          }

          ++v9;
          v8 += 8;
        }

        while (v9 < *(v6 + 88));
      }
    }
  }
}

void sub_1001A4D20(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v17 = a2;
  v5 = sub_1002030D8(a1, 1);
  if (v5)
  {
    v6 = *(qword_100BC9C18 + 8);
    if (v6)
    {
      v7 = v5;
      if (!*v6)
      {
        sub_1000D660C();
      }

      sub_10002242C(*(*(v7 + 8) + 8 * a2 + 4));
      *(*(v7 + 8) + 8 * a2 + 4) = 0;
      sub_100202FE8(v7, &v17);
      (**(qword_100BC9C18 + 8))(v7, v17, 0, a3);
      *(*(v7 + 8) + 8 * v17) = 0;
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("OI_AVRCPController_CommandFailed called, but no controller exists", v8, v9, v10, v11, v12, v13, v14, v16);
      v15 = sub_10000C050(4u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100810070(v15);
      }
    }
  }
}

uint64_t sub_1001A4E24(uint64_t a1, int a2, uint64_t a3)
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  if (!a1 || !a3)
  {
    sub_1000D660C();
    return 101;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  if (*(qword_100BC9C18 + 8))
  {
    return 119;
  }

  v8 = sub_1001BBBD8(0x18uLL, 0x10200405D21B11CuLL);
  v9 = qword_100BC9C18;
  *(qword_100BC9C18 + 32) = v8;
  if (!v8)
  {
    return 106;
  }

  v10 = sub_1001BBBD8(32 * *(v9 + 89), 0x1020040EC06A7F1uLL);
  v11 = qword_100BC9C18;
  v12 = *(qword_100BC9C18 + 32);
  v12[1] = v10;
  if (!v10)
  {
    sub_10000C1E8(v12);
    *(qword_100BC9C18 + 32) = 0;
    return 106;
  }

  if (*(v11 + 89))
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      *(*(*(qword_100BC9C18 + 32) + 8) + v13 + 8) = sub_1001BBBD8(8 * *(v11 + 88), 0x10000404A09149AuLL);
      v15 = *(*(qword_100BC9C18 + 32) + 8) + v13;
      if (!*(v15 + 8))
      {
        break;
      }

      *v15 = 0;
      *(v15 + 4) = 0;
      ++v14;
      v11 = qword_100BC9C18;
      v13 += 32;
      if (v14 >= *(qword_100BC9C18 + 89))
      {
        goto LABEL_15;
      }
    }

    v5 = 106;
    goto LABEL_27;
  }

LABEL_15:
  *(v11 + 8) = a1;
  *(v11 + 48) = sub_1001A5174;
  *(v11 + 64) = sub_1001A528C;
  v16 = *(sub_1003045A0(4u) + 4);
  if (!v16)
  {
    v16 = 4;
  }

  *(*(qword_100BC9C18 + 32) + 16) = v16;
  v17 = *(sub_1003045A0(4u) + 6);
  if (!v17)
  {
    v17 = 8;
  }

  *(*(qword_100BC9C18 + 32) + 18) = v17;
  v18 = *(sub_1003045A0(4u) + 8);
  v19 = *(qword_100BC9C18 + 32);
  if (!v18)
  {
    v18 = 20;
  }

  *(v19 + 20) = v18;
  xmmword_100B5AA30 = xmmword_1008A3708;
  DWORD2(xmmword_100B5AA30) = a2;
  *&v27 = &unk_100AE4C80;
  WORD4(v27) = 4;
  *&v28 = *a3;
  WORD4(v28) = *(a3 + 8);
  xmmword_100B5AA30 = xmmword_1008A3708;
  DWORD2(xmmword_100B5AA30) = a2;
  *&v25 = &unk_100AE4CE0;
  WORD4(v25) = 4;
  *&v26 = *a3;
  WORD4(v26) = *(a3 + 8);
  v5 = sub_1002F7E1C(&v27, v19);
  sub_1002F8134(**(qword_100BC9C18 + 32), &v25);
  if (v5 || (v5 = sub_1002033F0(), v5))
  {
LABEL_27:
    sub_1002F8018(**(qword_100BC9C18 + 32));
    v20 = qword_100BC9C18;
    *(qword_100BC9C18 + 8) = 0;
    if (*(v20 + 89))
    {
      v21 = 0;
      v22 = 8;
      do
      {
        v23 = *(*(*(v20 + 32) + 8) + v22);
        if (v23)
        {
          sub_10000C1E8(v23);
          *(*(*(qword_100BC9C18 + 32) + 8) + v22) = 0;
          v20 = qword_100BC9C18;
        }

        ++v21;
        v22 += 32;
      }

      while (v21 < *(v20 + 89));
    }

    v24 = *(v20 + 32);
    if (v24[1])
    {
      sub_10000C1E8(v24[1]);
      v24 = *(qword_100BC9C18 + 32);
      v24[1] = 0;
    }

    sub_10000C1E8(v24);
    *(qword_100BC9C18 + 32) = 0;
  }

  return v5;
}

uint64_t sub_1001A5174(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  if (*(qword_100BC9C18 + 8))
  {
    v5 = result;
    v6 = *a3;
    result = sub_1002030D8(result, 1);
    if (result)
    {
      v7 = result;
      v8 = *(result + 8);
      if (*(v8 + 8 * a2) == 2)
      {
        sub_10002242C(*(v8 + 8 * a2 + 4));
        v9 = *(v7 + 8);
        *(v9 + 8 * a2 + 4) = 0;
        if (v6 != 15)
        {
          *(v9 + 8 * a2) = 3;
        }

        if (*(a3 + 8))
        {
          v10 = qword_100BC9C18;
          if ((**(a3 + 1) & 0x7F) == 0 && *(*(qword_100BC9C18 + 8) + 8))
          {
            result = sub_100204460(v5, a2, a3);
            goto LABEL_12;
          }
        }

        else
        {
          v10 = qword_100BC9C18;
        }

        result = (**(v10 + 8))(v5, a2, a3, 0);
LABEL_12:
        if (v6 != 15)
        {
          *(*(v7 + 8) + 8 * a2) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001A528C()
{
  v0 = *(*(qword_100BC9C18 + 8) + 16);
  if (v0)
  {
    return v0();
  }

  return result;
}

uint64_t sub_1001A52AC()
{
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  v0 = *(qword_100BC9C18 + 32);
  if (!v0)
  {
    return 121;
  }

  if (*(qword_100BC9C18 + 90) && !*(qword_100BC9C18 + 16))
  {
    return 141;
  }

  sub_1002F8018(*v0);
  v1 = qword_100BC9C18;
  *(qword_100BC9C18 + 8) = 0;
  if (*(v1 + 89))
  {
    v2 = 0;
    v3 = 8;
    do
    {
      v4 = *(*(*(v1 + 32) + 8) + v3);
      if (v4)
      {
        sub_10000C1E8(v4);
        *(*(*(qword_100BC9C18 + 32) + 8) + v3) = 0;
        v1 = qword_100BC9C18;
      }

      ++v2;
      v3 += 32;
    }

    while (v2 < *(v1 + 89));
  }

  v5 = *(v1 + 32);
  if (v5[1])
  {
    sub_10000C1E8(v5[1]);
    v5 = *(qword_100BC9C18 + 32);
    v5[1] = 0;
  }

  sub_10000C1E8(v5);
  *(qword_100BC9C18 + 32) = 0;

  return sub_100203B74();
}

uint64_t sub_1001A53C0(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v4 = xmmword_1008A32A8;
  v5 = 0;
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  if (a1 && a2)
  {
    *(&v4 + 1) = v6;
    LOWORD(v5) = 2;
    v6[0] = a3;
    v6[1] = 0;
    return sub_1001A5440(a1, a2, &v4);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_1001A5440(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v19 = 0;
  if (!*(qword_100BC9C18 + 8))
  {
    return 3309;
  }

  v20 = 0;
  v6 = sub_1001A56B8(a1, &v19, &v20);
  if (!v6)
  {
    if (a3[3])
    {
      v7 = (*(qword_100BC9C18 + 32) + 16);
    }

    else
    {
      v8 = *(qword_100BC9C18 + 32);
      v9 = v8 + 20;
      v10 = v8 + 18;
      v7 = (*a3 ? v9 : v10);
    }

    v11 = *v7;
    v12 = v19;
    v13 = v20;
    v21[0] = v19;
    v21[1] = v20;
    v22[0] = 16;
    v22[1] = v21;
    if (sub_10002260C(*(*(v19 + 8) + 8 * v20 + 4)) || (v6 = sub_1000228C0(sub_1001A5780, v22, (*(v12 + 8) + 8 * v13 + 4)), !v6))
    {
      v14 = sub_1000B7ADC(*(*(v12 + 8) + 8 * v13 + 4), v11);
      if (v14)
      {
        v6 = v14;
        sub_10002242C(*(*(v12 + 8) + 8 * v13 + 4));
        v15 = *(v12 + 8) + 8 * v13;
LABEL_15:
        *(v15 + 4) = 0;
        return v6;
      }

      v16 = sub_100203D68(a1, v20, a3);
      if (v16)
      {
        v6 = v16;
        v17 = v20;
        sub_10002242C(*(*(v12 + 8) + 8 * v20 + 4));
        v15 = *(v12 + 8) + 8 * v17;
        goto LABEL_15;
      }

      *(*(v12 + 8) + 8 * v20) = 2;
      v6 = 0;
      if (a2)
      {
        *a2 = v20;
      }
    }
  }

  return v6;
}

uint64_t sub_1001A55F0(uint64_t a1, char a2)
{
  v5 = 0x1000050581900;
  HIBYTE(v5) = a2;
  if (!xmmword_100BCE240)
  {
    return 408;
  }

  if (a1)
  {
    v4[0] = 2304;
    v4[1] = &v5;
    v4[2] = 8;
    return sub_1001A5440(a1, &v3, v4);
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_1001A569C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (xmmword_100BCE240)
  {
    return sub_1001A5440(a1, a2, a3);
  }

  else
  {
    return 408;
  }
}

uint64_t sub_1001A56B8(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  if (!a3)
  {
    sub_1000D660C();
  }

  v6 = sub_1002030D8(a1, 1);
  if (!v6)
  {
    return 120;
  }

  if (!*(qword_100BC9C18 + 88))
  {
    return 118;
  }

  v7 = *(v6 + 16);
  v8 = *(qword_100BC9C18 + 88);
  while (1)
  {
    v9 = v7 % *(qword_100BC9C18 + 88);
    if (!*(*(v6 + 8) + 8 * v9))
    {
      break;
    }

    ++v7;
    if (!--v8)
    {
      return 118;
    }
  }

  v10 = 0;
  *a2 = v6;
  *(v6 + 16) = (v9 + 1) % *(qword_100BC9C18 + 88);
  *a3 = v9;
  return v10;
}

void sub_1001A5780(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = v1[8];
  v4 = 8 * v1[8];
  v5 = *(*v1 + 8) + v4;
  *v5 = 4;
  *(v5 + 4) = 0;
  sub_1001A4D20(v2, v3, 3312);
  *(*(v2 + 8) + v4) = 0;
}

uint64_t sub_1001A57D4(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    v3 = "data";
    goto LABEL_6;
  }

  if (!a3)
  {
    v3 = "(len) > 0";
LABEL_6:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 128, v3);
  }

  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 36) = 0x10000;
  *(result + 34) = a3;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1001A5834(int *a1, uint64_t a2)
{
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  if (a2)
  {
    v3 = *(a2 + 8);
    if (*(a2 + 8))
    {
      for (i = 0; i < v3; ++i)
      {
        v6 = (*a2 + 24 * i);
        v7 = *v6;
        if (v7 > 0x48)
        {
          if (*v6 > 0x70u)
          {
            if (v7 == 113)
            {
              v12 = *a1;
              if ((*a1 & 2) == 0)
              {
                *(a1 + 3) = v6 + 8;
                v9 = v12 | 2;
                goto LABEL_28;
              }
            }

            else if (v7 == 195)
            {
              a1[12] = *(v6 + 2);
              v9 = *a1 | 0x4000;
LABEL_28:
              *a1 = v9;
            }
          }

          else if (v7 == 73)
          {
            *(a1 + 7) = v6 + 8;
            *(a1 + 64) = 1;
          }

          else if (v7 == 76)
          {
            v30 = 0;
            v28 = 0u;
            v29 = 0u;
            sub_1001A57D4(&v28, *(v6 + 2), *(v6 + 4));
            if (HIBYTE(v30))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c");
LABEL_82:
              v3 = *(a2 + 8);
              continue;
            }

            v13 = WORD1(v30);
            if (WORD1(v30) <= WORD2(v30))
            {
              goto LABEL_82;
            }

            v14 = BYTE6(v30);
            v15 = *(&v29 + 1);
            v16 = WORD1(v30) - 3;
            v17 = WORD1(v30) - 1;
            v18 = v29;
            while (2)
            {
              if (v13 < v18)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 107, "(size_t)(bk->nextTagPos) <= (size_t)((bk->bs).__size)");
              }

              if (v13 == v18)
              {
                goto LABEL_82;
              }

              if (v14 != 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 115, "(bk->bs).__RWFlag == BYTESTREAM_READ");
              }

              if (v13 <= (v18 + 1))
              {
                return 411;
              }

              v19 = v18 + 2;
              v20 = *(v15 + v18 + 1);
              if ((v13 - v19) < v20)
              {
                return 411;
              }

              v21 = *(v15 + v18);
              v22 = (v18 + 2);
              if (v21 > 5)
              {
                if (*(v15 + v18) <= 7u)
                {
                  if (v21 == 6)
                  {
                    if (v20 != 4)
                    {
                      return 411;
                    }

                    if (v16 <= v22)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 195, "ByteStream_NumReadBytesAvail(bk.bs) >= 4");
                    }

                    a1[20] = bswap32(*(v15 + v19));
                    v23 = v18 + 6;
                    v24 = 256;
                  }

                  else
                  {
                    v23 = v18 + 2;
                    if (v21 != 7)
                    {
                      goto LABEL_81;
                    }

                    if (v20 != 1)
                    {
                      return 411;
                    }

                    if (v13 <= v19)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 203, "ByteStream_NumReadBytesAvail(bk.bs) >= 1");
                    }

                    v23 = v18 + 3;
                    *(a1 + 84) = *(v15 + v19);
                    v24 = 512;
                  }
                }

                else if (v21 == 8)
                {
                  if (v20 != 1)
                  {
                    return 411;
                  }

                  if (v13 <= v19)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 211, "ByteStream_NumReadBytesAvail(bk.bs) >= 1");
                  }

                  v23 = v18 + 3;
                  *(a1 + 85) = *(v15 + v19);
                  v24 = 1024;
                }

                else if (v21 == 9)
                {
                  if (v20 != 16)
                  {
                    return 411;
                  }

                  if (v16 <= v22)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 219, "ByteStream_NumReadBytesAvail(bk.bs) >= 4");
                  }

                  a1[22] = bswap32(*(v15 + v19));
                  if (v13 - (v18 + 6) <= 0xB)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 220, "ByteStream_NumReadBytesAvail(bk.bs) >= (sizeof(req->serviceId.base))");
                  }

                  v25 = (v15 + (v18 + 6));
                  v26 = *v25;
                  a1[25] = *(v25 + 2);
                  *(a1 + 23) = v26;
                  v23 = v18 + 18;
                  v24 = 2048;
                }

                else
                {
                  v23 = v18 + 2;
                  if (v21 != 10)
                  {
                    goto LABEL_81;
                  }

                  if (v20 != 1)
                  {
                    return 411;
                  }

                  if (v13 <= v19)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 228, "ByteStream_NumReadBytesAvail(bk.bs) >= 1");
                  }

                  v23 = v18 + 3;
                  *(a1 + 104) = *(v15 + v19);
                  v24 = 4096;
                }
              }

              else if (*(v15 + v18) <= 2u)
              {
                if (v21 == 1)
                {
                  if (v20 != 2)
                  {
                    return 411;
                  }

                  if (v17 <= v22)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 155, "ByteStream_NumReadBytesAvail(bk.bs) >= 2");
                  }

                  *(a1 + 33) = bswap32(*(v15 + v19)) >> 16;
                  v23 = v18 + 4;
                  v24 = 8;
                }

                else
                {
                  v23 = v18 + 2;
                  if (v21 != 2)
                  {
                    goto LABEL_81;
                  }

                  if (v20 != 2)
                  {
                    return 411;
                  }

                  if (v17 <= v22)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 163, "ByteStream_NumReadBytesAvail(bk.bs) >= 2");
                  }

                  *(a1 + 34) = bswap32(*(v15 + v19)) >> 16;
                  v23 = v18 + 4;
                  v24 = 16;
                }
              }

              else if (v21 == 3)
              {
                if (v20 != 1)
                {
                  return 411;
                }

                if (v13 <= v19)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 171, "ByteStream_NumReadBytesAvail(bk.bs) >= 1");
                }

                v23 = v18 + 3;
                *(a1 + 70) = *(v15 + v19);
                v24 = 32;
              }

              else
              {
                if (v21 != 4)
                {
                  v23 = v18 + 2;
                  if (v21 == 5)
                  {
                    if (v20 != 4)
                    {
                      return 411;
                    }

                    if (v16 <= v22)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 187, "ByteStream_NumReadBytesAvail(bk.bs) >= 4");
                    }

                    a1[19] = bswap32(*(v15 + v19));
                    v23 = v18 + 6;
                    v24 = 128;
                    break;
                  }

LABEL_81:
                  v18 = v19 + v20;
                  if (v13 <= v23)
                  {
                    goto LABEL_82;
                  }

                  continue;
                }

                if (v20 != 4)
                {
                  return 411;
                }

                if (v16 <= v22)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/bip/oi_bip_private.c", 179, "ByteStream_NumReadBytesAvail(bk.bs) >= 4");
                }

                a1[18] = bswap32(*(v15 + v19));
                v23 = v18 + 6;
                v24 = 64;
              }

              break;
            }

            *a1 |= v24;
            goto LABEL_81;
          }
        }

        else if (*v6 > 0x41u)
        {
          if (v7 != 66)
          {
            if (v7 == 72)
            {
              *(a1 + 7) = v6 + 8;
              *(a1 + 64) = 0;
            }

            continue;
          }

          v11 = *a1;
          if ((*a1 & 0x8000) == 0)
          {
            *(a1 + 1) = v6 + 8;
            v9 = v11 | 0x8000;
            goto LABEL_28;
          }
        }

        else
        {
          if (v7 != 1)
          {
            if (v7 != 48)
            {
              continue;
            }

            v8 = *a1;
            if ((*a1 & 4) != 0)
            {
              continue;
            }

            *(a1 + 4) = v6 + 8;
            v9 = v8 | 4;
            goto LABEL_28;
          }

          v10 = *a1;
          if ((*a1 & 1) == 0)
          {
            *(a1 + 2) = v6 + 8;
            v9 = v10 | 1;
            goto LABEL_28;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1001A5DEC(uint64_t a1, uint64_t (*a2)(void))
{
  sub_100304AF8("APPLE PCIe register error handler\n");
  if (qword_100B5AA40)
  {
    sub_100304AF8("APPLE PCIe error handler already registered\n");
  }

  else if (a2)
  {
    off_100B5AA48 = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_1001A5EFC;
    aBlock[3] = &unk_100AE4E00;
    aBlock[4] = a1;
    qword_100B5AA40 = _Block_copy(aBlock);
    if (qword_100B5AA40)
    {
      if (!qword_100B5AB58 || !CentauriControllerRegisterUniqueErrorHandlerWithQueue())
      {
        return 1;
      }

      sub_100304AF8("APPLE PCIe transport error handler register failed 0x%08x\n");
    }

    else
    {
      sub_100304AF8("APPLE PCIe failed to allocate error handler\n");
    }
  }

  else
  {
    sub_100304AF8("APPLE PCIe shutdown check callback is null\n");
  }

  return 0;
}

void sub_1001A5EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100304AF8("APPLE PCIe error source %u code %u\n", a2, a3);
  if (a2 <= 1)
  {
    if (!a2)
    {
      v8 = sub_1001A61D8(a3);
      v9 = snprintf(&xmmword_100B5AA50, 0x100uLL, "beta: %s", v8);
      if (v9 <= 0xFF)
      {
        v10 = v9;
        if (!strcmp(v8, "unknown error"))
        {
          snprintf(&xmmword_100B5AA50 + v10, 256 - v10, " (err code: %u)", a3);
        }
      }

      if (a3 != 7 && a3)
      {
        goto LABEL_21;
      }

LABEL_18:
      byte_100B5AB50 = 1;
LABEL_21:
      sub_100304AF8("APPLE PCIe transport error source %u reason: %s\n", a2, &xmmword_100B5AA50);
      v12 = a2 == 1000 && a3 == 0;
      (*(a1 + 32))(&xmmword_100B5AA50, 1, v12, 0);
      byte_100B5AB50 = 0;
      return;
    }

    if (a2 == 1)
    {
      snprintf(&xmmword_100B5AA50, 0x100uLL, "airship: 0x%x", a3);
      if ((a3 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a2 == 2)
  {
    v16 = a3;
    v7 = "centauri debug: 0x%x";
    goto LABEL_20;
  }

  if (a2 != 1000)
  {
LABEL_12:
    v16 = a2;
    v17 = a3;
    v7 = "beta error source %u code %u";
LABEL_20:
    snprintf(&xmmword_100B5AA50, 0x100uLL, v7, v16, v17);
    goto LABEL_21;
  }

  if ((a3 - 3) > 1)
  {
    v19 = 0;
    v18 = 4;
    if (!sysctlbyname("kern.willuserspacereboot", &v19, &v18, 0, 0) && v19 > 0)
    {
      sub_100304AF8("userspace reboot in progress\n");
      strcpy(&xmmword_100B5AA50, "centauri controller: userspace reboot");
      (*(a1 + 32))();
      return;
    }

    if (a3 > 2)
    {
      v13 = "unknown error";
    }

    else
    {
      v13 = off_100AE4F40[a3];
    }

    v14 = snprintf(&xmmword_100B5AA50, 0x100uLL, "centauri controller: %s", v13);
    if (v14 <= 0xFF)
    {
      v15 = v14;
      if (!strcmp(v13, "unknown error"))
      {
        snprintf(&xmmword_100B5AA50 + v15, 256 - v15, " (err code: %u)");
      }
    }

    goto LABEL_21;
  }

  v6 = "exit";
  if (a3 == 3)
  {
    v6 = "entry";
  }

  sub_100304AF8("APPLE PCIe driver S2R %s notification\n", v6);
}

const char *sub_1001A61D8(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return "unknown error";
  }

  else
  {
    return off_100AE4F58[a1];
  }
}

uint64_t sub_1001A61FC(uint64_t a1)
{
  sub_100304AF8("APPLE PCIe register timesync handler\n");
  if (qword_100B5AB68)
  {
    sub_100304AF8("APPLE PCIe timesync handler already registered\n");
  }

  else
  {
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_1001A6304;
    aBlock[3] = &unk_100AE4E20;
    aBlock[4] = a1;
    qword_100B5AB68 = _Block_copy(aBlock);
    if (qword_100B5AB68)
    {
      if (!qword_100B5AB70)
      {
        return 1;
      }

      airship_ch_timesync_set_event_handler();
      if (!airship_ch_timesync_open())
      {
        result = 1;
        byte_100B5AB78 = 1;
        return result;
      }

      sub_100304AF8("airship failed to open timesync: 0x%08x\n");
    }

    else
    {
      sub_100304AF8("APPLE PCIe failed to allocate timesync handler\n");
    }
  }

  return 0;
}

void sub_1001A6304(uint64_t a1, unint64_t *a2)
{
  if (a2)
  {
    v6[3] = 0;
    v6[4] = 0;
    if (mach_get_times())
    {
      sub_100304AF8("APPLE PCIe invalid timestamps ret 0x%08x cont_time %llu abs_time %llu\n");
    }

    else
    {
      v5 = a2[1];
      if (is_mul_ok(*a2, 0x3E8uLL))
      {
        v6[1] = 1000 * *a2;
        v6[2] = 0;
        v6[0] = v5;
        (*(a1 + 32))(v6);
      }

      else
      {
        sub_100304AF8("APPLE PCIe BT timestamp overflow: data->chipset_time %llu\n");
      }
    }
  }

  else
  {

    sub_100304AF8("APPLE PCIe timesync data is invalid\n");
  }
}

uint64_t sub_1001A63E4(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100304AF8("APPLE PCIe collect logs\n");
  if (!qword_100B5AB58)
  {
    sub_100304AF8("APPLE PCIe collect logs before transport init\n");
    if (!&_CentauriControllerCreateWithParameters)
    {
      v8 = 3758097136;
      sub_100304AF8("Apple PCIe failed to load controller framework\n");
      return v8;
    }

    v7 = CentauriControllerCreateWithParameters();
    if (v7)
    {
      v8 = v7;
      sub_100304AF8("Apple PCIe failed to create controller handle 0x%08x\n");
      return v8;
    }
  }

  if (strstr(a1, "full chip reset: firmware halted"))
  {
    v6 = 1;
  }

  else
  {
    v6 = strstr(a1, "full chip reset: firmware failed to halt") != 0;
  }

  v9 = CentauriControllerCollectLogsWithOptions();
  v8 = v9;
  if (v9 && !v6)
  {
    sub_100304AF8("APPLE PCIe transport failed to collect logs 0x%08x\n", v9);
    goto LABEL_12;
  }

  if (v9)
  {
LABEL_12:
    if (a4)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      goto LABEL_31;
    }

LABEL_19:
    sub_100304AF8("APPLE PCIe transport extract panic string helper\n");
    if (CentauriControllerGetCrashlogs() == -536870160 && v6)
    {
      v12 = 1;
      do
      {
        usleep(0x186A0u);
        v13 = CentauriControllerGetCrashlogs() != -536870160 || !v6;
        if (v13)
        {
          break;
        }
      }

      while (v12++ < 0x63);
    }

    sub_100304AF8("APPLE PCIe transport failed to get cached crashlogs 0x%08x\n");
    *a4 = 0;
    goto LABEL_31;
  }

  if (a4)
  {
    goto LABEL_19;
  }

LABEL_31:
  if (!qword_100B5AB58)
  {
    CentauriControllerFree();
  }

  return v8;
}

uint64_t sub_1001A6850()
{
  sub_10000C198();
  sub_1001A6A08(&qword_100B51C50);
  sub_1001A6A08(qword_100B51C80);
  sub_1001A6A08(&qword_100B51CB0);
  sub_1001A6A08(qword_100B51CE0);
  sub_1001A6A08(&qword_100B51D10);
  sub_1001A6A08(qword_100B51D40);
  sub_1001A6A08(qword_100B51D70);
  sub_1000031B0();
  if (qword_100B5AB70)
  {
    if (byte_100B5AB78 == 1)
    {
      v0 = dispatch_time(0, 120000000000);
      airship_ch_timesync_close();
      byte_100B5AB78 = 0;
      if (dispatch_semaphore_wait(qword_100B5AB80, v0))
      {
        sub_100304AF8("Apple PCIe timed out waiting to close timesync\n");
      }
    }

    airship_ch_timesync_destroy();
    qword_100B5AB70 = 0;
  }

  if (qword_100B5AB80)
  {
    dispatch_release(qword_100B5AB80);
    qword_100B5AB80 = 0;
  }

  if (qword_100B5AB88)
  {
    dispatch_release(qword_100B5AB88);
    qword_100B5AB88 = 0;
  }

  if (!off_100B5AA48 || off_100B5AA48())
  {
    if (dword_100B51DA0 != -1)
    {
      notify_cancel(dword_100B51DA0);
      dword_100B51DA0 = -1;
    }

    if (qword_100BC9200)
    {
      dispatch_sync(qword_100BC9200, &stru_100AE4E60);
      dispatch_release(qword_100BC9200);
      qword_100BC9200 = 0;
    }

    if (qword_100B5AB68)
    {
      _Block_release(qword_100B5AB68);
      qword_100B5AB68 = 0;
    }

    if (qword_100B5AB58)
    {
      CentauriControllerFree();
      qword_100B5AB58 = 0;
    }

    if (qword_100B5AB60)
    {
      dispatch_release(qword_100B5AB60);
      qword_100B5AB60 = 0;
    }

    if (qword_100B5AA40)
    {
      _Block_release(qword_100B5AA40);
      qword_100B5AA40 = 0;
    }
  }

  return 0;
}

void sub_1001A6A08(void *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (a1[5])
  {
    airship_ch_interface_close();
    airship_ch_interface_destroy();
    a1[5] = 0;
  }

  v2 = a1[4];
  if (v2)
  {
    pthread_join(v2, 0);
    a1[4] = 0;
  }

  v3 = a1[2];
  if (v3)
  {
    free(v3);
    a1[2] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    free(v4);
    a1[3] = 0;
  }
}

void sub_1001A6A7C(id a1)
{
  sub_10021D2D4();

  sub_10021D2A4();
}

void sub_1001A6AA4()
{
  v2 = 0;
  if (sub_10021D41C(@"FWLoggingEnabled", &v2))
  {
    if (byte_100B5AB90 == 1 && v2 == byte_100B5AB91)
    {
      sub_100304AF8("%s:%06u No change in profile configuration\n");
    }

    else
    {
      byte_100B5AB90 = 1;
      v1 = sub_10021CDB0(v2 & 1);
      if (v1)
      {
        if (sub_10021CC30())
        {
          sub_10021D23C(&v1);
          byte_100B5AB91 = v2;
          sub_100304AF8("%s:%06u debug profile present -> %d");
        }

        else
        {
          sub_100304AF8("%s:%06u cannot create xpc connection");
        }
      }

      else
      {
        sub_100304AF8("%s:%06u cannot create xpc message");
      }
    }
  }

  else
  {
    sub_100304AF8("%s:%06u unable to check if profile is installed");
  }
}

uint64_t sub_1001A6BD0()
{
  byte_100B5AB92 = 0;
  sub_100304AF8("using airship\n");
  if (!&_CentauriControllerCreateWithParameters)
  {
    sub_100304AF8("failed to load controller framework\n");
    return 633;
  }

  if (!&_airship_ch_interface_create)
  {
    sub_100304AF8("failed to load airship framework\n");
    return 633;
  }

  sub_10000C198();
  qword_100B5AB70 = airship_ch_timesync_create();
  if (!qword_100B5AB70)
  {
    sub_100304AF8("Apple PCIe failed to create timesync handle\n");
    goto LABEL_33;
  }

  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  qword_100BC9200 = dispatch_queue_create("com.apple.corecapture.configure.bt", v0);
  if (!qword_100BC9200)
  {
    sub_100304AF8("Apple PCIe failed to create profile monitor queue\n");
    goto LABEL_33;
  }

  v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  qword_100B5AB88 = dispatch_queue_create("com.apple.bluetoothd.applepcie-timesync", v1);
  airship_ch_timesync_set_queue();
  qword_100B5AB80 = dispatch_semaphore_create(0);
  airship_ch_timesync_set_close_handler();
  if (qword_100B5AB68)
  {
    airship_ch_timesync_set_event_handler();
    if (airship_ch_timesync_open())
    {
      sub_100304AF8("airship failed to open timesync: 0x%08x\n");
LABEL_33:
      byte_100B5AB50 = 1;
LABEL_34:
      sub_1000031B0();
      sub_1001A6850();
      return 633;
    }

    byte_100B5AB78 = 1;
  }

  if ((sub_1001A7230(&qword_100B51C50) & 1) == 0)
  {
    sub_100304AF8("hci init failed\n");
    goto LABEL_33;
  }

  if ((sub_1001A7230(qword_100B51C80) & 1) == 0)
  {
    sub_100304AF8("acl init failed\n");
    goto LABEL_33;
  }

  if ((sub_1001A7230(&qword_100B51CB0) & 1) == 0)
  {
    sub_100304AF8("sco init failed\n");
    goto LABEL_33;
  }

  if ((sub_1001A7230(qword_100B51CE0) & 1) == 0)
  {
    sub_100304AF8("le init failed\n");
    goto LABEL_33;
  }

  if ((sub_1001A7230(&qword_100B51D10) & 1) == 0)
  {
    sub_100304AF8("lea init failed\n");
    goto LABEL_33;
  }

  if ((sub_1001A7230(qword_100B51D40) & 1) == 0)
  {
    sub_100304AF8("lla init failed\n");
    goto LABEL_33;
  }

  if ((sub_1001A7230(qword_100B51D70) & 1) == 0)
  {
    sub_100304AF8("lmp init failed\n");
    goto LABEL_33;
  }

  if (!qword_100B5AB60)
  {
    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    qword_100B5AB60 = dispatch_queue_create("com.apple.bluetoothd.applepcie-error", v2);
    if (!qword_100B5AB60)
    {
      sub_100304AF8("failed to create error queue\n");
      goto LABEL_34;
    }
  }

  if (!qword_100B5AB58)
  {
    if (CentauriControllerCreateWithParameters())
    {
      sub_100304AF8("Apple PCIe failed to create controller handle 0x%08x\n");
      goto LABEL_34;
    }

    if (qword_100B5AA40 && CentauriControllerRegisterUniqueErrorHandlerWithQueue())
    {
      sub_100304AF8("APPLE PCIe transport error handler register failed 0x%08x\n");
      goto LABEL_34;
    }
  }

  if (dword_100B51DA0 == -1)
  {
    notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &dword_100B51DA0, qword_100BC9200, &stru_100AE4EE0);
    dispatch_async(qword_100BC9200, &stru_100AE4F20);
  }

  sub_1000031B0();
  return 0;
}

uint64_t sub_1001A6F18(int a1, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = a1;
  if (a1 <= 2)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v9 = sub_100258628(a2);
        v10 = qword_100B51C80;
        if (v9 == 2)
        {
          v10 = &qword_100B51D10;
          v11 = 5;
        }

        else
        {
          v11 = 4;
        }

        if (v9 == 1)
        {
          v8 = qword_100B51CE0;
        }

        else
        {
          v8 = v10;
        }

        if (v9 == 1)
        {
          v7 = 4;
        }

        else
        {
          v7 = v11;
        }

        v6 = v9 != 1 && v9 == 2;
        goto LABEL_25;
      }

      goto LABEL_32;
    }

    v6 = 0;
    v7 = 3;
    v8 = &qword_100B51C50;
  }

  else
  {
    if (a1 == 3)
    {
LABEL_5:
      v6 = 0;
      if (sub_100258180())
      {
        v7 = 4;
      }

      else
      {
        v7 = 3;
      }

      v8 = &qword_100B51CB0;
      goto LABEL_25;
    }

    if (a1 != 5)
    {
      if (a1 == 243)
      {
        goto LABEL_5;
      }

LABEL_32:
      sub_100304AF8("unknown default packet type: 0x%x\n", a1);
      return 101;
    }

    v6 = 1;
    v7 = 5;
    v8 = &qword_100B51D10;
  }

LABEL_25:
  v12 = *(v8 + 2);
  if (a3 + v7 <= v12)
  {
    v14 = v8[2];
    bzero(v14, v12);
    if (v6)
    {
      *v14 = v5;
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    v16 = &v14[v15];
    *v16 = v4;
    v16[1] = a3;
    if (a3)
    {
      sub_10001F6DC(&v14[v7]);
    }

    else
    {
      sub_10001F480();
    }

    v17 = airship_ch_interface_write();
    result = 625;
    if ((byte_100B5AB92 & 1) == 0)
    {
      if (v17)
      {
        sub_100304AF8("airship tx failed 0x%08x\n", v17);
        return 1205;
      }
    }
  }

  else
  {
    sub_100304AF8("oversize packet: %u (max %u)\n", a3 + v7, v12);
    return 142;
  }

  return result;
}

uint64_t sub_1001A7118()
{
  sub_100304AF8("Apple PCIe FLR\n");
  if (qword_100B5AB58)
  {
    goto LABEL_2;
  }

  sub_100304AF8("APPLE PCIe reset before transport init\n");
  if (!&_CentauriControllerCreateWithParameters)
  {
    sub_100304AF8("Apple PCIe failed to load controller framework\n");
    return 1205;
  }

  if (CentauriControllerCreateWithParameters())
  {
    sub_100304AF8("Apple PCIe failed to create controller handle 0x%08x\n");
    return 1205;
  }

LABEL_2:
  v0 = CentauriControllerReset();
  v1 = v0;
  if (v0)
  {
    sub_100304AF8("Apple PCIe failed to reset beta 0x%08x\n", v0);
  }

  if (!qword_100B5AB58)
  {
    CentauriControllerFree();
  }

  if (v1)
  {
    return 1205;
  }

  else
  {
    return 0;
  }
}

void sub_1001A71F8(id a1)
{
  sub_100304AF8("Apple PCIe timesync close handler\n");
  v1 = qword_100B5AB80;

  dispatch_semaphore_signal(v1);
}

uint64_t sub_1001A7230(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v2 = airship_ch_interface_create();
  *(a1 + 40) = v2;
  if (!v2)
  {
    sub_1001A73AC(*a1);
    sub_100304AF8("failed to create %s airship\n");
    goto LABEL_9;
  }

  if (airship_ch_interface_open())
  {
    sub_1001A73AC(*a1);
    sub_100304AF8("airship failed to open %s: 0x%08x\n");
LABEL_9:
    sub_1001A6A08(a1);
    return 0;
  }

  if (airship_ch_interface_get_ring_sizes())
  {
    sub_1001A73AC(*a1);
    sub_100304AF8("airship failed to get ring sizes %s: 0x%08x\n");
    goto LABEL_9;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = malloc_type_calloc(1uLL, v4, 0x100004077774924uLL);
    *(a1 + 16) = v5;
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  v6 = *(a1 + 12);
  if (!v6)
  {
    return 1;
  }

  v7 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
  *(a1 + 24) = v7;
  if (!v7)
  {
LABEL_16:
    sub_1001A73AC(*a1);
    sub_100304AF8("calloc failed for %s\n");
    goto LABEL_9;
  }

  if (pthread_create((a1 + 32), 0, sub_1001A73D4, a1))
  {
    sub_1001A73AC(*a1);
    sub_100304AF8("airship failed to create %s rx thread\n");
    goto LABEL_9;
  }

  sub_1001C5C44(*(a1 + 32), 63);
  return 1;
}

const char *sub_1001A73AC(int a1)
{
  if ((a1 - 64) > 7)
  {
    return "unknown";
  }

  else
  {
    return off_100AE4FB0[a1 - 64];
  }
}

uint64_t sub_1001A73D4(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  v1 = airship_ch_interface_read();
  sub_100304AF8("read from airship failed 0x%08x\n", v1);
  return 0;
}

void *sub_1001A757C()
{
  v0 = sub_10025AFBC();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = 0;
  v3 = &unk_100B5AB94;
  v4 = &unk_100B5AB94;
  while (1)
  {
    Value = CFDictionaryGetValue(v1, off_100AE4FF0[v2]);
    if (!Value)
    {
      break;
    }

    v6 = Value;
    v7 = CFDictionaryGetValue(Value, @"item_size");
    if (!v7)
    {
      break;
    }

    CFNumberGetValue(v7, kCFNumberSInt32Type, v4);
    v8 = CFDictionaryGetValue(v6, @"item_count");
    if (!v8)
    {
      break;
    }

    CFNumberGetValue(v8, kCFNumberSInt32Type, v4 + 44);
    v4 += 4;
    if (++v2 == 11)
    {
      goto LABEL_9;
    }
  }

  v3 = 0;
LABEL_9:
  CFRelease(v1);
  return v3;
}

uint64_t sub_1001A7664(uint64_t a1)
{
  qword_100B5ABF0 = sub_1000BAE38(sub_1001A7658, sub_1001A7660);
  v2 = sub_10028BDC8(a1, 1);
  v5 = 0;
  v4 = 0;
  sub_10028BF0C(a1, &v4);
  return (*(*qword_100BC9C18 + 32))(&v4, a1, v2);
}

uint64_t sub_1001A7700(int a1)
{
  sub_1000BBDD0(qword_100B5ABF0);
  qword_100B5ABF0 = 0;
  v4 = 0;
  v3 = 0;
  sub_10028BF0C(a1, &v3);
  return (*(*qword_100BC9C18 + 40))(&v3);
}

uint64_t sub_1001A7768(uint64_t a1, unsigned __int16 **a2, int a3)
{
  if (a3 == 2)
  {
    if (!sub_10000C248(qword_100B5ABF0))
    {
      sub_1000D660C();
    }

    sub_100302C60(qword_100B5ABF0, 1);
    return 0;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    sub_10028BF0C(a1, &v7);
    v9 = 0;
    v3 = sub_100306F34(*(*a2 + 1), **a2, &v9, 8);
    if (!v3)
    {
      (**(*(qword_100BC9C18 + 16) + 32))(&v7, a1, &v9);
    }
  }

  return v3;
}

uint64_t sub_1001A7850(uint64_t a1, unsigned __int16 **a2, int a3, int a4)
{
  if (a4 == 1719)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("AVRCP BIP client issued OBEX ABORT message!", v4, v5, v6, v7, v8, v9, v10, v35);
      v11 = sub_10000C050(4u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    return 0;
  }

  if (a3 == 2)
  {
    if (!sub_10000C248(qword_100B5ABF0))
    {
      sub_1000D660C();
    }

    sub_100302C60(qword_100B5ABF0, 1);
    return 0;
  }

  if (**a2 == 8)
  {
    v37 = 0;
    v36 = 0;
    sub_10028BF0C(a1, &v36);
    v38 = 0;
    v12 = sub_100306F34(*(*a2 + 1), **a2, &v38, 8);
    v16 = a2[1];
    if (v16)
    {
      v17 = *v16 - 1;
      while (v17 != -1)
      {
        v18 = *(v16 + 1);
        v19 = *(v18 + v17--);
        if (v19 == 42)
        {
          v20 = v17 + 2;
          v21 = v17;
          v22 = *(v18 + v17) - 48;
          if (v22 > 9)
          {
            v23 = 0;
          }

          else
          {
            LOWORD(v23) = 0;
            v24 = 0;
            do
            {
              v23 = (v23 + v22 * __exp10(v24++));
              v22 = *(v18 + --v21) - 48;
            }

            while (v22 < 0xA);
          }

          v34 = *(v18 + v20);
          if ((v34 - 48) > 9)
          {
            v33 = 0;
          }

          else
          {
            v33 = 0;
            do
            {
              v33 = v34 + 10 * v33 - 48;
              v34 = *(v18 + ++v20);
            }

            while ((v34 - 48) < 0xA);
          }

          goto LABEL_25;
        }
      }
    }

    v23 = 200;
    v33 = 200;
LABEL_25:
    if (!v12)
    {
      (*(*(*(qword_100BC9C18 + 16) + 32) + 8))(&v36, a1, &v38, v23, v33);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid image handle length %d", v25, v26, v27, v28, v29, v30, v31, **a2);
      v32 = sub_10000C050(4u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    return 1736;
  }

  return v12;
}

uint64_t sub_1001A7AF4(uint64_t a1, unsigned __int16 **a2, int a3)
{
  if (a3 == 2)
  {
    if (!sub_10000C248(qword_100B5ABF0))
    {
      sub_1000D660C();
    }

    sub_100302C60(qword_100B5ABF0, 1);
    return 0;
  }

  else if (**a2 == 8)
  {
    v16 = 0;
    v15 = 0;
    sub_10028BF0C(a1, &v15);
    v17 = 0;
    v3 = sub_100306F34(*(*a2 + 1), **a2, &v17, 8);
    if (!v3)
    {
      (*(*(*(qword_100BC9C18 + 16) + 32) + 16))(&v15, a1, &v17);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid image handle length %d", v6, v7, v8, v9, v10, v11, v12, **a2);
      v13 = sub_10000C050(4u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    return 1736;
  }

  return v3;
}

uint64_t sub_1001A7C40(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = 0;
  v32 = 0;
  sub_100307404(&v31, 0x400uLL);
  v30 = 0;
  asprintf(&v30, "<image-properties version=1.0 handle=%s>\n", a2);
  sub_100062468(&v31, v30);
  free(v30);
  if (a6)
  {
    v11 = 0;
    do
    {
      v12 = "variant";
      if (!v11)
      {
        v12 = "native";
      }

      v13 = *(a3 + v11);
      if (v13 == 2)
      {
        v14 = "PNG";
      }

      else
      {
        v14 = "";
      }

      if (v13 == 1)
      {
        v15 = "JPEG";
      }

      else
      {
        v15 = v14;
      }

      asprintf(&v30, "<%s encoding=%s pixel=%d*%d />\n", v12, v15, *(a4 + 2 * v11), *(a5 + 2 * v11));
      sub_100062468(&v31, v30);
      free(v30);
      ++v11;
    }

    while (a6 != v11);
  }

  asprintf(&v30, "</image-properties>\n");
  sub_100062468(&v31, v30);
  free(v30);
  v16 = WORD2(v31);
  sub_100302C18(qword_100B5ABF0, v32, WORD2(v31));
  v29[1] = sub_1000BA5F8(qword_100B5ABF0);
  v29[0] = v16;
  v28[0] = 0;
  v28[1] = v29;
  v28[2] = 0;
  v17 = sub_10028C0F4(a1, v28, 0);
  if (v17)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_BIPSRV_GetImagePropertiesResponse failed with error %!", v18, v19, v20, v21, v22, v23, v24, v17);
      v25 = sub_10000C050(4u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1000BB054(qword_100B5ABF0, 1);
  }

  sub_10030745C(&v31);
  return v17;
}

uint64_t sub_1001A7E38(int a1, uint64_t a2, unsigned int a3)
{
  sub_100302C18(qword_100B5ABF0, a2, a3);
  v19[1] = sub_1000BA5F8(qword_100B5ABF0);
  v19[0] = a3;
  v15 = 0u;
  v17 = v19;
  v18 = 0;
  v16 = a3;
  v5 = sub_10028C114(a1, &v15, 0);
  if (v5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_BIPSRV_GetImageResponse failed with error %!", v6, v7, v8, v9, v10, v11, v12, v5);
      v13 = sub_10000C050(4u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1000BB054(qword_100B5ABF0, 1);
  }

  return v5;
}

uint64_t sub_1001A7F10(int a1, uint64_t a2, unsigned __int16 a3)
{
  sub_100302C18(qword_100B5ABF0, a2, a3);
  v16[1] = sub_1000BA5F8(qword_100B5ABF0);
  v16[0] = a3;
  v15[0] = 0;
  v15[1] = v16;
  v15[2] = 0;
  v5 = sub_10028C0F4(a1, v15, 0);
  if (v5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_BIPSRV_GetLinkedThumbnailResponse failed with error %!", v6, v7, v8, v9, v10, v11, v12, v5);
      v13 = sub_10000C050(4u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1000BB054(qword_100B5ABF0, 1);
  }

  return v5;
}

void sub_1001A7FE4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1001A806C;
  block[3] = &unk_100AE5048;
  block[4] = a1;
  if (qword_100B5ABF8 != -1)
  {
    dispatch_once(&qword_100B5ABF8, block);
  }
}

void sub_1001A807C(int a1)
{
  if (a1 || qword_100B5AC08)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1001A8138;
    block[3] = &unk_100AE5068;
    v2 = a1;
    if (qword_100B5AC08 != -1)
    {
      dispatch_once(&qword_100B5AC08, block);
    }
  }

  else if (os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR))
  {
    sub_1008101E8();
  }
}

void sub_1001A8138(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = vld1q_dup_f32(v1);
  if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1008A33C0, vaddq_s32(v2, xmmword_1008A33B0)))) & 1) == 0 && os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR))
  {
    sub_100810228();
  }
}

uint64_t sub_1001A81A8(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0xE)
  {
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1008102DC();
    return 0;
  }

  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 181, "buf");
  }

  v6 = a1;
  v7 = a2;
  v8 = a2;
  v4 = *(a1 + 13);
  v9 = 65551;
  v5 = *(a1 + 14);
  result = sub_100005FEC(v4);
  if (result)
  {
    if (a2 - 15 < v5)
    {
      result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_100810268();
      return 0;
    }

    if (v4 == 255)
    {
      return 0;
    }

    result = 1;
    switch(v4)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 9:
      case 10:
      case 11:
      case 13:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 22:
      case 23:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 44:
      case 45:
      case 46:
      case 48:
      case 49:
      case 50:
      case 52:
      case 53:
      case 54:
      case 56:
      case 57:
      case 60:
      case 61:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 82:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
        return result;
      case 7:
        result = sub_1001A8354(&v6);
        break;
      case 8:
        result = sub_1001A8574(&v6);
        break;
      case 12:
        result = sub_1001A8D18(&v6);
        break;
      case 14:
        result = sub_1001A8968(&v6);
        break;
      case 21:
        result = sub_1001A8F18(&v6);
        break;
      case 24:
        result = sub_1001A9200(&v6);
        break;
      case 47:
        result = sub_1001A93FC(&v6);
        break;
      case 51:
        result = sub_1001A9618(&v6);
        break;
      case 59:
        result = sub_1001A9814(&v6);
        break;
      case 62:
        result = sub_1001A9A10(&v6);
        break;
      case 81:
        result = sub_1001A9BD8(&v6);
        break;
      case 89:
        result = sub_1001A876C(&v6);
        break;
      default:
        return 0;
    }
  }

  return result;
}

BOOL sub_1001A8354(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0xFE)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100810358();
      return 0;
    }

    return result;
  }

  if (v2 <= 6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1554, "ByteStream_NumReadBytesAvail(*pBs) >= (1 + 6)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 7;
  *(a1 + 6) = v1 + 7;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1557, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1558, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 247)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1561, "ByteStream_NumReadBytesAvail(*pBs) >= (248)");
  }

  v6 = v5 + v4;
  *(v6 + 240) = 0;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *v6 = 0u;
  *(a1 + 6) += 248;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1563, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1565, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v1 + 255;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1566, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001A8574(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_19;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 3)
  {
LABEL_19:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008103D4();
      return 0;
    }

    return result;
  }

  if (v2 <= 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1578, "ByteStream_NumReadBytesAvail(*pBs) >= (1+2)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 3;
  *(a1 + 6) = v1 + 3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1581, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1582, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if (v3 <= v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1585, "ByteStream_NumReadBytesAvail(*pBs) >= (1)");
  }

  *(v5 + (v1 + 3)) = 0;
  ++*(a1 + 6);
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1587, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v6 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1589, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v7 = v1 + 4;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v6;
  if (v6 < v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1590, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v7;
  return 1;
}

BOOL sub_1001A876C(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 4)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100810450();
      return 0;
    }

    return result;
  }

  if (v2 <= 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1603, "ByteStream_NumReadBytesAvail(*pBs) >= (1+2)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 3;
  *(a1 + 6) = v1 + 3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1606, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1607, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1611, "ByteStream_NumReadBytesAvail(*pBs) >= (1 + 1)");
  }

  *(v5 + (v1 + 3)) = 0;
  *(a1 + 6) += 2;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1613, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v6 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1615, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v7 = v1 + 5;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v6;
  if (v6 < v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1616, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v7;
  return 1;
}

BOOL sub_1001A8968(uint64_t *a1)
{
  v1 = *(a1 + 5);
  if (v1 <= 0xE)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1197, "(size_t)(13 + 2) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = 15;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
LABEL_5:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10081054C();
    return 0;
  }

  if (v1 - 15 <= 3)
  {
    goto LABEL_5;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1206, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v1 == 15)
  {
    *(a1 + 15) = 1;
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008104CC();
      return 0;
    }
  }

  else
  {
    *(a1 + 6) = 16;
    if (v1 <= 0x11)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1208, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    v4 = *(*a1 + 16);
    *(a1 + 6) = 18;
    result = 1;
    if (v4 > 4096)
    {
      if (v4 <= 0x2000)
      {
        if ((v4 - 5121) > 0xA)
        {
          goto LABEL_37;
        }

        if (((1 << (v4 - 1)) & 0x777) != 0)
        {
          return result;
        }

        if (v4 == 5128)
        {

          return sub_1001AF300(a1);
        }

        else
        {
          if ((v4 - 4097) > 9)
          {
            goto LABEL_47;
          }

LABEL_37:
          if (((1 << (v4 - 1)) & 0x31F) != 0)
          {
            return result;
          }

          if (v4 == 4103)
          {

            return sub_1001AF108(a1);
          }

          else
          {
LABEL_47:
            if ((v4 - 6145) > 8 || ((1 << (v4 - 1)) & 0x1CF) == 0)
            {
              return 0;
            }
          }
        }
      }

      else
      {
        switch(v4)
        {
          case 8193:
          case 8194:
          case 8195:
          case 8197:
          case 8198:
          case 8199:
          case 8200:
          case 8201:
          case 8202:
          case 8203:
          case 8204:
          case 8206:
          case 8207:
          case 8208:
          case 8209:
          case 8210:
          case 8212:
          case 8213:
          case 8218:
          case 8219:
          case 8220:
          case 8221:
          case 8222:
          case 8223:
          case 8224:
          case 8225:
          case 8226:
          case 8227:
          case 8228:
          case 8231:
          case 8232:
          case 8233:
          case 8234:
          case 8235:
          case 8236:
          case 8237:
          case 8238:
          case 8239:
          case 8240:
          case 8241:
          case 8243:
          case 8244:
          case 8245:
          case 8246:
          case 8247:
          case 8248:
          case 8249:
          case 8250:
          case 8251:
          case 8252:
          case 8253:
          case 8254:
          case 8255:
          case 8256:
          case 8257:
          case 8258:
          case 8260:
          case 8261:
          case 8262:
          case 8263:
          case 8264:
          case 8265:
          case 8266:
          case 8281:
          case 8282:
          case 8283:
          case 8284:
          case 8285:
          case 8288:
          case 8290:
          case 8291:
          case 8293:
          case 8295:
          case 8300:
          case 8302:
          case 8303:
          case 8308:
          case 8317:
          case 8318:
          case 8319:
          case 8320:
          case 8321:
          case 8322:
          case 8323:
          case 8324:
          case 8325:
          case 8326:
          case 8327:
          case 8329:
            return result;
          case 8215:

            result = sub_1001AF4F8(a1);
            break;
          case 8216:

            result = sub_1001AF6F8(a1);
            break;
          default:
            return 0;
        }
      }
    }

    else if (v4 <= 3072)
    {
      v5 = (v4 - 1032) > 0x3D || ((1 << (v4 - 8)) & 0x200819F801040079) == 0;
      if (v5 && ((v4 - 2057) > 8 || ((1 << (v4 - 9)) & 0x179) == 0) && (v4 - 1026) >= 3)
      {
        return 0;
      }
    }

    else
    {
      switch(v4)
      {
        case 3073:
        case 3075:
        case 3077:
        case 3080:
        case 3082:
        case 3083:
        case 3084:
        case 3085:
        case 3089:
        case 3090:
        case 3091:
        case 3093:
        case 3094:
        case 3095:
        case 3096:
        case 3097:
        case 3098:
        case 3099:
        case 3100:
        case 3101:
        case 3102:
        case 3103:
        case 3104:
        case 3105:
        case 3106:
        case 3107:
        case 3108:
        case 3109:
        case 3110:
        case 3111:
        case 3112:
        case 3113:
        case 3114:
        case 3115:
        case 3116:
        case 3117:
        case 3118:
        case 3119:
        case 3121:
        case 3123:
        case 3126:
        case 3127:
        case 3128:
        case 3129:
        case 3130:
        case 3131:
        case 3132:
        case 3133:
        case 3134:
        case 3135:
        case 3138:
        case 3139:
        case 3140:
        case 3141:
        case 3142:
        case 3143:
        case 3144:
        case 3145:
        case 3154:
        case 3157:
        case 3158:
        case 3160:
        case 3161:
        case 3162:
        case 3163:
        case 3168:
        case 3169:
        case 3170:
        case 3171:
        case 3173:
        case 3174:
        case 3175:
        case 3176:
        case 3177:
        case 3178:
        case 3180:
        case 3181:
        case 3182:
        case 3183:
        case 3184:
        case 3185:
        case 3186:
        case 3187:
        case 3193:
        case 3194:
        case 3195:
        case 3196:
        case 3204:
          return result;
        case 3081:

          result = sub_1001AE6C4(a1);
          break;
        case 3092:

          result = sub_1001AE8BC(a1);
          break;
        case 3153:

          result = sub_1001AEAE0(a1);
          break;
        case 3159:

          result = sub_1001AECFC(a1);
          break;
        case 3197:

          result = sub_1001AEF00(a1);
          break;
        default:
          return 0;
      }
    }
  }

  return result;
}

BOOL sub_1001A8D18(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 7)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008105C8();
      return 0;
    }

    return result;
  }

  if (v2 <= 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1628, "ByteStream_NumReadBytesAvail(*pBs) >= (1 + 2)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 3;
  *(a1 + 6) = v1 + 3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1631, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1632, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1637, "ByteStream_NumReadBytesAvail(*pBs) >= (1 + 2 + 2)");
  }

  v6 = v5 + v4;
  *(v6 + 4) = 0;
  *v6 = 0;
  *(a1 + 6) += 5;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1639, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1641, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v1 + 8;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1642, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

uint64_t sub_1001A8F18(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_4;
  }

  v1 = *(a1 + 5);
  v2 = *(a1 + 6);
  if (v1 == v2)
  {
LABEL_4:
    if (os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR))
    {
      sub_100810740();
    }

    return 0;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1655, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v1 <= v2)
  {
    *(a1 + 15) = 1;
    if (os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR))
    {
      sub_100810644();
    }

    return 0;
  }

  v5 = *a1;
  v6 = v2 + 1;
  *(a1 + 6) = v2 + 1;
  v7 = *(v5 + v2);
  v8 = *(a1 + 4);
  if (~v2 + v1 < 22 * v7)
  {
    if (os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR))
    {
      sub_1008106C4();
    }

    return 0;
  }

  if (!*(v5 + v2))
  {
    return 1;
  }

  v9 = 0;
  LOWORD(v10) = *(a1 + 4);
  do
  {
    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
LABEL_38:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1661, "ByteStream_NumReadBytesAvail(*pBs) >= (6)");
    }

    if (v1 - v6 <= 5)
    {
      goto LABEL_38;
    }

    v11 = v6 + 6;
    *(a1 + 6) = v6 + 6;
    *(a1 + 14) = 15;
    if (!v10)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1664, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
    }

    *(a1 + 6) = 0;
    *(a1 + 14) = 2;
    *(a1 + 5) = v10;
    if ((v6 + 6) > v10)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1665, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
    }

    *(a1 + 6) = v11;
    if (v10 - v11 <= 15)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1668, "ByteStream_NumReadBytesAvail(*pBs) >= (16)");
    }

    v12 = (v5 + v11);
    *v12 = 0;
    v12[1] = 0;
    *(a1 + 6) += 16;
    if (v8 > *(a1 + 5))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1670, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
    }

    *(a1 + 6) = v8;
    if (*(a1 + 14) == 2)
    {
      *(a1 + 5) = v8;
    }

    *(a1 + 14) = 15;
    v5 = *a1;
    if (!*a1 || (v10 = *(a1 + 4), !*(a1 + 4)))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1672, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
    }

    v6 += 22;
    *(a1 + 6) = 0;
    *(a1 + 14) = 1;
    *(a1 + 5) = v10;
    if (v10 < v6)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1673, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
    }

    *(a1 + 6) = v6;
    ++v9;
    v3 = 1;
    LOWORD(v1) = v10;
  }

  while (v7 > v9);
  return v3;
}

BOOL sub_1001A9200(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0x16)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008107B8();
      return 0;
    }

    return result;
  }

  if (v2 <= 5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1686, "ByteStream_NumReadBytesAvail(*pBs) >= (6)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 6;
  *(a1 + 6) = v1 + 6;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1689, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1690, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 15)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1693, "ByteStream_NumReadBytesAvail(*pBs) >= (16)");
  }

  v6 = (v5 + v4);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + 6) += 16;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1695, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1697, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v1 + 22;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1698, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001A93FC(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 0xFE)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_100810834();
      return 0;
    }

    return result;
  }

  if (v2 <= 14)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1710, "ByteStream_NumReadBytesAvail(*pBs) >= (1+6+1+1+3+2+1)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 15;
  *(a1 + 6) = v1 + 15;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1713, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1714, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 239)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1717, "ByteStream_NumReadBytesAvail(*pBs) >= (240)");
  }

  v6 = (v5 + v4);
  v6[13] = 0u;
  v6[14] = 0u;
  v6[11] = 0u;
  v6[12] = 0u;
  v6[9] = 0u;
  v6[10] = 0u;
  v6[7] = 0u;
  v6[8] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  *(a1 + 6) += 240;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1719, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v7 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1721, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v8 = v1 + 255;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v7;
  if (v7 < v8)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1722, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v8;
  return 1;
}

BOOL sub_1001A9618(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 9)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1008108B0();
      return 0;
    }

    return result;
  }

  if (v2 <= 5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1734, "ByteStream_NumReadBytesAvail(*pBs) >= (6)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 6;
  *(a1 + 6) = v1 + 6;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1737, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1738, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1741, "ByteStream_NumReadBytesAvail(*pBs) >= (4)");
  }

  *(v5 + (v1 + 6)) = 0;
  *(a1 + 6) += 4;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1743, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v6 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1745, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v7 = v1 + 10;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v6;
  if (v6 < v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1746, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v7;
  return 1;
}

BOOL sub_1001A9814(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c");
    goto LABEL_18;
  }

  v1 = *(a1 + 6);
  v2 = *(a1 + 5) - v1;
  if (v2 <= 9)
  {
LABEL_18:
    result = os_log_type_enabled(qword_100B5AC00, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10081092C();
      return 0;
    }

    return result;
  }

  if (v2 <= 5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1758, "ByteStream_NumReadBytesAvail(*pBs) >= (6)");
  }

  v3 = *(a1 + 4);
  v4 = v1 + 6;
  *(a1 + 6) = v1 + 6;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v4;
  }

  *(a1 + 14) = 15;
  v5 = *a1;
  if (!*a1 || !v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1761, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a1 + 6) = 0;
  *(a1 + 14) = 2;
  *(a1 + 5) = v3;
  if (v3 < v4)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1762, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v4;
  if ((v3 - v4) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1765, "ByteStream_NumReadBytesAvail(*pBs) >= (4)");
  }

  *(v5 + (v1 + 6)) = 0;
  *(a1 + 6) += 4;
  if (v3 > *(a1 + 5))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1767, "(size_t)(byteStreamLength) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v3;
  if (*(a1 + 14) == 2)
  {
    *(a1 + 5) = v3;
  }

  *(a1 + 14) = 15;
  if (!*a1 || (v6 = *(a1 + 4), !*(a1 + 4)))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1769, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  v7 = v1 + 10;
  *(a1 + 6) = 0;
  *(a1 + 14) = 1;
  *(a1 + 5) = v6;
  if (v6 < v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/hcilite_filter.c", 1770, "(size_t)(byteStreamPosition) <= (size_t)((*pBs).__size)");
  }

  *(a1 + 6) = v7;
  return 1;
}