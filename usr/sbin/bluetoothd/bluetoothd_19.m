uint64_t sub_10018E964(unsigned __int8 *a1, const void *a2, unsigned int a3)
{
  if (!a1 || !a2 || !a3)
  {
    return 101;
  }

  v6 = a3 + 4;
  v7 = sub_100007618(a3 + 4, 0x69C2D2F4uLL);
  if (!v7)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3347, "packet");
  }

  if (v6 == 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3350, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  if (!v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3348, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
  }

  v8 = v7;
  *v7 = 96;
  if (v6 <= 3u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3351, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v7[1] = a3;
  if (v6 - 4 < a3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/aacp/aacp_client.c", 3352, "ByteStream_NumReadBytesAvail(bs) >= (len)");
  }

  memmove(v7 + 2, a2, a3);

  return sub_100188690(a1, v8, (a3 + 4));
}

void *sub_10018EAB4(unsigned __int8 *a1, uint64_t a2)
{
  v4 = qword_100B57C58;
  if (!qword_100B57C58)
  {
    v4 = sub_1001BBBD8(0xF8uLL, 0x1060040A177BD6EuLL);
    qword_100B57C58 = v4;
  }

  if (sub_100188094(a1))
  {
    if (!sub_10000C240())
    {
      return sub_10029104C(a2, 436);
    }

    sub_10000AF54("address already connected", v5, v6, v7, v8, v9, v10, v11, v35);
    v12 = sub_10000C050(0x53u);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return sub_10029104C(a2, 436);
    }

    goto LABEL_6;
  }

  if (v4)
  {
    v14 = v4 + 32;
    v15 = 5;
    while (!*v14 || *(v14 - 24) != 1)
    {
      v14 += 6;
      if (!--v15)
      {
        goto LABEL_14;
      }
    }

    if (!sub_10000C240())
    {
      return sub_10029104C(a2, 436);
    }

    sub_10000AF54("Another AACP connection in progress", v27, v28, v29, v30, v31, v32, v33, v35);
    v34 = sub_10000C050(0x53u);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      return sub_10029104C(a2, 436);
    }

LABEL_6:
    sub_10080F7A0();
    return sub_10029104C(a2, 436);
  }

LABEL_14:
  result = sub_100188114();
  if (!result)
  {
    if (!sub_10000C240())
    {
      return sub_10029104C(a2, 436);
    }

    sub_10000AF54("No free AACP connection slot ", v19, v20, v21, v22, v23, v24, v25, v35);
    v26 = sub_10000C050(0x53u);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      return sub_10029104C(a2, 436);
    }

    goto LABEL_6;
  }

  v16 = qword_100BC91E0;
  result[3] = qword_100BC91E0;
  result[1] = 0;
  v17 = *a1;
  *(result + 5) = *(a1 + 2);
  *(result + 1) = v17;
  *(result + 8) = 0;
  if (v16)
  {
    v18 = *v16;
    if (*v16)
    {

      return v18(a1);
    }
  }

  return result;
}

void sub_10018EC6C(unsigned __int8 *a1, uint64_t a2, int a3, __int16 a4, int a5, int a6)
{
  v11 = sub_100188094(a1);
  if (sub_10000C240())
  {
    sub_10000AF54("AACP: aapConnectCb  result = %d", v12, v13, v14, v15, v16, v17, v18, a2);
    v19 = sub_10000C050(0x53u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v33 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (v11)
  {
    v20 = a6 | (a5 << 16);
    if (a2)
    {
      v21 = 0;
    }

    else
    {
      v21 = a4;
    }

    if (a2)
    {
      v22 = 0;
    }

    else
    {
      v22 = a3;
    }

    *(v11 + 14) = v21;
    if (a2)
    {
      v20 = 0;
    }

    *(v11 + 8) = v22;
    *(v11 + 16) = v20;
    sub_10018F070(a2, v22);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("No connection associated with address", v23, v24, v25, v26, v27, v28, v29, v31);
    v30 = sub_10000C050(0x53u);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_10018EDD0(uint64_t a1)
{
  if (qword_100B57C58)
  {
    v2 = (qword_100B57C58 + 16);
    v3 = 5;
    while (*v2 != a1)
    {
      v2 += 12;
      if (!--v3)
      {
        v4 = (qword_100B57C58 + 32);
        v5 = 5;
        while (!*v4 || *(v4 - 24) != 1)
        {
          v4 += 6;
          if (!--v5)
          {
            goto LABEL_9;
          }
        }

        goto LABEL_21;
      }
    }

    v14 = *(v2 - 8);
    if (v14 == 1)
    {
LABEL_21:

      sub_10018F070(3570, a1);
      return;
    }

    if (v14 != 2)
    {
      return;
    }

    for (i = 0; i != 240; i += 48)
    {
      v16 = qword_100B57C58 + i;
      if (*(qword_100B57C58 + i + 16) == a1)
      {
        (*(*(v16 + 32) + 16))(v16 + 9);
        v25 = (v16 + 40);
        v26 = 4;
        do
        {
          v27 = *v25;
          if (v27)
          {
            sub_10002242C(v27);
            *v25 = 0;
          }

          ++v25;
          --v26;
        }

        while (v26);

        sub_100188180((v16 + 8));
        return;
      }
    }

    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("AAP Handle %d is not valid!\n", v17, v18, v19, v20, v21, v22, v23, a1);
    v24 = sub_10000C050(0x53u);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_9:
  if (sub_10000C240())
  {
    sub_10000AF54("No connection associated with handle (%d)!\n", v6, v7, v8, v9, v10, v11, v12, a1);
    v13 = sub_10000C050(0x53u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_19:
      sub_10080F7A0();
    }
  }
}

void sub_10018EF98(uint64_t a1, void *ptr)
{
  if (qword_100B57C58)
  {
    v4 = qword_100B57C58 + 32;
    v5 = 5;
    while (*(v4 - 16) != a1)
    {
      v4 += 48;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v14 = *(*v4 + 24);
    if (v14)
    {
      v14(v4 - 23, ptr);
    }

    sub_10000C1E8(ptr);
  }

  else
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("No connection associated with handle (%d)", v6, v7, v8, v9, v10, v11, v12, a1);
      v13 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

void sub_10018F070(uint64_t a1, int a2)
{
  if (qword_100B57C58)
  {
    v3 = qword_100B57C58 + 8;
    v4 = 5;
    while (*(v3 + 8) != a2)
    {
      v3 += 48;
      if (!--v4)
      {
        v5 = (qword_100B57C58 + 32);
        v6 = 5;
        while (!*v5 || *(v5 - 24) != 1)
        {
          v5 += 6;
          if (!--v6)
          {
            goto LABEL_9;
          }
        }

        v3 = (v5 - 3);
        break;
      }
    }

    v15 = *(v3 + 8);
    if (a1)
    {
      if (v15)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("ConnectComplete result %d handle %u -- disconnecting AAP", v16, v17, v18, v19, v20, v21, v22, a1);
          v23 = sub_10000C050(0x53u);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        sub_1001BD4DC(*(v3 + 8));
      }

      else
      {
        v27 = *(v3 + 24);
        if (v27)
        {
          v28 = *(v27 + 8);
          if (v28)
          {
            v28(v3 + 1, *(v3 + 14), a1);

            sub_100188180(v3);
          }
        }
      }
    }

    else if (v15)
    {
      v24 = *(v3 + 24);
      if (v24)
      {
        v25 = *(v24 + 8);
        if (v25)
        {
          *v3 = 2;
          v26 = *(v3 + 14);

          v25(v3 + 1, v26, 0);
        }
      }
    }
  }

  else
  {
LABEL_9:
    if (sub_10000C240())
    {
      sub_10000AF54("Not a valid Connection complete event!\n", v7, v8, v9, v10, v11, v12, v13, v29);
      v14 = sub_10000C050(0x53u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

uint64_t sub_10018F24C(_BYTE *a1)
{
  v2 = sub_1001C5D20("applebt_rx_main");
  if (!a1 || (a1[19] & 1) == 0)
  {
    sub_1000D660C();
    v43 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      sub_10080FD20();
    }

    sub_1000D660C();
    v44 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_10080FD5C();
    }

    goto LABEL_102;
  }

  v122 = v108;
  *&v121 = (*(*a1 + 20) + 4) * *(*a1 + 64);
  __chkstk_darwin(v2, v121);
  v123 = v108 - v3;
  bzero(v108 - v3, v4);
  v5 = *a1;
  v6 = (*(*a1 + 24) + 4) * *(*a1 + 68);
  __chkstk_darwin(v7, v8);
  v125 = v108 - v9;
  bzero(v108 - v9, v6);
  v10 = v5[7] + 4;
  v11 = v5[18];
  v124 = a1;
  v12 = v10 * v11;
  __chkstk_darwin(v13, v14);
  v16 = v108 - v15;
  bzero(v108 - v15, v12);
  v17 = (v5[8] + 4) * v5[19];
  __chkstk_darwin(v18, v19);
  v21 = v108 - v20;
  bzero(v108 - v20, v17);
  v22 = (v5[9] + 4) * v5[20];
  __chkstk_darwin(v23, v24);
  v26 = v108 - v25;
  bzero(v108 - v25, v22);
  v27 = v5[10] + 4;
  __chkstk_darwin(v28, v29);
  v31 = v108 - ((v30 + 19) & 0xFFFFFFFFFFFFFFF0);
  bzero(v31, v27);
  inputStruct[0] = 65285;
  v139 = 65287;
  v142 = 65289;
  v145 = 65288;
  v148 = 65286;
  inputStruct[1] = v121;
  v138 = v123;
  v140 = v12;
  v141 = v16;
  v143 = v22;
  v144 = v26;
  v146 = v17;
  v147 = v21;
  v149 = v6;
  v32 = v124;
  v150 = v125;
  v151 = 266;
  v152 = v27;
  v153 = v31;
  memset(outputStruct, 0, sizeof(outputStruct));
  v33 = sub_10025ADA4(6, inputStruct, outputStruct);
  if (!v33)
  {
    v45 = 0;
    v36 = 0;
    v46 = v32 + 8;
    *&v34 = 67109376;
    v121 = v34;
    *&v34 = 67109634;
    v120 = v34;
    while (1)
    {
      do
      {
        v47 = &outputStruct[v45];
        if (*v47 != -536870160 && *v47 != 0)
        {
          sub_1000D660C();
          v49 = sub_10000C050(0x3Au);
          v36 = -536870167;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v88 = LOBYTE(inputStruct[4 * v45]);
            v89 = *v47;
            v90 = sub_10025A388(v89);
            *&v135[0] = __PAIR64__(v88, v120);
            WORD4(v135[0]) = 1024;
            *(v135 + 10) = v89;
            HIWORD(v135[0]) = 2080;
            *&v135[1] = v90;
            _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "applebt_rx_main: after applebt_hci_read, pipe %d returned status (0x%08X, %s)\n", v135, 0x18u);
          }
        }

        ++v45;
      }

      while (v45 != 6);
      if (v36)
      {
        v35 = 0;
        goto LABEL_5;
      }

      if ((v32[32] & 1) == 0)
      {
        break;
      }

      v50 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v135[0]) = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "applebt_rx_main: rx route is suspended before terminate - dropping packets\n", v135, 2u);
      }

LABEL_42:
      v51 = sub_10025ADA4(6, inputStruct, outputStruct);
      v36 = 0;
      v45 = 0;
      if (v51)
      {
        v35 = v51;
        goto LABEL_5;
      }
    }

    v52 = 0;
    while (1)
    {
      v123 = v52;
      v53 = &outputStruct[v52];
      if (*(v53 + 4))
      {
        break;
      }

LABEL_87:
      v52 = v123 + 1;
      if (v123 == 5)
      {
        goto LABEL_42;
      }
    }

    v54 = 0;
    v125 = v53 | 4;
    v55 = &inputStruct[4 * v123];
    v56 = *v55;
    v57 = *(v55 + 1);
    while (1)
    {
      v59 = v57 + 1;
      v58 = *(v57 + 2);
      v60 = v46[v56];
      v46[v56] = v60 + 1;
      if (v58 != v60)
      {
        sub_1000D660C();
        v61 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v86 = v46[v56] - 1;
          v87 = *v59;
          *&v135[0] = __PAIR64__(v56, 67109888);
          WORD4(v135[0]) = 1024;
          *(v135 + 10) = v54;
          HIWORD(v135[0]) = 1024;
          LODWORD(v135[1]) = v86;
          WORD2(v135[1]) = 1024;
          *(&v135[1] + 6) = v87;
          _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "applebt_rx_main: seq_num[pipe=%d,item=%d] mismatch, expected %d received %d\n", v135, 0x1Au);
        }

        sub_1000D660C();
        v62 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          sub_10080F8A4(v127, v57 + 2, v128, v62);
        }

        v46[v56] = *v59 + 1;
      }

      v63 = *v57;
      sub_1000031B0();
      if ((v32[19] & 1) == 0)
      {
        goto LABEL_101;
      }

      if (v56 == 10)
      {
        v64 = *v57;
        if (*v57)
        {
          v65 = 0;
          v66 = (v57 + 2);
          do
          {
            v67 = *v66;
            v68 = v66 + 4;
            v69 = *(v66 + 3);
            LOWORD(v70) = v69 + 4;
            v65 += v69 + 8;
            v135[0] = 0uLL;
            v71 = mach_continuous_time();
            v72 = v71 & 0xFFFFFFF000000000 | (16 * v67);
            if (v71 - v72 > 0x800000000)
            {
              v72 -= 0x1000000000;
            }

            *&v135[0] = v72;
            v70 = v70;
            if (v64 - v65 == 1)
            {
              sub_10020DB38(&v68[v70], 1uLL, v135);
              v81 = v135;
              v80 = 6;
              v82 = v68;
              goto LABEL_83;
            }

            v73 = v65;
            sub_10000394C(6, v68, v70, v135);
            v66 = &v68[v70];
          }

          while (v65 < v64);
          v32 = v124;
          if (v73 != v64)
          {
            sub_1000D660C();
            v74 = sub_10000C050(0x3Au);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              *&v135[0] = __PAIR64__(v73, v121);
              WORD4(v135[0]) = 1024;
              *(v135 + 10) = v64;
              _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "packet buffering: current_item_size != packet_len current_item_size: %u, packet_len: %u", v135, 0xEu);
            }
          }
        }

        goto LABEL_86;
      }

      v75 = v63 - 1;
      v77 = (v57 + 2);
      v76 = *(v57 + 4);
      if (v76 == 7)
      {
        v78 = *(v57 + 5) + 1;
        v131 = 0uLL;
        *&v131 = mach_continuous_time();
        BYTE8(v131) = 0;
        if (v75 <= v78)
        {
          if (v75 < v78)
          {
            sub_1000D660C();
            v83 = sub_10000C050(0x3Au);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v135[0]) = v121;
              DWORD1(v135[0]) = v78;
              WORD4(v135[0]) = 2048;
              *(v135 + 10) = v75;
              _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "applebt_rx_main: WARNING! LMP packet length(%d) is larger than actual packet length(%zu) - truncating!", v135, 0x12u);
            }

            v78 = v75;
          }
        }

        else
        {
          sub_10020DB38(&v77[v78 + 1], v75 - v78, &v131);
        }

        v84 = sub_10028A978();
        v85 = v78;
        if (!v84)
        {
          sub_1000040DC();
          if (BYTE8(v131) == 1)
          {
            memset(v135, 0, 100);
            snprintf(v135, 0x64uLL, "BT Controller HCI_LMP wakeupCause (len=0x%hhX)", *(v57 + 5));
            sub_100304AF8("applebt_rx_main: %s", v135);
            sub_1001C499C(v135);
          }

          goto LABEL_85;
        }

        v80 = *v77;
        v82 = v57 + 5;
        v81 = &v131;
      }

      else
      {
        v79 = sub_10020DC44(v76, v57 + 5, v63 - 1);
        v135[0] = 0uLL;
        *&v135[0] = mach_continuous_time();
        BYTE8(v135[0]) = 0;
        v70 = v79;
        if (v75 > v79)
        {
          sub_10020DB38(&v77[v79 + 1], v75 - v79, v135);
        }

        v80 = *v77;
        if (v80 == 3)
        {
          if (sub_100258180())
          {
            v80 = 243;
          }

          else
          {
            v80 = *v77;
          }
        }

        v82 = v57 + 5;
        v81 = v135;
LABEL_83:
        v85 = v70;
      }

      sub_10000394C(v80, v82, v85, v81);
LABEL_85:
      v32 = v124;
LABEL_86:
      sub_10000C198();
      v57 = (v57 + *v57 + 4);
      if (++v54 >= *v125)
      {
        goto LABEL_87;
      }
    }
  }

  v35 = v33;
  v36 = 0;
LABEL_5:
  sub_1000D660C();
  v37 = sub_10000C050(0x3Au);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    sub_10080F8F8(v35, v36, v37);
  }

  if (v35 != -536870195 && v32[19] == 1)
  {
    bzero(v135, 0x400uLL);
    sub_1000031B0();
    sub_10024DBDC(1205);
    sub_10000C198();
    sub_1000D660C();
    v38 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_10080F9A8();
    }

    if (v35 == -536870167)
    {
      v126 = 2048;
      if (sub_100209EA0(&byte_100BC9208, &v126))
      {
        sub_1000D660C();
        v39 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_10080FA2C();
        }
      }

      else
      {
        v95 = v126;
        sub_1000D660C();
        v96 = sub_10000C050(0x3Au);
        v97 = os_log_type_enabled(v96, OS_LOG_TYPE_ERROR);
        if (v95 == 1024)
        {
          if (v97)
          {
            sub_10080FA9C();
          }

          memcpy(v135, &byte_100BC9208, sizeof(v135));
          v104 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v131) = 67109120;
            DWORD1(v131) = DWORD1(v135[12]);
            _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "applebt_rx_main: ID !! applebt_read_crash_data succeeded.(ID %d)\n", &v131, 8u);
          }

          v105 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v131) = 67109120;
            DWORD1(v131) = DWORD2(v135[13]);
            _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "applebt_rx_main: PC !! applebt_read_crash_data succeeded.(PC 0x%08X)\n", &v131, 8u);
          }

          v106 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            *&v131 = __PAIR64__(HIDWORD(v135[13]), 67109888);
            WORD4(v131) = 1024;
            *(&v131 + 10) = v135[14];
            HIWORD(v131) = 1024;
            v132 = DWORD1(v135[14]);
            v133 = 1024;
            v134 = DWORD2(v135[14]);
            _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "applebt_rx_main: LR !! applebt_read_crash_data succeeded.(LR0 0x%08X, LR1 0x%08X, LR2 0x%08X, LR3 0x%08X)\n", &v131, 0x1Au);
          }

          v107 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v131) = 136315138;
            *(&v131 + 4) = &v135[32];
            _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "applebt_rx_main: STR !! applebt_read_crash_data succeeded.(%s)\n", &v131, 0xCu);
          }

          bzero(&byte_100BC9208, 0x800uLL);
          dword_100BC922D = DWORD1(v135[12]);
          *&word_100BC921D = *(&v135[12] + 8);
          *&dword_100BC9241 = *(&v135[13] + 8);
          dword_100BC9251[0] = DWORD2(v135[14]);
        }

        else if (v95 == 2048)
        {
          if (v97)
          {
            sub_10080FB10();
          }

          v98 = dword_100BC922D;
          DWORD1(v135[12]) = dword_100BC922D;
          bzero(&v131, 0x400uLL);
          v125 = byte_100BC9208;
          v123 = byte_100BC920D;
          *&v121 = byte_100BC920E;
          *&v120 = byte_100BC920F;
          v119 = byte_100BC9210;
          snprintf(&v131, 0x400uLL, "abort %d;version=%d;bin_id=%u;uuid=%02X%02X%02X%02X-%02X%02X-%02X%02X-%02X%02X-%02X%02X%02X%02X%02X%02X;BT:%d.%d.%d.%d;PHY:%u.%u.%u.%u;ID=%d;p1=0x%X;p2=0x%X; p3=0x%X;p4=0x%X;EOS", v98, byte_100BC9208, unk_100BC9209, byte_100BC920D, byte_100BC920E, byte_100BC920F, byte_100BC9210, byte_100BC9211, byte_100BC9212, byte_100BC9213, byte_100BC9214, byte_100BC9215, byte_100BC9216, byte_100BC9217, byte_100BC9218, byte_100BC9219, byte_100BC921A, byte_100BC921B, byte_100BC921C, word_100BC921D, word_100BC921F, word_100BC9221, word_100BC9223, word_100BC9225, word_100BC9227, word_100BC9229, word_100BC922B, v98, unk_100BC9231, unk_100BC9235, unk_100BC9239, unk_100BC923D);
          v99 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
          {
            v129 = 136315138;
            v130 = &v131;
            _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "applebt_rx_main: BT-MAC-ABORT-STR1!!(%s)\n", &v129, 0xCu);
          }

          v113 = byte_100BC92C1;
          v111 = byte_100BC92C2;
          v109 = byte_100BC92C3;
          v108[4] = byte_100BC9300;
          v125 = dword_100BC922D;
          v123 = dword_100BC9241;
          *&v121 = dword_100BC9245;
          *&v120 = dword_100BC9249;
          v118 = *&dword_100BC9251[19];
          v119 = dword_100BC924D;
          v116 = *&dword_100BC9251[21];
          v117 = dword_100BC9251[0];
          v115 = dword_100BC9251[1];
          v114 = dword_100BC9251[2];
          v112 = dword_100BC9251[3];
          v110 = dword_100BC9251[4];
          v108[10] = dword_100BC9251[5];
          v108[9] = dword_100BC9251[6];
          v108[8] = dword_100BC9251[7];
          v108[7] = dword_100BC9251[8];
          v108[6] = dword_100BC9251[9];
          v108[5] = dword_100BC9251[10];
          v108[3] = dword_100BC9251[11];
          v108[2] = dword_100BC9251[12];
          v108[1] = dword_100BC9251[13];
          snprintf(&v131, 0x400uLL, "abort %d;PC=0x%x;LR1=0x%x;LR2=0x%x;LR3=0x%x;LR4=0x%x;LR5=0x%x;cpsr=0x%x;dfar=0x%x;dfsr=0x%x;ifar=0x%x;ifsr=0x%x;vic0_vicrawintr=0x%X;vic1_vicrawintr=0x%X;vic2_vicrawintr=0x%X;irq_vic_0=0x%X;irq_vic_1=0x%X;irq_vic_2=0x%X;fiq_vic_0=0x%X;fiq_vic_1=0x%X;fiq_vic_2=0x%X;vic3_vicrawintr=0x%X;irq_vic_3=0x%X;fiq_vic_3=0x%X;raw_irq_status=0x%llx;prev_raw_irq_status=0x%llx;local_bt_clk=0x%X;coex_activity_bits=0x%X;coex_envelop_bits=0x%X;top_semaphores_lock_status_hw=0x%X;top_semaphores_lock_status_fw=0x%X;context=0x%X;abort_counter=0x%X;unhandled_exception_counter=0x%X;syndrome0=0x%X;far0=0x%X;pc0=0x%X;lr0=0x%X;psr0=0x%X;syndrome1=0x%X;far1=0x%X;pc1=0x%X;lr1=0x%X;psr1=0x%X;syndrome2=0x%X;far2=0x%X;pc2=0x%X;lr2=0x%X;psr2=0x%X;system_exit_status=0x%X;EOS", dword_100BC922D, dword_100BC9241, dword_100BC9245, dword_100BC9249, dword_100BC924D, dword_100BC9251[0], dword_100BC9251[1], dword_100BC9251[2], dword_100BC9251[3], dword_100BC9251[4], dword_100BC9251[5], dword_100BC9251[6], dword_100BC9251[7], dword_100BC9251[8], dword_100BC9251[9], dword_100BC9251[10], dword_100BC9251[11], dword_100BC9251[12], dword_100BC9251[13], dword_100BC9251[14], dword_100BC9251[15], dword_100BC9251[16], dword_100BC9251[17], dword_100BC9251[18], *&dword_100BC9251[19], *&dword_100BC9251[21], dword_100BC9251[23], dword_100BC9251[24], dword_100BC9251[25], dword_100BC9251[26], dword_100BC9251[27], byte_100BC92C1, byte_100BC92C2, byte_100BC92C3, dword_100BC92C4, unk_100BC92C8, dword_100BC92CC, unk_100BC92D0, dword_100BC92D4, unk_100BC92D8, dword_100BC92DC, unk_100BC92E0, dword_100BC92E4, unk_100BC92E8, dword_100BC92EC, unk_100BC92F0, dword_100BC92F4, unk_100BC92F8, dword_100BC92FC, byte_100BC9300);
          v100 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
          {
            v129 = 136315138;
            v130 = &v131;
            _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "applebt_rx_main: BT-MAC-ABORT-STR2!!(%s)\n", &v129, 0xCu);
          }

          v125 = unk_100BC9305;
          v123 = byte_100BC9307;
          *&v121 = byte_100BC9308;
          *&v120 = byte_100BC9309;
          v119 = word_100BC930A;
          v118 = byte_100BC930C;
          v117 = byte_100BC930D;
          v116 = byte_100BC930E;
          v115 = byte_100BC930F;
          v114 = byte_100BC9310;
          v113 = byte_100BC9311;
          v112 = byte_100BC9312;
          v111 = byte_100BC9313;
          v110 = byte_100BC9314;
          v109 = word_100BC932F;
          snprintf(&v131, 0x400uLL, "abort %d;rx_header_status=0x%x;tx_header_status=0x%x;sync_valid=0x%x;hw_machine_sig=0x%x;general_status=0x%x;esco_tx_en_state=0x%x;sch_current_mrl=0x%x;rx_data_type=0x%x;tx_data_type=0x%x;rx_packet_length=0x%x;tx_packet_length=0x%x;total_rx_tx_length=0x%X;rx_watchdog_timer_counter=0x%X;rx_watchdog_occured=0x%X;dbl_buf_index=0x%X;last_scheduled_btclk=0x%X;prev_scheduled_btclk=0x%X;prev_activity_type=0x%X;bt_clk_freeze0=0x%X;bt_clk_freeze1=0x%X;bt_clk_freeze2=0x%X;pt_freeze0=0x%X;pt_freeze1=0x%X;pt_freeze2=0x%X;sm_clk_freeze=0x%X;max_dram_wakeup_duration=0x%X;dram_protection_mode=0x%X;dram_access_allowed=0x%X;dram_is_enable=0x%X;force_dram_awake_bit=0x%X;etm_etb_enabled=0x%X;trx_timers_supported=0x%X;dart_error_occurred=0x%X;syncrhonous_external_abort_occured=0x%X;init_state=0x%X;recovery_state=0x%X;sleep_wakeup_state=0x%X;sleep_go_to_deep_sleep_state=0x%X;rtkit_assert_state=0x%X;rtkit_power_off_state=0x%X;EOS", dword_100BC922D, unk_100BC9301, unk_100BC9305, byte_100BC9307, byte_100BC9308, byte_100BC9309, word_100BC930A, byte_100BC930C, byte_100BC930D, byte_100BC930E, byte_100BC930F, byte_100BC9310, byte_100BC9311, byte_100BC9312, byte_100BC9313, byte_100BC9314, dword_100BC9319, dword_100BC931D, byte_100BC9321, dword_100BC9323, dword_100BC9327, dword_100BC932B, word_100BC932F, word_100BC9331, word_100BC9333, dword_100BC9335, word_100BC9339, byte_100BC933B, byte_100BC933C & 1, (byte_100BC933C >> 1) & 1, (byte_100BC933C >> 2) & 1, (byte_100BC933C >> 3) & 1, (byte_100BC933C >> 4) & 1, (byte_100BC933C >> 5) & 1, (byte_100BC933C >> 6) & 1, byte_100BC933D, byte_100BC933E, byte_100BC933F, byte_100BC9340, byte_100BC9341, byte_100BC9342);
          v101 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
          {
            v129 = 136315138;
            v130 = &v131;
            _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "applebt_rx_main: BT-MAC-ABORT-STR3!!(%s)\n", &v129, 0xCu);
          }

          snprintf(&v135[32], 0x200uLL, "abort %d p1=0x%X p2=0x%X p3=0x%X p4=0x%X;ID:%d;BT:%d.%d.%d.%d;PHY:%u.%u.%u.%u;PC:0x%x;LR1:0x%x;LR2:0x%x;LR3:0x%x;LR4:0x%x;EOS", dword_100BC922D, unk_100BC9231, unk_100BC9235, unk_100BC9239, unk_100BC923D, dword_100BC922D, word_100BC921D, word_100BC921F, word_100BC9221, word_100BC9223, word_100BC9225, word_100BC9227, word_100BC9229, word_100BC922B, dword_100BC9241, dword_100BC9245, dword_100BC9249, dword_100BC924D, dword_100BC9251[0]);
          memcpy(&unk_100BC9A08, &v135[32], 0x200uLL);
          v102 = sub_10000C050(0x3Au);
          v103 = os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT);
          v32 = v124;
          if (v103)
          {
            v129 = 136315138;
            v130 = &v135[32];
            _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "applebt_rx_main: BT-MAC-ABORT-STR4!!(%s)\n", &v129, 0xCu);
          }
        }

        else if (v97)
        {
          sub_10080FB84();
        }
      }
    }

    if (sub_10025A550())
    {
      sub_1000D660C();
      v40 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_10080FBFC();
      }
    }

    sub_1000031B0();
    if (v35 == -536870167)
    {
      sub_1000D660C();
      v41 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10080FCE4();
      }

      if (v32[33] == 1)
      {
        sub_100304C44();
      }

      if (off_100B57C60)
      {
        off_100B57C60(7, DWORD1(v135[12]) | (dword_100BC9241 << 32), &v135[32]);
      }

      v42 = 1214;
    }

    else
    {
      sub_1000D660C();
      v91 = sub_10000C050(0x3Au);
      v92 = os_log_type_enabled(v91, OS_LOG_TYPE_ERROR);
      if (v35 == -536870211)
      {
        if (v92)
        {
          sub_10080FCA8();
        }

        if (off_100B57C68)
        {
          off_100B57C68(0);
        }

        v42 = 1206;
      }

      else
      {
        if (v92)
        {
          sub_10080FC6C();
        }

        if (off_100B57C68)
        {
          off_100B57C68(1);
        }

        v42 = 1205;
      }
    }

    sync();
    sub_10024DC48(v42);
