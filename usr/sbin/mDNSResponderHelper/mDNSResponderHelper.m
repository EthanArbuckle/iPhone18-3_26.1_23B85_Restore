uint64_t mdns_bpf_open(int a1, int *a2)
{
  v4 = 0;
  while (1)
  {
    *__str = 0u;
    v14 = 0u;
    snprintf(__str, 0x20uLL, "/dev/bpf%d", v4);
    v5 = open(__str, a1);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = 0;
      if (!a2)
      {
        return v5;
      }

      goto LABEL_17;
    }

    if (!*__error())
    {
      v6 = -6700;
      goto LABEL_13;
    }

    v6 = *__error();
    if (v6 != 16)
    {
      break;
    }

    if (++v4 == 100)
    {
      v6 = 16;
      if (!a2)
      {
        return v5;
      }

      goto LABEL_17;
    }
  }

  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (_mdns_bpf_log_s_once != -1)
  {
    dispatch_once(&_mdns_bpf_log_s_once, &__block_literal_global);
  }

  v7 = _mdns_bpf_log_s_log;
  if (!os_log_type_enabled(_mdns_bpf_log_s_log, OS_LOG_TYPE_ERROR))
  {
LABEL_16:
    if (!a2)
    {
      return v5;
    }

    goto LABEL_17;
  }

  *buf = 136446466;
  v10 = __str;
  v11 = 2048;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to open %{public}s: %{mdns:err}ld", buf, 0x16u);
  if (a2)
  {
LABEL_17:
    *a2 = v6;
  }

  return v5;
}

void helper_exit()
{
  v0 = log_handle;
  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "mDNSResponderHelper exiting", v1, 2u);
  }

  exit(0);
}

uint64_t PowerSleepSystem()
{
  v0 = IOPMFindPowerManagement(0);
  v1 = IOPMSleepSystem(v0);
  if (v1)
  {
    usleep(0x186A0u);
    v2 = log_handle;
    if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
    {
      v4[0] = 67109120;
      v4[1] = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "IOPMSleepSystem %d", v4, 8u);
    }
  }

  update_idle_timer();
  return v1;
}

void SetLocalAddressCacheEntry(int a1, int a2, unsigned __int8 *a3, unsigned __int8 *a4, _DWORD *a5)
{
  v10 = log_handle;
  v11 = os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO);
  if (a2 == 4)
  {
    if (v11)
    {
      v12 = *a3;
      v13 = a3[1];
      v14 = a3[2];
      v15 = a3[3];
      v16 = *a4;
      v17 = a4[1];
      v18 = a4[2];
      v19 = a4[3];
      v20 = a4[4];
      v21 = a4[5];
      *buf = 67111936;
      LODWORD(v127) = a1;
      WORD2(v127) = 1024;
      *(&v127 + 6) = 4;
      WORD5(v127) = 1024;
      HIDWORD(v127) = v12;
      v128[0] = 1024;
      *&v128[1] = v13;
      v128[3] = 1024;
      *&v128[4] = v14;
      v128[6] = 1024;
      *&v128[7] = v15;
      v128[9] = 1024;
      *&v128[10] = v16;
      v128[12] = 1024;
      *&v128[13] = v17;
      v128[15] = 1024;
      *&v128[16] = v18;
      v128[18] = 1024;
      *&v128[19] = v19;
      v128[21] = 1024;
      *&v128[22] = v20;
      v128[24] = 1024;
      *&v128[25] = v21;
      v22 = "SetLocalAddressCacheEntry %d IPv%d %d.%d.%d.%d %02X:%02X:%02X:%02X:%02X:%02X";
      v23 = v10;
      v24 = 74;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, v22, buf, v24);
    }
  }

  else if (v11)
  {
    v25 = *a3;
    v26 = a3[1];
    v27 = a3[2];
    v28 = a3[3];
    v29 = a3[4];
    v30 = a3[5];
    v31 = a3[6];
    v32 = a3[7];
    v33 = a3[8];
    v34 = a3[9];
    v35 = a3[10];
    v36 = a3[11];
    v37 = a3[12];
    v38 = a3[13];
    v39 = a3[14];
    v40 = a3[15];
    v41 = *a4;
    v42 = a4[1];
    v43 = a4[2];
    v44 = a4[3];
    v45 = a4[4];
    v46 = a4[5];
    *buf = 67115008;
    LODWORD(v127) = a1;
    WORD2(v127) = 1024;
    *(&v127 + 6) = a2;
    WORD5(v127) = 1024;
    HIDWORD(v127) = v25;
    v128[0] = 1024;
    *&v128[1] = v26;
    v128[3] = 1024;
    *&v128[4] = v27;
    v128[6] = 1024;
    *&v128[7] = v28;
    v128[9] = 1024;
    *&v128[10] = v29;
    v128[12] = 1024;
    *&v128[13] = v30;
    v128[15] = 1024;
    *&v128[16] = v31;
    v128[18] = 1024;
    *&v128[19] = v32;
    v128[21] = 1024;
    *&v128[22] = v33;
    v128[24] = 1024;
    *&v128[25] = v34;
    v128[27] = 1024;
    *&v128[28] = v35;
    v128[30] = 1024;
    *&v128[31] = v36;
    v128[33] = 1024;
    *&v128[34] = v37;
    v128[36] = 1024;
    *&v128[37] = v38;
    v128[39] = 1024;
    *&v128[40] = v39;
    v128[42] = 1024;
    *&v128[43] = v40;
    v128[45] = 1024;
    *&v128[46] = v41;
    v128[48] = 1024;
    *&v128[49] = v42;
    v128[51] = 1024;
    *&v128[52] = v43;
    v128[54] = 1024;
    *v129 = v44;
    *&v129[4] = 1024;
    *v130 = v45;
    *&v130[4] = 1024;
    *&v130[6] = v46;
    v22 = "SetLocalAddressCacheEntry %d IPv%d %02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X %02X:%02X:%02X:%02X:%02X:%02X";
    v23 = v10;
    v24 = 146;
    goto LABEL_6;
  }

  *a5 = -1;
  if ((SetLocalAddressCacheEntry_s & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  SetLocalAddressCacheEntry_s = socket(17, 3, 0);
  if ((SetLocalAddressCacheEntry_s & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  v90 = log_handle;
  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
  {
    v91 = *__error();
    v92 = __error();
    v93 = strerror(*v92);
    *buf = 67109378;
    LODWORD(v127) = v91;
    WORD2(v127) = 2080;
    *(&v127 + 6) = v93;
    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "SetLocalAddressCacheEntry: socket(PF_ROUTE, SOCK_RAW, 0) failed %d (%s)", buf, 0x12u);
    if ((SetLocalAddressCacheEntry_s & 0x80000000) == 0)
    {
LABEL_9:
      v125.tv_sec = 0;
      *&v125.tv_usec = 0;
      gettimeofday(&v125, 0);
      if (a2 == 4)
      {
        v127 = 0uLL;
        memset(&v128[8], 0, 32);
        *&v128[46] = 0uLL;
        memset(&v128[24], 0, 48);
        *buf = 17105024;
        LOWORD(v127) = a1;
        *(&v127 + 4) = 0x301000804;
        v47 = SetLocalAddressCacheEntry_seq++;
        *v128 = v47;
        *&v128[4] = 0x400000000;
        *&v128[14] = LODWORD(v125.tv_sec) + 30;
        v128[36] = 528;
        *&v128[38] = *a3;
        v128[44] = 4628;
        v128[45] = a1;
        LOBYTE(v128[46]) = 6;
        LOBYTE(v128[47]) = 6;
        v48 = *a4;
        v128[50] = *(a4 + 2);
        *&v128[48] = v48;
        v49 = write(SetLocalAddressCacheEntry_s, buf, 0x80uLL);
        if (v49 < 0)
        {
          v50 = v49;
          v51 = log_handle;
          if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
          {
            v52 = *a3;
            v53 = a3[1];
            v113 = a3[2];
            v116 = a3[3];
            v122 = *v128;
            v119 = *__error();
            v54 = __error();
            v55 = strerror(*v54);
            *__buf = 134220290;
            *&v134 = 128;
            WORD4(v134) = 1024;
            *(&v134 + 10) = a1;
            HIWORD(v134) = 1024;
            v135 = v52;
            *v136 = 1024;
            *&v136[2] = v53;
            *&v136[6] = 1024;
            *&v136[8] = v113;
            LOWORD(v137[0]) = 1024;
            *(v137 + 2) = v116;
            HIWORD(v137[1]) = 1024;
            v137[2] = v122;
            LOWORD(v137[3]) = 2048;
            *(&v137[3] + 2) = v50;
            HIWORD(v137[5]) = 1024;
            v137[6] = v119;
            LOWORD(v137[7]) = 2080;
            *(&v137[7] + 2) = v55;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "SetLocalAddressCacheEntry: write(%zu) interface %d address %d.%d.%d.%d seq %d result %zd errno %d (%s)", __buf, 0x4Au);
          }
        }

        v56 = read(SetLocalAddressCacheEntry_s, buf, 0x80uLL);
        if ((v56 & 0x8000000000000000) == 0 && !*&v128[2])
        {
          goto LABEL_25;
        }

        v57 = log_handle;
        if (!os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        v58 = *a3;
        v59 = a3[1];
        v60 = a3[2];
        v61 = a3[3];
        v62 = *v128;
        v63 = *__error();
        v64 = __error();
        v65 = strerror(*v64);
        *__buf = 134220546;
        *&v134 = 128;
        WORD4(v134) = 1024;
        *(&v134 + 10) = a1;
        HIWORD(v134) = 1024;
        v135 = v58;
        *v136 = 1024;
        *&v136[2] = v59;
        *&v136[6] = 1024;
        *&v136[8] = v60;
        LOWORD(v137[0]) = 1024;
        *(v137 + 2) = v61;
        HIWORD(v137[1]) = 1024;
        v137[2] = v62;
        LOWORD(v137[3]) = 2048;
        *(&v137[3] + 2) = v56;
        HIWORD(v137[5]) = 1024;
        v137[6] = v63;
        LOWORD(v137[7]) = 2080;
        *(&v137[7] + 2) = v65;
        HIWORD(v137[9]) = 1024;
        v137[10] = *&v128[2];
        v66 = "SetLocalAddressCacheEntry: read (%zu) interface %d address %d.%d.%d.%d seq %d result %zd errno %d (%s) %d";
        v67 = __buf;
        v68 = v57;
        v69 = 80;
      }

      else
      {
        v134 = 0uLL;
        *v136 = 0;
        memset(v137, 0, sizeof(v137));
        v138 = 0uLL;
        v141 = 0;
        v140 = 0uLL;
        v139 = 0uLL;
        *__buf = 17105036;
        LOWORD(v134) = a1;
        *(&v134 + 4) = 0x301000804;
        v70 = SetLocalAddressCacheEntry_seq++;
        *&v136[4] = 0x400000000;
        v135 = v70;
        v137[3] = LODWORD(v125.tv_sec) + 30;
        WORD4(v138) = 7708;
        v139 = *a3;
        LODWORD(v140) = a1;
        WORD2(v140) = 4628;
        WORD3(v140) = a1;
        BYTE8(v140) = 6;
        BYTE10(v140) = 6;
        v71 = *a4;
        LOWORD(v141) = *(a4 + 2);
        HIDWORD(v140) = v71;
        v72 = write(SetLocalAddressCacheEntry_s, __buf, 0x8CuLL);
        if (v72 < 0)
        {
          v73 = v72;
          v74 = log_handle;
          if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
          {
            v75 = *a3;
            v76 = a3[1];
            v77 = a3[2];
            v94 = a3[3];
            v95 = a3[4];
            v96 = a3[5];
            v97 = a3[6];
            v99 = a3[7];
            v101 = a3[8];
            v103 = a3[9];
            v105 = a3[10];
            v107 = a3[11];
            v109 = a3[12];
            v111 = a3[13];
            v114 = a3[14];
            v117 = a3[15];
            v123 = v135;
            v120 = *__error();
            v78 = __error();
            v79 = strerror(*v78);
            *buf = 134223362;
            *&v127 = 140;
            WORD4(v127) = 1024;
            *(&v127 + 10) = a1;
            HIWORD(v127) = 1024;
            *v128 = v75;
            v128[2] = 1024;
            *&v128[3] = v76;
            v128[5] = 1024;
            *&v128[6] = v77;
            v128[8] = 1024;
            *&v128[9] = v94;
            v128[11] = 1024;
            *&v128[12] = v95;
            v128[14] = 1024;
            *&v128[15] = v96;
            v128[17] = 1024;
            *&v128[18] = v97;
            v128[20] = 1024;
            *&v128[21] = v99;
            v128[23] = 1024;
            *&v128[24] = v101;
            v128[26] = 1024;
            *&v128[27] = v103;
            v128[29] = 1024;
            *&v128[30] = v105;
            v128[32] = 1024;
            *&v128[33] = v107;
            v128[35] = 1024;
            *&v128[36] = v109;
            v128[38] = 1024;
            *&v128[39] = v111;
            v128[41] = 1024;
            *&v128[42] = v114;
            v128[44] = 1024;
            *&v128[45] = v117;
            v128[47] = 1024;
            *&v128[48] = v123;
            v128[50] = 2048;
            *&v128[51] = v73;
            *v129 = 1024;
            *&v129[2] = v120;
            *v130 = 2080;
            *&v130[2] = v79;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "SetLocalAddressCacheEntry: write(%zu) interface %d address %02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X seq %d result %zd errno %d (%s)", buf, 0x92u);
          }
        }

        v80 = read(SetLocalAddressCacheEntry_s, __buf, 0x8CuLL);
        if ((v80 & 0x8000000000000000) == 0 && !*v136)
        {
          goto LABEL_25;
        }

        v81 = log_handle;
        if (!os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        v82 = *a3;
        v83 = a3[1];
        v84 = a3[2];
        v85 = a3[3];
        v86 = a3[4];
        v98 = a3[5];
        v100 = a3[6];
        v102 = a3[7];
        v104 = a3[8];
        v106 = a3[9];
        v108 = a3[10];
        v110 = a3[11];
        v112 = a3[12];
        v115 = a3[13];
        v118 = a3[14];
        v87 = a3[15];
        v124 = v135;
        v121 = *__error();
        v88 = __error();
        v89 = strerror(*v88);
        *buf = 134223618;
        *&v127 = 140;
        WORD4(v127) = 1024;
        *(&v127 + 10) = a1;
        HIWORD(v127) = 1024;
        *v128 = v82;
        v128[2] = 1024;
        *&v128[3] = v83;
        v128[5] = 1024;
        *&v128[6] = v84;
        v128[8] = 1024;
        *&v128[9] = v85;
        v128[11] = 1024;
        *&v128[12] = v86;
        v128[14] = 1024;
        *&v128[15] = v98;
        v128[17] = 1024;
        *&v128[18] = v100;
        v128[20] = 1024;
        *&v128[21] = v102;
        v128[23] = 1024;
        *&v128[24] = v104;
        v128[26] = 1024;
        *&v128[27] = v106;
        v128[29] = 1024;
        *&v128[30] = v108;
        v128[32] = 1024;
        *&v128[33] = v110;
        v128[35] = 1024;
        *&v128[36] = v112;
        v128[38] = 1024;
        *&v128[39] = v115;
        v128[41] = 1024;
        *&v128[42] = v118;
        v128[44] = 1024;
        *&v128[45] = v87;
        v128[47] = 1024;
        *&v128[48] = v124;
        v128[50] = 2048;
        *&v128[51] = v80;
        *v129 = 1024;
        *&v129[2] = v121;
        *v130 = 2080;
        *&v130[2] = v89;
        v131 = 1024;
        v132 = *v136;
        v66 = "SetLocalAddressCacheEntry: read (%zu) interface %d address %02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X seq %d result %zd errno %d (%s) %d";
        v67 = buf;
        v68 = v81;
        v69 = 152;
      }

      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, v66, v67, v69);
LABEL_25:
      *a5 = 0;
    }
  }

  update_idle_timer();
}

void SendWakeupPacket(unsigned int a1, const char *a2, uint64_t a3, int a4)
{
  *v48 = 0;
  v49 = 0;
  memset(__buf, 0, sizeof(__buf));
  v8 = log_handle;
  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = a2;
    *&buf[12] = 2080;
    *&buf[14] = a3;
    *&buf[22] = 1024;
    *&buf[24] = a1;
    *&buf[28] = 1024;
    *&buf[30] = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "SendWakeupPacket() ether_addr[%s] ip_addr[%s] if_id[%d] iteration[%d]", buf, 0x22u);
  }

  if (!if_indextoname(a1, v48))
  {
    v29 = log_handle;
    if (!os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 67109120;
    *&buf[4] = a1;
    v30 = "SendWakeupPacket: invalid interface index %u";
    v31 = v29;
    v32 = 8;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    return;
  }

  v9 = ether_aton(a2);
  if (!v9)
  {
    v33 = log_handle;
    if (!os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *&buf[4] = a2;
    v30 = "SendWakeupPacket: invalid ethernet address %s";
    v31 = v33;
    v32 = 12;
    goto LABEL_25;
  }

  v10 = v9;
  v11 = mdns_bpf_open(2, 0);
  if (v11 < 0)
  {
    v34 = log_handle;
    if (!os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v30 = "SendWakeupPacket: cannot find a bpf device";
    v31 = v34;
    v32 = 2;
    goto LABEL_25;
  }

  v12 = v11;
  memset(buf, 0, 32);
  __strlcpy_chk();
  if (ioctl(v12, 0x8020426CuLL, buf) < 0)
  {
    v35 = log_handle;
    if (!os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v36 = __error();
    v37 = strerror(*v36);
    *v42 = 136315138;
    v43 = v37;
    v26 = "SendWakeupPacket: BIOCSETIF failed %s";
    v27 = v35;
LABEL_33:
    v28 = 12;
    goto LABEL_34;
  }

  for (i = 0; i != 6; ++i)
  {
    *(__buf + i) = v10->octet[i];
  }

  v14 = 0;
  *(__buf + 10) = -3187146752;
  *(__buf + 6) = 0;
  v15 = &__buf[1] + 4;
  WORD1(__buf[1]) = -1;
  do
  {
    v16 = v15;
    v17 = v10;
    v18 = 6;
    do
    {
      v19 = v17->octet[0];
      v17 = (v17 + 1);
      *v15++ = v19;
      --v18;
    }

    while (v18);
    ++v14;
  }

  while (v14 != 16);
  *(v15 + 2) = 0;
  *v15 = 0;
  v20 = v16 - __buf;
  v21 = write(v12, __buf, v16 - __buf + 12);
  v22 = log_handle;
  v23 = os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT);
  if (v21 < 0)
  {
    if (!v23)
    {
      goto LABEL_35;
    }

    v38 = __error();
    v39 = strerror(*v38);
    *v42 = 136315138;
    v43 = v39;
    v26 = "SendWakeupPacket: write failed %s";
    goto LABEL_32;
  }

  if (v23)
  {
    *v42 = 136315394;
    v43 = a2;
    v44 = 2080;
    v45 = a3;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SendWakeupPacket: sent unicast eth_addr %s, ip_addr %s", v42, 0x16u);
  }

  WORD2(__buf[0]) = -1;
  LODWORD(__buf[0]) = -1;
  v24 = write(v12, __buf, v20 + 12);
  v22 = log_handle;
  v25 = os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT);
  if (v24 < 0)
  {
    if (!v25)
    {
      goto LABEL_35;
    }

    v40 = __error();
    v41 = strerror(*v40);
    *v42 = 136315138;
    v43 = v41;
    v26 = "SendWakeupPacket: write failed %s";
LABEL_32:
    v27 = v22;
    goto LABEL_33;
  }

  if (v25)
  {
    *v42 = 136315394;
    v43 = a2;
    v44 = 2080;
    v45 = a3;
    v26 = "SendWakeupPacket: sent broadcast eth_addr %s, ip_addr %s";
    v27 = v22;
    v28 = 22;
LABEL_34:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, v42, v28);
  }

LABEL_35:
  close(v12);
}