LABEL_101:
    sub_10000C198();
  }

LABEL_102:
  v93 = sub_10000C050(0x3Au);
  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v135[0]) = 0;
    _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "applebt_rx_main: Exiting rx thread\n", v135, 2u);
  }

  return 0;
}

uint64_t sub_100190714(int a1)
{
  v1 = sub_100209B60(a1);
  if (v1 == -536870201)
  {
    v2 = 102;
  }

  else
  {
    v2 = 105;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100190764(int a1)
{
  memset(v2, 0, sizeof(v2));
  if (a1)
  {
    *&v2[0] = 1;
  }

  return sub_100209718(v2);
}

uint64_t sub_1001907C8(int a1, uint64_t a2, int a3)
{
  if (byte_100B57C83 != 1)
  {
    return 1205;
  }

  v4 = a2;
  v6 = 1214;
  if (a1 > 2)
  {
    if (a1 != 3 && a1 != 243)
    {
      return v6;
    }

    v9 = &_mh_execute_header.magic + 2;
  }

  else if (a1 == 1)
  {
    v9 = 0;
  }

  else
  {
    if (a1 != 2)
    {
      return v6;
    }

    v7 = sub_100258628(a2);
    if (v7 == 2)
    {
      v8 = 4;
    }

    else
    {
      v8 = 1;
    }

    if (v7 == 1)
    {
      v9 = 3;
    }

    else
    {
      v9 = v8;
    }
  }

  if (a1 == 2 || a1 == 243)
  {
    v11 = 5;
  }

  else
  {
    v11 = 4;
  }

  v12 = v11 + a3;
  if (v11 + a3 > *(qword_100B57C70 + 4 * v9))
  {
    sub_1000D660C();
    v13 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = *(qword_100B57C70 + 4 * v9);
      *buf = 67109632;
      *&buf[4] = v11 + a3;
      LOWORD(v21) = 1024;
      *(&v21 + 2) = v9;
      HIWORD(v21) = 1024;
      v22 = v19;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "applebt_transport_send_request: headerBytes + length (%d) is greater than pipe[%d] size (%d)\n", buf, 0x14u);
    }

    if (v12 > *(qword_100B57C70 + 4 * v9))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/Platforms/Darwin/applebt_transport.c", 806, "headerBytes + length <= btdev->pipe_items_info->size[pipe_id]");
    }
  }

  __chkstk_darwin();
  v15 = &buf[-v14];
  bzero(&buf[-v14], v16);
  v15[4] = a1;
  *(v15 + 5) = v4;
  v15[7] = a3;
  if (a1 == 2)
  {
    v15[8] = BYTE1(a3);
  }

  if (a3)
  {
    sub_10001F6DC(&v15[v11 + 4]);
  }

  else
  {
    sub_10001F480();
  }

  *v15 = v12;
  v17 = *(&qword_100B57C70 + v9 + 8);
  *(&qword_100B57C70 + v9 + 8) = v17 + 1;
  *(v15 + 1) = v17;
  v21 = v15;
  *buf = v9;
  buf[1] = 1;
  *&buf[4] = (v11 + a3) + 4;
  if (!sub_10025A95C(1, buf))
  {
    return 625;
  }

  v6 = 1205;
  sub_10024DBDC(1205);
  return v6;
}

uint64_t sub_100190A80()
{
  if (byte_100B57C83)
  {
    return 1205;
  }

  v0 = sub_100259F1C();
  if (!v0)
  {
    v0 = sub_10025A78C();
    if (v0)
    {
      sync();
      sub_10024DC48(1205);
    }

    qword_100B57C70 = sub_1001A757C();
    if (!qword_100B57C70)
    {
      sync();
      sub_10024DC48(1218);
    }

    byte_100B57C90 = 0;
    byte_100B57C83 = 1;
    if (pthread_create(&qword_100B57C88, 0, sub_10018F24C, &qword_100B57C70))
    {
      sync();
      sub_10024DC48(1218);
    }

    else
    {
      sub_1001C5C44(qword_100B57C88, 63);
    }
  }

  return v0;
}

uint64_t sub_100190B50()
{
  if (byte_100B57C83 != 1)
  {
    return 1205;
  }

  byte_100B57C83 = 0;
  if (sub_10025A550())
  {
    sub_1000D660C();
    v0 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_10080FD98();
    }
  }

  sub_10000C198();
  v1 = pthread_join(qword_100B57C88, 0);
  sub_1000031B0();
  if (v1)
  {
    sub_1000D660C();
    v2 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10080FE08();
    }
  }

  return v1;
}

uint64_t sub_100190C0C()
{
  if ((byte_100B57C83 & 1) == 0)
  {
    sync();
    sub_10024DC48(1205);
  }

  return (*(qword_100B57C70 + 4) - 1);
}

uint64_t sub_100190C6C()
{
  result = sub_100190B50();
  if (!result)
  {

    return sub_100190A80();
  }

  return result;
}

os_log_t sub_100190CA0(uint64_t a1)
{
  for (i = 0; i != 93; ++i)
  {
    if (*(a1 + 32) == 91)
    {
      v3 = "Stack.ALL";
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      *__str = 0u;
      v7 = 0u;
      v4 = sub_1003047D4(i);
      snprintf(__str, 0x100uLL, "Stack.%s", v4);
      v3 = __str;
    }

    result = os_log_create("com.apple.bluetooth", v3);
    qword_100B57CA0[i] = result;
  }

  return result;
}

void sub_100190DA4()
{
  if (dword_100B518C0 == -1)
  {
    dword_100B518C0 = open("/dev/btwake", 0);
    if (dword_100B518C0 == -1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to turn on BT)_WAKE signal", v0, v1, v2, v3, v4, v5, v6, v8);
        v7 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }
  }
}

uint64_t sub_100190E2C()
{
  result = dword_100B518C0;
  if (dword_100B518C0 != -1)
  {
    result = close(dword_100B518C0);
    dword_100B518C0 = -1;
  }

  return result;
}

uint64_t sub_100190E64(int a1, uint64_t a2)
{
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  *__str = 0u;
  v111 = 0u;
  v4 = sub_10022E8A0();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2400000;
  }

  if (a2 && (__strlcpy_chk(), HIBYTE(v125) = 0, (v6 = strtok(__str, ",")) != 0))
  {
    v7 = v6;
    v8 = strtok(0, ",");
    if (v8)
    {
      v5 = strtoul(v8, 0, 0);
    }
  }

  else
  {
    v7 = "com.apple.uart.sk.bluetooth";
  }

  memset(&v142, 0, sizeof(v142));
  v108 = 0;
  v109 = 0u;
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v107 = 0;
  dword_100B51948 = socket(32, 1, 2);
  if (dword_100B51948 < 0)
  {
    if (sub_10000C240())
    {
      v18 = __error();
      v19 = strerror(*v18);
      sub_10000AF54("socket failed (error = %s)\n", v20, v21, v22, v23, v24, v25, v26, v19);
      v27 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 1201;
  }

  *&v108.sa_len = 139296;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0;
  __strlcpy_chk();
  if (ioctl(dword_100B51948, 0xC0644E03uLL, &v135))
  {
    if (sub_10000C240())
    {
      v9 = __error();
      strerror(*v9);
      sub_10000AF54("ioctl(CTLIOCGINFO, %s) failed (error = %s)\n", v10, v11, v12, v13, v14, v15, v16, v7);
      v17 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_14;
  }

  *&v108.sa_data[2] = v135;
  *&v108.sa_data[6] = 0;
  if (connect(dword_100B51948, &v108, 0x20u) == -1)
  {
    if (sub_10000C240())
    {
      v31 = __error();
      strerror(*v31);
      sub_10000AF54("connect(%s) failed (error = %s)\n", v32, v33, v34, v35, v36, v37, v38, v7);
      v39 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_14;
  }

  if (!strcmp(v7, "com.apple.uart.sk.bluetooth"))
  {
    *uu = 0;
    v134 = 0;
    memset(out, 0, 37);
    v106 = 63;
    v105 = 0x3F00000400;
    if (setsockopt(dword_100B51948, 2, -2146675692, &v105, 0xCu) == -1)
    {
      if (!sub_10000C240())
      {
        goto LABEL_14;
      }

      v60 = __error();
      strerror(*v60);
      sub_10000AF54("set IOAOSSKYSETCHANNELSPEC (on %s) failed (error = %s)\n", v61, v62, v63, v64, v65, v66, v67, v7);
      v68 = sub_10000C050(0x3Au);
      if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v107 = 16;
      if (getsockopt(dword_100B51948, 2, 1074811922, uu, &v107) == -1)
      {
        if (!sub_10000C240())
        {
          goto LABEL_14;
        }

        v69 = __error();
        strerror(*v69);
        sub_10000AF54("get IOAOSSKYGETCHANNELUUID (on %s) failed (error = %s)\n", v70, v71, v72, v73, v74, v75, v76, v7);
        v77 = sub_10000C050(0x3Au);
        if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }
      }

      else
      {
        uuid_unparse_upper(uu, out);
        qword_100B58F88 = os_channel_create();
        if (qword_100B58F88)
        {
          dword_100B5194C = kqueue();
          if (dword_100B5194C == -1)
          {
            if (sub_10000C240())
            {
              v40 = __error();
              v41 = strerror(*v40);
              sub_10000AF54("creating write kqueue failed (error = %s)\n", v42, v43, v44, v45, v46, v47, v48, v41);
              v49 = sub_10000C050(0x3Au);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                sub_10080F7A0();
              }
            }
          }

          changelist.ident = os_channel_get_fd();
          memset(&changelist.fflags, 0, 20);
          *&changelist.filter = 393214;
          v127 = &dword_100B58F90;
          v130 = 0;
          v129 = 0;
          v128 = 393206;
          v131 = 0;
          if (kevent(dword_100B5194C, &changelist, 2, 0, 0, 0) == -1)
          {
            close(dword_100B5194C);
            dword_100B5194C = -1;
            os_channel_destroy();
            qword_100B58F88 = 0;
            close(dword_100B51948);
            dword_100B51948 = -1;
            if (!sub_10000C240())
            {
              return 1201;
            }

            v87 = __error();
            strerror(*v87);
            sub_10000AF54("creating write kevent (on %s) failed (error = %s)\n", v88, v89, v90, v91, v92, v93, v94, v7);
            v95 = sub_10000C050(0x3Au);
            if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
            {
              return 1201;
            }
          }

          else
          {
            dword_100B51950 = kqueue();
            if (dword_100B51950 == -1)
            {
              if (sub_10000C240())
              {
                v50 = __error();
                v51 = strerror(*v50);
                sub_10000AF54("creating read kqueue failed (error = %s)\n", v52, v53, v54, v55, v56, v57, v58, v51);
                v59 = sub_10000C050(0x3Au);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F7A0();
                }
              }
            }

            changelist.ident = os_channel_get_fd();
            *&changelist.filter = 393215;
            memset(&changelist.fflags, 0, 20);
            v127 = &dword_100B58F90;
            v128 = 393206;
            v130 = 0;
            v129 = 0;
            v131 = 0;
            if (kevent(dword_100B51950, &changelist, 2, 0, 0, 0) != -1)
            {
              if (os_channel_attr_create())
              {
                if (!os_channel_read_attr())
                {
                  os_channel_attr_get();
                  os_channel_attr_get();
                  os_channel_attr_get();
                }

                os_channel_attr_destroy();
              }

              goto LABEL_21;
            }

            close(dword_100B51950);
            dword_100B51950 = -1;
            close(dword_100B5194C);
            dword_100B5194C = -1;
            os_channel_destroy();
            qword_100B58F88 = 0;
            close(dword_100B51948);
            dword_100B51948 = -1;
            if (!sub_10000C240())
            {
              return 1201;
            }

            v96 = __error();
            strerror(*v96);
            sub_10000AF54("creating read kevent (on %s) failed (error = %s)\n", v97, v98, v99, v100, v101, v102, v103, v7);
            v104 = sub_10000C050(0x3Au);
            if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              return 1201;
            }
          }

          sub_10080F7A0();
          return 1201;
        }

        if (!sub_10000C240() || (v78 = __error(), strerror(*v78), sub_10000AF54("os_channel_create (on %s) failed (error = %s)\n", v79, v80, v81, v82, v83, v84, v85, v7), v86 = sub_10000C050(0x3Au), !os_log_type_enabled(v86, OS_LOG_TYPE_ERROR)))
        {
LABEL_14:
          close(dword_100B51948);
          dword_100B51948 = -1;
          return 1201;
        }
      }
    }

    sub_10080F7A0();
    goto LABEL_14;
  }

LABEL_21:
  v107 = 72;
  getsockopt(dword_100B51948, 2, 1078490131, &v142, &v107);
  cfmakeraw(&v142);
  cfsetspeed(&v142, v5);
  if (a1 == 2 || a1 == 1)
  {
    v29 = v142.c_iflag | 0x10;
    v30 = v142.c_cflag & 0xFFFFFFFFFFFCCFFFLL | 0x1000;
  }

  else
  {
    if (a1)
    {
      return 101;
    }

    v29 = v142.c_iflag | 4;
    v30 = 232192;
  }

  v142.c_iflag = v29;
  v142.c_cflag = v30;
  setsockopt(dword_100B51948, 2, -2142735340, &v142, 0x48u);
  dword_100B58F90 = 0;
  dword_100B58F94 = 0;
  sub_1001C5D40(&stru_100B58F98);
  if (sub_1001C5BA4(&qword_100B58FC8, sub_100191B38, 0))
  {
    sub_1001C5C44(qword_100B58FC8, 63);
    sub_10022DBDC();
    return 0;
  }

  else
  {
    sub_1000C52F4(104);
    return sub_1001916F4();
  }
}

uint64_t sub_1001916F4()
{
  v0 = dword_100B51948;
  if (dword_100B51948 != -1)
  {
    dword_100B58F90 = 1;
    if (dword_100B5194C != -1 || dword_100B51950 != -1)
    {
      v3.ident = &dword_100B58F90;
      *&v3.filter = 0x10000000000FFF6;
      v3.data = 0;
      v3.udata = 0;
      kevent(dword_100B5194C, &v3, 1, 0, 0, 0);
      kevent(dword_100B51950, &v3, 1, 0, 0, 0);
      v0 = dword_100B51948;
    }

    close(v0);
    while (!dword_100B58F94)
    {
      sub_1000B9C80(&stru_100B58F98);
    }

    if (qword_100B58F88)
    {
      os_channel_destroy();
      qword_100B58F88 = 0;
    }

    if (dword_100B5194C != -1)
    {
      close(dword_100B5194C);
      dword_100B5194C = -1;
    }

    if (dword_100B51950 != -1)
    {
      close(dword_100B51950);
      dword_100B51950 = -1;
    }

    sub_1001C5D64(&stru_100B58F98);
    dword_100B51948 = -1;
  }

  return 0;
}

uint64_t sub_100191838(char *__buf, unsigned int a2)
{
  v2 = a2;
  if (!qword_100B58F88)
  {
    if (a2)
    {
      while (1)
      {
        v17 = write(dword_100B51948, __buf, v2);
        if (v17 < 0)
        {
          break;
        }

        __buf += v17 & 0x7FFFFFFF;
        LOWORD(v2) = v2 - v17;
        if (!v2)
        {
          return 625;
        }
      }

      if (sub_10000C240())
      {
        v22 = __error();
        v23 = strerror(*v22);
        sub_10000AF54("BM3UART write failed: %s", v24, v25, v26, v27, v28, v29, v30, v23);
        v31 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 1205;
    }

    return 625;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  *__dst = 0u;
  os_channel_ring_id();
  os_channel_tx_ring();
  next_slot = os_channel_get_next_slot();
  if (__buf != &unk_100B57F88)
  {
    sub_1000D660C();
  }

  if (v2 > 0x1000)
  {
    sub_1000D660C();
  }

  else if (!v2)
  {
    v5 = 0;
    v6 = 0;
LABEL_7:
    if (v2 != v5)
    {
      sub_1000D660C();
    }

    if (v6)
    {
      os_channel_advance_slot();
      if (os_channel_sync() == -1)
      {
        if (!sub_10000C240())
        {
          return 1205;
        }

        v7 = __error();
        v8 = strerror(*v7);
        sub_10000AF54("BM3UART os_channel_sync tx failed: %s", v9, v10, v11, v12, v13, v14, v15, v8);
        v16 = sub_10000C050(0x3Au);
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          return 1205;
        }

        goto LABEL_13;
      }
    }

    return 625;
  }

  v6 = 0;
  v5 = 0;
  while (next_slot || !v6)
  {
    if (!next_slot)
    {
LABEL_25:
      while (1)
      {
        memset(&eventlist, 0, sizeof(eventlist));
        if (kevent(dword_100B5194C, 0, 0, &eventlist, 1, 0) == -1 || eventlist.filter != 65534)
        {
          return 1205;
        }

        v20 = os_channel_get_next_slot();
        if (v20)
        {
          next_slot = v20;
          break;
        }
      }
    }

    v6 = next_slot;
    if (WORD1(v44) >= (v2 - v5))
    {
      v21 = (v2 - v5);
    }

    else
    {
      v21 = WORD1(v44);
    }

    memmove(__dst[0], &__buf[v5], v21);
    WORD1(v44) = v21;
    os_channel_set_slot_properties();
    v5 += v21;
    next_slot = os_channel_get_next_slot();
    if (v2 <= v5)
    {
      goto LABEL_7;
    }
  }

  os_channel_advance_slot();
  if (os_channel_sync() != -1)
  {
    goto LABEL_25;
  }

  if (!sub_10000C240())
  {
    return 1205;
  }

  v33 = __error();
  v34 = strerror(*v33);
  sub_10000AF54("BM3UART os_channel_sync tx partial failed: %s", v35, v36, v37, v38, v39, v40, v41, v34);
  v42 = sub_10000C050(0x3Au);
  if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    return 1205;
  }

LABEL_13:
  sub_10080F7A0();
  return 1205;
}

uint64_t sub_100191B38()
{
  sub_1001C5D20("RxLoop");
  memset(v26, 0, sizeof(v26));
  v0 = dword_100B51948;
  if (__darwin_check_fd_set_overflow(dword_100B51948, v26, 0))
  {
    *(v26 + ((v0 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v0;
  }

  if (qword_100B58F88)
  {
    os_channel_ring_id();
    os_channel_rx_ring();
    v1 = 4096;
    do
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      memset(&eventlist, 0, sizeof(eventlist));
      v2 = kevent(dword_100B51950, 0, 0, &eventlist, 1, 0);
      if (eventlist.filter != -1)
      {
        break;
      }

      v3 = v2;
      sub_1000031B0();
      if (os_channel_get_next_slot())
      {
        do
        {
          v4 = WORD1(v22);
          if (WORD1(v22))
          {
            v5 = 0;
            do
            {
              v6 = v4 - v5;
              if (v1 >= v6)
              {
                v7 = v6;
              }

              else
              {
                v7 = v1;
              }

              v1 = sub_10022DBEC();
              v5 += v7;
              v4 = WORD1(v22);
            }

            while (v5 < WORD1(v22));
          }

          else
          {
            v5 = 0;
          }

          if (v5 != v4)
          {
            sub_1000D660C();
          }
        }

        while (os_channel_get_next_slot());
        os_channel_advance_slot();
      }

      sub_10000C198();
      if (v3 < 1)
      {
        break;
      }
    }

    while (!dword_100B58F90);
  }

  else
  {
    v8 = 4096;
    do
    {
      if (v8 >= 4096)
      {
        v9 = 4096;
      }

      else
      {
        v9 = v8;
      }

      if (read(dword_100B51948, &unk_100B58FD0, v9) < 1)
      {
        break;
      }

      sub_1000031B0();
      v8 = sub_10022DBEC();
      sub_10000C198();
    }

    while (!dword_100B58F90);
  }

  if (dword_100B58F90)
  {
    sub_1000031B0();
    dword_100B58F94 = 1;
    j__pthread_cond_signal(&stru_100B58F98);
    sub_10000C198();
  }

  else if (sub_10000C240())
  {
    v10 = __error();
    v11 = strerror(*v10);
    sub_10000AF54("BM3UART read failed: %s\n", v12, v13, v14, v15, v16, v17, v18, v11);
    v19 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 0;
}

void *sub_100191DCC()
{
  if (byte_100B59FD0)
  {
    return &unk_100B51958;
  }

  else
  {
    return &unk_100B51978;
  }
}

uint64_t sub_100191DFC(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("deInitChannelQueue channel %x cid=%d", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v21 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    sub_1000BBDD0(*(a1 + 8));
    *(a1 + 8) = 0;
    sub_1000BBDD0(*(a1 + 16));
    result = 0;
    *(a1 + 16) = 0;
    return result;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("channel can not be null", v11, v12, v13, v14, v15, v16, v17, v19);
    v18 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 101;
}

_OWORD *sub_100191F30(__int16 a1, __int16 a2, int *a3, int a4, __int16 a5)
{
  result = sub_100007618(0xA8uLL, 0x10F204030A77F9FuLL);
  *result = 0u;
  result[1] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  *(result + 20) = 0;
  *(result + 1) = a1;
  *result = a2;
  v11 = *a3;
  *(result + 4) = *(a3 + 2);
  *(result + 1) = v11;
  *(result + 5) = a4;
  *(result + 64) = a5;
  *(result + 144) = a4 != 4;
  return result;
}

void sub_100191FD0(void *a1)
{
  if (a1)
  {
    sub_1000B7B40(a1 + 16);

    sub_10000C1E8(a1);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("cannot free a null pointer", v2, v3, v4, v5, v6, v7, v8, v10);
    v9 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_10019205C(unsigned __int16 *a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("sendUnstallablePacket packet=%x cid=%d channel=%x", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v25 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *(a1 + 3) = a1;
  *(a1 + 20) = a2;
  *(a1 + 6) = 626;
  v12 = sub_1000E1FE8((a1 + 2));
  v13 = sub_1000B7EDC(0, *a1, v12, (a1 + 8), 0);
  if (sub_10000C240())
  {
    sub_10000AF54("sendUnstallablePacket OI_L2CAP_WriteMBUF returned %!", v14, v15, v16, v17, v18, v19, v20, v13);
    v21 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = sub_10000C0FC();
      *buf = 136446210;
      v25 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return v13;
}

uint64_t sub_1001921E0(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a1;
  *(a1 + 160) = a2;
  v3 = *(a1 + 144);
  if (v3 >= 3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Priority %d is out of range (max=%d). using default priority", v4, v5, v6, v7, v8, v9, v10, *(a1 + 144));
      v11 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v3 = 0;
    *(a1 + 144) = 0;
  }

  v12 = *(a1 + 152);
  if (v12)
  {
    v13 = v12 + 8;
    if (sub_10000C248(*(v12 + 8 + 8 * v3)) < 0x15)
    {
      sub_1000B8B8C(*(v13 + 8 * *(a1 + 144)), a1, 168);
      sub_100192390(*(a1 + 152));
      return 0;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Queue size exceeded MAX(%d)", v14, v15, v16, v17, v18, v19, v20, 20);
      v21 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v22 = 410;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("channel can not be null", v23, v24, v25, v26, v27, v28, v29, v40);
      v30 = sub_10000C050(0x52u);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v22 = 101;
  }

  sub_10000C1E8(a1);
  if (sub_10000C240())
  {
    sub_10000AF54("pushPacketToChannelQueue failed with result %!", v31, v32, v33, v34, v35, v36, v37, v22);
    v38 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return v22;
}

void sub_100192390(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 3) == 1)
    {
      v1 = 0;
      v2 = a1 + 8;
      v3 = 1;
      do
      {
        v4 = sub_1000BB054(*(v2 + 8 * v1), 0);
        v5 = v4;
        if ((v3 & 1) == 0)
        {
          break;
        }

        v3 = 0;
        v1 = 1;
      }

      while (!v4);
      if (v4)
      {
        v6 = sub_1000E1FE8(v4 + 4);
        if (!sub_1000B7EDC(sub_10019264C, *v5, v6, (v5 + 8), 0))
        {
          *(*(v5 + 19) + 3) = 0;
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("sendNextPacket NULL channel", v7, v8, v9, v10, v11, v12, v13, v15);
    v14 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_100192470(unsigned __int16 *a1, unsigned int a2, unsigned __int16 a3, char a4)
{
  if (!a1)
  {
    return 101;
  }

  if (!a2)
  {
    v5 = 0;
LABEL_12:
    v10 = &a1[12 * v5];
    *v10 = a3;
    *(v10 + 2) = a4;
    *(v10 + 3) = 1;
    *(v10 + 1) = sub_1000BAE38(0, 0);
    v11 = sub_1000BAE38(0, 0);
    result = 0;
    *(v10 + 2) = v11;
    return result;
  }

  v4 = 0;
  v5 = a2;
  v6 = a1;
  while (1)
  {
    v8 = *v6;
    v6 += 12;
    v7 = v8;
    if (a2 <= 0xFF && !v7)
    {
      break;
    }

    if (a2 == ++v4)
    {
      goto LABEL_11;
    }
  }

  v5 = v4;
LABEL_11:
  if (v5 <= 0x1D)
  {
    goto LABEL_12;
  }

  return 0;
}

void sub_10019252C(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  if (sub_10000C240())
  {
    sub_10000AF54("removeL2capConnection(%d)", v5, v6, v7, v8, v9, v10, v11, a3);
    v12 = sub_10000C050(0x52u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v15 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v13 = 30;
  do
  {
    if (*a1 == a3)
    {
      *a1 = 0;
      *(a1 + 3) = 0;
      sub_100191DFC(a1);
    }

    a1 += 12;
    --v13;
  }

  while (v13);
}

unsigned __int16 *sub_100192628(unsigned __int16 *result, uint64_t a2, int a3)
{
  v3 = 30;
  while (*result != a3)
  {
    result += 12;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10019264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    sub_1000D660C();
  }

  v8 = *(a2 + 8);
  if (!v8)
  {
    sub_1000D660C();
  }

  v10 = v8[19];
  v9 = v8[20];
  *(v10 + 3) = 1;
  if (v9)
  {
    v9(a1, a2, a3, a4);
    v10 = v8[19];
  }

  sub_100191FD0(v8);

  return sub_100192390(v10);
}

void sub_1001926E0(uint64_t a1, __int16 a2, int a3)
{
  qword_100B59FD8 = a1;
  word_100B59FF0 = a2;
  if (a3 != 1216)
  {
    if ((byte_100B59FFC & 1) == 0)
    {
      sub_1000D660C();
    }

    v21 = 0;
    v22 = 0;
    v20 = 0;
    byte_100B59FFC = 0;
    if (!a3 && (v4 = word_100B59FF8, word_100B59FF8))
    {
LABEL_18:
      if (v4 >= word_100B59FF0)
      {
        v18 = word_100B59FF0;
      }

      else
      {
        v18 = v4;
      }

      v19 = qword_100B59FE8;
      memmove(qword_100B59FD8, qword_100B59FE8, v18);
      qword_100B59FE8 = v19 + v18;
      word_100B59FF8 -= v18;
      byte_100B59FFC = sub_10022DBCC() == 0;
    }

    else
    {
      LODWORD(v22) = a3;
      BYTE4(v22) = byte_100B5A000;
      v21 = &v22;
      LOWORD(v20) = 8;
      v5 = sub_1000228C0(sub_1001928B4, &v20, 0);
      if (v5)
      {
        v6 = v5;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_Dispatch_RegisterFunc failed %!", v7, v8, v9, v10, v11, v12, v13, v6);
          v14 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      if (qword_100B59FE0)
      {
        sub_10000C1E8(qword_100B59FE0);
        qword_100B59FE0 = 0;
        word_100B59FF8 = 0;
      }

      v15 = 0;
      LOBYTE(v4) = 1;
      do
      {
        v16 = v4;
        v4 = *(&dword_100B5A010 + v15);
        if (*(&dword_100B5A010 + v15))
        {
          v17 = qword_100B5A018[v15];
          byte_100B5A000 = *(&word_100B5A014 + v15);
          qword_100B59FE0 = v17;
          qword_100B59FE8 = v17;
          word_100B59FF8 = v4;
          *(&dword_100B5A010 + v15) = 0;
          goto LABEL_18;
        }

        v15 = &_mh_execute_header.magic + 1;
      }

      while ((v16 & 1) != 0);
      v4 = word_100B59FF8;
      if (word_100B59FF8)
      {
        goto LABEL_18;
      }
    }
  }
}

void sub_1001928B4(uint64_t a1)
{
  if ((*(qword_100B5A008 + 2048) & 1) == 0)
  {
    sub_100256D50(*(*(a1 + 8) + 4), **(a1 + 8));
  }
}

uint64_t sub_1001928D8()
{
  qword_100B5A018[0] = 0;
  unk_100B5A020 = 0;
  word_100B5A014 = 0;
  dword_100B5A010 = 0;
  result = sub_10022DB60();
  if (!result)
  {
    v1 = sub_1001BBBD8(0x804uLL, 0x1000040AA33F4EEuLL);
    qword_100B5A008 = v1;
    v1[511] = 4;
    *(v1 + 2048) = 0;
    sub_100193120(5);
    return 109;
  }

  return result;
}

uint64_t sub_10019294C()
{
  if (*(qword_100B5A008 + 2044) == 4)
  {
    return 109;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100192974(int a1, __int16 a2, int a3)
{
  if (*(qword_100B5A008 + 2048))
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

  if (byte_100B59FFC == 1)
  {
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = v9;
      if (!*(&dword_100B5A010 + v8))
      {
        break;
      }

      v9 = 0;
      v8 = &_mh_execute_header.magic + 1;
      if ((v10 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (byte_100B5A000 == a1)
    {
LABEL_23:
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCIIfc_Send_Req, busy fail", v15, v16, v17, v18, v19, v20, v21, v34);
        v22 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      sub_1000D660C();
      return 118;
    }

    v23 = a3 + v7;
    v24 = sub_100007618(a3 + v7, 0x58114252uLL);
    v25 = v24;
    *v24 = a1;
    *(v24 + 1) = a2;
    v24[3] = a3;
    if (a1 == 2)
    {
      v24[4] = BYTE1(a3);
    }

    if (a3)
    {
      sub_10001F6DC(&v24[v7]);
    }

    result = 0;
    *(&word_100B5A014 + v8) = a1;
    *(&dword_100B5A010 + v8) = v23;
    qword_100B5A018[v8] = v25;
  }

  else
  {
    if (!qword_100B59FD8)
    {
      sub_1000D660C();
    }

    v11 = word_100B59FF0;
    if (!word_100B59FF0)
    {
      sub_1000D660C();
      v11 = word_100B59FF0;
    }

    v12 = qword_100B59FD8;
    result = 105;
    if (qword_100B59FD8 && v11)
    {
      if (a3 + v7 <= v11)
      {
        *qword_100B59FD8 = a1;
        *(v12 + 1) = a2;
        *(v12 + 3) = a3;
        if (a3)
        {
          sub_10001F6DC((v12 + v7));
        }

        qword_100B59FE8 = 0;
        word_100B59FF8 = 0;
      }

      else
      {
        v13 = v7 - 1;
        word_100B59FF8 = v13 + a3;
        *qword_100B59FD8 = a1;
        v14 = sub_100007618((v13 + a3), 0x45472E93uLL);
        qword_100B59FE0 = v14;
        if (!v14)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("OI_Malloc failed, unable to segment packet", v26, v27, v28, v29, v30, v31, v32, v34);
            v33 = sub_10000C050(0x3Au);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          return 106;
        }

        qword_100B59FE8 = v14;
        *v14 = a2;
        *(v14 + 1) = a3;
        if (a3)
        {
          sub_10001F6DC(&v14[v13]);
        }
      }

      byte_100B5A000 = a1;
      byte_100B59FFC = 1;
      result = sub_10022DBCC();
      if (result)
      {
        byte_100B59FFC = 0;
      }
    }
  }

  return result;
}

uint64_t sub_100192C24(unsigned __int8 *__src, int a2)
{
  if (a2)
  {
    v2 = a2;
    while (1)
    {
      v4 = qword_100B5A008;
      v5 = *(qword_100B5A008 + 2044);
      if (v5 <= 1)
      {
        if (v5 == 1)
        {
          v10 = *__src;
          if ((v10 - 1) >= 4u)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("unknown packet type received %d", v28, v29, v30, v31, v32, v33, v34, v10);
              v35 = sub_10000C050(0x3Au);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v58 = sub_10000C0FC();
                *buf = 136446466;
                v65 = v58;
                v66 = 1024;
                v67 = 0xFFFF;
                _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
              }
            }

            v36 = qword_100B5A008;
            *(qword_100B5A008 + 2044) = 4;
            *(v36 + 2048) = 1;
            v11 = 5;
          }

          else
          {
            *(qword_100B5A008 + 4) = 0x2000300040003uLL >> (16 * ((v10 - 1) & 0xF));
            *(v4 + 2042) = v10;
            *(v4 + 6) = 0;
            *(v4 + 2044) = 2;
            v11 = 10;
          }

          sub_100193120(v11);
          if (*(qword_100B5A008 + 2044) == 2)
          {
            --v2;
            ++__src;
          }

          goto LABEL_59;
        }

        if (!v5)
        {
          goto LABEL_60;
        }

        goto LABEL_26;
      }

      if (v5 == 2)
      {
        break;
      }

      if (v5 != 3)
      {
        if (v5 == 4)
        {
          goto LABEL_60;
        }

LABEL_26:
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid receive state %d", v19, v20, v21, v22, v23, v24, v25, *(qword_100B5A008 + 2044));
          v26 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_10080FE78(v62, &v63, v26);
          }
        }

        v27 = qword_100B5A008;
        *(qword_100B5A008 + 2044) = 4;
        *(v27 + 2048) = 1;
        sub_100193120(5);
        sub_1000D660C();
        goto LABEL_59;
      }

      if (v2 >= *(qword_100B5A008 + 4))
      {
        v6 = *(qword_100B5A008 + 4);
      }

      else
      {
        v6 = v2;
      }

      memmove((qword_100B5A008 + *(qword_100B5A008 + 6) + 10), __src, v6);
      v7 = qword_100B5A008;
      v8 = *(qword_100B5A008 + 4);
      v2 -= v6;
      *(qword_100B5A008 + 6) += v6;
      __src += v6;
      v9 = v8 - v6;
      *(v7 + 4) = v9;
      if (!v9)
      {
LABEL_56:
        if (*(v7 + 2048) == 1)
        {
          sub_100193450();
        }

        else
        {
          sub_100193518();
        }
      }

LABEL_59:
      if (!v2)
      {
        goto LABEL_60;
      }
    }

    v12 = 0;
    v13 = *(qword_100B5A008 + 4);
    if (v13 >= (v2 - 1))
    {
      v14 = (v2 - 1);
    }

    else
    {
      v14 = *(qword_100B5A008 + 4);
    }

    v15 = v14 + 1;
    v16 = __src;
    while (v13)
    {
      v17 = *v16++;
      v18 = *(v4 + 6);
      *(v4 + 10 + v18) = v17;
      *(v4 + 6) = v18 + 1;
      LOWORD(v13) = v13 - 1;
      *(v4 + 4) = v13;
      if (++v12 >= v2)
      {
        if (v13)
        {
          v14 = v2;
          if (v15 != v2)
          {
            sub_1000D660C();
            v14 = v15;
          }

          goto LABEL_55;
        }

        ++v14;
        break;
      }
    }

    *(v4 + 2044) = 3;
    v37 = *(v4 + 2042);
    if (v37 > 2)
    {
      if (v37 == 4)
      {
        v38 = *(v4 + 11);
LABEL_50:
        *(v4 + 4) = v38;
        v48 = *(v4 + 6) + v38;
        *(v4 + 8) = v48;
        if (v48 >= 0x7F1u)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("RxPacketHeader - bogus packet length (%d)", v49, v50, v51, v52, v53, v54, v55, *(qword_100B5A008 + 8));
            v56 = sub_10000C050(0x3Au);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              v59 = sub_10000C0FC();
              *buf = 136446466;
              v65 = v59;
              v66 = 1024;
              v67 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          v57 = qword_100B5A008;
          *(qword_100B5A008 + 2044) = 4;
          *(v57 + 2048) = 1;
          sub_100193120(5);
        }

        goto LABEL_55;
      }

      if (v37 != 3)
      {
        goto LABEL_45;
      }
    }

    else if (v37 != 1)
    {
      if (v37 == 2)
      {
        v38 = *(v4 + 12);
        goto LABEL_50;
      }

LABEL_45:
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid packet type %d", v39, v40, v41, v42, v43, v44, v45, *(qword_100B5A008 + 2042));
        v46 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v60 = sub_10000C0FC();
          *buf = 136446466;
          v65 = v60;
          v66 = 1024;
          v67 = 0xFFFF;
          _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
        }
      }

      v47 = qword_100B5A008;
      *(qword_100B5A008 + 2044) = 4;
      *(v47 + 2048) = 1;
      sub_100193120(5);
      sub_1000D660C();
      v14 = 0;
LABEL_55:
      __src += v14;
      v2 -= v14;
      v7 = qword_100B5A008;
      if (!*(qword_100B5A008 + 4))
      {
        goto LABEL_56;
      }

      goto LABEL_59;
    }

    v38 = *(v4 + 12);
    goto LABEL_50;
  }

LABEL_60:
  if (*(qword_100B5A008 + 4))
  {
    return *(qword_100B5A008 + 4);
  }

  else
  {
    return 5;
  }
}

uint64_t sub_100193120(int a1)
{
  v2 = sub_10002260C(*qword_100B5A008);
  v3 = qword_100B5A008;
  if (v2)
  {
    v4 = *qword_100B5A008;

    return sub_1000B7ADC(v4, a1);
  }

  else
  {

    return sub_10002195C(sub_1001931A4, 0, a1, v3);
  }
}

void sub_1001931A4()
{
  v0 = qword_100B5A008;
  v1 = *(qword_100B5A008 + 2044);
  if (v1 < 2)
  {
    if (*(qword_100B5A008 + 2048) == 1)
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

    v10 = qword_100B5A008;
    *(qword_100B5A008 + 2044) = 4;
    *(v10 + 2048) = 1;
    sub_100193120(5);
    return;
  }

  if (v1 == 4)
  {
    if (*(qword_100B5A008 + 2048) == 1)
    {

LABEL_16:
      sub_10019336C();
      return;
    }

    *(qword_100B5A008 + 2044) = 1;
    *(v0 + 4) = 5;
LABEL_22:

    sub_100193120(0x7FFFLL);
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid receive state %d", v19, v20, v21, v22, v23, v24, v25, *(qword_100B5A008 + 2044));
    v26 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  v27 = qword_100B5A008;
  *(qword_100B5A008 + 2044) = 4;
  *(v27 + 2048) = 1;
  sub_100193120(5);
  sub_1000D660C();
}

uint64_t sub_10019336C()
{
  *(qword_100B5A008 + 2048) = 0;
  v0 = sub_10001F958();
  v1 = qword_100B5A008;
  *(qword_100B5A008 + 2048) = 1;
  if (v0 && (v2 = v0, v0 != 625))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("startResynchronize, OI_HCIIfc_Send failed %!", v4, v5, v6, v7, v8, v9, v10, v2);
      v11 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return sub_100193120(5);
  }

  else
  {
    *(v1 + 2044) = 1;
    *(v1 + 4) = 5;

    return sub_100193120(20);
  }
}

void sub_100193450()
{
  v0 = qword_100B5A008;
  if (*(qword_100B5A008 + 2042) != 4)
  {
    goto LABEL_9;
  }

  if (*(qword_100B5A008 + 8) != 6)
  {
    goto LABEL_9;
  }

  v1 = 0;
  LOBYTE(v2) = 1;
  v3 = &byte_1008A3121;
  do
  {
    v4 = (*(v3 - 1) & *(qword_100B5A008 + 10 + v1));
    v5 = *v3;
    v3 += 2;
    v2 = (v4 == v5) & v2;
    ++v1;
  }

  while (v1 != 6);
  if (v2)
  {
    *(qword_100B5A008 + 2048) = 0;
    *(v0 + 2044) = 1;
    *(v0 + 4) = 5;
    sub_100193120(0x7FFF);

    sub_10024D814();
  }

  else
  {
LABEL_9:
    sub_100193120(5);
    *(qword_100B5A008 + 2044) = 4;
  }
}

uint64_t sub_100193518()
{
  if (*(qword_100B5A008 + 8) >= 0x7F1u)
  {
    sub_1000D660C();
  }

  v2[1] = 0;
  v2[0] = mach_continuous_time();
  sub_10000394C(*(qword_100B5A008 + 2042), (qword_100B5A008 + 10), *(qword_100B5A008 + 8), v2);
  v0 = qword_100B5A008;
  *(qword_100B5A008 + 2044) = 1;
  *(v0 + 4) = 5;
  return sub_100193120(0x7FFF);
}

void sub_1001935A0(uint64_t a1, __int16 a2, int a3)
{
  qword_100B5A028 = a1;
  word_100B5A030 = a2;
  if (a3 != 1216)
  {
    v18 = v3;
    v19 = v4;
    if ((byte_100B5A034 & 1) == 0)
    {
      sub_1000D660C();
    }

    v16[0] = 8;
    byte_100B5A034 = 0;
    sub_100016250(&unk_100B5A03C);
    v17[0] = a3;
    v17[1] = byte_100B5A038;
    v16[1] = v17;
    v6 = sub_1000228C0(sub_100193694, v16, 0);
    if (v6)
    {
      v7 = v6;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_Dispatch_RegisterFunc failed %!", v8, v9, v10, v11, v12, v13, v14, v7);
        v15 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }
}

uint64_t sub_1001936A4()
{
  result = sub_10022DB60();
  if (!result)
  {
    v1 = sub_1001BBBD8(0x810uLL, 0x10000408A62FA49uLL);
    qword_100B5A048 = v1;
    v1[509] = 4;
    *(v1 + 2060) = 0;
    if (*(v1 + 2040) == 1)
    {
      *(v1 + 2040) = 0;
    }

    qword_100B5A058 = 0;
    byte_100B5A050 = 0;
    sub_100016250(&unk_100B5A03C);
    byte_100B5A054 = 0;
    *(qword_100B5A048 + 2049) = 0;
    sub_100194130(5);
    sub_100190DA4();
    return 109;
  }

  return result;
}

uint64_t sub_100193748()
{
  if (*(qword_100B5A048 + 2036) == 4)
  {
    return 109;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100193764()
{
  sub_100190E2C();
  if (dword_100B5A068)
  {
    sub_10002242C(dword_100B5A068);
    dword_100B5A068 = 0;
  }

  return sub_10022DBBC();
}

uint64_t sub_1001937B0(int a1, __int16 a2, int a3)
{
  v5 = a1;
  if (a1 != 1 && (*(qword_100B5A048 + 2040) & 1) != 0)
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

  if (a1 == 7)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  if (byte_100B5A034 == 1)
  {
    sub_1000D660C();
    return 118;
  }

  else
  {
    if (!qword_100B5A028)
    {
      sub_1000D660C();
    }

    v10 = word_100B5A030;
    if (!word_100B5A030)
    {
      sub_1000D660C();
      v10 = word_100B5A030;
    }

    v11 = qword_100B5A028;
    v6 = 105;
    if (qword_100B5A028 && v10)
    {
      if (a3 + v8 <= v10)
      {
        *qword_100B5A028 = v5;
        *(v11 + 1) = a2;
        *(v11 + 3) = a3;
        if (a3)
        {
          sub_10001F6DC((v11 + v8));
        }

        else
        {
          sub_10001F480();
        }

        byte_100B5A038 = v5;
        byte_100B5A034 = 1;
        v12 = byte_100B5A050;
        sub_10019450C();
        if ((v12 & 1) == 0)
        {
          j__usleep(0x32u);
        }

        v6 = sub_10022DBCC();
        if (v6)
        {
          sub_100016250(dword_100B5A03C);
          byte_100B5A034 = 0;
        }

        v13 = qword_100B5A048;
        if (*(qword_100B5A048 + 2040) == 1 && *(qword_100B5A048 + 2036) == 4)
        {
          *(qword_100B5A048 + 2049) = 0;
          *(v13 + 2036) = 1;
          *(v13 + 2042) = 5;
          sub_100194130(0x7FFF);
        }
      }

      else
      {
        sub_1000D660C();
        return 105;
      }
    }
  }

  return v6;
}

uint64_t sub_100193954(unsigned __int8 *__src, int a2)
{
  if (a2)
  {
    v2 = a2;
    while (1)
    {
      v4 = qword_100B5A048;
      if (*(qword_100B5A048 + 2040) == 1)
      {
        *buf = 0;
        v70 = 0;
        sub_1001BAE20(&v70);
        sub_1001BAE88(v70, qword_100B5A058, &stru_100B5A060, buf, v5, v6, v7);
        if (v8)
        {
          v9 = v8;
          if (sub_10000C240())
          {
            sub_10000AF54("OI_AbsoluteTime_Diff returned %!", v10, v11, v12, v13, v14, v15, v16, v9);
            v17 = sub_10000C050(0x3Au);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_10080FE78(v71, &v72, v17);
            }
          }
        }

        if ((*&buf[4] | (*buf << 32)) >= 0x12A153440)
        {
          sub_1000C52F4(1217);
        }

        j__usleep(0);
        v4 = qword_100B5A048;
      }

      v18 = *(v4 + 2036);
      if (v18 <= 1)
      {
        if (v18 == 1)
        {
          v23 = *__src;
          if (v23 - 1) < 7 && ((0x4Fu >> (v23 - 1)))
          {
            *(v4 + 2042) = word_1008A3138[(v23 - 1)];
            *(v4 + 2048) = v23;
            *(v4 + 2044) = 0;
            *(v4 + 2036) = 2;
            sub_100194130(20);
          }

          else
          {
            if (sub_10000C240())
            {
              sub_10000AF54("unknown packet type received %d", v31, v32, v33, v34, v35, v36, v37, v23);
              v38 = sub_10000C050(0x3Au);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v66 = sub_10000C0FC();
                *buf = 136446466;
                *&buf[4] = v66;
                v74 = 1024;
                v75 = 0xFFFF;
                _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
              }
            }

            sub_100304AF8("UART: unknown packet type received %d\n", v23);
            sub_100194374(240);
          }

          if (*(qword_100B5A048 + 2036) == 2)
          {
            --v2;
            ++__src;
          }

          goto LABEL_68;
        }

        if (!v18)
        {
          goto LABEL_69;
        }

        goto LABEL_41;
      }

      if (v18 == 2)
      {
        break;
      }

      if (v18 != 3)
      {
        if (v18 == 4)
        {
          goto LABEL_69;
        }

LABEL_41:
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid receive state %d", v39, v40, v41, v42, v43, v44, v45, *(qword_100B5A048 + 2036));
          v46 = sub_10000C050(0x3Au);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v65 = sub_10000C0FC();
            *buf = 136446466;
            *&buf[4] = v65;
            v74 = 1024;
            v75 = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }

        sub_100304AF8("UART: Invalid receive state %d\n", *(qword_100B5A048 + 2036));
        sub_100194374(242);
        sub_1000D660C();
        goto LABEL_68;
      }

      if (v2 >= *(v4 + 2042))
      {
        v19 = *(v4 + 2042);
      }

      else
      {
        v19 = v2;
      }

      memmove((v4 + *(v4 + 2044) + 4), __src, v19);
      v20 = qword_100B5A048;
      v21 = *(qword_100B5A048 + 2042);
      v2 -= v19;
      *(qword_100B5A048 + 2044) += v19;
      __src += v19;
      v22 = v21 - v19;
      *(v20 + 2042) = v22;
      if (!v22)
      {
LABEL_63:
        if (*(v20 + 2040) == 1)
        {
          sub_100194640();
        }

        else
        {
          if (*(v20 + 2046) >= 0x7F1u)
          {
            sub_1000D660C();
          }

          sub_1001946C4();
        }
      }

LABEL_68:
      if (!v2)
      {
        goto LABEL_69;
      }
    }

    v24 = 0;
    v25 = (v4 + 4);
    v26 = *(v4 + 2042);
    v27 = __src;
    while (v26)
    {
      v28 = *v27++;
      v29 = *(v4 + 2044);
      *(v4 + 2044) = v29 + 1;
      v25[v29] = v28;
      v26 = *(v4 + 2042) - 1;
      *(v4 + 2042) = v26;
      if (++v24 >= v2)
      {
        v24 = v2;
        if (v26)
        {
          goto LABEL_62;
        }

        break;
      }
    }

    *(v4 + 2036) = 3;
    v30 = *(v4 + 2048);
    if (v30 <= 2)
    {
      if (v30 == 1)
      {
LABEL_48:
        v47 = *(v4 + 6);
        goto LABEL_53;
      }

      if (v30 != 2)
      {
        goto LABEL_58;
      }

      v47 = *(v4 + 6);
    }

    else
    {
      if (v30 == 7)
      {
        if (*v25 == 1)
        {
          *(v4 + 2048) = 8;
        }

        v47 = 62;
        goto LABEL_53;
      }

      if (v30 != 4)
      {
        if (v30 != 3)
        {
LABEL_58:
          if (sub_10000C240())
          {
            sub_10000AF54("Invalid packet type %d", v57, v58, v59, v60, v61, v62, v63, *(qword_100B5A048 + 2048));
            v64 = sub_10000C050(0x3Au);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              v68 = sub_10000C0FC();
              *buf = 136446466;
              *&buf[4] = v68;
              v74 = 1024;
              v75 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          sub_100304AF8("UART: Invalid packet type %d\n", *(qword_100B5A048 + 2048));
          sub_100194374(240);
          sub_1000D660C();
          v24 = 0;
          goto LABEL_62;
        }

        goto LABEL_48;
      }

      v47 = *(v4 + 5);
    }

LABEL_53:
    *(v4 + 2042) = v47;
    v48 = *(v4 + 2044) + v47;
    *(v4 + 2046) = v48;
    if (v48 >= 0x7F1u)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("RxPacketHeader - bogus packet length (%d)", v49, v50, v51, v52, v53, v54, v55, *(qword_100B5A048 + 2046));
        v56 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v67 = sub_10000C0FC();
          *buf = 136446466;
          *&buf[4] = v67;
          v74 = 1024;
          v75 = 0xFFFF;
          _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
        }
      }

      sub_100304AF8("UART: RxPacketHeader - bogus packet length (%d)\n", *(qword_100B5A048 + 2046));
      sub_100194374(244);
    }

LABEL_62:
    __src += v24;
    v2 -= v24;
    v20 = qword_100B5A048;
    if (!*(qword_100B5A048 + 2042))
    {
      goto LABEL_63;
    }

    goto LABEL_68;
  }

LABEL_69:
  if (*(qword_100B5A048 + 2042))
  {
    return *(qword_100B5A048 + 2042);
  }

  else
  {
    return 5;
  }
}

uint64_t sub_100193F7C(int a1, __int16 a2, size_t __len, void *__src)
{
  v4 = a1;
  if (a1 != 1 && (*(qword_100B5A048 + 2040) & 1) != 0)
  {
    return 129;
  }

  v6 = 4;
  if (a1 == 2)
  {
    v6 = 5;
  }

  if (byte_100B5A034 == 1)
  {
    sub_1000D660C();
    return 118;
  }

  else
  {
    v7 = qword_100B5A028;
    if (qword_100B5A028)
    {
      v8 = word_100B5A030 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 105;
    }

    else
    {
      *qword_100B5A028 = a1;
      *(v7 + 1) = a2;
      *(v7 + 3) = __len;
      memmove((v7 + v6), __src, __len);
      byte_100B5A038 = v4;
      byte_100B5A034 = 1;
      sub_10019450C();
      v9 = sub_10022DBCC();
      v5 = v9;
      if (v9)
      {
        sub_100016250(dword_100B5A03C);
        byte_100B5A034 = 0;
      }

      v10 = qword_100B5A048;
      if (*(qword_100B5A048 + 2040) == 1 && *(qword_100B5A048 + 2036) == 4)
      {
        *(qword_100B5A048 + 2049) = 0;
        *(v10 + 2036) = 1;
        *(v10 + 2042) = 5;
        sub_100194130(0x7FFF);
      }
    }
  }

  return v5;
}

double sub_1001940C0(int a1)
{
  if (a1)
  {
    if ((*(qword_100B5A048 + 2040) & 1) == 0)
    {
      *(qword_100B5A048 + 2040) = 1;
      sub_1001BAE20(&qword_100B5A058);

      return sub_1001BAE4C(&stru_100B5A060);
    }
  }

  else
  {
    if (*(qword_100B5A048 + 2040))
    {
      *(qword_100B5A048 + 2040) = 0;
    }

    qword_100B5A058 = 0;
  }

  return result;
}

uint64_t sub_100194130(int a1)
{
  v2 = sub_10002260C(*qword_100B5A048);
  v3 = qword_100B5A048;
  if (v2)
  {
    v4 = *qword_100B5A048;

    return sub_1000B7ADC(v4, a1);
  }

  else
  {

    return sub_10002195C(sub_1001941B4, 0, a1, v3);
  }
}

void sub_1001941B4()
{
  v0 = qword_100B5A048;
  v1 = *(qword_100B5A048 + 2036);
  if (v1 < 2)
  {
    if (*(qword_100B5A048 + 2040) != 1)
    {
LABEL_14:

      sub_100194130(0x7FFFLL);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("timed out waiting for reset response %d", v10, v11, v12, v13, v14, v15, v16, *(qword_100B5A048 + 2036));
      v17 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }
  }

  else
  {
    if (v1 - 2 < 2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Timed out while receiving a packet. Current state:%d", v2, v3, v4, v5, v6, v7, v8, *(qword_100B5A048 + 2036));
        v9 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10080FEE0();
        }
      }

      sub_100304AF8("UART: Timed out while receiving a packet. Current state:%d\n", *(qword_100B5A048 + 2036));
      sub_100194374(241);
      return;
    }

    if (v1 == 4)
    {
      if (*(qword_100B5A048 + 2040))
      {
        return;
      }

      *(qword_100B5A048 + 2049) = 0;
      *(v0 + 2036) = 1;
      *(v0 + 2042) = 5;
      goto LABEL_14;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Invalid receive state %d", v18, v19, v20, v21, v22, v23, v24, *(qword_100B5A048 + 2036));
      v25 = sub_10000C050(0x3Au);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_100304AF8("UART: Invalid receive state %d\n", *(qword_100B5A048 + 2036));
    sub_100194374(243);
    sub_1000D660C();
  }
}

uint64_t sub_100194374(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("RxErrorDetected:%d", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x3Au);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080FF64();
    }
  }

  v10 = qword_100B5A048;
  if ((*(qword_100B5A048 + 2040) & 1) == 0)
  {
    *(qword_100B5A048 + 4) = 272;
    *(v10 + 6) = a1;
    *(v10 + 2046) = 3;
    *(v10 + 2048) = 4;
    sub_100194430();
    v10 = qword_100B5A048;
  }

  *(v10 + 2036) = 4;
  sub_1001940C0(1);
  return sub_100194130(5);
}

void sub_100194430()
{
  v0 = qword_100B5A048;
  if (*(qword_100B5A048 + 2046) >= 0x7F1u)
  {
    sub_1000D660C();
    v0 = qword_100B5A048;
  }

  if ((*(v0 + 2048) - 7) > 1u)
  {
    *(v0 + 2049) = 0;
    *(v0 + 2036) = 1;
    *(v0 + 2042) = 5;
    sub_100194130(0x7FFFLL);
    v2[1] = 0;
    v2[0] = mach_continuous_time();
    sub_10000394C(*(qword_100B5A048 + 2048), (qword_100B5A048 + 4), *(qword_100B5A048 + 2046), v2);
  }

  else
  {
    sub_1000040DC();
    v1 = qword_100B5A048;
    *(qword_100B5A048 + 2049) = 0;
    *(v1 + 2036) = 1;
    *(v1 + 2042) = 5;

    sub_100194130(0x7FFFLL);
  }
}

void sub_10019450C()
{
  if (byte_100B5A054 == 1)
  {
    do
    {
      j__usleep(0);
    }

    while ((byte_100B5A054 & 1) != 0);
  }

  if ((byte_100B5A050 & 1) == 0)
  {
    sub_10002195C(sub_100194590, 0, 2, &dword_100B5A068);
    sub_1001C499C("H4 wake");
    sub_100190DA4();
    byte_100B5A050 = 1;
  }
}

void sub_100194590()
{
  v0 = 0;
  sub_100016250(&v0);
  if (sub_100306DA4(dword_100B5A03C, &v0) < 0xC8)
  {
    goto LABEL_4;
  }

  byte_100B5A054 = 1;
  byte_100B5A050 = 0;
  if (byte_100B5A034 == 1)
  {
    byte_100B5A050 = 1;
    byte_100B5A054 = 0;
LABEL_4:
    sub_10002195C(sub_100194590, 0, 2, &dword_100B5A068);
    return;
  }

  sub_100190E2C();
  sub_1001C499C("H4 sleep");
  byte_100B5A054 = 0;
}

void sub_100194640()
{
  if (*(qword_100B5A048 + 2048) == 4 && *(qword_100B5A048 + 2046) == 6)
  {
    v0 = 0;
    LOBYTE(v1) = 1;
    v2 = &byte_1008A312D;
    do
    {
      v3 = (*(v2 - 1) & *(qword_100B5A048 + 4 + v0));
      v4 = *v2;
      v2 += 2;
      v1 = (v3 == v4) & v1;
      ++v0;
    }

    while (v0 != 6);
    if (v1)
    {
      if (*(qword_100B5A048 + 2040) == 1)
      {
        *(qword_100B5A048 + 2040) = 0;
      }

      qword_100B5A058 = 0;
      sub_100194430();
    }
  }
}

void sub_1001946C4()
{
  v0 = qword_100B5A048;
  if (*(qword_100B5A048 + 2046) >= 0x7F1u)
  {
    sub_1000D660C();
    v0 = qword_100B5A048;
  }

  if (!*(v0 + 2060))
  {
    if ((*(v0 + 2048) - 7) > 1u)
    {
      *(v0 + 2049) = 0;
      *(v0 + 2036) = 1;
      *(v0 + 2042) = 5;
      sub_100194130(0x7FFF);
      v1[1] = 0;
      v1[0] = mach_continuous_time();
      sub_10000394C(*(qword_100B5A048 + 2048), (qword_100B5A048 + 4), *(qword_100B5A048 + 2046), v1);
      return;
    }

    sub_1000040DC();
    v0 = qword_100B5A048;
  }

  *(v0 + 2049) = 0;
  *(v0 + 2036) = 1;
  *(v0 + 2042) = 5;

  sub_100194130(0x7FFF);
}

uint64_t sub_1001947AC()
{
  if (sub_1001BC0A8() && byte_100B5A050 == 1)
  {
    v2 = 0;
    sub_100016250(&v2);
    v0 = sub_100306DA4(dword_100B5A03C, &v2);
    if (v0 <= 0xC8)
    {
      j__usleep(1000 * (201 - v0));
    }

    byte_100B5A054 = 1;
    byte_100B5A050 = 0;
    sub_100190E2C();
    sub_1001C499C("H4/AP sleep");
    byte_100B5A054 = 0;
  }

  return 0;
}

void sub_100194848()
{
  if (byte_100B5A050 == 1)
  {
    if (dword_100B5A068)
    {
      sub_10002242C(dword_100B5A068);
      dword_100B5A068 = 0;
    }

    v9 = 0;
    sub_100016250(&v9);
    if (byte_100B5A034 == 1)
    {
      while (1)
      {
        v8 = 0;
        sub_100016250(&v8);
        j__usleep(1u);
        if (sub_100306DA4(&v9, &v8) >= 0x3E8)
        {
          break;
        }

        if ((byte_100B5A034 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      if (sub_10000C240())
      {
        sub_10000AF54("transportBusy for too long! (more than %dms)", v0, v1, v2, v3, v4, v5, v6, 1000);
        v7 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_1000C52F4(1217);
      sub_100194958();
    }

    else
    {
LABEL_7:
      byte_100B5A054 = 1;
      byte_100B5A050 = 0;
      j__usleep(0x9C40u);
      sub_100190E2C();
      sub_1001C499C("H4/AP sleep now");
      byte_100B5A054 = 0;
    }
  }
}

uint64_t sub_10019496C(uint64_t a1, char a2)
{
  if (!dword_100BC9C74)
  {
    return 414;
  }

  v2 = 0;
  for (i = qword_100BC9CB0; !a1 || *i != a1; i += 134)
  {
    if (dword_100BC9C74 == ++v2)
    {
      return 414;
    }
  }

  *(i + 444) = a2;
  sub_1000B5FB0(4, 0, v2);
  return 0;
}

uint64_t sub_1001949E8(uint64_t result, int a2, int a3)
{
  dword_100B5A06C = a2;
  dword_100B5A070 = a3;
  dword_100B5A074 = result;
  return result;
}

void sub_100194A04(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  if (sub_10000C240())
  {
    sub_10000AF54("Setting link requirement hint for peer to %d pps, %d Bps input, %d Bps output, clientHighPowerAssertion set to %d", v10, v11, v12, v13, v14, v15, v16, a2);
    v17 = sub_10000C050(0x57u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v42 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (dword_100BC9C74)
  {
    v18 = 0;
    v19 = 0;
    while (qword_100BC9CB0[v18] != a1)
    {
      ++v19;
      v18 += 134;
      if (134 * dword_100BC9C74 == v18)
      {
        return;
      }
    }

    v20 = dword_100B5A074;
    v21 = dword_100B5A06C;
    if (dword_100B5A074 | dword_100B5A06C | dword_100B5A070)
    {
      v22 = dword_100B5A070;
    }

    else
    {
      v20 = a2;
      v21 = a3;
      v22 = a4;
    }

    v23 = &qword_100BC9CB0[v18];
    *(v23 + 55) = v22;
    *(v23 + 56) = v20;
    *(v23 + 54) = v21;
    if ((((HIBYTE(qword_100BC9CB0[v18 + 55]) == 0) ^ a5) & 1) == 0)
    {
      *(v23 + 447) = a5;
      if (!*(v23 + 10))
      {
        goto LABEL_22;
      }

      v24 = &qword_100BC9CB0[v18];
      v25 = LODWORD(qword_100BC9CB0[v18 + 9]);
      if (!v25)
      {
        goto LABEL_22;
      }

      v26 = 0;
      v27 = v24[8];
      v28 = *(v24 + 76);
      v29 = (v27 + 1);
      while (1)
      {
        v30 = *v29;
        v29 += 64;
        if (v30 == v28)
        {
          break;
        }

        if (v25 == ++v26)
        {
          goto LABEL_22;
        }
      }

      if (v26 == 2)
      {
        v31 = sub_1000B78F0(&qword_100BC9CB0[v18]);
        if (sub_1000B8B5C(v31))
        {
          sub_100230D4C(*(v23 + 447) != 0);
          BYTE6(qword_100BC9CB0[v18 + 55]) = 0;
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("Invalid connection handle", v32, v33, v34, v35, v36, v37, v38, v40);
          v39 = sub_10000C050(0x57u);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_10080FFF8();
          }
        }
      }

      else
      {
LABEL_22:
        BYTE6(qword_100BC9CB0[v18 + 55]) = 1;
      }
    }

    sub_1000B5FB0(1, 0, v19);
  }
}

uint64_t sub_100194C6C(uint64_t result)
{
  v1 = dword_100B5A074;
  v2 = dword_100B5A06C;
  if (dword_100B5A074)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_100B5A06C == 0;
  }

  if (!v3 || dword_100B5A070 != 0)
  {
    v5 = &qword_100BC9CB0[134 * result];
    *(v5 + 55) = dword_100B5A070;
    *(v5 + 56) = v1;
    *(v5 + 54) = v2;
  }

  return result;
}

void sub_100194CB0(uint64_t a1, int a2, int a3, int a4)
{
  if (dword_100BC9C74)
  {
    v4 = 0;
    for (i = &dword_100BC9D94; *(i - 57) != a1; i += 268)
    {
      if (dword_100BC9C74 == ++v4)
      {
        return;
      }
    }

    v6 = dword_100B5A06C;
    v7 = dword_100B5A070;
    if (dword_100B5A074)
    {
      v8 = 0;
    }

    else
    {
      v8 = dword_100B5A06C == 0;
    }

    if (v8 && dword_100B5A070 == 0)
    {
      *i = a2;
    }

    else
    {
      *(i - 1) = dword_100B5A074;
      a3 = v6;
      a4 = v7;
    }

    *(i - 3) = a3;
    *(i - 2) = a4;
    sub_1000B5FB0(1, 0, v4);
  }
}

void sub_100194D40()
{
  v0 = dword_100BC9C74;
  if (dword_100BC9C74)
  {
    v1 = 0;
    v2 = qword_100BC9CB0;
    do
    {
      *(v2 + 223) = 0;
      v2[27] = 0;
      v2[28] = 0;
      if (*v2)
      {
        sub_1000B5FB0(1, 0, v1);
        v0 = dword_100BC9C74;
      }

      ++v1;
      v2 += 134;
    }

    while (v1 < v0);
  }
}

void sub_100194DE0()
{
  if (dword_100BC9C74)
  {
    v0 = 0;
    v1 = &dword_100BC9E68;
    do
    {
      if (sub_10002260C(*v1))
      {
        sub_10002242C(*v1);
      }

      ++v0;
      v1 += 268;
    }

    while (v0 < dword_100BC9C74);
  }
}

void sub_100194E7C(uint64_t a1)
{
  if (dword_100BC9C74)
  {
    v1 = 0;
    for (i = &qword_100BC9CC0; ; i += 134)
    {
      v3 = &qword_100BC9CB0[134 * v1];
      v4 = *v3;
      if (*v3 == a1)
      {
        break;
      }

      v5 = *(v3 + 10);
      v6 = i;
      if (*(v3 + 10))
      {
        while (*v6 != a1)
        {
          v6 += 2;
          if (!--v5)
          {
            goto LABEL_9;
          }
        }

        if (v4)
        {
          goto LABEL_12;
        }
      }

LABEL_9:
      v1 = (v1 + 1);
      if (v1 == dword_100BC9C74)
      {
        return;
      }
    }

    if (!a1)
    {
      return;
    }

LABEL_12:
    if (*(v3 + 18))
    {
      if (!v3[8])
      {
        sub_1000D660C();
        v4 = *v3;
      }

      if (!v4)
      {
        sub_1000D660C();
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Updating TS LE throughput: index %d handle 0x%x throughput %d -> %d", v7, v8, v9, v10, v11, v12, v13, v1);
        v14 = sub_10000C050(0x57u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v16 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      *(v3[8] + 4) = *(*v3 + 244);
    }
  }
}

void sub_100194FFC(uint64_t a1)
{
  if (dword_100BC9C74)
  {
    v1 = a1;
    v2 = 0;
    for (i = &qword_100BC9CC0; ; i += 134)
    {
      v4 = &qword_100BC9CB0[134 * v2];
      v5 = *v4;
      if (*v4 == a1)
      {
        break;
      }

      v6 = *(v4 + 10);
      v7 = i;
      if (*(v4 + 10))
      {
        while (*v7 != a1)
        {
          v7 += 2;
          if (!--v6)
          {
            goto LABEL_9;
          }
        }

        if (v5)
        {
          v1 = *v4;
          goto LABEL_14;
        }
      }

LABEL_9:
      if (++v2 == dword_100BC9C74)
      {
        return;
      }
    }

    if (!a1)
    {
      return;
    }

LABEL_14:
    if (*(v4 + 18))
    {
      if (!v4[8])
      {
        sub_1000D660C();
        v5 = *v4;
      }

      if (!v5)
      {
        sub_1000D660C();
      }

      if (sub_10019943C(v1))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Updating TS HDR throughput: index %d throughput %d -> 4500", v8, v9, v10, v11, v12, v13, v14, dword_100BC9C74);
          v15 = sub_10000C050(0x57u);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v17 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        *(v4[8] + 68) = 4500;
      }
    }
  }
}

void sub_10019518C(uint64_t a1)
{
  v13 = 0;
  if (dword_100BC9C74)
  {
    v2 = 0;
    v12[0] = 0;
    do
    {
      if (qword_100BC9CB0[134 * v2] == a1)
      {
        v12[1] = &v13;
        LOWORD(v12[0]) = 4;
        if (sub_10002195C(sub_1001952F4, v12, 20, &qword_100BC9CB0[134 * v2 + 133] + 1))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("TS disable upgrade timer registration failed", v3, v4, v5, v6, v7, v8, v9, v11);
            v10 = sub_10000C050(0x57u);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              sub_10080FE78(v14, &v15, v10);
            }
          }
        }

        else
        {
          LOBYTE(qword_100BC9CB0[134 * v13 + 133]) = 1;
        }
      }

      v2 = v13 + 1;
      v13 = v2;
    }

    while (v2 < dword_100BC9C74);
  }
}

void sub_1001952F4(uint64_t a1)
{
  if (a1)
  {
    v1 = **(a1 + 8);
    if (sub_10000C240())
    {
      sub_10000AF54("Re-Enabling TS upgrades for peer %d", v2, v3, v4, v5, v6, v7, v8, v1);
      v9 = sub_10000C050(0x57u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v23 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v10 = &qword_100BC9CB0[134 * v1];
    *(v10 + 1064) = 0;
    *(v10 + 267) = 0;
  }

  else
  {
    if (dword_100BC9C74)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Re-Enabling TS upgrades for peer %d because we can't find peer.", v13, v14, v15, v16, v17, v18, v19, v11);
          v20 = sub_10000C050(0x57u);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = sub_10000C0FC();
            *buf = 136446210;
            v23 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        LOBYTE(qword_100BC9CB0[134 * v12++ + 133]) = 0;
        v11 = v12;
      }

      while (dword_100BC9C74 > v12);
    }

    sub_1000D660C();
  }
}

void sub_1001954C0(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Read RSSI CB signaling failed with status %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x57u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080FFF8();
      }
    }
  }

  else
  {

    sub_10023089C(a2, a3);
  }
}

void sub_100195558(int a1)
{
  if (dword_100B5A07C <= 3)
  {
    if (dword_100B5A07C <= 1)
    {
      if (!dword_100B5A07C)
      {
        if (dword_100B5A084)
        {
          dword_100B5A084 = 0;
        }

        sub_1001A170C(&dword_100B5A088);
        sub_1001A170C(&dword_100B5A08C);
        sub_1001A170C(&dword_100B5A090);
        sub_1001A0F3C(0);
        byte_100B5A081 = 0;
        byte_100B5A080 = 0;
        goto LABEL_7;
      }

      if (dword_100B5A084 != 1)
      {
        dword_100B5A084 = 1;
      }

      if (a1 <= 5)
      {
        if (a1 != 1)
        {
          if (a1 != 3)
          {
            return;
          }

          sub_1001A170C(&dword_100B5A08C);
          goto LABEL_55;
        }

        sub_1001A170C(&dword_100B5A08C);
LABEL_76:
        sub_1001A15D4();
        sub_10002195C(sub_100195A68, 0, 3, &dword_100B5A088);
        word_100B5A094 = 1;
        dword_100B5A07C = 3;
        return;
      }

      if (a1 == 6)
      {
        goto LABEL_8;
      }

      if (a1 == 9)
      {
        sub_1001A170C(&dword_100B5A08C);
LABEL_7:
        a1 = 6;
LABEL_8:
        sub_1001A16F0(a1);
        v1 = 2;
LABEL_9:
        dword_100B5A07C = v1;
        return;
      }

      return;
    }

    if (dword_100B5A07C != 2)
    {
      if (dword_100B5A084 != 3)
      {
        dword_100B5A084 = 3;
      }

      if (a1 == 2)
      {
        sub_1001A16F0(5);
        sub_1001A170C(&dword_100B5A088);
        byte_100B5A081 = 0;
        sub_1001A170C(&dword_100B5A090);
        sub_10002195C(sub_100195A78, 0, 3, &dword_100B5A090);
        dword_100B5A07C = 5;
        return;
      }

      if (a1 != 5)
      {
        if (a1 != 3)
        {
          return;
        }

        goto LABEL_56;
      }

      if (word_100B5A094 >= 0x32u)
      {
        sub_1001A0F3C(1);
        sub_1001A0AE4();
        sub_1001A16F0(6);
        v1 = 4;
        goto LABEL_9;
      }

      sub_1001A15D4();
      sub_10002195C(sub_100195A68, 0, 3, &dword_100B5A088);
      ++word_100B5A094;
      return;
    }

    if (dword_100B5A084 != 2)
    {
      dword_100B5A084 = 2;
    }

    if (a1 != 3)
    {
      if (a1 != 1)
      {
        return;
      }

      goto LABEL_20;
    }

    sub_1001A16F0(7);
LABEL_55:
    sub_1001A15D4();
    sub_10002195C(sub_100195A68, 0, 3, &dword_100B5A088);
    word_100B5A094 = 1;
    dword_100B5A07C = 3;
LABEL_56:

    sub_1001A1678();
    return;
  }

  if (dword_100B5A07C > 5)
  {
    if (dword_100B5A07C == 6)
    {
      if (dword_100B5A084 != 6)
      {
        dword_100B5A084 = 6;
      }

      if (a1 == 4)
      {

        sub_100195BB8();
        return;
      }

      if (a1 != 3)
      {
        if (a1 != 1)
        {
          return;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

    if (dword_100B5A084 != 7)
    {
      dword_100B5A084 = 7;
    }

    if (a1 != 7)
    {
      if (a1 == 3)
      {
        sub_1001A1678();
        sub_1001A170C(&dword_100B5A090);
        sub_10002195C(sub_100195A78, 0, 3, &dword_100B5A090);
        v1 = 5;
        goto LABEL_9;
      }

      return;
    }

    if ((byte_100B5A081 & 1) == 0)
    {
      sub_100195BB8();

      sub_1001A1680();
      return;
    }

    byte_100B5A081 = 0;
LABEL_61:
    sub_1001A170C(&dword_100B5A090);

    sub_10002195C(sub_100195A78, 0, 3, &dword_100B5A090);
    return;
  }

  if (dword_100B5A07C == 4)
  {
    if (dword_100B5A084 != 4)
    {
      dword_100B5A084 = 4;
      if (sub_10000C240())
      {
        sub_10000AF54("H4DS has entered the PEER IDLE state, CSR chip not responding, bailing out", v2, v3, v4, v5, v6, v7, v8, v10);
        v9 = sub_10000C050(0x3Au);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100810070(v9);
        }
      }

      sub_1000C52F4(632);
      sub_100195A38();
      return;
    }

    if (a1 != 8)
    {
      return;
    }

    sub_1001A0F3C(0);
    sub_1001A0AF8();
LABEL_20:
    sub_1001A16F0(7);
    goto LABEL_76;
  }

  if (dword_100B5A084 != 5)
  {
    dword_100B5A084 = 5;
  }

  switch(a1)
  {
    case 7:
      if ((byte_100B5A081 & 1) == 0)
      {
        sub_1001A1680();
        v1 = 6;
        goto LABEL_9;
      }

      byte_100B5A081 = 0;

      sub_100195B60();
      return;
    case 4:
      v1 = 7;
      goto LABEL_9;
    case 3:
      sub_1001A1678();
      goto LABEL_61;
  }
}

uint64_t sub_100195A88()
{
  result = sub_1001A1688();
  if (result)
  {

    return sub_100195558(9);
  }

  else
  {
    byte_100B5A080 = 1;
  }

  return result;
}

uint64_t sub_100195ACC()
{
  if (byte_100B5A080 == 1)
  {
    byte_100B5A080 = 0;
    return sub_10002195C(sub_100195A88, 0, 1, 0);
  }

  return result;
}

uint64_t sub_100195B60()
{
  sub_1001A170C(&dword_100B5A090);

  return sub_10002195C(sub_100195A78, 0, 3, &dword_100B5A090);
}

uint64_t sub_100195BB8()
{
  byte_100B5A080 = 0;
  sub_10002195C(sub_100195A88, 0, 1, 0);
  result = sub_10002195C(sub_100195A70, 0, 2, &dword_100B5A08C);
  dword_100B5A07C = 1;
  return result;
}

uint64_t sub_100195C2C(uint64_t a1, uint64_t a2)
{
  v2 = byte_100B5A098;
  if (byte_100B5A098)
  {
    if (byte_100B5A098 == 10)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Can't add anymore Incoming Raw Data callbacks.", v3, v4, v5, v6, v7, v8, v9, v16);
        v10 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 104;
    }

    else
    {
      v12 = qword_100B5A0A0;
      v13 = byte_100B5A098;
      while (*v12 != a1)
      {
        v12 += 2;
        if (!--v13)
        {
          goto LABEL_10;
        }
      }

      return 0;
    }
  }

  else
  {
LABEL_10:
    v11 = 0;
    v14 = &qword_100B5A0A0[2 * byte_100B5A098];
    *v14 = a1;
    v14[1] = a2;
    byte_100B5A098 = v2 + 1;
  }

  return v11;
}

uint64_t sub_100195CF0(uint64_t a1)
{
  v1 = byte_100B5A140;
  if (byte_100B5A140)
  {
    if (byte_100B5A140 == 10)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Can't add anymore CL Ready callbacks.", v2, v3, v4, v5, v6, v7, v8, v14);
        v9 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 104;
    }

    else
    {
      v11 = qword_100B5A148;
      v12 = byte_100B5A140;
      while (*v11 != a1)
      {
        ++v11;
        if (!--v12)
        {
          goto LABEL_10;
        }
      }

      return 0;
    }
  }

  else
  {
LABEL_10:
    v10 = 0;
    qword_100B5A148[byte_100B5A140] = a1;
    byte_100B5A140 = v1 + 1;
  }

  return v10;
}

uint64_t sub_100195DB0(char a1, char a2)
{
  byte_100B5A8E8 = a1;
  v3 = sub_1002CE244(off_100AE4B80);
  if (v3)
  {
    v4 = v3;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to register LE GAP", v5, v6, v7, v8, v9, v10, v11, *v45);
      v12 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return v4;
  }

  if (sub_10028E64C(58, 2, 16, 8u, &qword_100B5A8F0, sub_100196120))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to register L2CAP fixed channel", v13, v14, v15, v16, v17, v18, v19, *v45);
      v20 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1002CE3E4(off_100AE4B80);
  }

  byte_100B5A8F8 = 0;
  qword_100B5A900 = sub_1000BAE38(sub_100196764, sub_10019676C);
  sub_1002DB89C(off_100AE4BB0);
  v4 = v21;
  if (v21)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to register CL security.", v22, v23, v24, v25, v26, v27, v28, *v45);
      v29 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1000D660C();
  }

  byte_100B5A908 = a2;
  byte_100B5A909 = 1;
  dword_100B5A90C = 4129;
  v30 = dword_100B5A910;
  v31 = sub_10000C240();
  if (v30 == 42)
  {
    if (v31)
    {
      sub_10000AF54("This is a watch", v32, v33, v34, v35, v36, v37, v38, *v45);
      v42 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 136446210;
        *&v45[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, " %{public}s", v45, 0xCu);
      }
    }

    v40 = dword_100B5A90C;
    v41 = 2176;
  }

  else
  {
    if (v30 != 12)
    {
      if (v31)
      {
        sub_10000AF54("This is a generic device", v32, v33, v34, v35, v36, v37, v38, *v45);
        v44 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *v45 = 136446210;
          *&v45[4] = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, " %{public}s", v45, 0xCu);
        }
      }

      goto LABEL_26;
    }

    if (v31)
    {
      sub_10000AF54("This is a phone", v32, v33, v34, v35, v36, v37, v38, *v45);
      v39 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 136446210;
        *&v45[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, " %{public}s", v45, 0xCu);
      }
    }

    v40 = dword_100B5A90C;
    v41 = 1280;
  }

  dword_100B5A90C = v40 | v41;