void SendKeepalive(uint16x4_t *a1, uint16x4_t *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  v11 = log_handle;
  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
  {
    *&buf[4] = a1->u8[0];
    *&buf[10] = a1->u8[1];
    *&buf[16] = a1->u8[2];
    *&buf[22] = a1->u8[3];
    *&buf[28] = a1->u8[4];
    *&buf[34] = a1->u8[5];
    *&buf[40] = a1->u8[6];
    *&buf[46] = a1->u8[7];
    *&buf[52] = a1[1].u8[0];
    *&buf[58] = a1[1].u8[1];
    LODWORD(v89) = a1[1].u8[2];
    *(&v89 + 6) = a1[1].u8[3];
    HIDWORD(v89) = a1[1].u8[4];
    *(v90 + 2) = a1[1].u8[5];
    DWORD2(v90[0]) = a1[1].u8[6];
    *(v90 + 14) = a1[1].u8[7];
    DWORD1(v90[1]) = a2->u8[0];
    *(&v90[1] + 10) = a2->u8[1];
    LODWORD(v91) = a2->u8[2];
    *(&v91 + 6) = a2->u8[3];
    HIDWORD(v91) = a2->u8[4];
    v93 = a2->u8[5];
    v95 = a2->u8[6];
    v97 = a2->u8[7];
    v99 = a2[1].u8[0];
    v101 = a2[1].u8[1];
    v103 = a2[1].u8[2];
    v105 = a2[1].u8[3];
    v107 = a2[1].u8[4];
    v109 = a2[1].u8[5];
    v111 = a2[1].u8[6];
    *&buf[8] = 1024;
    *&buf[14] = 1024;
    *&buf[20] = 1024;
    *&buf[26] = 1024;
    *&buf[32] = 1024;
    *&buf[38] = 1024;
    *&buf[44] = 1024;
    *&buf[50] = 1024;
    *&buf[56] = 1024;
    *&buf[62] = 1024;
    WORD2(v89) = 1024;
    WORD5(v89) = 1024;
    LOWORD(v90[0]) = 1024;
    WORD3(v90[0]) = 1024;
    WORD6(v90[0]) = 1024;
    WORD1(v90[1]) = 1024;
    WORD4(v90[1]) = 1024;
    HIWORD(v90[1]) = 1024;
    WORD2(v91) = 1024;
    WORD5(v91) = 1024;
    v92 = 1024;
    v94 = 1024;
    v96 = 1024;
    v98 = 1024;
    v100 = 1024;
    v102 = 1024;
    v104 = 1024;
    v106 = 1024;
    v108 = 1024;
    v110 = 1024;
    v112 = 1024;
    v113 = a2[1].u8[7];
    *buf = 67117056;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "SendKeepalive:  %02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X :space: %02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X:%02X%02X", buf, 0xC2u);
    v11 = log_handle;
  }

  memset(v66, 0, 40);
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v91 = 0u;
  v89 = 0u;
  memset(v90, 0, sizeof(v90));
  memset(buf, 0, sizeof(buf));
  memset(v87, 0, sizeof(v87));
  memset(&v61, 0, sizeof(v61));
  v59 = 0;
  v60 = 0;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v67 = 67110144;
    *v68 = a3;
    *&v68[4] = 1024;
    *&v68[6] = a4;
    *v69 = 1024;
    *&v69[2] = a5;
    *&v69[6] = 1024;
    *&v69[8] = a6;
    *&v69[12] = 1024;
    *v70 = a7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "SendKeepalive invoked: lport is[%d] rport is[%d] seq is[%d] ack is[%d] win is[%d]", v67, 0x20u);
  }

  memset(v86, 0, sizeof(v86));
  v85 = 0u;
  memset(v83, 0, sizeof(v83));
  v82 = 0u;
  v84 = 0;
  v81 = 0;
  inet_ntop(30, a1, &v84, 0x2Eu);
  inet_ntop(30, a2, &v81, 0x2Eu);
  v12 = log_handle;
  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
  {
    *v67 = 136315394;
    *v68 = &v84;
    *&v68[8] = 2080;
    *v69 = &v81;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "SendKeepalive invoked: sadd6 is %s, dadd6 is %s", v67, 0x16u);
  }

  v13 = a1->u32[1];
  if (v13 || a1[1].i32[0] || a1[1].i32[1])
  {
    v14 = 0;
    v63 = 0;
    v64 = 0;
    v55 = &v63;
    v15 = 30;
    v16 = 20;
    v17 = &v63;
    v65 = 0;
  }

  else
  {
    v49 = 0;
    v50 = v66;
    v17 = &v66[1] + 4;
    memset(&v66[1] + 4, 0, 20);
    LOWORD(v66[0]) = 69;
    *(v66 + 2) = 0x63F000026880028;
    WORD5(v66[0]) = 0;
    v51 = a2->i32[0];
    HIDWORD(v66[0]) = a1->i32[0];
    LODWORD(v66[1]) = v51;
    for (i = 22; i > 3; i -= 2)
    {
      v53 = *v50++;
      v49 += v53;
    }

    WORD5(v66[0]) = ~(WORD1(v49) + v49 + (((v49 >> 16) + v49) >> 16));
    v15 = 2;
    v14 = 1;
    v55 = v66;
    v16 = 40;
  }

  v18 = 0;
  *v17 = a3;
  *(v17 + 1) = a4;
  *(v17 + 1) = a5;
  *(v17 + 2) = a6;
  v17[12] = v17[12] & 0xF | 0x50;
  v17[13] = 16;
  *(v17 + 7) = a7;
  *(v17 + 4) = 0;
  v19 = 22;
  v20 = v17;
  do
  {
    v21 = *v20++;
    v18 += v21;
    v19 -= 2;
  }

  while (v19 > 3);
  v22 = (v18 >> 16) + v18 + (((v18 >> 16) + v18) >> 16);
  if (v15 == 30)
  {
    v23 = &a2[1] + 1;
    v27 = vmovl_u16(*a2);
    v28 = vmovl_u16(a1[1]);
    v24 = vaddvq_s64(vaddq_s64(vaddl_u32(*v28.i8, *v27.i8), vaddl_high_u32(v28, v27))) + a1->u16[0] + a1->u16[1] + a2[1].u16[0] + v22 + HIWORD(v13) + v13;
    v26 = (a2 + 12);
    v25 = 7;
  }

  else
  {
    v23 = a1 + 1;
    v24 = v22 + a1->u16[0];
    v25 = 1;
    v26 = a2;
  }

  v29 = v24 + *v23 + v26->u16[0] + a2->u16[v25];
  v54 = a6;
  v30 = v29 + 6656;
  v31 = a7;
  if (v29 >> 9 >= 0x73)
  {
    do
    {
      v30 = (v30 >> 16) + v30;
    }

    while (v30 >> 16);
  }

  *(v17 + 8) = ~v30;
  v32 = socket(v15, 3, 6);
  if ((v32 & 0x80000000) == 0)
  {
    v33 = v32;
    if (v14)
    {
      v62 = 1;
      if (setsockopt(v32, 0, 2, &v62, 4u))
      {
        close(v33);
        v34 = log_handle;
        if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
        {
          v35 = __error();
          v36 = strerror(*v35);
          *v67 = 136315138;
          *v68 = v36;
          v37 = "SendKeepalive: setsockopt %s";
LABEL_25:
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v37, v67, 0xCu);
          return;
        }

        return;
      }

      *&buf[8] = 0;
      *buf = 528;
      *&buf[4] = a1->i32[0];
      *&buf[2] = a4;
      v61.msg_control = 0;
      v61.msg_controllen = 0;
      v40 = 16;
    }

    else
    {
      *buf = 7708;
      *&buf[8] = *a2->i8;
      *&buf[2] = a4;
      *&buf[24] = 0;
      *&buf[4] = 0;
      v61.msg_control = v87;
      v61.msg_controllen = 32;
      *&v87[0] = 0x2900000020;
      *(v87 + 12) = *a1->i8;
      v40 = 28;
      DWORD2(v87[0]) = 46;
      HIDWORD(v87[1]) = 0;
    }

    v60 = v16;
    v61.msg_name = buf;
    v61.msg_namelen = v40;
    v59 = v55;
    v61.msg_iov = &v59;
    v61.msg_iovlen = 1;
    v61.msg_flags = 0;
    while (1)
    {
      v41 = sendmsg(v33, &v61, 0);
      if (v41 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        goto LABEL_35;
      }
    }

    if (v41 == v16)
    {
      *v79 = 0u;
      memset(v80, 0, sizeof(v80));
      *v77 = 0u;
      memset(v78, 0, sizeof(v78));
      inet_ntop(v15, a1, v79, 0x2Eu);
      inet_ntop(v15, a2, v77, 0x2Eu);
      v42 = log_handle;
      if (!os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      *v67 = 136316674;
      *v68 = v79;
      *&v68[8] = 1024;
      *v69 = __rev16(a3);
      *&v69[4] = 2080;
      *&v69[6] = v77;
      *v70 = 1024;
      *&v70[2] = __rev16(a4);
      v71 = 1024;
      v72 = bswap32(a5);
      v73 = 1024;
      v74 = bswap32(v54);
      v75 = 1024;
      v76 = __rev16(v31);
      v43 = "SendKeepalive: Success Source %s:%d, Dest %s:%d, %u, %u, %u";
      v44 = v42;
      v45 = 52;
      goto LABEL_37;
    }

LABEL_35:
    v46 = log_handle;
    if (!os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v47 = __error();
    v48 = strerror(*v47);
    *v67 = 136315138;
    *v68 = v48;
    v43 = "SendKeepalive: sendmsg failed %s";
    v44 = v46;
    v45 = 12;
LABEL_37:
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v43, v67, v45);
LABEL_38:
    close(v33);
    return;
  }

  v34 = log_handle;
  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
  {
    v38 = __error();
    v39 = strerror(*v38);
    *v67 = 136315138;
    *v68 = v39;
    v37 = "SendKeepalive: socket %s";
    goto LABEL_25;
  }
}

void update_idle_timer()
{
  v0 = log_handle;
  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "entry", v3, 2u);
  }

  v1 = gTimer;
  if (!gTimer)
  {
    __assert_rtn("update_idle_timer", "helper-main.c", 129, "gTimer");
  }

  Current = CFAbsoluteTimeGetCurrent();
  CFRunLoopTimerSetNextFireDate(v1, Current + actualidle);
}

int main(int argc, const char **argv, const char **envp)
{
  _set_user_dir_suffix();
  __endptr = 0;
  while (1)
  {
    do
    {
      v5 = getopt(argc, argv, "dt:");
    }

    while (v5 == 100);
    if (v5 != 116)
    {
      break;
    }

    v6 = strtol(optarg, &__endptr, 0);
    if (!*optarg || *__endptr || v6 < 0)
    {
      fprintf(__stderrp, "Invalid idle timeout: %s\n", optarg);
      goto LABEL_31;
    }

    maxidle = v6;
  }

  if (v5 != -1)
  {
    fwrite("Usage: mDNSResponderHelper [-d] [-t maxidle]\n", 0x2DuLL, 1uLL, __stderrp);
    goto LABEL_31;
  }

  v7 = os_log_create("com.apple.mDNSResponderHelper", "INFO");
  log_handle = v7;
  if (v7)
  {
    v8 = v7;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create log handle in mDNSResponderHelper", buf, 2u);
    v8 = log_handle;
  }

  else
  {
    v8 = 0;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "mDNSResponderHelper Starting to run", buf, 2u);
  }

  if (maxidle)
  {
    actualidle = maxidle;
  }

  signal(15, handle_sigterm);
  Current = CFAbsoluteTimeGetCurrent();
  gTimer = CFRunLoopTimerCreate(kCFAllocatorDefault, Current + actualidle, actualidle, 0, 0, diediedie, 0);
  v10 = log_handle;
  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "mDNSResponderHelper initialize_timer() started", buf, 2u);
  }

  v11 = pthread_create(&idletimer_thread, 0, idletimer, 0);
  if (v11)
  {
    v18 = v11;
    v19 = log_handle;
    if (!os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v20 = strerror(v18);
    *buf = 136315138;
    v29 = v20;
    v15 = "Could not start idletimer thread: %s";
    v16 = v19;
    v17 = 12;
  }

  else
  {
    v12 = gRunLoop;
    v13 = 100000;
    do
    {
      if (!v12)
      {
        usleep(0x64u);
        v12 = gRunLoop;
      }

      --v13;
    }

    while (v13);
    if (v12)
    {
      mach_service = xpc_connection_create_mach_service("com.apple.mDNSResponder_Helper", 0, 1uLL);
      if (mach_service && (v22 = mach_service, xpc_get_type(mach_service) == &_xpc_type_connection))
      {
        v23 = log_handle;
        if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "init_helper_service: XPC Listener for mDNSResponderHelperService Listening", buf, 2u);
        }

        xpc_queue = dispatch_queue_create("com.apple.mDNSHelper.service_queue", 0);
        xpc_connection_set_event_handler(v22, &__block_literal_global_23);
        xpc_connection_resume(v22);
      }

      else
      {
        v24 = log_handle;
        if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "init_helper_service: Error Creating XPC Listener for mDNSResponderHelperService !!", buf, 2u);
        }
      }

      v25 = log_handle;
      if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "mDNSResponderHelper is now running", buf, 2u);
      }

      dispatch_main();
    }

    v14 = log_handle;
    if (!os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
    {
LABEL_31:
      exit(1);
    }

    *buf = 0;
    v15 = "gRunLoop not set after waiting";
    v16 = v14;
    v17 = 2;
  }

  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
  goto LABEL_31;
}