LABEL_26:
  if (sub_10023DE88())
  {
    dword_100B5A90C |= 2u;
  }

  if (sub_10023DE98())
  {
    dword_100B5A90C |= 0x10u;
  }

  return v4;
}

void sub_100196120(__int128 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return;
  }

  v8 = sub_1000B7E7C(a1);
  if (!a2 || a3 <= 1)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Ignoring PDU size of %d", v12, v13, v14, v15, v16, v17, v18, a3);
    v19 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_42;
  }

  v9 = v8;
  v10 = *a2;
  if (a4 && v10 != 145 && off_100BC9CA8)
  {
    off_100BC9CA8(a1, v8, a3);
  }

  if ((v10 & 0xFE) == 8)
  {
    v9 = a2[1];
    if (a3 - 2 == v9)
    {
      v11 = 2;
      goto LABEL_25;
    }

    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Ignoring PDU opcode %d with invalid length (%d expected, %d actual)", v21, v22, v23, v24, v25, v26, v27, v10);
    v28 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_42:
    sub_1000E09C0();
    return;
  }

  if (v9 == -1)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not locate peer from handle %p with PDU opcode 0x%x", v29, v30, v31, v32, v33, v34, v35, a1);
    v36 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_42;
  }

  v20 = *(*(&xmmword_100B5A1A0 + v9) + 48);
  LOWORD(v9) = a2[1];
  if (v20 < 8)
  {
    v11 = 2;
  }

  else
  {
    LOWORD(v9) = v9 | (a2[2] << 8);
    v11 = 3;
  }

  if (a3 - v11 != v9)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Ignoring PDU opcode %d with invalid length (%d expected, %d actual) dataLength %d, expectedHeaderSize %d", v37, v38, v39, v40, v41, v42, v43, v10);
    v44 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_42;
  }