void __init_helper_service_block_invoke(id a1, void *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {
    v10 = log_handle;
    if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
    {
      LODWORD(v16) = 134217984;
      *(&v16 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "init_helper_service: new mDNSResponderHelper Client %p", &v16, 0xCu);
    }

    pid = xpc_connection_get_pid(a2);
    v12 = xpc_connection_copy_entitlement_value();
    if (v12)
    {
      v13 = v12;
      if (xpc_get_type(v12) == &_xpc_type_BOOL && xpc_BOOL_get_value(v13))
      {
        xpc_release(v13);
        xpc_retain(a2);
        xpc_connection_set_target_queue(a2, xpc_queue);
        *&v16 = _NSConcreteStackBlock;
        *(&v16 + 1) = 0x40000000;
        v17 = __accept_client_block_invoke;
        v18 = &__block_descriptor_tmp_13;
        v19 = a2;
        v20 = pid;
        xpc_connection_set_event_handler(a2, &v16);
        xpc_connection_resume(a2);
        return;
      }

      xpc_release(v13);
    }

    else
    {
      v14 = log_handle;
      if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "client entitlement is NULL", buf, 2u);
      }
    }

    v15 = log_handle;
    if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "entitlement check failed -> client is missing entitlement!", buf, 2u);
      v15 = log_handle;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v22 = pid;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "accept_client: Helper Client PID[%d] is missing Entitlement. Cancelling connection", buf, 8u);
    }

    xpc_connection_cancel(a2);
  }

  else
  {
    v4 = type;
    v5 = log_handle;
    v6 = os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT);
    if (v4 == &_xpc_type_error)
    {
      if (!v6)
      {
        return;
      }

      LODWORD(v16) = 136315138;
      *(&v16 + 4) = xpc_dictionary_get_string(a2, _xpc_error_key_description);
      v7 = "init_helper_service: XPCError: %s";
      v8 = v5;
      v9 = 12;
    }

    else
    {
      if (!v6)
      {
        return;
      }

      LOWORD(v16) = 0;
      v7 = "init_helper_service: Unknown EventMsg type";
      v8 = v5;
      v9 = 2;
    }

    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v16, v9);
  }
}

void __accept_client_block_invoke(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  v5 = log_handle;
  if (type != &_xpc_type_dictionary)
  {
    if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      value_4 = 134218240;
      *v63 = v6;
      *&v63[8] = 1024;
      *&v63[10] = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "accept_client:conn:[%p] client[%d](mDNSResponder) teared down the connection (OR Crashed)", &value_4, 0x12u);
    }

    v8 = *(a1 + 32);
    goto LABEL_5;
  }

  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    value_4 = 134218240;
    *v63 = v9;
    *&v63[8] = 1024;
    *&v63[10] = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "accept_client:conn:[%p] client[%d](mDNSResponder) requesting service", &value_4, 0x12u);
  }

  string = xpc_dictionary_get_string(object, "command");
  if (!string)
  {
    goto LABEL_30;
  }

  v12 = string;
  if (!strcmp(string, "bpf_open"))
  {
    reply = xpc_dictionary_create_reply(object);
    if (reply)
    {
      v14 = reply;
      value_4 = 0;
      v17 = _mdns_xpc_dictionary_get_object(object, "open_flags", &_xpc_type_int64);
      if (v17 && (v18 = xpc_int64_get_value(v17), v18 == v18))
      {
        v19 = mdns_bpf_open(v18 & 3, &value_4);
        if ((v19 & 0x80000000) == 0)
        {
          v20 = v19;
          xpc_dictionary_set_fd(v14, "bpf_fd", v19);
          close(v20);
        }
      }

      else
      {
        value_4 = -6711;
      }

      v15 = value_4;
      v13 = v14;
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  if (!strcmp(v12, "display_note"))
  {
    v21 = xpc_dictionary_create_reply(object);
    if (v21)
    {
      v14 = v21;
      xpc_dictionary_get_string(object, "note_title");
      xpc_dictionary_get_string(object, "note_message");
      v13 = v14;
      v15 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    if (!strcmp(v12, "set_ipv4_forwarding"))
    {
      v22 = object;
      v23 = 0;
    }

    else
    {
      if (strcmp(v12, "set_ipv6_forwarding"))
      {
        if (!strcmp(v12, "copy_app_trust_info"))
        {
          v13 = xpc_dictionary_create_reply(object);
          if (v13)
          {
            v14 = v13;
            v15 = -6735;
LABEL_26:
            xpc_dictionary_set_int64(v13, "error", v15);
            xpc_dictionary_send_reply();
            v8 = v14;
LABEL_5:
            xpc_release(v8);
            return;
          }
        }

        goto LABEL_30;
      }

      v22 = object;
      v23 = 1;
    }

    if (_mhs_handle_set_ip_forwarding_request(v22, v23))
    {
      return;
    }
  }

LABEL_30:
  value = 0;
  remote_connection = xpc_dictionary_get_remote_connection(object);
  v25 = xpc_dictionary_create_reply(object);
  if (xpc_dictionary_get_uint64(object, "HelperMode"))
  {
    v26 = log_handle;
    if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
    {
      LOWORD(value_4) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Getting mDNSResponder request mode", &value_4, 2u);
    }

    uint64 = xpc_dictionary_get_uint64(object, "HelperMode");
    if (uint64 > 6)
    {
      switch(uint64)
      {
        case 7:
          v59 = 0;
          length = 0;
          v39 = xpc_dictionary_get_uint64(object, "slace_ifindex");
          v40 = xpc_dictionary_get_uint64(object, "slace_family");
          data = xpc_dictionary_get_data(object, "slace_ip", &length);
          if (length == 16)
          {
            v42 = data;
            v43 = xpc_dictionary_get_data(object, "slace_eth", &v59);
            if (v59 == 6)
            {
              v44 = v43;
              v45 = log_handle;
              if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
              {
                value_4 = 67109376;
                *v63 = v39;
                *&v63[4] = 1024;
                *&v63[6] = v40;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Calling new SetLocalAddressCacheEntry() if_index[%d] family[%d] ", &value_4, 0xEu);
              }

              SetLocalAddressCacheEntry(v39, v40, v42, v44, &value);
              goto LABEL_55;
            }
          }

          break;
        case 8:
          v59 = 0;
          length = 0;
          v47 = xpc_dictionary_get_uint64(object, "send_keepalive_lport");
          v48 = xpc_dictionary_get_uint64(object, "send_keepalive_rport");
          v49 = xpc_dictionary_get_uint64(object, "send_keepalive_seq");
          v50 = xpc_dictionary_get_uint64(object, "send_keepalive_ack");
          v51 = xpc_dictionary_get_uint64(object, "send_keepalive_win");
          v52 = xpc_dictionary_get_data(object, "send_keepalive_sadd", &length);
          v53 = xpc_dictionary_get_data(object, "send_keepalive_dadd", &v59);
          if (length == 16 && v59 == 16)
          {
            v54 = v53;
            v58 = v50;
            v55 = v48;
            v56 = v47;
            v57 = log_handle;
            if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
            {
              value_4 = 67110144;
              *v63 = v56;
              *&v63[4] = 1024;
              *&v63[6] = v55;
              *&v63[10] = 1024;
              *&v63[12] = v49;
              *&v63[16] = 1024;
              *&v63[18] = v58;
              *&v63[22] = 1024;
              v64[0] = v51;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "helper-main: handle_request: send_keepalive: lport is[%d] rport is[%d] seq is[%d] ack is[%d] win is[%d]", &value_4, 0x20u);
            }

            SendKeepalive(v52, v54, v56, v55, v49, v58, v51);
            goto LABEL_55;
          }

          break;
        case 10:
          v33 = log_handle;
          if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
          {
            LOWORD(value_4) = 0;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Calling new KeyChainGetSecrets()", &value_4, 2u);
          }

          value = 5;
          if (v25)
          {
            xpc_dictionary_set_uint64(v25, "keychain_num_secrets", 0);
            xpc_dictionary_set_data(v25, "keychain_secrets", 0, 0);
          }

          v34 = log_handle;
          if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
          {
            value_4 = 67109632;
            *v63 = 0;
            *&v63[4] = 2048;
            *&v63[6] = 0;
            *&v63[14] = 1024;
            *&v63[16] = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "helper-main: handle_request: keychain_getsecrets: num_secrets is %u, secrets is %lu, secrets_Cnt is %u", &value_4, 0x18u);
          }

          goto LABEL_55;
        default:
          goto LABEL_49;
      }

      v37 = -20;
      goto LABEL_54;
    }

    switch(uint64)
    {
      case 2:
        v36 = log_handle;
        if (os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
        {
          LOWORD(value_4) = 0;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "mDNSResponderHelper does not notify users of name changes on this OS", &value_4, 2u);
        }

        goto LABEL_53;
      case 5:
        v46 = log_handle;
        if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
        {
          LOWORD(value_4) = 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Calling new PowerSleepSystem()", &value_4, 2u);
        }

        value = PowerSleepSystem();
        goto LABEL_55;
      case 6:
        v28 = xpc_dictionary_get_uint64(object, "interface_index");
        v29 = xpc_dictionary_get_string(object, "ethernet_address");
        v30 = xpc_dictionary_get_string(object, "ip_address");
        v31 = xpc_dictionary_get_uint64(object, "swp_iteration");
        v32 = log_handle;
        if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
        {
          value_4 = 136315906;
          *v63 = v29;
          *&v63[8] = 2080;
          *&v63[10] = v30;
          *&v63[18] = 1024;
          *&v63[20] = v28;
          LOWORD(v64[0]) = 1024;
          *(v64 + 2) = v31;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Calling new SendWakeupPacket() ether_addr[%s] ip_addr[%s] if_id[%d] iteration[%d]", &value_4, 0x22u);
        }

        SendWakeupPacket(v28, v29, v30, v31);
        goto LABEL_55;
    }
  }

LABEL_49:
  v35 = log_handle;
  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(value_4) = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "handle_request: Unrecognized mode!", &value_4, 2u);
  }