LABEL_25:
  if (v10 > 8)
  {
    if (v10 > 143)
    {
      if ((v10 - 147) < 2)
      {
        return;
      }

      if (v10 == 144)
      {

        sub_10019EF5C(a1, &a2[v11], v9);
        return;
      }

      if (v10 == 145)
      {

        sub_10019EE10(a1, &a2[v11], v9, a4);
        return;
      }
    }

    else if (v10 > 112)
    {
      if (v10 == 113)
      {

        sub_10019E914(a1, &a2[v11], v9);
        return;
      }

      if (v10 == 114)
      {

        sub_10019EB10(a1, &a2[v11], v9);
        return;
      }
    }

    else
    {
      if (v10 == 9)
      {

        sub_10019B4B0(a1, &a2[v11], v9);
        return;
      }

      if (v10 == 112)
      {

        sub_10019E584(a1);
        return;
      }
    }

LABEL_88:
    if (sub_10000C240())
    {
      sub_10000AF54("Unknown CL Opcode of 0x%x with data size %d", v45, v46, v47, v48, v49, v50, v51, v10);
      v52 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v53 = 264;
    v54 = 2;
    sub_100196E20(a1, &v53, 3u, 0);
    return;
  }

  if (v10 > 4)
  {
    if (v10 > 6)
    {
      if (v10 == 7)
      {

        sub_10019DB98(a1, &a2[v11], v9);
      }

      else
      {

        sub_10019E3F0(a1, &a2[v11]);
      }
    }

    else if (v10 == 5)
    {

      sub_10019D160(a1, &a2[v11], v9);
    }

    else
    {

      sub_10019D5BC(a1, &a2[v11], v9);
    }
  }

  else if (v10 > 2)
  {
    if (v10 == 3)
    {

      sub_10019CBAC(a1, &a2[v11], v9);
    }

    else
    {

      sub_10019CEC4(a1, &a2[v11], v9);
    }
  }

  else
  {
    if (v10 != 1)
    {
      if (v10 == 2)
      {

        sub_10019C3B4(a1, &a2[v11], v9);
        return;
      }

      goto LABEL_88;
    }

    sub_10019BA20(a1, &a2[v11], v9);
  }
}

uint64_t sub_100196770(uint64_t a1)
{
  v1 = word_100B5A19A;
  if (!word_100B5A19A)
  {
    return 0;
  }

  for (i = &xmmword_100B5A1A0; **i != a1; i = (i + 8))
  {
    if (!--v1)
    {
      return 0;
    }
  }

  return (*(*i + 52) >> 3) & 1;
}

void sub_1001967B4()
{
  if (qword_100B5A8F0)
  {
    sub_10028E908(qword_100B5A8F0);
  }

  sub_1002CE3E4(off_100AE4B80);
  word_100B5A19A = 0;
  xmmword_100B5A1A0 = 0u;
  *algn_100B5A1B0 = 0u;
  xmmword_100B5A1C0 = 0u;
  unk_100B5A1D0 = 0u;
  xmmword_100B5A1E0 = 0u;
  unk_100B5A1F0 = 0u;
  xmmword_100B5A200 = 0u;
  unk_100B5A210 = 0u;
  if (word_100B5A220)
  {
    v0 = 0;
    v1 = qword_100B5A228;
    do
    {
      v2 = *v1;
      v1 += 9;
      sub_10000C1E8(v2);
      ++v0;
    }

    while (v0 < word_100B5A220);
  }

  bzero(qword_100B5A228, 0x6C0uLL);
  word_100B5A220 = 0;
}

uint64_t sub_10019686C(int a1, _DWORD *a2, _DWORD *a3)
{
  if (!word_100B5A19A)
  {
    return 120;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(&xmmword_100B5A1A0 + v3);
    v5 = *(v4 + 16);
    if (v5)
    {
      break;
    }

LABEL_7:
    if (++v3 == word_100B5A19A)
    {
      return 120;
    }
  }

  v6 = 0;
  v7 = (*(v4 + 8) + 52);
  while (1)
  {
    v8 = *v7;
    v7 += 44;
    if (v8 == a1)
    {
      break;
    }

    if (v5 == ++v6)
    {
      goto LABEL_7;
    }
  }

  result = 0;
  *a2 = v3;
  *a3 = v6;
  return result;
}

void sub_1001968D8(uint64_t a1)
{
  if (!word_100B5A19A)
  {
    goto LABEL_17;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(&xmmword_100B5A1A0 + v2);
    v4 = *(v3 + 16);
    if (v4)
    {
      break;
    }

LABEL_7:
    if (++v2 == word_100B5A19A)
    {
      goto LABEL_17;
    }
  }

  v5 = (*(v3 + 8) + 52);
  while (1)
  {
    v6 = *v5;
    v5 += 44;
    if (v6 == a1)
    {
      break;
    }

    if (!--v4)
    {
      goto LABEL_7;
    }
  }

  v7 = *v3;
  if (*v3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Queue CID %d stalled, disconnecting", v8, v9, v10, v11, v12, v13, v14, a1);
      v15 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1000E771C(3702);
    v16 = sub_1002CDF48(v7);
    if (v16)
    {
      v17 = v16;
      if (sub_10000C240())
      {
        sub_10000AF54("Stall Monitor LE disconnect failed with status %!", v18, v19, v20, v21, v22, v23, v24, v17);
        v25 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }
      }
    }
  }

  else
  {
LABEL_17:
    if (sub_10000C240())
    {
      sub_10000AF54("Queue CID %d stalled disconnecting, but connection handle is no longer valid", v26, v27, v28, v29, v30, v31, v32, a1);
      v33 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        sub_10080F604();
      }
    }
  }
}

uint64_t sub_100196A3C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B7E7C(a1);
  if (v6 == -1)
  {
    if (!sub_10000C240())
    {
      return 414;
    }

    sub_10000AF54("SendTimeSyncRequest peerID is invalid", v16, v17, v18, v19, v20, v21, v22, v57);
    v23 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      return 414;
    }

LABEL_8:
    sub_1000E09C0();
    return 414;
  }

  v7 = v6;
  if (sub_1000B6E74(a1))
  {
    if (!sub_10000C240())
    {
      return 414;
    }

    sub_10000AF54("Time sync should only be initiated by the peripheral.", v8, v9, v10, v11, v12, v13, v14, v57);
    v15 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return 414;
    }

    goto LABEL_8;
  }

  v25 = *(&xmmword_100B5A1A0 + v7);
  if (*(v25 + 56))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Time update already pending.", v26, v27, v28, v29, v30, v31, v32, v57);
      v33 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 116;
  }

  else
  {
    v34 = *(v25 + 48);
    if (v34 <= 7)
    {
      v35 = 2;
    }

    else
    {
      v35 = 3;
    }

    if (v34 <= 7)
    {
      v36 = 2;
    }

    else
    {
      v36 = 3;
    }

    v37 = sub_100007618(v36, 0x7D4DDD9AuLL);
    if (v37)
    {
      v38 = v37;
      v57 = v37;
      v58 = v35;
      v59 = v35;
      v60 = 131073;
      *v37 = 112;
      sub_100196CE8(v7, &v57, 0);
      if (HIBYTE(v60))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Error creating CLDeviceID PDU", v39, v40, v41, v42, v43, v44, v45, v57);
          v46 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        return 131;
      }

      else
      {
        v47 = *(&xmmword_100B5A1A0 + v7);
        *(v47 + 56) = a2;
        *(v47 + 64) = a3;
        if (sub_10000C240())
        {
          sub_10000AF54("Requesting time sync", v48, v49, v50, v51, v52, v53, v54, v57);
          v55 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = sub_10000C0FC();
            *buf = 136446210;
            v62 = v56;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        return sub_100196E20(a1, v38, v35, 1);
      }
    }

    else
    {
      return 106;
    }
  }
}

uint64_t sub_100196CE8(uint64_t result, uint64_t *a2, __int16 a3)
{
  if (*(*(&xmmword_100B5A1A0 + result) + 48) >= 8u)
  {
    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c");
    }

    else if (*(a2 + 5) - *(a2 + 6) > 1)
    {
      if (*(a2 + 14) == 2)
      {
        *(*a2 + *(a2 + 6)) = a3;
        *(*a2 + *(a2 + 6) + 1) = HIBYTE(a3) & 0x7F;
        *(a2 + 6) += 2;
        return result;
      }

      v5 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c", 1066, v5);
    }

    v5 = "ByteStream_NumReadBytesAvail(*pByteStream) >= 2";
    goto LABEL_16;
  }

  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c");
    goto LABEL_14;
  }

  v3 = *(a2 + 6);
  if (*(a2 + 5) <= v3)
  {
LABEL_14:
    v6 = "ByteStream_NumReadBytesAvail(*pByteStream) >= 1";
    goto LABEL_18;
  }

  if (*(a2 + 14) != 2)
  {
    v6 = "(*pByteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_18:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c", 1068, v6);
  }

  v4 = *a2;
  *(a2 + 6) = v3 + 1;
  *(v4 + v3) = a3;
  return result;
}

uint64_t sub_100196E20(__int128 *a1, void *a2, unsigned int a3, int a4)
{
  if (sub_1000B7E2C(a1))
  {
    v8 = sub_1000B7E7C(a1);
    if (a3 >= 0x100)
    {
      v9 = v8;
      if (v8 != -1 && *(*(&xmmword_100B5A1A0 + v8) + 48) <= 7u)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("CL data will be dropped for peer %d datasize is %d version %d", v10, v11, v12, v13, v14, v15, v16, v9);
          v17 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }
    }

    if (byte_100B5A8F8 == 1)
    {
      v40 = 0;
      if (sub_10000C240())
      {
        v18 = sub_10000C248(qword_100B5A900);
        sub_10000AF54("CL L2CAP queue is full, queueing data, current Queue size is %d packets", v19, v20, v21, v22, v23, v24, v25, v18);
        v26 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v42 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v38 = a1;
      LOWORD(v40) = a3;
      v27 = sub_100007618(a3, 0xB7C9F0D8uLL);
      v39 = v27;
      if (v27)
      {
        memmove(v27, a2, a3);
        sub_1000B8B8C(qword_100B5A900, &v38, 24);
      }

      if (a4)
      {
        sub_10000C1E8(a2);
      }

      if (v39)
      {
        return 0;
      }

      else
      {
        return 106;
      }
    }

    else
    {
      return sub_10019B178(a1, a2, a3, a4);
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Not valid LE connection handle", v29, v30, v31, v32, v33, v34, v35, v37);
      v36 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_10000C1E8(a2);
    return 5100;
  }
}

uint64_t sub_100197070(uint64_t a1)
{
  if (!sub_1000B7E2C(a1))
  {
    return 414;
  }

  if (sub_1000B7E7C(a1) != -1)
  {
    if (!sub_10000C240())
    {
      return 408;
    }

    sub_10000AF54("Peer ID already exists for this connection handle.", v2, v3, v4, v5, v6, v7, v8, v45);
    v9 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 408;
    }

    goto LABEL_5;
  }

  if (!*(a1 + 20))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not find the remote manufacturer name, it is currently 0", v11, v12, v13, v14, v15, v16, v17, v45);
      v18 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  if (sub_1000B6E74(a1) && ((v19 = *(a1 + 20), v19 == 15) || v19 == 89 || v19 == 76))
  {
    v20 = sub_1001972E4(a1);
    if (v20 == -1)
    {
      if (!sub_10000C240())
      {
        return 408;
      }

      sub_10000AF54("Peer ID could not be found for connection handle (%x).", v37, v38, v39, v40, v41, v42, v43, a1);
      v44 = sub_10000C050(0x51u);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        return 408;
      }

LABEL_5:
      sub_1000E09C0();
      return 408;
    }

    v21 = v20;
    sub_100197374(a1);
    *(*(&xmmword_100B5A1A0 + v21) + 74) = 1;
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("CL is pending remote ver for (%x).", v22, v23, v24, v25, v26, v27, v28, a1);
      v29 = sub_10000C050(0x51u);
      result = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("CL is disabled for (%x) .", v30, v31, v32, v33, v34, v35, v36, a1);
      v29 = sub_10000C050(0x51u);
      result = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
LABEL_23:
        *buf = 136446210;
        v47 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001972E4(uint64_t a1)
{
  if (word_100B5A19A >= 0x10u)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c", 749, "lNbPeers < MAX_PEERS");
  }

  v2 = sub_1001BBBD8(0x78uLL, 0x10A004042F4910AuLL);
  v3 = word_100B5A19A;
  *(&xmmword_100B5A1A0 + word_100B5A19A) = v2;
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  *v2 = a1;
  word_100B5A19A = v3 + 1;
  return (v3 + 1) - 1;
}