LABEL_53:
  v37 = -4;
LABEL_54:
  value = v37;
LABEL_55:
  if (v25)
  {
    xpc_dictionary_set_uint64(v25, "HelperReplyStatusToClient", 0);
    xpc_dictionary_set_int64(v25, "HelperErrorCodefromCall", value);
    xpc_connection_send_message(remote_connection, v25);
    v8 = v25;
    goto LABEL_5;
  }

  v38 = log_handle;
  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(value_4) = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "handle_requests: Response Dictionary could not be created!", &value_4, 2u);
  }
}

void idletimer(uint64_t a1)
{
  v2 = log_handle;
  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = a1;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "entry context=%p", &v5, 0xCu);
  }

  Main = CFRunLoopGetMain();
  gRunLoop = Main;
  v4 = log_handle;
  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "entry", buf, 2u);
    Main = gRunLoop;
    if (gRunLoop)
    {
LABEL_5:
      if (gTimer)
      {
        CFRunLoopAddTimer(Main, gTimer, kCFRunLoopDefaultMode);
        while (1)
        {
          CFRunLoopRun();
          sleep(1u);
        }
      }

      __assert_rtn("unpause_idle_timer", "helper-main.c", 122, "gTimer");
    }
  }

  else if (Main)
  {
    goto LABEL_5;
  }

  __assert_rtn("unpause_idle_timer", "helper-main.c", 121, "gRunLoop");
}