uint64_t sub_100197374(__int128 *a1)
{
  if (sub_10000C240())
  {
    v9 = 11;
    if (!byte_100B5A909)
    {
      v9 = 0;
    }

    sub_10000AF54("Sending VersionInfo version=%04x features=%04x", v2, v3, v4, v5, v6, v7, v8, v9);
    v10 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *buf = 1289;
  if (byte_100B5A909)
  {
    v11 = 11;
  }

  else
  {
    v11 = 0;
  }

  buf[2] = v11;
  *&buf[3] = dword_100B5A90C;
  *&buf[5] = 0;
  return sub_100196E20(a1, buf, 7u, 0);
}

BOOL sub_1001974A0(uint64_t a1)
{
  v2 = sub_1000269D4();
  v3 = word_100B5A19A;
  if (!word_100B5A19A)
  {
    return 0;
  }

  v4 = v2;
  v17 = 0;
  for (i = &xmmword_100B5A1A0; ; i = (i + 8))
  {
    v6 = *i;
    if (**i == a1)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  *(v6 + 21) = 0;
  *(v6 + 22) = 0;
  v8 = *(v6 + 4);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v6[1] + v9;
      v13 = *(v12 + 80);
      v14 = sub_1000ABC7C(*(v12 + 52), &v17);
      v6 = *i;
      if (!v14)
      {
        *(v6 + 84) = vadd_s32(*(v6 + 84), v17[10]);
      }

      v11 |= v13;
      ++v10;
      v9 += 88;
    }

    while (v10 < *(v6 + 4));
    v8 = *(v6 + 21);
  }

  else
  {
    v11 = 0;
  }

  if (*(v6 + 23) == v8)
  {
    v15 = *(v6 + 24);
    v16 = *(v6 + 22);
    if (v15 == v16)
    {
      result = (v11 & 1) == 0 && v4 > v6[14] + 60000;
      goto LABEL_19;
    }
  }

  else
  {
    v16 = *(v6 + 22);
  }

  result = 0;
  v6[14] = v4;
  v15 = v16;
LABEL_19:
  *(v6 + 23) = v8;
  *(v6 + 24) = v15;
  return result;
}

void sub_1001975E0(uint64_t a1)
{
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v34 = 0;
  if (sub_10019686C(a1, &v34, &v35))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Can not find channel/peer ID for pipe ID %d", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v10 = v34;
    v11 = **(&xmmword_100B5A1A0 + v34);
    sub_100016250(&v38);
    v12 = sub_1000B6B74(&v38);
    if (v12 - sub_1000B6B74(*(&xmmword_100B5A1A0 + v10) + 76) >= 0x3E8)
    {
      sub_100016250(*(&xmmword_100B5A1A0 + v10) + 76);
      v13 = *(&xmmword_100B5A1A0 + v10);
      if (*(v13 + 16))
      {
        v14 = 0;
        v15 = 0;
        v33 = 0u;
        do
        {
          v16 = sub_1000ABC7C(*(*(v13 + 8) + v14 + 52), &v37);
          v13 = *(&xmmword_100B5A1A0 + v10);
          if (!v16)
          {
            v17 = *(v13 + 8) + v14;
            if (v37[10].i32[0] != *(v17 + 72) || v37[10].i32[1] != *(v17 + 76))
            {
              sub_1000BE2D0(v11, &v36 + 1, &v36);
              if (sub_10000C240())
              {
                v19 = *(*(*(&xmmword_100B5A1A0 + v10) + 8) + v14 + 52);
                sub_1002308D4(0);
                sub_10000AF54("Pipe[ 0x%4x, p %d, f %d, r %d, d %d] \tTx[ %d kbps, %d B ] \tRx[ %d kbps, %d B ] \tav[ %d, %d ]", v20, v21, v22, v23, v24, v25, v26, v19);
                v27 = sub_10000C050(0x51u);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  v28 = sub_10000C0FC();
                  *buf = 136446210;
                  v40 = v28;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                }
              }
            }

            v13 = *(&xmmword_100B5A1A0 + v10);
            v29 = v37[10];
            *(&v30 + 1) = *(&v33 + 1);
            *&v30 = vadd_s32(v29, *&v33);
            v33 = v30;
            *(*(v13 + 8) + v14 + 72) = v29;
          }

          ++v15;
          v14 += 88;
        }

        while (v15 < *(v13 + 16));
        v31 = DWORD1(v33);
        v32 = v33;
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      sub_100230904(v11, v32, v31);
    }
  }
}

uint64_t sub_10019789C(__int128 *a1, const void *a2, uint64_t a3)
{
  result = 101;
  if (!a2 || !a3)
  {
    return result;
  }

  v7 = sub_1000B7E7C(a1);
  if (v7 == -1 || *(*(&xmmword_100B5A1A0 + v7) + 48) < 7u)
  {
    return 101;
  }

  v8 = sub_1000B7E7C(a1);
  if (v8 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("invalid peer", v20, v21, v22, v23, v24, v25, v26, v62);
      v27 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 414;
  }

  v9 = v8;
  v10 = *(&xmmword_100B5A1A0 + v8);
  if (!v10)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received peer ID before we are tracking connection handle %p", v28, v29, v30, v31, v32, v33, v34, a1);
      v35 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 414;
  }

  v11 = *(v10 + 48);
  if (v11 <= 6)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("peer is version %d, and does not support this command", v12, v13, v14, v15, v16, v17, v18, *(*(&xmmword_100B5A1A0 + v9) + 48));
      v19 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 408;
  }

  if (v11 == 7)
  {
    v36 = 2;
  }

  else
  {
    v36 = 3;
  }

  v37 = v36 + a3;
  v38 = sub_100007618((v36 + a3), 0x6B628E3DuLL);
  if (!v38)
  {
    return 106;
  }

  v39 = v38;
  v63 = v38;
  v64 = v36 + a3;
  v65 = v36 + a3;
  v66 = 131073;
  *v38 = -111;
  sub_100196CE8(v9, &v63, a3);
  v40 = v63;
  v41 = v66;
  v42 = HIBYTE(v66);
  if (HIBYTE(v66))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c");
    v43 = 0;
  }

  else
  {
    v43 = v65 - v66;
  }

  if (v43 < a3)
  {
    v61 = "ByteStream_NumReadBytesAvail(bs) >= (dataLength)";
    goto LABEL_42;
  }

  if (BYTE2(v66) != 2)
  {
    v61 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_42:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c", 1752, v61);
  }

  memmove((v40 + v41), a2, a3);
  if (v42)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error creating rawData PDU", v44, v45, v46, v47, v48, v49, v50, v62);
      v51 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_10000C1E8(v39);
    return 131;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Sending cl data of length %d to %p headersize %d", v52, v53, v54, v55, v56, v57, v58, a3);
      v59 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = sub_10000C0FC();
        *buf = 136446210;
        v68 = v60;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return sub_100196E20(a1, v39, v37, 1);
  }
}

uint64_t sub_100197C20(unint64_t a1, _BYTE *a2)
{
  v3 = sub_100255884(a1);
  v4 = sub_1000B7E7C(v3);
  result = 414;
  if (v3 && v4 != -1)
  {
    v6 = *(*(&xmmword_100B5A1A0 + v4) + 48);
    if (v6)
    {
      result = 0;
      *a2 = v6;
    }

    else
    {
      return 103;
    }
  }

  return result;
}

uint64_t sub_100197C84()
{
  if (byte_100B5A909)
  {
    return 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100197C9C(void *__s2, size_t size, int a3, uint64_t a4, char a5, int a6, char a7, char a8, __int128 *a9)
{
  if ((size - 33) < 0xFFFFFFE0 || __s2 == 0 || a9 == 0)
  {
    return 101;
  }

  v13 = a4;
  v17 = &byte_100B5A000;
  v18 = word_100B5A220;
  if (word_100B5A220)
  {
    v20 = word_100B5A220;
    v21 = &dword_100B5A234;
    do
    {
      if (*v21 == a3 && *(v21 - 4) == size && !memcmp(*(v21 - 3), __s2, size))
      {
        if (*(v21 + 9))
        {
          return 145;
        }

        else
        {
          return 119;
        }
      }

      v21 += 18;
      --v20;
    }

    while (v20);
    v13 = a4;
    v17 = &byte_100B5A000;
    if (v18 != 24)
    {
      goto LABEL_20;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Reached max local services!", v22, v23, v24, v25, v26, v27, v28, v73);
      v29 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 106;
  }

LABEL_20:
  v30 = sub_100007618(size, 0x7A7A3C40uLL);
  if (!v30)
  {
    return 106;
  }

  v31 = v30;
  memmove(v30, __s2, size);
  v32 = *(v17 + 272);
  v33 = &qword_100B5A228[9 * v32];
  *v33 = v31;
  *(v33 + 8) = size;
  *(v33 + 3) = a3;
  v34 = 1;
  if (v32)
  {
    v35 = a8;
    v36 = a7;
    v37 = a5;
    while (1)
    {
      v38 = 0;
      v39 = &word_100B5A23A;
      v40 = v32;
      do
      {
        v41 = *v39;
        v39 += 36;
        v38 |= v41 == v34;
        --v40;
      }

      while (v40);
      if ((v38 & 1) == 0)
      {
        break;
      }

      if (++v34 == 0xFFFF)
      {
        LOWORD(v34) = -1;
        break;
      }
    }
  }

  else
  {
    v35 = a8;
    v36 = a7;
    v37 = a5;
  }

  v42 = &qword_100B5A228[9 * v32];
  *(v42 + 9) = v34;
  *(v42 + 20) = v13;
  v43 = *a9;
  v44 = a9[1];
  v42[8] = *(a9 + 4);
  *(v42 + 2) = v43;
  *(v42 + 3) = v44;
  *(v42 + 21) = 0;
  *(v42 + 16) = v37;
  *(v42 + 24) = a6;
  *(v42 + 25) = v36;
  *(v42 + 26) = v35;
  if (v13 == 13)
  {
    if (!a6 || (byte_100B5A915 & 1) != 0)
    {
LABEL_43:
      v45 = 0;
      LODWORD(v32) = *(v17 + 272);
      goto LABEL_44;
    }

LABEL_40:
    if (sub_10000C240())
    {
      sub_10000AF54("Forcing ERTM enabled on a non-reliable pipe priority %d, disableReliable %d", v46, v47, v48, v49, v50, v51, v52, v13);
      v53 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_43;
  }

  if (a6 && (byte_100B5A915 & 1) == 0)
  {
    goto LABEL_40;
  }

  v45 = 1;
LABEL_44:
  v54 = &qword_100B5A228[9 * v32];
  *(v54 + 22) = v45;
  *(v54 + 23) = 0;
  *(v17 + 272) = v32 + 1;
  if (word_100B5A19A)
  {
    v55 = 0;
    if (size >= 0xFu)
    {
      v56 = 15;
    }

    else
    {
      v56 = size;
    }

    __na = v56;
    v78 = v13;
    do
    {
      if (sub_1000B7E2C(**(&xmmword_100B5A1A0 + v55)))
      {
        v57 = *(&xmmword_100B5A1A0 + v55);
        if ((*(v57 + 74) & 1) == 0)
        {
          if (sub_1000B6E74(*v57))
          {
            if (v78 == 13)
            {
              if (sub_10019496C(**(&xmmword_100B5A1A0 + v55), 1))
              {
                if (sub_10000C240())
                {
                  sub_10000AF54("Force upgrade TS not ready C", v58, v59, v60, v61, v62, v63, v64, v73);
                  v65 = sub_10000C050(0x51u);
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                  {
                    v66 = sub_10000C0FC();
                    *buf = 136446210;
                    v81 = v66;
                    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                  }
                }
              }
            }

            sub_100198190(**(&xmmword_100B5A1A0 + v55), *(&qword_100B5A228[9 * word_100B5A220 - 6] - 3), __s2, size, a3, (word_100B5A220 - 1));
          }

          else
          {
            v67 = *(&xmmword_100B5A1A0 + v55);
            v68 = *(v67 + 16);
            if (v68)
            {
              v69 = 0;
              v70 = byte_100B5A198 | (memcmp("com.apple.BT.TS", __s2, __na) != 0);
              v71 = 88 * v68;
              while (1)
              {
                if (v70)
                {
                  v72 = *(v67 + 8) + v69;
                  if (sub_100198434(v72, __s2, size, a3))
                  {
                    break;
                  }
                }

                v69 += 88;
                if (v71 == v69)
                {
                  goto LABEL_65;
                }
              }

              v79 = *(v72 + 40);
              *(v72 + 54) = *(&qword_100B5A228[9 * word_100B5A220 - 6] - 4);
              sub_1001984B8(*v67, 1u, &v79);
            }
          }
        }
      }

LABEL_65:
      ++v55;
    }

    while (v55 < word_100B5A19A);
  }

  return 0;
}

uint64_t sub_100198190(__int128 *a1, uint64_t a2, const void *a3, unsigned int a4, char a5, unsigned int a6)
{
  v12 = sub_1000B7E7C(a1);
  if (v12 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Can not send accept channel, peer is invalid for handle %p", v34, v35, v36, v37, v38, v39, v40, a1);
      v41 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 414;
  }

  else
  {
    v13 = v12;
    if (sub_10019F974(v12))
    {
      if (sub_10019FB14(v13, a3, a4, a1))
      {
        if (*(*(&xmmword_100B5A1A0 + v13) + 48) <= 7u)
        {
          v14 = 2;
        }

        else
        {
          v14 = 3;
        }

        v15 = a4 + 5;
        v42 = a4 + 5 + v14;
        v16 = sub_100007618(v42, 0xB5702CC7uLL);
        if (v16)
        {
          v17 = v16;
          *v16 = 5;
          v18 = 2;
          if (*(*(&xmmword_100B5A1A0 + v13) + 48) >= 8u)
          {
            v16[2] = HIBYTE(v15);
            v18 = 3;
          }

          v16[1] = v15;
          v19 = &v16[v18];
          *v19 = a2;
          v19[2] = a5;
          v20 = v18 | 4;
          v19[3] = a4;
          memmove(&v16[v20], a3, a4);
          v21 = v20 + a4;
          v17[v21] = 0;
          v22 = &qword_100B5A228[9 * a6];
          v23 = *(v22 + 22);
          v17[v21] = v23;
          if (*(v22 + 23))
          {
            v24 = 2;
          }

          else
          {
            v24 = 0;
          }

          v17[v21] = v24 | v23;
          v46 = 0;
          memset(v45, 0, sizeof(v45));
          __memcpy_chk();
          *(v45 + a4) = 0;
          if (sub_10000C240())
          {
            sub_10000AF54("Sending added service %d for %s to %p index %d", v25, v26, v27, v28, v29, v30, v31, a2);
            v32 = sub_10000C050(0x51u);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446210;
              v44 = sub_10000C0FC();
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          return sub_100196E20(a1, v17, v42, 1);
        }

        else
        {
          return 106;
        }
      }

      else
      {
        return 153;
      }
    }

    else
    {
      return 152;
    }
  }
}

BOOL sub_100198434(_DWORD *a1, const void *a2, size_t __n, int a4)
{
  if (a1[8] != __n)
  {
    return 0;
  }

  if (memcmp(a1, a2, __n))
  {
    return 0;
  }

  v7 = a1[9];
  if (a4 == 2 && v7 == 2 || a4 == 1 && !v7)
  {
    return 1;
  }

  return !a4 && v7 == 1;
}

void sub_1001984B8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (byte_100B5A8E8 == 1)
  {
    if (a2)
    {
      v6 = sub_1000B7E7C(a1);
      if (v6 == -1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Can not send services, peer is invalid for handle %p", v38, v39, v40, v41, v42, v43, v44, a1);
          v45 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
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
          v8 = 2;
          if (*(*(&xmmword_100B5A1A0 + v7) + 48) <= 7u)
          {
            v9 = 2;
          }

          else
          {
            v9 = 3;
          }

          v10 = (2 * a2) | 1;
          v11 = v10 + v9;
          v12 = sub_100007618((v10 + v9), 0xE930A9D4uLL);
          if (v12)
          {
            v13 = v12;
            v14 = a2;
            *v12 = 2;
            if (*(*(&xmmword_100B5A1A0 + v7) + 48) >= 8u)
            {
              v12[2] = a2 >> 7;
              v8 = 3;
            }

            v15 = 0;
            v12[1] = v10;
            v12[v8] = a2;
            v16 = v8 + 2;
            do
            {
              v17 = a3 + 2 * v15;
              v12[v16 - 1] = *v17;
              v12[v16] = *(v17 + 1);
              ++v15;
              v16 += 2;
            }

            while (v14 != v15);
            if (sub_10000C240())
            {
              sub_10000AF54("Sending %d services back to %p, index %d", v18, v19, v20, v21, v22, v23, v24, v14);
              v25 = sub_10000C050(0x51u);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446210;
                v48 = sub_10000C0FC();
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            v26 = a1;
            v27 = v13;
            v28 = v11;
            v29 = 1;
          }

          else
          {
            *buf = 264;
            buf[2] = 7;
            v27 = buf;
            v26 = a1;
            v28 = 3;
            v29 = 0;
          }

          sub_100196E20(v26, v27, v28, v29);
        }
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("No common services found.", v30, v31, v32, v33, v34, v35, v36, v46);
      v37 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v48 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }
}

BOOL sub_100198764()
{
  if (!word_100B5A220)
  {
    return 0;
  }

  if (byte_100B5A23C == 13)
  {
    return 1;
  }

  v1 = &byte_100B5A284;
  v2 = 1;
  do
  {
    v3 = v2;
    if (word_100B5A220 == v2)
    {
      break;
    }

    v4 = *v1;
    v1 += 72;
    ++v2;
  }

  while (v4 != 13);
  return v3 < word_100B5A220;
}

uint64_t sub_1001987C4(const void *a1, unsigned int a2, uint64_t a3, int a4)
{
  v95 = 0;
  memset(v94, 0, sizeof(v94));
  if (a2 >= 0x20)
  {
    v6 = 32;
  }

  else
  {
    v6 = a2;
  }

  __memcpy_chk();
  *(v94 + v6) = 0;
  v7 = word_100B5A220;
  if (word_100B5A220)
  {
    v8 = 0;
    for (i = &byte_100B5A23D; *(i - 9) != a3 || v6 != *(i - 13) || memcmp(*(i - 21), a1, v6); i += 72)
    {
      if (v7 == ++v8)
      {
        return 121;
      }
    }

    if (*i == 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unregistering something pending unregistration", v69, v70, v71, v72, v73, v74, v75, v88);
        v76 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 121;
    }

    *i = 1;
    v10 = v8;
  }

  else
  {
    LODWORD(v8) = 0;
    v10 = 0;
  }

  if (v8 == v7)
  {
    return 121;
  }

  if (word_100B5A19A)
  {
    v12 = 0;
    v13 = &qword_100B5A228[9 * v10];
    do
    {
      if (sub_1000B7E2C(**(&xmmword_100B5A1A0 + v12)))
      {
        v14 = *(&xmmword_100B5A1A0 + v12);
        if ((*(v14 + 74) & 1) == 0)
        {
          if (sub_1000B6E74(*v14))
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Central removing service %d named %s to %d with priority %d", v15, v16, v17, v18, v19, v20, v21, *(v13 + 9));
              v22 = sub_10000C050(0x51u);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = sub_10000C0FC();
                *buf = 136446210;
                v91 = v23;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            if (a4 == 13)
            {
              v24 = *(&xmmword_100B5A1A0 + v12);
              *(v24 + 75) = 0;
              if (sub_10019496C(*v24, 0))
              {
                if (sub_10000C240())
                {
                  sub_10000AF54("Force upgrade TS not ready D", v25, v26, v27, v28, v29, v30, v31, v88);
                  v32 = sub_10000C050(0x51u);
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                  {
                    v33 = sub_10000C0FC();
                    *buf = 136446210;
                    v91 = v33;
                    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                  }
                }
              }
            }

            sub_100198DFC(v12, *(v13 + 9), *v13, *(v13 + 8));
            v34 = *(&xmmword_100B5A1A0 + v12);
            v35 = *(v34 + 16);
            if (!v35)
            {
              goto LABEL_44;
            }

            v36 = 0;
            v37 = 0;
            v38 = *(v34 + 8);
            v39 = 88 * v35;
            while (!sub_100198F90((v38 + v36), v10))
            {
              ++v37;
              v36 += 88;
              if (v39 == v36)
              {
                goto LABEL_44;
              }
            }

            *(v38 + v36 + 44) = 2;
            v45 = v13[6];
            if (v45)
            {
              v45(*(v38 + v36 + 52), 5102);
              v38 = *(*(&xmmword_100B5A1A0 + v12) + 8);
            }

            v46 = *(v38 + v36 + 64);
            if (v46)
            {
              sub_10028E908(v46);
              v38 = *(*(&xmmword_100B5A1A0 + v12) + 8);
            }

            *(v38 + v36 + 64) = 0;
            if (*(*(&xmmword_100B5A1A0 + v12) + 16) == v37)
            {
LABEL_44:
              if (sub_10000C240())
              {
                sub_10000AF54("Pipe associated with service to unregister no longer exists", v47, v48, v49, v50, v51, v52, v53, v88);
                v54 = sub_10000C050(0x51u);
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  v55 = sub_10000C0FC();
                  *buf = 136446466;
                  v91 = v55;
                  v92 = 1024;
                  v93 = 0xFFFF;
                  _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
                }
              }
            }
          }

          else
          {
            v40 = *(&xmmword_100B5A1A0 + v12);
            v41 = *(v40 + 16);
            if (v41)
            {
              v42 = 0;
              v43 = *(v40 + 8);
              v44 = 88 * v41;
              while (!sub_100198FFC(v43 + v42, v10))
              {
                v42 += 88;
                if (v44 == v42)
                {
                  goto LABEL_18;
                }
              }

              if (sub_10000C240())
              {
                sub_10000AF54("Peripheral removing service %d named %s to peer %d with priority %d", v56, v57, v58, v59, v60, v61, v62, *(v13 + 9));
                v63 = sub_10000C050(0x51u);
                if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                {
                  v64 = sub_10000C0FC();
                  *buf = 136446210;
                  v91 = v64;
                  _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
                }
              }

              v65 = *(*(&xmmword_100B5A1A0 + v12) + 8) + v42;
              *(v65 + 44) = 2;
              sub_100198DFC(v12, *(v65 + 40), v65, *(v65 + 32));
              v66 = v13[6];
              if (v66)
              {
                v66(*(*(*(&xmmword_100B5A1A0 + v12) + 8) + v42 + 52), 5102);
              }

              v67 = *(*(&xmmword_100B5A1A0 + v12) + 8);
              v68 = *(v67 + v42 + 64);
              if (v68)
              {
                sub_10028E908(v68);
                v67 = *(*(&xmmword_100B5A1A0 + v12) + 8);
              }

              *(v67 + v42 + 64) = 0;
            }
          }
        }
      }

LABEL_18:
      ++v12;
    }

    while (v12 < word_100B5A19A);
  }

  else
  {
    v77 = &qword_100B5A228[9 * v8];
    v78 = v77[8];
    if (sub_10000C240())
    {
      sub_10000AF54("Unregistering service immediately because no peer is connected", v79, v80, v81, v82, v83, v84, v85, v88);
      v86 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v91 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    sub_10000C1E8(*v77);
    v87 = &qword_100B5A228[9 * --word_100B5A220];
    memmove(v77, v87, 0x48uLL);
    *v87 = 0u;
    *(v87 + 1) = 0u;
    *(v87 + 2) = 0u;
    *(v87 + 3) = 0u;
    v87[8] = 0;
    if (v78)
    {
      v78(a1, v6, a3);
    }
  }

  sub_1001A0498();
  return 0;
}

uint64_t sub_100198DFC(uint64_t a1, __int16 a2, const void *a3, unsigned int a4)
{
  v8 = **(&xmmword_100B5A1A0 + a1);
  result = sub_10019F974(a1);
  if (result)
  {
    result = sub_10019FB14(a1, a3, a4, v8);
    if (result)
    {
      v10 = *(*(&xmmword_100B5A1A0 + a1) + 48);
      v11 = v10 <= 7 ? 4 : 5;
      v12 = v10 <= 7 ? 4 : 5;
      result = sub_100007618(v12, 0xF9EA8940uLL);
      if (result)
      {
        v13 = result;
        *result = 6;
        v14 = 2;
        if (*(*(&xmmword_100B5A1A0 + a1) + 48) >= 8u)
        {
          *(result + 2) = 0;
          v14 = 3;
        }

        *(result + 1) = 2;
        *(result + v14) = a2;
        if (sub_10000C240())
        {
          sub_10000AF54("Sending service removed for peerID %d serviceID %d index %d", v15, v16, v17, v18, v19, v20, v21, a1);
          v22 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v24 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        return sub_100196E20(v8, v13, v11, 1);
      }
    }
  }

  return result;
}

BOOL sub_100198F90(_DWORD *a1, unsigned int a2)
{
  v2 = a1[8];
  v3 = &qword_100B5A228[9 * a2];
  if (v2 != *(v3 + 8) || a1[9] != *(v3 + 3))
  {
    return 0;
  }

  if (v2 >= 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = v2;
  }

  return memcmp(a1, *v3, v4) == 0;
}

BOOL sub_100198FFC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  v3 = &qword_100B5A228[9 * a2];
  if (v2 != *(v3 + 8) || *(v3 + 22) != *(a1 + 56))
  {
    return 0;
  }

  v4 = *(v3 + 3);
  if (!v4)
  {
    if (*(a1 + 36) == 1)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (!*(a1 + 36))
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v4 != 2 || *(a1 + 36) != 2)
  {
    return 0;
  }

LABEL_11:
  if (v2 >= 0x20)
  {
    v6 = 32;
  }

  else
  {
    v6 = v2;
  }

  return memcmp(a1, *v3, v6) == 0;
}

uint64_t sub_1001990A4(uint64_t a1)
{
  v1 = sub_1000B7E7C(a1);
  if (v1 == -1)
  {
    return 0;
  }

  v2 = v1;
  if (!*(*(&xmmword_100B5A1A0 + v1) + 48))
  {
    return 0;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("peerID=%d version=%d", v3, v4, v5, v6, v7, v8, v9, v2);
    v10 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v13 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return 1;
}

void sub_10019919C()
{
  if (word_100B5A19A)
  {
    bzero(v31, 0x400uLL);
    v0 = 0;
    v1 = 1;
    do
    {
      v2 = *(&xmmword_100B5A1A0 + v0);
      if (v2)
      {
        if (*(v2 + 8) && (v3 = *(v2 + 16)) != 0)
        {
          v31[v1] = v3;
          v4 = &v31[v1];
          v4[1] = **v2;
          v4[2] = *(*v2 + 1);
          v5 = sub_10023143C(*(*(v2 + 8) + 52));
          if (v5)
          {
            v6 = *v5;
          }

          else
          {
            v6 = 0;
          }

          *(v4 + 3) = v6;
          v7 = v1 + 5;
          v8 = *(&xmmword_100B5A1A0 + v0);
          if (*(v8 + 16))
          {
            v9 = 0;
            v10 = 0;
            while (v7 < 0x3DCu)
            {
              LOBYTE(v30) = 0;
              v28 = 0u;
              v29 = 0u;
              v11 = *(v8 + 8) + v9;
              if (*v11 && (*(v11 + 32) - 1) <= 0x1F)
              {
                __strncpy_chk();
              }

              else
              {
                __strlcpy_chk();
              }

              v12 = strlen(&v28);
              v13 = v12;
              v14 = *(&xmmword_100B5A1A0 + v0);
              v15 = &v31[v7];
              *v15 = *(*(v14 + 8) + v9 + 52);
              v15[1] = *(*(v14 + 8) + v9 + 53);
              v16 = *(*(v14 + 8) + v9 + 64);
              if (v16)
              {
                LOBYTE(v16) = *(*(v16 + 112) + 8);
              }

              v15[2] = v16;
              v17 = *(*(v14 + 8) + v9 + 64);
              if (v17)
              {
                LOBYTE(v17) = *(*(v17 + 112) + 9);
              }

              v15[3] = v17;
              v18 = &v31[v7];
              v19 = v7 + 5;
              v18[4] = v12;
              memmove(&v31[v19], &v28, v12);
              v7 = v19 + v13;
              ++v10;
              v8 = *(&xmmword_100B5A1A0 + v0);
              v9 += 88;
              if (v10 >= *(v8 + 16))
              {
                goto LABEL_26;
              }
            }

            if (sub_10000C240())
            {
              sub_10000AF54("PacketLogger magnet content exceeds MAX buffer size", v20, v21, v22, v23, v24, v25, v26, v28);
              v27 = sub_10000C050(0x51u);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                sub_10081010C();
              }
            }
          }

LABEL_26:
          sub_1001C4D18(v31, v7);
          v1 = 0;
        }

        else
        {
          sub_100304AF8("\t\tNo Channels\n", v28, v29, v30);
        }
      }

      ++v0;
    }

    while (v0 < word_100B5A19A);
  }
}

uint64_t sub_10019943C(uint64_t a1)
{
  v1 = sub_1000B7E7C(a1);
  if (v1 == -1)
  {
    return 0;
  }

  else
  {
    return (*(*(&xmmword_100B5A1A0 + v1) + 52) >> 4) & 1;
  }
}

uint64_t sub_100199494(uint64_t result, __int16 a2, __int16 a3, __int16 a4)
{
  word_100B5A916 = result;
  word_100B5A918 = a2;
  word_100B5A91A = a3;
  word_100B5A91C = a4;
  return result;
}

uint64_t sub_1001994B8(uint64_t a1)
{
  v2 = sub_1000B7E7C(a1);
  if (v2 == -1)
  {
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("invalid peer", v5, v6, v7, v8, v9, v10, v11, v21);
    v12 = sub_10000C050(0x51u);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10080F604();
    return 0;
  }

  v3 = *(&xmmword_100B5A1A0 + v2);
  if (v3)
  {
    return *(v3 + 52) >> 7;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("Received peer ID before we are tracking connection handle %p", v13, v14, v15, v16, v17, v18, v19, a1);
    v20 = sub_10000C050(0x51u);
    result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1000E09C0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100199590(uint64_t a1)
{
  v2 = sub_1000B7E7C(a1);
  if (v2 == -1)
  {
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("invalid peer", v5, v6, v7, v8, v9, v10, v11, v21);
    v12 = sub_10000C050(0x51u);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10080F604();
    return 0;
  }

  v3 = *(&xmmword_100B5A1A0 + v2);
  if (v3)
  {
    return *(v3 + 53) & 1;
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("Received peer ID before we are tracking connection handle %p", v13, v14, v15, v16, v17, v18, v19, a1);
    v20 = sub_10000C050(0x51u);
    result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1000E09C0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100199668(uint64_t a1)
{
  v2 = sub_1000B7E7C(a1);
  if (v2 == -1)
  {
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("invalid peer", v5, v6, v7, v8, v9, v10, v11, v21);
    v12 = sub_10000C050(0x51u);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10080F604();
    return 0;
  }

  v3 = *(&xmmword_100B5A1A0 + v2);
  if (!v3)
  {
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("Received peer ID before we are tracking connection handle %p", v13, v14, v15, v16, v17, v18, v19, a1);
    v20 = sub_10000C050(0x51u);
    result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1000E09C0();
    return 0;
  }

  return (dword_100B5A90C & 0x100) != 0 && (*(v3 + 52) & 0x80) != 0 || (dword_100B5A90C & 0x80) != 0 && (*(v3 + 53) & 1) != 0;
}

uint64_t sub_10019975C(uint64_t a1)
{
  v2 = sub_1000B7E7C(a1);
  if (v2 == -1)
  {
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("invalid peer", v5, v6, v7, v8, v9, v10, v11, v21);
    v12 = sub_10000C050(0x51u);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10080F604();
    return 0;
  }

  v3 = *(&xmmword_100B5A1A0 + v2);
  if (!v3)
  {
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("Received peer ID before we are tracking connection handle %p", v13, v14, v15, v16, v17, v18, v19, a1);
    v20 = sub_10000C050(0x51u);
    result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1000E09C0();
    return 0;
  }

  return (dword_100B5A90C & 0x100) != 0 && (*(v3 + 52) & 0x80) != 0;
}

uint64_t sub_100199850()
{
  sub_100304AF8("BT_CL Peers (lNbPeers=%d:\n", word_100B5A19A);
  v0 = qword_100B5A900;
  if (qword_100B5A900)
  {
    v0 = sub_10000C248(qword_100B5A900);
  }

  sub_100304AF8("lPacketQueue size:%d", v0);
  sub_100304AF8("lCanSend=%B", (byte_100B5A8F8 & 1) == 0);
  if (word_100B5A19A)
  {
    v1 = 0;
    do
    {
      v2 = *(&xmmword_100B5A1A0 + v1);
      if (v2)
      {
        sub_100304AF8("\tPeer %d: channels=%d handle=%p m1=%d m2=%d t1=%d GMTdelta=%d version=%d supportedFeatures=%ld powerAssertHeld=%d active=%d centralPendingVersion=%d :\n", v1, *(v2 + 16), *v2, *(v2 + 20), *(v2 + 28), *(v2 + 36), *(v2 + 44), *(v2 + 48), *(v2 + 52), *(v2 + 72), *(v2 + 73), *(v2 + 74));
        v3 = *(&xmmword_100B5A1A0 + v1);
        if (*(v3 + 8))
        {
          if (*(v3 + 16))
          {
            v4 = 0;
            v5 = 32;
            do
            {
              LOBYTE(v22) = 0;
              v20 = 0u;
              v21 = 0u;
              v6 = *(v3 + 8);
              if (*(v6 + v5 - 32) && (*(v6 + v5) - 1) <= 0x1F)
              {
                __strncpy_chk();
              }

              else
              {
                __strlcpy_chk();
              }

              v7 = *(&xmmword_100B5A1A0 + v1);
              v8 = *(v7 + 8) + v5;
              sub_100304AF8("\t\tchannel %d: SvcName=%s svcType:%d svcID=%d pipeID=%d priority=%d pendingEnc=%d useErtm=%d useFCS=%d l2capChannel=%p bytesSent:%llu bytesReceived:%llu lastSeenActivity:%llu\n", v4++, &v20, *(v8 + 4), *(v8 + 8), *(v8 + 20), *(v8 + 22), *(v8 + 23), *(v8 + 24), *(v8 + 25), *(v8 + 32), *(v7 + 92), *(v7 + 96), *(v7 + 112));
              v3 = *(&xmmword_100B5A1A0 + v1);
              v5 += 88;
            }

            while (v4 < *(v3 + 16));
          }
        }

        else
        {
          sub_100304AF8("\t\tNo Channels\n");
        }
      }

      ++v1;
    }

    while (v1 < word_100B5A19A);
  }

  sub_100304AF8("BT_CL LocalServices (lNbServices=%d:\n", word_100B5A220);
  v9 = 0;
  v10 = &byte_100B5A238;
  do
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    if (*(v10 - 2) && *(v10 - 8) - 1 <= 0x1F)
    {
      __strncpy_chk();
    }

    else
    {
      __strlcpy_chk();
    }

    v11 = *v10;
    v12 = *(v10 + 1);
    v13 = v10[4];
    v14 = v10[5];
    v15 = v10[6];
    v16 = v10[7];
    v17 = *(v10 - 1);
    v18 = *(v10 + 2);
    v20 = *(v10 + 1);
    v21 = v18;
    v22 = *(v10 + 6);
    result = sub_100304AF8("\tLocalService %ld : name=%s serviceType=%d requiresEnc=%d serviceID=%d priority=%d unpublishing=%d useErtm=%d useFCS=%d callbacks=%p\n", v9++, v23, v17, v11, v12, v13, v14, v15, v16, &v20);
    v10 += 72;
  }

  while (v9 != 24);
  return result;
}

void sub_100199B94(unsigned __int16 *a1, uint64_t a2)
{
  v4 = sub_1000B7E7C(a1);
  if (v4 != -1)
  {
    v5 = v4;
    v6 = *(&xmmword_100B5A1A0 + v4);
    if (*(v6 + 48) == 1 && byte_100B5A909 != 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Disabling LE magnet TS workaround for peerID %d", v8, v9, v10, v11, v12, v13, v14, v5);
        v15 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v22 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      sub_1002A0DA8();
      v6 = *(&xmmword_100B5A1A0 + v5);
    }

    if (*(v6 + 16))
    {
      v16 = 0;
      do
      {
        v17 = *(*(v6 + 8) + 88 * v16 + 64);
        if (v17)
        {
          sub_10028E908(v17);
        }

        if (word_100B5A220)
        {
          v18 = 0;
          v19 = &qword_100B5A258;
          do
          {
            if (sub_1000B6E74(a1) && (v20 = *(*(&xmmword_100B5A1A0 + v5) + 8), sub_100198F90((v20 + 88 * v16), v18)) || !sub_1000B6E74(a1) && (v20 = *(*(&xmmword_100B5A1A0 + v5) + 8), sub_100198FFC(v20 + 88 * v16, v18)))
            {
              if (*v19)
              {
                (*v19)(*(v20 + 88 * v16 + 52), a2);
              }
            }

            ++v18;
            v19 += 9;
          }

          while (v18 < word_100B5A220);
        }

        ++v16;
        v6 = *(&xmmword_100B5A1A0 + v5);
      }

      while (v16 < *(v6 + 16));
    }

    if (*(v6 + 72) == 1)
    {
      sub_100199E24(a1);
    }

    sub_100199F40(a1);
    sub_1001A0498();
  }
}

void sub_100199DB0(uint64_t a1)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("_LE_MagnetSuspendEnable %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_100199E24(unsigned __int16 *a1)
{
  v2 = sub_1000B7E7C(a1);
  if (v2 == -1)
  {
    sub_1000D660C();
  }

  if ((*(*(&xmmword_100B5A1A0 + v2) + 72) & 1) == 0)
  {
    sub_1000D660C();
  }

  if (v2 != -1)
  {
    v3 = *(&xmmword_100B5A1A0 + v2);
    if (*(v3 + 72) == 1)
    {
      *(v3 + 72) = 0;
      if (sub_10000C240())
      {
        sub_10000AF54("DeassertPower for lm 0x%4x", v4, v5, v6, v7, v8, v9, v10, *a1);
        v11 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v13 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      sub_1000CC39C();
    }
  }
}

void sub_100199F40(uint64_t a1)
{
  v1 = word_100B5A19A;
  if (word_100B5A19A)
  {
    v2 = 0;
    while (**(&xmmword_100B5A1A0 + v2) != a1)
    {
      if (word_100B5A19A == ++v2)
      {
        goto LABEL_12;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Removing peer ID %d for handle %p", v3, v4, v5, v6, v7, v8, v9, v2);
      v10 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v13 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    --word_100B5A19A;
    v11 = *(&xmmword_100B5A1A0 + v2);
    if (v11[1])
    {
      sub_10000C1E8(v11[1]);
      v11 = *(&xmmword_100B5A1A0 + v2);
    }

    sub_10000C1E8(v11);
    v1 = word_100B5A19A;
    *(&xmmword_100B5A1A0 + v2) = *(&xmmword_100B5A1A0 + word_100B5A19A);
  }

LABEL_12:
  if (!dword_100BC9C74)
  {
    sub_100194DE0();
    v1 = word_100B5A19A;
  }

  if (v1 >= 0x10)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c", 783, "lNbPeers < MAX_PEERS");
  }
}

void sub_10019A0B0(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    if (a3)
    {
      v4 = sub_1000B7E7C(a1);
      if (v4 != -1)
      {
        v5 = v4;
        if (sub_1002DF928((a1 + 48)))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Got encrypted but pairing is still in progress, waiting for pairing completion", v6, v7, v8, v9, v10, v11, v12, *v14);
            v13 = sub_10000C050(0x51u);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *v14 = 136446210;
              *&v14[4] = sub_10000C0FC();
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", v14, 0xCu);
            }
          }
        }

        else
        {

          sub_10019A238(a1, v5);
        }
      }
    }
  }
}

void sub_10019A1D4(_DWORD *a1, uint64_t a2, int a3)
{
  v4 = sub_1000E5EA8(a1);
  if (!a3)
  {
    v5 = v4;
    if (v4)
    {
      v6 = sub_1000B7E7C(v4);
      if (v6 != -1)
      {

        sub_10019A238(v5, v6);
      }
    }
  }
}

void sub_10019A238(__int128 *a1, unsigned int a2)
{
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  if (sub_1000B6E74(a1))
  {
    if (*(*(&xmmword_100B5A1A0 + a2) + 74))
    {
      return;
    }

    v4 = word_100B5A220;
    if (word_100B5A220)
    {
      v5 = 0;
      v6 = &dword_100B5A234;
      do
      {
        if ((*(v6 + 9) & 1) == 0 && *(v6 + 4) == 1)
        {
          if (*(v6 - 4) >= 0x20u)
          {
            v7 = 32;
          }

          else
          {
            v7 = *(v6 - 4);
          }

          sub_100198190(a1, *(v6 + 3), *(v6 - 3), v7, *v6, v5);
          v4 = word_100B5A220;
        }

        ++v5;
        v6 += 18;
      }

      while (v5 < v4);
    }
  }

  v8 = *(&xmmword_100B5A1A0 + a2);
  if (*(v8 + 16))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(v8 + 8) + v9;
      if (*(v12 + 55) == 1)
      {
        *(v12 + 55) = 0;
        v13 = sub_1000B6E74(a1);
        v8 = *(&xmmword_100B5A1A0 + a2);
        v14 = *(v8 + 8) + v9;
        if (v13)
        {
          *(v15 + v11) = v14;
        }

        else
        {
          *(v16 + v11) = *(v14 + 40);
        }

        v11 = (v11 + 1);
      }

      ++v10;
      v9 += 88;
    }

    while (v10 < *(v8 + 16));
  }

  else
  {
    v11 = 0;
  }

  if (*(v8 + 48) >= 7u)
  {
    sub_10019A41C(a1);
  }

  if (sub_1000B6E74(a1))
  {
    sub_10019A7E0(a1, v11, v15);
  }

  else
  {
    sub_1001984B8(a1, v11, v16);
  }
}

void sub_10019A41C(__int128 *a1)
{
  v2 = sub_1000B7E7C(a1);
  if (v2 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("invalid peer", v14, v15, v16, v17, v18, v19, v20, v48);
      v21 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return;
  }

  v3 = v2;
  v4 = *(&xmmword_100B5A1A0 + v2);
  if (!v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received peer ID before we are tracking connection handle %p", v22, v23, v24, v25, v26, v27, v28, a1);
      v29 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    return;
  }

  v5 = *(v4 + 48);
  if (v5 > 6)
  {
    if (v5 == 7)
    {
      v30 = 2;
    }

    else
    {
      v30 = 3;
    }

    if (v5 == 7)
    {
      v31 = 10;
    }

    else
    {
      v31 = 11;
    }

    v32 = sub_100007618(v31, 0xE361D08EuLL);
    if (!v32)
    {
      return;
    }

    v33 = v32;
    v49 = v32;
    v50 = v31;
    v51 = v31;
    v52 = 131073;
    *v32 = -112;
    sub_100196CE8(v3, &v49, v31 - v30);
    if (HIBYTE(v52))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c");
    }

    else
    {
      v34 = v51;
      v35 = v52;
      if (v51 - v52 > 1)
      {
        if (BYTE2(v52) == 2)
        {
          v36 = v49;
          *&v49[v52] = word_100B5A916;
          if (v34 - (v35 + 2) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c", 1701, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          *(v36 + (v35 + 2)) = word_100B5A918;
          if (v34 - (v35 + 4) <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c", 1702, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          *(v36 + (v35 + 4)) = word_100B5A91A;
          v37 = v35 + 6;
          if (v34 - v37 <= 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c", 1703, "ByteStream_NumReadBytesAvail(bs) >= 2");
          }

          *(v36 + v37) = word_100B5A91C;
          if (sub_10000C240())
          {
            sub_10000AF54("Sending Device ID with vendor 0x%x product 0x%x version 0x%x chip 0x%x to %p", v38, v39, v40, v41, v42, v43, v44, word_100B5A916);
            v45 = sub_10000C050(0x51u);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = sub_10000C0FC();
              *buf = 136446210;
              v54 = v46;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          sub_100196E20(a1, v33, v31, 1);
          return;
        }

        v47 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_34:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c", 1700, v47);
      }
    }

    v47 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    goto LABEL_34;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("peer is version %d, and does not support this command", v6, v7, v8, v9, v10, v11, v12, *(*(&xmmword_100B5A1A0 + v3) + 48));
    v13 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      sub_1000E09C0();
    }
  }
}

void sub_10019A7E0(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1000B7E7C(a1);
  if (v6 == -1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Can not send create channel, peer is invalid for handle %p", v54, v55, v56, v57, v58, v59, v60, a1);
      v61 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v7 = v6;
    if (sub_10000C240())
    {
      sub_10000AF54("Sending create channel for %d service to %p", v8, v9, v10, v11, v12, v13, v14, a2);
      v15 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v64 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (a2)
    {
      v16 = a2;
      do
      {
        if ((dword_100B5A90C & 0x10) != 0 && (*(*(&xmmword_100B5A1A0 + v7) + 52) & 0x10) != 0)
        {
          v17 = 2576;
        }

        else
        {
          v17 = 2042;
        }

        v18 = sub_10019ABC0(a1, v7, *a3, 0, v17);
        if (v18)
        {
          v19 = v18;
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to create channel : %!", v20, v21, v22, v23, v24, v25, v26, v19);
            v27 = sub_10000C050(0x51u);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = sub_10000C0FC();
              *buf = 136446210;
              v64 = v28;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }
        }

        else
        {
          v29 = *(*(&xmmword_100B5A1A0 + v7) + 48);
          if (v29 <= 7)
          {
            v30 = 2;
          }

          else
          {
            v30 = 3;
          }

          if (v29 <= 7)
          {
            v31 = 6;
          }

          else
          {
            v31 = 7;
          }

          v32 = sub_100007618(v31, 0x4DACE43CuLL);
          if (v32)
          {
            v33 = v32;
            *v32 = 3;
            if (*(*(&xmmword_100B5A1A0 + v7) + 48) < 8u)
            {
              v34 = 2;
            }

            else
            {
              v32[2] = 0;
              v34 = 3;
            }

            v32[1] = v31 - v30;
            v44 = &v32[v34];
            *v44 = *(*(*a3 + 64) + 4);
            v44[1] = *(*(*a3 + 64) + 5);
            *(v44 + 1) = *(*a3 + 40);
            if (sub_10000C240())
            {
              sub_10000AF54("Sending create channel 0x%4x for service %d to %p index %d", v45, v46, v47, v48, v49, v50, v51, *(*(*a3 + 64) + 4));
              v52 = sub_10000C050(0x51u);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                v53 = sub_10000C0FC();
                *buf = 136446210;
                v64 = v53;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            sub_100196E20(a1, v33, v31, 1);
          }

          else if (sub_10000C240())
          {
            sub_10000AF54("Can not allocate memory for channel creation", v35, v36, v37, v38, v39, v40, v41, v62);
            v42 = sub_10000C050(0x51u);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v43 = sub_10000C0FC();
              *buf = 136446466;
              v64 = v43;
              v65 = 1024;
              v66 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }
        }

        ++a3;
        --v16;
      }

      while (v16);
    }
  }
}

uint64_t sub_10019ABC0(uint64_t a1, unsigned int a2, uint64_t a3, int a4, unsigned int a5)
{
  v10 = sub_10028E3EC(4u, (a3 + 64), 0);
  if (v10)
  {
    v11 = v10;
    if (off_100BC9CA0)
    {
      off_100BC9CA0(a1, 81, 812, v10);
    }

    if (sub_10000C240())
    {
      sub_10000AF54("createL2CAPChannel failed with error %!.  OI_ChanMan_AllocateChannel failed", v12, v13, v14, v15, v16, v17, v18, v11);
      v19 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return v11;
  }

  v20 = word_100B5A220;
  if (!word_100B5A220)
  {
    goto LABEL_16;
  }

  v21 = 0;
  v22 = &qword_100B5A260;
  while (a4)
  {
    if (sub_100198FFC(a3, v21))
    {
      goto LABEL_15;
    }

LABEL_13:
    ++v21;
    v22 += 9;
    if (v20 == v21)
    {
      goto LABEL_16;
    }
  }

  if (!sub_100198F90(a3, v21))
  {
    goto LABEL_13;
  }

LABEL_15:
  *(*(a3 + 64) + 40) = *v22;
LABEL_16:
  if (*(a3 + 54) <= 0xCu)
  {
    v23 = 16;
  }

  else
  {
    v23 = 6;
  }

  *(sub_1000B12AC(*(a3 + 64)) + 24) = a4;
  v24 = *(a3 + 64);
  *(v24 + 6) = 0;
  *(v24 + 64) = 0;
  *(sub_1000B12AC(v24) + 88) = 0;
  *(sub_1000B12AC(*(a3 + 64)) + 96) = 0;
  *(sub_1000B12AC(*(a3 + 64)) + 36) = a5;
  *(sub_1000B12AC(*(a3 + 64)) + 32) = a5;
  *(sub_1000B12AC(*(a3 + 64)) + 34) = -1;
  *(sub_1000B12AC(*(a3 + 64)) + 40) = 3000;
  *(sub_1000B12AC(*(a3 + 64)) + 26) = 3;
  *(sub_1000B12AC(*(a3 + 64)) + 16) = 4;
  *sub_1000B12AC(*(a3 + 64)) = a1;
  v25 = sub_100007618(a5, 0xA757F426uLL);
  v26 = *(a3 + 64);
  *(v26 + 48) = v25;
  *(sub_1000B12AC(v26) + 30) = 0;
  *(sub_1000B12AC(*(a3 + 64)) + 17) = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("Creating L2CAP with priority %d", v27, v28, v29, v30, v31, v32, v33, *(a3 + 54));
    v34 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v64 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (*(a3 + 54) == 13)
  {
    if (sub_1000B6E74(a1))
    {
      if (sub_10019496C(a1, 1))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Force upgrade TS not ready A", v35, v36, v37, v38, v39, v40, v41, v62);
          v42 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = sub_10000C0FC();
            *buf = 136446210;
            v64 = v43;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }
      }
    }

    *(*(&xmmword_100B5A1A0 + a2) + 75) = 1;
    v44 = sub_100232034(a1, 200);
    v45 = sub_1000B12AC(*(a3 + 64));
    if (!v44)
    {
      *(v45 + 38) = 200;
      goto LABEL_32;
    }
  }

  else
  {
    v45 = sub_1000B12AC(*(a3 + 64));
  }

  *(v45 + 38) = -1;
LABEL_32:
  *(*(a3 + 64) + 72) = 0;
  if (sub_1000B8B5C(a1))
  {
    v46 = sub_1000B12AC(*(a3 + 64));
    v47 = *(a1 + 52);
    v48 = *(a1 + 48);
    goto LABEL_36;
  }

  if (sub_1000ABD24(a1))
  {
    v46 = sub_1000B12AC(*(a3 + 64));
    v47 = *(a1 + 53);
    v48 = *(a1 + 49);
LABEL_36:
    *(v46 + 10) = v48;
    *(v46 + 14) = v47;
  }

  v49 = *(a3 + 64);
  if (*(a3 + 56) != 1)
  {
    v11 = sub_10029CFF4(v49, 0, 0);
    if (!v11)
    {
      goto LABEL_49;
    }

    goto LABEL_56;
  }

  *(sub_1000B12AC(v49) + 42) = 32;
  *(sub_1000B12AC(*(a3 + 64)) + 43) = 32;
  *(sub_1000B12AC(*(a3 + 64)) + 44) = 10000;
  *(sub_1000B12AC(*(a3 + 64)) + 46) = 0;
  if ((dword_100B5A90C & 0x10) != 0 && (*(*(&xmmword_100B5A1A0 + a2) + 52) & 0x10) != 0)
  {
    v50 = 2576;
  }

  else
  {
    v50 = 2042;
  }

  *(sub_1000B12AC(*(a3 + 64)) + 48) = v50;
  *(sub_1000B12AC(*(a3 + 64)) + 50) = 0;
  if (v23 + *(sub_1000B12AC(*(a3 + 64)) + 42) >= 0x3F)
  {
    sub_1000D660C();
  }

  if (*(a3 + 57) == 1)
  {
    *(sub_1000B12AC(*(a3 + 64)) + 78) = 1;
  }

  v11 = sub_10029CFF4(*(a3 + 64), 3, 1);
  sub_10029C820(*(*(a3 + 64) + 4), 0);
  if (v11)
  {
LABEL_56:
    sub_10028E908(*(a3 + 64));
    return v11;
  }

LABEL_49:
  if (*(a3 + 54) == 13)
  {
    v51 = dword_100B51B08;
  }

  else
  {
    v51 = -1;
  }

  *(*(a3 + 64) + 76) = v51;
  if (sub_10000C240())
  {
    sub_10000AF54("CL registering service ID %d with priority %d and cid 0x%4x. MaxLatency=%d", v52, v53, v54, v55, v56, v57, v58, *(a3 + 40));
    v59 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = sub_10000C0FC();
      *buf = 136446210;
      v64 = v60;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v11 = sub_10029E064(*(*(a3 + 64) + 4), v23, *(a3 + 54), sub_1001968D8, (*(a3 + 64) + 96), *(*(a3 + 64) + 76));
  if (v11)
  {
    goto LABEL_56;
  }

  sub_1000CD5B8(a1);
  return v11;
}

uint64_t sub_10019B178(__int128 *a1, char *a2, unsigned __int16 a3, int a4)
{
  memset(v37, 0, sizeof(v37));
  v8 = sub_10001FF10(v37, 1u);
  if (v8)
  {
    v9 = v8;
    if (sub_10000C240())
    {
      sub_10000AF54("CL failed to init an MBUF with error %!", v10, v11, v12, v13, v14, v15, v16, v9);
      v17 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_15:
        sub_10080F604();
      }
    }
  }

  else
  {
    v18 = sub_10001F968(v37, a2, a3, 0);
    if (v18)
    {
      v9 = v18;
      if (sub_10000C240())
      {
        sub_10000AF54("CL failed to append to an MBUF with error %!", v19, v20, v21, v22, v23, v24, v25, v9);
        v26 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v27 = sub_1000B7EDC(sub_10019B338, 58, a1, v37, 0);
      if (v27 == 412)
      {
        v9 = 0;
        goto LABEL_16;
      }

      v9 = v27;
      if (!v27)
      {
        byte_100B5A8F8 = 1;
        goto LABEL_16;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("CL failed to write an MBUF with error %!", v28, v29, v30, v31, v32, v33, v34, v9);
        v35 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }
      }
    }
  }

LABEL_16:
  sub_1000B7B40(v37);
  if (a4)
  {
    sub_10000C1E8(a2);
  }

  return v9;
}

void sub_10019B338(uint64_t a1)
{
  if (a1 == 58)
  {
    byte_100B5A8F8 = 0;
    while (sub_10000C248(qword_100B5A900))
    {
      v1 = sub_1000BB054(qword_100B5A900, 0);
      if (v1)
      {
        v2 = v1;
        v3 = sub_10019B178(*v1, v2[1], *(v2 + 8), 1);
        sub_10000C1E8(v2);
        if (v3 == 410)
        {
          sub_1000D660C();
        }

        else if (!v3)
        {
          return;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send CL pdu with error %!.", v4, v5, v6, v7, v8, v9, v10, v3);
          v11 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_10081010C();
          }
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("l2capWriteCb CID=%d, not BT_CL_SIGNAL_CID(%d)!!", v13, v14, v15, v16, v17, v18, v19, a1);
    v20 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_10019B4B0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_1000B7E7C(a1);
  if (v6 == -1)
  {
    if (!sub_1000B6E74(a1) && (byte_100B5A8E8 & 1) == 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Received Version info as PERIPHERAL. PERIPHERAL CL is disabled. Ignoring.", v74, v75, v76, v77, v78, v79, v80, v82);
        v81 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return;
    }

    v6 = sub_1001972E4(a1);
    if (v6 == -1)
    {
      *buf = 264;
      buf[2] = 1;
      sub_100196E20(a1, buf, 3u, 0);
      v6 = -1;
    }
  }

  v7 = *(&xmmword_100B5A1A0 + v6);
  if (v7)
  {
    if (a3 <= 4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Data size error %d", v8, v9, v10, v11, v12, v13, v14, a3);
        v15 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      *buf = 264;
      buf[2] = 1;
      sub_100196E20(a1, buf, 3u, 0);
      return;
    }

    if (!a2)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/cl/BT_CL_Signaling.c", 1850, "data");
    }

    v24 = v6;
    v25 = a2[1];
    v26 = (a2[3] << 16) | (a2[2] << 8) | (a2[4] << 24) | v25;
    *(v7 + 48) = *a2;
    *(v7 + 52) = v26;
    if (sub_10000C240())
    {
      sub_10000AF54("Received Version Info for peer %d: local [version %d features 0x%x], remote [version %d features 0x%x]", v27, v28, v29, v30, v31, v32, v33, v24);
      v34 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = sub_10000C0FC();
        *buf = 136446210;
        v84 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if ((v25 & 0x20) != 0)
    {
      *(a1 + 25) = sub_100297220();
    }

    if ((dword_100B5A90C & 0x10) != 0 && (*(*(&xmmword_100B5A1A0 + v24) + 52) & 0x10) != 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("HDR Enabled for this link", v36, v37, v38, v39, v40, v41, v42, v82);
        v43 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = sub_10000C0FC();
          *buf = 136446210;
          v84 = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      *(a1 + 26) = 1;
    }

    v45 = sub_100084230();
    v46 = *(*(&xmmword_100B5A1A0 + v24) + 48);
    if (v45 == 15)
    {
      v47 = byte_100B5A909;
      if (v46 <= 3 && (byte_100B5A909 & 1) != 0)
      {
LABEL_37:
        if (sub_1000B6E74(a1))
        {
          v49 = *(&xmmword_100B5A1A0 + v24);
          if ((*(v49 + 73) & 1) == 0 && *(v49 + 74) == 1)
          {
            sub_10019F180(a1);
            v49 = *(&xmmword_100B5A1A0 + v24);
          }

          *(v49 + 74) = 0;
        }

        else
        {
          sub_100197374(a1);
        }

        if (sub_10000C240())
        {
          sub_10000AF54("CL is active for (%x)", v50, v51, v52, v53, v54, v55, v56, a1);
          v57 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = sub_10000C0FC();
            *buf = 136446210;
            v84 = v58;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v59 = *(&xmmword_100B5A1A0 + v24);
        *(v59 + 73) = 1;
        if (byte_100B5A914 == 1)
        {
          sub_1002A87BC(a1, 1, 1);
          v59 = *(&xmmword_100B5A1A0 + v24);
        }

        if (*(v59 + 48) >= 7u && sub_1000CC63C(a1))
        {
          sub_10019A41C(a1);
        }

        v60 = sub_1000B7E7C(a1);
        if (v60 == -1)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Received DID Info for an unknown peer", v66, v67, v68, v69, v70, v71, v72, v82);
            v73 = sub_10000C050(0x51u);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }
        }

        else
        {
          v61 = byte_100B5A140;
          if (byte_100B5A140)
          {
            v62 = v60;
            v63 = 0;
            do
            {
              v64 = qword_100B5A148[v63];
              if (v64)
              {
                if (byte_100B5A909)
                {
                  v65 = 11;
                }

                else
                {
                  v65 = 0;
                }

                v64(a1, *(*(&xmmword_100B5A1A0 + v62) + 48), *(*(&xmmword_100B5A1A0 + v62) + 52), v65, dword_100B5A90C);
                v61 = byte_100B5A140;
              }

              ++v63;
            }

            while (v63 < v61);
          }
        }

        return;
      }
    }

    else
    {
      v47 = byte_100B5A909;
    }

    if (v46 == 1 && v47 != 0)
    {
      sub_1002A0DA8();
    }

    goto LABEL_37;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Received peer ID before we are tracking connection handle %p", v16, v17, v18, v19, v20, v21, v22, a1);
    v23 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_10019BA20(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v5 = a1;
  if (sub_1000B6E74(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received remote services from a peripheral !", v6, v7, v8, v9, v10, v11, v12, v137);
      v13 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v152 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    goto LABEL_29;
  }

  if ((byte_100B5A8E8 & 1) != 0 || sub_1000B6E74(v5))
  {
    v14 = sub_1000B7E7C(v5);
    if (v14 == -1)
    {
      v14 = sub_1001972E4(v5);
      if (v14 == -1)
      {
LABEL_29:
        *buf = 264;
        buf[2] = 1;
        sub_100196E20(v5, buf, 3u, 0);
        return;
      }
    }

    v15 = v14;
    if (!sub_10019F974(v14))
    {
      return;
    }

    *(*(&xmmword_100B5A1A0 + v15) + 73) = 1;
    if (a3 <= 3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("No services from remote peer.", v16, v17, v18, v19, v20, v21, v22, v137);
        v23 = sub_10000C050(0x51u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v152 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v145 = 0;
      ptr = 0;
      LODWORD(v24) = 0;
      LODWORD(v150) = 0;
      LODWORD(v25) = 0;
LABEL_15:
      if (v24 < a3 || v150 != v25)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Number of remote services don't match.", v26, v27, v28, v29, v30, v31, v32, v137);
          v33 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      if (v145 & (byte_100B5A908 | ((*(*(&xmmword_100B5A1A0 + v15) + 52) & 1) == 0)))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("CL Asking to pair", v34, v35, v36, v37, v38, v39, v40, v137);
          v41 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = sub_10000C0FC();
            *buf = 136446210;
            v152 = v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        sub_1002E73A0(v5, 1);
      }

      if (HIDWORD(v145))
      {
        sub_1001984B8(v5, HIDWORD(v145), ptr);
      }

      if (ptr)
      {
        sub_10000C1E8(ptr);
      }

      return;
    }

    v147 = a2;
    v25 = *a2;
    if (v25 >= 0x19)
    {
      if (sub_10000C240())
      {
        v25 = 24;
        sub_10000AF54("Too many services, capping to %d", v51, v52, v53, v54, v55, v56, v57, 24);
        v58 = sub_10000C050(0x51u);
        if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        sub_1000E09C0();
      }

      v25 = 24;
    }

LABEL_39:
    if (sub_10000C240())
    {
      sub_10000AF54("Received %d remote services from the remote central %p !", v59, v60, v61, v62, v63, v64, v65, v25);
      v66 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v152 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    *(*(&xmmword_100B5A1A0 + v15) + 16) = v25;
    v67 = sub_1001BBBD8(88 * v25, 0x1020040CA479C79uLL);
    *(*(&xmmword_100B5A1A0 + v15) + 8) = v67;
    if (!v67 || (v144 = v25, ptr = sub_100007618(2 * v25, 0x1000040BDFB0063uLL), v68 = a2, !ptr))
    {
      sub_100199F40(v5);
      return;
    }

    if (v25)
    {
      v69 = 0;
      v145 = 0;
      v140 = a2 + 2;
      v138 = v5;
      v139 = a2 + 3;
      v143 = a2 + 4;
      v70 = 1;
      v149 = v15;
      v141 = v25;
      v142 = a3;
      while (1)
      {
        v150 = v69;
        v71 = (v70 + 5);
        if (v71 > a3)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Not enough data to get header", v113, v114, v115, v116, v117, v118, v119, v137);
            v120 = sub_10000C050(0x51u);
            if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          LODWORD(v24) = v70;
          goto LABEL_98;
        }

        v72 = v68[v70];
        v24 = v70 + 1;
        if (a3 - v24 < v72)
        {
          if (!sub_10000C240())
          {
            goto LABEL_98;
          }

          sub_10000AF54("Service size is larger than total data size !!", v121, v122, v123, v124, v125, v126, v127, v137);
          v128 = sub_10000C050(0x51u);
          v5 = v138;
          if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }

          goto LABEL_15;
        }

        v73 = v143[v70];
        v74 = v73 >= 0x20 ? 32 : v143[v70];
        if (v74 + 4 > v72)
        {
          break;
        }

        v75 = v71 + v74;
        if (v74 + 5 <= v72)
        {
          v76 = v68[v75];
          v148 = v75 + 1;
        }

        else
        {
          v148 = v71 + v74;
          v76 = 0;
        }

        v77 = v68[v24] | (v140[v70] << 8);
        v78 = *(*(&xmmword_100B5A1A0 + v15) + 8) + 88 * v150;
        *(v78 + 36) = v139[v70];
        *(v78 + 40) = v77;
        v79 = &v68[v71];
        *(v78 + 32) = v74;
        *(v78 + 44) = 0x100000001;
        memmove(v78, v79, v74);
        v80 = (*(*(&xmmword_100B5A1A0 + v15) + 8) + 88 * v150);
        v80[56] = v76 & 1;
        v80[57] = (v76 & 2) != 0;
        v80[55] = 0;
        if (word_100B5A220)
        {
          v81 = 0;
          if (v73 >= 0xF)
          {
            v82 = 15;
          }

          else
          {
            v82 = v73;
          }

          v83 = &byte_100B5A23D;
          while (1)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Matching remote service %@ of len %d, type %d and ID %d with local service ID %d", v84, v85, v86, v87, v88, v89, v90, v79);
              v91 = sub_10000C050(0x51u);
              if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
              {
                v92 = sub_10000C0FC();
                *buf = 136446210;
                v152 = v92;
                _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            v93 = memcmp("com.apple.BT.TS", v79, v82);
            if (((byte_100B5A198 & 1) != 0 || v93) && (*v83 & 1) == 0)
            {
              v94 = *(*(&xmmword_100B5A1A0 + v149) + 8);
              if (sub_100198FFC(v94 + 88 * v150, v81))
              {
                break;
              }
            }

            ++v81;
            v83 += 72;
            if (v81 >= word_100B5A220)
            {
              goto LABEL_68;
            }
          }

          *(v94 + 88 * v150 + 54) = *(v83 - 1);
          if (*(v83 - 5) == 1 && !sub_1000CC63C(v138))
          {
            v15 = v149;
            LODWORD(v25) = v141;
            a3 = v142;
            if (sub_10000C240())
            {
              sub_10000AF54("Match found but requires encryption", v104, v105, v106, v107, v108, v109, v110, v137);
              v111 = sub_10000C050(0x51u);
              if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
              {
                v112 = sub_10000C0FC();
                *buf = 136446210;
                v152 = v112;
                _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            LOBYTE(v145) = 1;
            *(*(*(&xmmword_100B5A1A0 + v149) + 8) + 88 * v150 + 55) = 1;
          }

          else
          {
            v15 = v149;
            LODWORD(v25) = v141;
            a3 = v142;
            if (sub_10000C240())
            {
              sub_10000AF54("Match found - returning service", v95, v96, v97, v98, v99, v100, v101, v137);
              v102 = sub_10000C050(0x51u);
              if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
              {
                v103 = sub_10000C0FC();
                *buf = 136446210;
                v152 = v103;
                _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }

            *(ptr + HIDWORD(v145)) = v77;
            ++HIDWORD(v145);
          }
        }

        else
        {
LABEL_68:
          v15 = v149;
          LODWORD(v25) = v141;
          a3 = v142;
        }

        v69 = v150 + 1;
        v68 = v147;
        LODWORD(v24) = v148;
        if (v148 < a3)
        {
          v70 = v148;
          if (v69 < v144)
          {
            continue;
          }
        }

        LODWORD(v150) = v150 + 1;
LABEL_98:
        v5 = v138;
        goto LABEL_15;
      }

      if (!sub_10000C240())
      {
        LODWORD(v24) = v70 + 5;
        goto LABEL_98;
      }

      sub_10000AF54("Size mismatch (%d > %d || %d)", v129, v130, v131, v132, v133, v134, v135, (v71 + v74));
      v136 = sub_10000C050(0x51u);
      v5 = v138;
      if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }

      LODWORD(v24) = v71;
    }

    else
    {
      v145 = 0;
      LODWORD(v150) = 0;
      LODWORD(v24) = 1;
    }

    goto LABEL_15;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Received remote services from a peer, but we're not supposed to have any services, so ignoring !", v43, v44, v45, v46, v47, v48, v49, v137);
    v50 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v152 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }
}

void sub_10019C3B4(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (!sub_1000B6E74(a1) || (v6 = sub_1000B7E7C(a1), v6 == -1))
  {
    *buf = 264;
    buf[2] = 1;
    sub_100196E20(a1, buf, 3u, 0);
    return;
  }

  v7 = v6;
  if (!sub_10019F974(v6))
  {
    return;
  }

  *(*(&xmmword_100B5A1A0 + v7) + 73) = 1;
  if (a3 <= 2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No services from remote peer.", v8, v9, v10, v11, v12, v13, v14, v122);
      v15 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v128 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    return;
  }

  v16 = *a2;
  if (sub_10000C240())
  {
    sub_10000AF54("Received %d common services from the remote peripheral %p", v17, v18, v19, v20, v21, v22, v23, v16);
    v24 = sub_10000C050(0x51u);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v128 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (v16 >= 0x19)
  {
    if (sub_10000C240())
    {
      v16 = 24;
      sub_10000AF54("Too many services, capping to %d", v25, v26, v27, v28, v29, v30, v31, 24);
      v32 = sub_10000C050(0x51u);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      sub_1000E09C0();
    }

    v16 = 24;
  }

LABEL_18:
  if (a3 - 1 != 2 * v16)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Service size mismatch, nbServices=%d, (dataSize-1)/2=%d capping to the lower value", v33, v34, v35, v36, v37, v38, v39, v16);
      v40 = sub_10000C050(0x51u);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    if ((a3 - 1) >> 1 < v16)
    {
      LOBYTE(v16) = (a3 - 1) >> 1;
    }
  }

  v41 = sub_100007618(8 * v16, 0x2004093837F09uLL);
  if (!v41)
  {
    goto LABEL_69;
  }

  v42 = v41;
  v43 = *(*(&xmmword_100B5A1A0 + v7) + 16) + v16;
  if (v43 < 0x19)
  {
    goto LABEL_30;
  }

  if (sub_10000C240())
  {
    v43 = 24;
    sub_10000AF54("Too many services + channels, nbServices=%d nbChannels=%d newNbChannels=%d max %d", v44, v45, v46, v47, v48, v49, v50, v16);
    v51 = sub_10000C050(0x51u);
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    sub_1000E09C0();
  }

  v43 = 24;
LABEL_30:
  v125 = v43;
  v52 = sub_1001BBBD8(88 * v43, 0x1020040CA479C79uLL);
  if (!v52)
  {
LABEL_69:
    sub_100199F40(a1);
    return;
  }

  v53 = v52;
  v54 = *(&xmmword_100B5A1A0 + v7);
  v55 = *(v54 + 16);
  v56 = *(v54 + 8);
  if (v56)
  {
    memmove(v52, v56, 88 * v55);
    sub_10000C1E8(*(*(&xmmword_100B5A1A0 + v7) + 8));
    v54 = *(&xmmword_100B5A1A0 + v7);
  }

  *(v54 + 8) = v53;
  if (v55 >= v125)
  {
    v93 = 0;
    v94 = 0;
    goto LABEL_78;
  }

  v124 = 0;
  v57 = a3;
  v58 = 1;
  v59 = v125;
  v126 = v57;
  v123 = v42;
  do
  {
    v60 = v58 + 2;
    if (v58 + 2 > v57)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Size mismatch", v95, v96, v97, v98, v99, v100, v101, v122);
        v102 = sub_10000C050(0x51u);
        v93 = v124;
        v94 = BYTE4(v124);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }

        goto LABEL_78;
      }

LABEL_77:
      v93 = v124;
      v94 = BYTE4(v124);
      goto LABEL_78;
    }

    v61 = *&a2[v58];
    if (v55)
    {
      v62 = *(v54 + 8);
      if (*(v62 + 40) == v61)
      {
        v63 = 0;
LABEL_43:
        if (sub_10000C240())
        {
          sub_10000AF54("serviceID:%d already registered", v67, v68, v69, v70, v71, v72, v73, v61);
          v74 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            v91 = sub_10000C0FC();
            *buf = 136446466;
            v128 = v91;
            v129 = 1024;
            v130 = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }

        v57 = v126;
        if (!v63)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v64 = 0;
        v65 = (v62 + 128);
        while (v55 - 1 != v64)
        {
          v66 = *v65;
          v65 += 22;
          ++v64;
          if (v66 == v61)
          {
            v63 = v64 >= v55;
            goto LABEL_43;
          }
        }
      }
    }

    if (word_100B5A220)
    {
      v75 = 0;
      v76 = &byte_100B5A23F;
      while (*(v76 - 5) != v61)
      {
        ++v75;
        v76 += 72;
        if (v75 >= word_100B5A220)
        {
          goto LABEL_66;
        }
      }

      v77 = *(v76 - 7) | BYTE4(v124) & 1;
      BYTE4(v124) = v77 != 0;
      v78 = *(*(&xmmword_100B5A1A0 + v7) + 8) + 88 * v55;
      *(v78 + 40) = v61;
      v79 = *(v76 - 15);
      if (v79 >= 0x20)
      {
        v80 = 32;
      }

      else
      {
        v80 = *(v76 - 15);
      }

      *(v78 + 32) = v80;
      *(v78 + 36) = *(v76 - 11);
      *(v78 + 44) = 0x100000001;
      memmove(v78, *(v76 - 23), v79);
      v81 = *(*(&xmmword_100B5A1A0 + v7) + 8);
      v82 = v81 + 88 * v55;
      *(v82 + 54) = *(v76 - 3);
      *(v82 + 55) = *(v76 - 7);
      *(v82 + 56) = *(v76 - 1);
      if (v77)
      {
        v42 = v123;
        if (!sub_1000CC63C(a1) || (sub_1002DF928((a1 + 48)) & 1) != 0)
        {
          v59 = v125;
          if (sub_10000C240())
          {
            sub_10000AF54("We require encryption on a common service - delaying connection to this service.", v83, v84, v85, v86, v87, v88, v89, v122);
            v90 = sub_10000C050(0x51u);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
            {
              v92 = sub_10000C0FC();
              *buf = 136446466;
              v128 = v92;
              v129 = 1024;
              v130 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          v57 = v126;
          goto LABEL_65;
        }

        v81 = *(*(&xmmword_100B5A1A0 + v7) + 8);
      }

      else
      {
        v42 = v123;
      }

      v59 = v125;
      v57 = v126;
      v42[v124] = v81 + 88 * v55;
      LODWORD(v124) = v124 + 1;
LABEL_65:
      ++v55;
    }

LABEL_66:
    v54 = *(&xmmword_100B5A1A0 + v7);
    *(v54 + 16) = v55;
    if (v60 >= v57)
    {
      break;
    }

    v58 = v60;
  }

  while (v55 < v59);
  if (v55 != v59)
  {
    goto LABEL_77;
  }

  v103 = v60 >= v57;
  v93 = v124;
  v94 = BYTE4(v124);
  if (v103)
  {
    goto LABEL_80;
  }

LABEL_78:
  if (sub_10000C240() && (sub_10000AF54("Number of common services don't match.", v104, v105, v106, v107, v108, v109, v110, v122), v111 = sub_10000C050(0x51u), os_log_type_enabled(v111, OS_LOG_TYPE_ERROR)))
  {
    if (sub_100810158(v111, v94 & 1))
    {
LABEL_81:
      v112 = (*(*(&xmmword_100B5A1A0 + v7) + 52) & 1) == 0;
      if (!sub_1000CC63C(a1) && ((byte_100B5A908 | v112) & 1) != 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("CL Asking to pair", v113, v114, v115, v116, v117, v118, v119, v122);
          v120 = sub_10000C050(0x51u);
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
          {
            v121 = sub_10000C0FC();
            *buf = 136446210;
            v128 = v121;
            _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        sub_1002E73A0(a1, 1);
      }
    }
  }

  else
  {
LABEL_80:
    if (v94)
    {
      goto LABEL_81;
    }
  }

  sub_10019A7E0(a1, v93, v42);
  sub_10000C1E8(v42);
}