void diediedie(uint64_t a1, uint64_t a2)
{
  v4 = log_handle;
  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
  {
    v6 = 134218496;
    v7 = a1;
    v8 = 2048;
    v9 = a2;
    v10 = 2048;
    v11 = actualidle;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "entry %p %p %lu", &v6, 0x20u);
  }

  if (gTimer == a1)
  {
    v5 = log_handle;
    if (os_log_type_enabled(log_handle, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = actualidle;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "mDNSResponderHelper exiting after [%lu] seconds", &v6, 0xCu);
    }

    helper_exit();
  }

  __assert_rtn("diediedie", "helper-main.c", 103, "gTimer == timer");
}

void handle_sigterm(int a1)
{
  if (a1 == 15)
  {
    helper_exit();
  }

  __assert_rtn("handle_sigterm", "helper-main.c", 66, "sig == SIGTERM");
}

BOOL _mhs_handle_set_ip_forwarding_request(void *a1, int a2)
{
  reply = xpc_dictionary_create_reply(a1);
  if (reply)
  {
    object = _mdns_xpc_dictionary_get_object(a1, "enable", &_xpc_type_BOOL);
    if (object)
    {
      v6 = object == &_xpc_BOOL_true;
      if (a2)
      {
        v7 = "net.inet6.ip6.forwarding";
      }

      else
      {
        v7 = "net.inet.ip.forwarding";
      }

      v10 = v6;
      if (sysctlbyname(v7, 0, 0, &v10, 4uLL))
      {
        if (*__error())
        {
          v8 = *__error();
        }

        else
        {
          v8 = -6700;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = -6711;
    }

    xpc_dictionary_set_int64(reply, "error", v8);
    xpc_dictionary_send_reply();
    xpc_release(reply);
  }

  return reply != 0;
}

xpc_object_t _mdns_xpc_dictionary_get_object(void *a1, const char *a2, const _xpc_type_s *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  v5 = value;
  if (value && xpc_get_type(value) != a3)
  {
    return 0;
  }

  return v5;
}