void sub_1002C168C(uint64_t a1)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("LE Remote Connection Parameter Request Reply HCI command failed with result %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002C1700(uint64_t a1)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("LE Remote Connection Parameter Request Negative Reply HCI command failed with result %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_1002C1774(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, int a6, int a7)
{
  if (a1 && sub_1000ABD24(a1))
  {
    if (*(a1 + 70) == 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Can't send a connection update as a peripheral.", v14, v15, v16, v17, v18, v19, v20, v85);
        v21 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 132;
    }

    else if (a2 <= a3 && 10 * a5 >= a3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("new connection parameters interval %dms-%dms, timeout=%dms, CE %d-%d latency=%d", v39, v40, v41, v42, v43, v44, v45, (a2 * 1.25));
        v46 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v87 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      if (sub_10000C240())
      {
        LOWORD(v54) = *(a1 + 90);
        sub_10000AF54("current connection params interval %dms-%dms, timeout=%dms, CE %d-%d latency=%d connectionInterval:%dms", v47, v48, v49, v50, v51, v52, v53, (v54 * 1.25));
        v55 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = sub_10000C0FC();
          *buf = 136446210;
          v87 = v56;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      if (*(a1 + 154) == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Controller connection update pending, saving: interval %dms-%dms, timeout=%dms, CE %d-%d", v57, v58, v59, v60, v61, v62, v63, (a2 * 1.25));
          v64 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v65 = sub_10000C0FC();
            *buf = 136446210;
            v87 = v65;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        result = 0;
        *(a1 + 156) = a2;
        *(a1 + 158) = a3;
        *(a1 + 160) = a4;
        *(a1 + 162) = a5;
        *(a1 + 164) = a6;
        *(a1 + 166) = a7;
      }

      else if (*(a1 + 88) == a6 && *(a1 + 86) == a7 && (*(a1 + 92) == a3 && *(a1 + 90) == a2 || (v66 = *(a1 + 80), v66 >= a2) && v66 <= a3) && *(a1 + 84) == a5 && *(a1 + 82) == a4)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Ignoring request to update parameters since we are already configured for the same values, and current CI is within range", v67, v68, v69, v70, v71, v72, v73, v85);
          v74 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            v75 = sub_10000C0FC();
            *buf = 136446210;
            v87 = v75;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        return 4170;
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Sending parameters to controller", v76, v77, v78, v79, v80, v81, v82, v85);
          v83 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v84 = sub_10000C0FC();
            *buf = 136446210;
            v87 = v84;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        if (*(a1 + 86) != a7)
        {
          *(a1 + 96) = a7;
        }

        *(a1 + 98) = a6;
        *(a1 + 100) = a3;
        *(a1 + 102) = a2;
        result = sub_1000D6178(0xB3u, v76, v77, v78, v79, v80, v81, v82, a1);
        if (!result)
        {
          *(a1 + 154) = 1;
        }
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Max interval should not be lower than min or larger than timeout", v31, v32, v33, v34, v35, v36, v37, v85);
        v38 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 101;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Connection handle is invalid.", v23, v24, v25, v26, v27, v28, v29, v85);
      v30 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1310;
  }

  return result;
}

uint64_t sub_1002C1CB4(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  if (a1 && sub_1000ABD24(a1))
  {
    if (*(a1 + 322))
    {
      result = 718;
      if (a2 - 501 >= 0xFFFFFE0C && a3 - 501 >= 0xFFFFFE0C && a2 <= a3 && a4 <= 0x1F3 && a5 <= 0x1F3 && a5 <= a3 && (a6 - 3201) >= 0xFFFFF389)
      {
        result = sub_1000D6178(0xFBu, v12, v13, v14, v15, v16, v17, v18, a1);
        if (!result)
        {
          *(a1 + 154) = 1;
        }
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Remote device does not support connection subrating.", v28, v29, v30, v31, v32, v33, v34, v36);
        v35 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 1330;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Connection handle is invalid", v20, v21, v22, v23, v24, v25, v26, v36);
      v27 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1310;
  }

  return result;
}

uint64_t sub_1002C1E5C(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1000ABB80(a2);
  *(v11 + 157) = a3;
  *(v11 + 158) = a4;
  *(v11 + 159) = a5;
  *(v11 + 160) = a6;
  v12 = sub_100022244(a1);

  return sub_1002CF564(v11, v12, a3, a4, a5, a6);
}

void sub_1002C1EE8(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4, _DWORD *a5, unsigned int a6, unsigned __int16 a7, unsigned __int16 a8, char a9, __int16 a10, unsigned __int8 a11)
{
  v18 = sub_100022244(a1);
  v19 = byte_100B66200;
  if (v18 == 769 && a1 > 0x64)
  {
    v21 = a1;
  }

  else
  {
    v21 = v18;
  }

  if (v21 && (byte_100B66224 & 1) != 0)
  {

    sub_1002BFB50(2);
    return;
  }

  memset(v129, 0, 7);
  if (a3)
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  if (!v22)
  {
    byte_100B66200 = 0;
    byte_100B66224 = 0;
    LOBYTE(qword_100B6620C) = 0;
    if (v21)
    {
      if (v21 <= 711)
      {
        if (v21 != 702)
        {
          if (v21 != 709)
          {
            if (v21 == 711)
            {
              v24 = sub_1000ABB80(a2);
              if (v24)
              {
                v25 = v24;
                v26 = a4;
              }

              else
              {
                if (sub_10000C240())
                {
                  sub_10000AF54("%s connection with %: failed with result %!", v103, v104, v105, v106, v107, v108, v109, "Outgoing");
                  v110 = sub_10000C050(0x42u);
                  if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000E09C0();
                  }
                }

                v26 = a4;
                v25 = 0;
              }

              v94 = 711;
              goto LABEL_84;
            }

            goto LABEL_95;
          }

          goto LABEL_77;
        }

LABEL_81:
        v26 = a4;
        v25 = 0;
        v94 = v21;
LABEL_84:
        sub_1002CE438(v26, v25, v94, a11);
        sub_100256B30();
        return;
      }

      switch(v21)
      {
        case 0x2C8:
          goto LABEL_81;
        case 0x2C9:
LABEL_77:
          if (sub_10000C240())
          {
            sub_10000AF54("LE Connection Complete with result %!. Lets tell the upper layer about this.", v95, v96, v97, v98, v99, v100, v101, a1);
            v102 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }

          sub_100256C10();
          goto LABEL_81;
        case 0x2FE:
          if (sub_10000C240())
          {
            sub_10000AF54("LE Connection Complete %: failed with result %!", v86, v87, v88, v89, v90, v91, v92, (a4 + 1));
            v93 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          v26 = a4;
          v25 = 0;
          v94 = 766;
          goto LABEL_84;
      }

LABEL_95:
      if (sub_10000C240())
      {
        sub_10000AF54("Unexpected status %! in LE Connection Complete", v119, v120, v121, v122, v123, v124, v125, a1);
        v126 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      sub_1000C52F4(a1);
      sub_1002C26C8();
      return;
    }
  }

  if (sub_1000ABB80(a2))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("We already have that LM handle(%x).... This is bad.", v111, v112, v113, v114, v115, v116, v117, a2);
      v118 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_100256B30();
    sub_1000C52F4(133);
    goto LABEL_95;
  }

  if (a5)
  {
    v129[0] = *a5;
    *(v129 + 3) = *(a5 + 3);
    if (sub_10000C240())
    {
      sub_10000AF54("Using controller resolved address device %: to %:", v27, v28, v29, v30, v31, v32, v33, (a4 + 1));
      v34 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v131 = sub_10000C0FC();
LABEL_31:
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  else
  {
    if (*a4 != 1 || (a4[1] & 0xC0) != 0x40 || (v128 = 0, sub_100006100(a4, v129, &v128)) || v128 != 1)
    {
      v43 = 0;
      v44 = 0;
      goto LABEL_46;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Resolved device %: to %:", v45, v46, v47, v48, v49, v50, v51, (a4 + 1));
      v34 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v52 = sub_10000C0FC();
        *buf = 136446210;
        v131 = v52;
        goto LABEL_31;
      }
    }
  }

  if (sub_1000E5EA8(v129))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("%: is already connected (previous handle=%p lmHandle=%x randomAddress=%:)", v35, v36, v37, v38, v39, v40, v41, v129 + 1);
      v42 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v43 = 1;
    v44 = 1;
  }

  else
  {
    v44 = 0;
    v43 = 1;
  }

LABEL_46:
  v53 = sub_100255F4C(a4);
  if (!v53)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not create connection for address %:", v56, v57, v58, v59, v60, v61, v62, (a4 + 1));
      v63 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  v54 = v53;
  sub_100016250((v53 + 180));
  *v54 = a2;
  *(v54 + 124) = 3;
  v54[40] = a6;
  v54[41] = a7;
  v54[42] = a8;
  *(v54 + 118) = a9;
  *(v54 + 70) = v23;
  *(v54 + 13) = 0x148001B0148001BLL;
  *(v54 + 33) = 0;
  *(v54 + 18) = 0x100000001;
  *(v54 + 323) = 0;
  if (v19)
  {
    v55 = word_100B66220;
    v54[43] = word_100B66220;
    if (!v55)
    {
      goto LABEL_54;
    }
  }

  else
  {
    LOWORD(v55) = v54[43];
    if (!v55)
    {
LABEL_54:
      LOWORD(v55) = 12;
      v54[43] = 12;
    }
  }

  v64 = 8 * sub_1002C0F90(27, 27, (625 * v55), 1, 1);
  if (v64)
  {
    v64 = v64 * (0x3E8u / (a6 * 1.25)) / 0x3E8;
  }

  *(v54 + 61) = v64;
  *(v54 + 62) = sub_1002C0F90(v54[54], v54[52], (625 * v54[43]), *(v54 + 36), *(v54 + 37));
  *(v54 + 24) = 0;
  *(v54 + 5) = 0;
  if (*(v54 + 70))
  {
    sub_1000841FC(v54 + 63);
    if (v44)
    {
      goto LABEL_59;
    }
  }

  else
  {
    *(v54 + 63) = dword_100B66203;
    *(v54 + 67) = word_100B66207;
    *(v54 + 69) = byte_100B66209;
    if (v44)
    {
LABEL_59:
      if (sub_10000C240())
      {
        sub_10000AF54("Disconnecting duplicate lmHandle=0x%x", v65, v66, v67, v68, v69, v70, v71, *v54);
        v72 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          v73 = sub_10000C0FC();
          *buf = 136446210;
          v131 = v73;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      *(v54 + 124) = 0;
      v74 = sub_1000D6178(5u, v65, v66, v67, v68, v69, v70, v71, v54);
      v75 = sub_1000D6410(v54, v74);
      if (v75)
      {
        v76 = v75;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not disconnect LE device %!", v77, v78, v79, v80, v81, v82, v83, v76);
          v84 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else
      {
        *(v54 + 124) = 7;
      }

      v26 = (v54 + 24);
      v25 = v54;
      v94 = 157;
      goto LABEL_84;
    }
  }

  *(v54 + 55) = v43;
  if (v43)
  {
    *(v54 + 14) = v129[0];
    v54[30] = v129[1];
    *(v54 + 62) = BYTE2(v129[1]);
  }

  sub_1002CE438(v54 + 48, v54, 0, a11);
  *(v54 + 124) = 0;
  sub_100256830(v54, v85);
}

void sub_1002C26C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000ABB80(a2);
  if (v9)
  {
    v10 = v9;
    *(v9 + 40) = a3;
    *(v9 + 41) = a4;
    *(v9 + 42) = a5;
    *(v9 + 154) = 0;
    v11 = sub_100022244(a1);
    if (v11)
    {
      v12 = v11;
      if (sub_10000C240())
      {
        sub_10000AF54("Connection Update Completed with error %!", v13, v14, v15, v16, v17, v18, v19, v12);
        v20 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      if ((v12 - 708) > 0x36 || ((1 << (v12 + 60)) & 0x40000004004801) == 0)
      {
        sub_1000D660C();
      }
    }

    else
    {
      v29 = *(v10 + 96);
      if (v29)
      {
        *(v10 + 86) = v29;
        *(v10 + 96) = 0;
        v30 = *(v10 + 104);
        if (v30 <= 0x1B && (v31 = *(v10 + 108), v31 < 0x1C))
        {
          v42 = *(v10 + 80);
          v43 = 8 * sub_1002C0F90(v31, v30, (625 * v29), *(v10 + 144), *(v10 + 148));
          if (v43)
          {
            v43 = v43 * (0x3E8u / (v42 * 1.25)) / 0x3E8;
          }

          *(v10 + 244) = v43;
          *(v10 + 248) = sub_1002C0F90(*(v10 + 108), *(v10 + 104), (625 * *(v10 + 86)), *(v10 + 144), *(v10 + 148));
        }

        else
        {
          v32 = sub_1002BFF20(v10, 2u);
          if (v32)
          {
            v33 = v32;
            if (v32 != 4000)
            {
              if (sub_10000C240())
              {
                sub_10000AF54("Connection Update Completed with error %!", v34, v35, v36, v37, v38, v39, v40, v33);
                v41 = sub_10000C050(0x42u);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  sub_10080F604();
                }
              }
            }
          }
        }
      }

      if (*(v10 + 98))
      {
        *(v10 + 88) = *(v10 + 98);
        *(v10 + 98) = 0;
      }

      if (*(v10 + 100))
      {
        *(v10 + 92) = *(v10 + 100);
        *(v10 + 100) = 0;
      }

      if (*(v10 + 102))
      {
        *(v10 + 90) = *(v10 + 102);
        *(v10 + 102) = 0;
      }
    }

    if (*(v10 + 162))
    {
      sub_1002C1774(v10, *(v10 + 156), *(v10 + 158), *(v10 + 160), *(v10 + 162), *(v10 + 164), *(v10 + 166));
      if (a1 && sub_10000C240())
      {
        sub_10000AF54("Error executing pending connection update with %!", v44, v45, v46, v47, v48, v49, v50, a1);
        v51 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      *(v10 + 164) = 0;
      *(v10 + 156) = 0;
    }

    sub_1002CF4B0(v10, a3, a4, a5, *(v10 + 88), *(v10 + 86), *(v10 + 70));
    sub_100256830(v10, v52);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("We are not tracking this LM handle...", v21, v22, v23, v24, v25, v26, v27, v53);
    v28 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1002C29BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (!sub_1000ABD24(a2))
    {
      sub_1000D660C();
    }

    v9 = *(a2 + 236);
    sub_1001C4EF4(*a2 & 0xFFF);
    sub_1000E0BF8(a2, a3);
    sub_1002CF290(a2, a3, a4, a5);
    if (v9 && !*(a2 + 236))
    {
      sub_1000E12C4(a2);
    }

    sub_1001B8B1C(a2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIEventHandler_DisconnectionComplete no connection handle: reason %! ignoring", v10, v11, v12, v13, v14, v15, v16, a3);
    v17 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002C2AC8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000ABB80(a2);
  v7 = v6;
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Remote used features error: %!", v8, v9, v10, v11, v12, v13, v14, a1);
      v15 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

LABEL_9:
    sub_1002CF894(a1, v7, (v7 + 172));
    return;
  }

  if (a3)
  {
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1000D660C();
    if (v7)
    {
LABEL_7:
      *(v7 + 172) = *a3;
      if (sub_100084230() == 11)
      {
        *(v7 + 172) &= ~0x20u;
      }

      goto LABEL_9;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invaid LM handle %x from LE_RemoteUsedFeatures", v16, v17, v18, v19, v20, v21, v22, a2);
    v23 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002C2BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1000ABB80(a2);
  v9 = v8;
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("All remote used features error: %!", v10, v11, v12, v13, v14, v15, v16, a1);
      v17 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    goto LABEL_8;
  }

  if (a5)
  {
    if (v8)
    {
LABEL_7:
      *(v9 + 172) = *a5;
LABEL_8:
      sub_1002CF894(a1, v9, (v9 + 172));
      return;
    }
  }

  else
  {
    sub_1000D660C();
    if (v9)
    {
      goto LABEL_7;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invaid LM handle %x from LE_AllRemoteUsedFeatures", v18, v19, v20, v21, v22, v23, v24, a2);
    v25 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_1002C2CD0(uint64_t a1, uint64_t a2)
{
  if (!a1 || !sub_1000ABD24(a1))
  {
    return 149;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Setting Connection Data Length to Tx %d bytes and %d us", v4, v5, v6, v7, v8, v9, v10, a2);
    v11 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v23 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v12 = sub_100018960(194, sub_1002C2E2C, v5, v6, v7, v8, v9, v10, a1);
  if (v12)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Set Data Length failed with status %!", v13, v14, v15, v16, v17, v18, v19, v12);
      v20 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v12;
}

void sub_1002C2E2C(uint64_t a1, unsigned __int16 *a2)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write data length complete with %!, triggering changed", v4, v5, v6, v7, v8, v9, v10, a1);
      v11 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1002C3008(*a2, a2[52], a2[53], a2[54], a2[55]);
  }
}

void sub_1002C2EBC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 && (*(a1 + 153) & 1) == 0)
  {
    v13 = 4;
LABEL_13:
    *(a1 + 132) = v13;
    return;
  }

  if (!a2)
  {
    return;
  }

  if (*(a1 + 136) != 1)
  {
    v13 = 3;
    goto LABEL_13;
  }

  if (*(a1 + 125) == 1 && *(a1 + 356) == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("FastLEConnection:pendingAuth and fastLEConnectEnabled, waiting for encryption started", v5, v6, v7, v8, v9, v10, v11, *v14);
      v12 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136446210;
        *&v14[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", v14, 0xCu);
      }
    }

    v13 = 5;
    goto LABEL_13;
  }

  sub_1002CE094(a1, a4);
}

void sub_1002C3008(uint64_t a1, int a2, int a3, unsigned int a4, int a5)
{
  v10 = sub_1000ABB80(a1);
  if (v10)
  {
    v11 = v10;
    if (sub_1000ABD24(v10))
    {
      v12 = *(v11 + 112);
      if (v12 <= a4)
      {
        LOWORD(v12) = a4;
      }

      *(v11 + 112) = v12;
      if (sub_10000C240())
      {
        v13 = *(v11 + 70) ? "peripheral" : "central";
        sub_1002BE488(*(v11 + 132));
        sub_10000AF54("Data Length Changed for %s lmhandle %x: Tx [%d -> %d, %d], Rx [%d -> %d, %d], ready-state: %s, mfgrName 0x%x, probe: %s, phy-ready %d", v14, v15, v16, v17, v18, v19, v20, v13);
        v21 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v42 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      if (*(v11 + 104) != a2 || *(v11 + 106) != a3 || *(v11 + 108) != a4 || *(v11 + 110) != a5)
      {
        *(v11 + 104) = a2;
        *(v11 + 106) = a3;
        *(v11 + 108) = a4;
        *(v11 + 110) = a5;
        v22 = sub_1002BFF20(v11, 3u);
        v23 = v22;
        if (!v22)
        {
LABEL_26:
          if (*(v11 + 132) == 3 && *(v11 + 136) == 1)
          {
            if (sub_10023DE54() && (*(v11 + 173) & 1) != 0 && (sub_10024E40C() & 1) == 0)
            {
              v40 = *(v11 + 152) ^ 1;
            }

            else
            {
              v40 = 0;
            }

            if (v40 | *(v11 + 356))
            {
              sub_1002C2EBC(v11, 1, 1, v23);
            }

            else
            {
              sub_1002CE094(v11, v23);
            }
          }

          return;
        }

        if (v22 != 4000)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Scaling Data Length completed with error %!", v32, v33, v34, v35, v36, v37, v38, v23);
            v39 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }

          goto LABEL_26;
        }
      }

      if (!*(v11 + 136))
      {
        sub_1002C32FC(v11);
      }

      v23 = 0;
      goto LABEL_26;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid LM handle %x", v24, v25, v26, v27, v28, v29, v30, a1);
    v31 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

void sub_1002C32FC(uint64_t a1)
{
  if (sub_10000C240())
  {
    v9 = *(a1 + 136);
    v10 = "unknown";
    if (v9 == 1)
    {
      v10 = "complete";
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = "idle";
    }

    sub_10000AF54("Updating Probe-State: %s -> %s", v2, v3, v4, v5, v6, v7, v8, v11);
    v12 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v14 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *(a1 + 136) = 1;
}

void sub_1002C33F4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = a3;
  if ((a3 - 1) >= 3)
  {
    sub_1000D660C();
  }

  if ((a4 - 1) >= 3)
  {
    sub_1000D660C();
  }

  if (a2)
  {
    *(a2 + 153) = 1;
    if (a1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Phy update returned status %! and lmhandle 0x%4x", v8, v9, v10, v11, v12, v13, v14, a1);
        v15 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      if (a1 == 42 || a1 == 35)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Transaction collision occured, default to 1M PHY and continue as success", v16, v17, v18, v19, v20, v21, v22, v61);
          v23 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v63 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        a1 = 0;
      }

      a4 = 1;
      v5 = 1;
    }

    if ((*(a2 + 172) & 0x20) != 0)
    {
      v24 = sub_10023DE44();
    }

    else
    {
      v24 = 0;
    }

    *(a2 + 144) = a4;
    *(a2 + 148) = v5;
    if (sub_10000C240())
    {
      sub_1002BE488(*(a2 + 132));
      sub_10000AF54("PhyUpdateComplete: status %!, lmhandle 0x%4x, txPhy 0x%4x, rxPhy 0x%4x, readystate %s", v33, v34, v35, v36, v37, v38, v39, a1);
      v40 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = sub_10000C0FC();
        *buf = 136446210;
        v63 = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (*(a2 + 132) == 4)
    {
      v42 = sub_1002BFF20(a2, 4u);
      if (v42 && (v43 = v42, v42 != 4000) && sub_10000C240() && (sub_10000AF54("PhyUpdateComplete LE scaling completed with error %!", v44, v45, v46, v47, v48, v49, v50, v43), v51 = sub_10000C050(0x42u), os_log_type_enabled(v51, OS_LOG_TYPE_ERROR)))
      {
        sub_10080F604();
        if (v24)
        {
          goto LABEL_32;
        }
      }

      else if (v24)
      {
LABEL_32:
        sub_1002C2EBC(a2, 1, 1, a1);
        return;
      }

      if (*(a2 + 125) == 1 && *(a2 + 356) == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("FastLEConnection:pendingAuth and fastLEConnectEnabled, waiting for encryption started", v52, v53, v54, v55, v56, v57, v58, v61);
          v59 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v60 = sub_10000C0FC();
            *buf = 136446210;
            v63 = v60;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        *(a2 + 132) = 5;
      }

      else
      {
        sub_1002CE094(a2, a1);
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Connection handle invalid for phy update %p, status %!", v25, v26, v27, v28, v29, v30, v31, 0);
    v32 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

__n128 sub_1002C3770(uint64_t a1, _OWORD *a2)
{
  v2 = a2[3];
  v5[2] = a2[2];
  v5[3] = v2;
  v5[4] = a2[4];
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  sub_1002D38AC(a1, v5);
  return result;
}

void sub_1002C37D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10 = a4;
    v11 = a5;
    do
    {
      *(v14 + 3) = 0;
      v14[0] = 0;
      v12 = *v11++;
      v13 = sub_10009A66C(v12);
      v14[0] = v13;
      BYTE2(v14[1]) = BYTE6(v13);
      LOWORD(v14[1]) = WORD2(v13);
      sub_1002E9984(v14);
      --v10;
    }

    while (v10);
    if ((byte_100B66200 & 1) == 0)
    {
      byte_100B66200 = 1;
    }
  }

  sub_1002D3D60(a1, a2, a3, a4, a5);
}

void sub_1002C3894(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, __int16 a5)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE_ReadRemoteVersionInformationComplete with error %!", v10, v11, v12, v13, v14, v15, v16, a1);
      v17 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    if (!sub_1000ABD24(a2))
    {
      sub_1000D660C();
    }

    *(a2 + 24) = a3;
    *(a2 + 20) = a4;
    *(a2 + 22) = a5;
  }

  sub_1002CF610(a1, a2, a3);
}

BOOL sub_1002C3958(unsigned __int16 *a1, int a2, int a3, int a4)
{
  result = sub_1000ABD24(a1);
  if (result)
  {
    return a1[40] == a2 && a1[44] == a3 && a1[43] == a4;
  }

  return result;
}

uint64_t sub_1002C39C0(_WORD *a1, _WORD *a2, _WORD *a3, _WORD *a4, _WORD *a5, _WORD *a6, _WORD *a7, _WORD *a8)
{
  if (!sub_1000ABD24(a1))
  {
    return 101;
  }

  if (a2)
  {
    *a2 = a1[40];
  }

  if (a3)
  {
    *a3 = a1[41];
  }

  if (a4)
  {
    *a4 = a1[44];
  }

  if (a5)
  {
    *a5 = a1[43];
  }

  if (a6)
  {
    *a6 = a1[42];
  }

  if (a7)
  {
    *a7 = a1[45];
  }

  result = 0;
  if (a8)
  {
    *a8 = a1[46];
  }

  return result;
}

uint64_t sub_1002C3A7C()
{
  v0 = word_100B53E1A;
  result = word_100B53E1A;
  if (word_100B53E1A != word_100B53E1E)
  {
    sub_1000D660C();
    result = word_100B53E1A;
    v0 = word_100B53E1E;
  }

  if (result)
  {
    v2 = v0 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    sub_1000D660C();
    return word_100B53E1A;
  }

  return result;
}

uint64_t sub_1002C3AD4(int a1, int a2, unsigned int a3, int a4)
{
  if (sub_100084230() == 11)
  {
    word_100B53E1A = 27;
    word_100B53E1C = 328;
    word_100B53E1E = 27;
    word_100B53E20 = 328;
  }

  if (sub_10000C240())
  {
    v15 = (byte_100BCDFFC & 0x20) != 0 ? "supported" : "not supported";
    sub_10000AF54("Local EDL %s; TxOctets %d, TxTime %d, RxOctets %d, RxTime %d\n", v8, v9, v10, v11, v12, v13, v14, v15);
    v16 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v35 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a1 != a3)
  {
    sub_1000D660C();
  }

  if ((a1 - 27) >= 0xE1)
  {
    sub_1000D660C();
  }

  if (a2 != a4)
  {
    sub_1000D660C();
  }

  word_100B53E1A = a1;
  word_100B53E1C = a2;
  word_100B53E1E = a3;
  word_100B53E20 = a4;
  if ((byte_100BCDFFC & 0x20) == 0)
  {
    return 0;
  }

  v18 = sub_1002C0CE0(a3, 0, 0x1D4Cu, 0x1Eu, 0, 1, 1);
  word_100B53E22 = v18;
  v17 = sub_100018960(196, sub_1002C3D0C, v19, v20, v21, v22, v23, v24, v18);
  if (v17)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write Suggested default failed with %!", v25, v26, v27, v28, v29, v30, v31, v17);
      v32 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v17;
}

void sub_1002C3D0C(uint64_t a1)
{
  if (a1 && sub_10000C240())
  {
    sub_10000AF54("Write Suggested default failed with %!", v2, v3, v4, v5, v6, v7, v8, a1);
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

uint64_t sub_1002C3D98(uint64_t a1, uint64_t a2)
{
  if (!a1 || !sub_1000ABD24(a1))
  {
    return 149;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Set PHY allPhys=%x txPhys=%x rxPhys=%x phyOptions=%x", v4, v5, v6, v7, v8, v9, v10, a2);
    v11 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v23 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v12 = sub_1000D6178(0xC8u, v4, v5, v6, v7, v8, v9, v10, a1);
  if (v12)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Set PHY failed with status %!", v13, v14, v15, v16, v17, v18, v19, v12);
      v20 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v12;
}

uint64_t sub_1002C3F04()
{
  sub_100304AF8("LE_Connection:\n");
  sub_100304AF8("lConnectionInProgress:%x lCancelConnectionInProgress:%x lRestartConnectionInProgress:%x\n", byte_100B66200, byte_100B66201, byte_100B66224);
  if (dword_100B66203)
  {
    v0 = "Random";
  }

  else
  {
    v0 = "Public";
  }

  sub_100304AF8("gLocalConnectableAddress.Type:%s gLocalConnectableAddress.address:%:", v0, &dword_100B66203 + 1);
  sub_100304AF8("ConnectionInProgressStruct: directed: address:%: scanInterval:%x scanWin:%x connectionInt:%x ConnectionLatency:%x supervisionTO:%x CELen:%x initPHYs:%x advHandle:%x subevent:%x\n", qword_100B6620C, &qword_100B6620C + 4, WORD1(qword_100B66214), WORD2(qword_100B66214), HIWORD(qword_100B66214), word_100B6621C, word_100B6621E, word_100B66220, byte_100B66222, BYTE1(qword_100B6620C), BYTE2(qword_100B6620C));
  sub_100304AF8("Local EDL support: maxTxOctets %d, maxTxTime %d, maxRxOctets %d, maxRxTime %d\n\n", word_100B53E1A, word_100B53E1C, word_100B53E1E, word_100B53E20);
  sub_100304AF8("gEnableExtendedCreateConnectionCommand:%d", byte_100B6620A);
  return sub_100304AF8("gEnableExtendedCreateConnectionCommandV2:%d", byte_100B66202);
}

void sub_1002C4048(int a1, int a2)
{
  if (a1)
  {
    v3 = a1;
    sub_100304AF8("LE_SetCappedLength for 1M: %d -> %d", byte_100B53E18, a1);
    byte_100B53E18 = v3;
  }

  if (a2)
  {
    sub_100304AF8("LE_SetCappedLength for 2M: %d -> %d", byte_100B53E19, a2);
    byte_100B53E19 = a2;
  }
}

uint64_t sub_1002C40BC(char a1, uint64_t a2, uint64_t a3, int a4)
{
  result = 0;
  for (i = 1; ; i = 0)
  {
    v7 = i;
    v8 = &unk_100B66230 + 32 * result;
    if (!v8[2])
    {
      break;
    }

    v9 = *(v8 + 1);
    if (!v9)
    {
      break;
    }

    if (v9 == a2)
    {
      return result;
    }

    result = 1;
    if ((v7 & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v8[2] = 1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  v8[1] = a1;
  *(v8 + 6) = a4;
  return result;
}

uint64_t sub_1002C411C(uint64_t result)
{
  if (result == 1)
  {
    byte_100B66252 = 0;
  }

  return result;
}

uint64_t sub_1002C4130(uint64_t result, __int16 a2, char a3, char a4, char a5, char a6, char a7)
{
  v13 = result;
  v14 = 0;
  v20 = 0;
  v15 = 1;
  do
  {
    v16 = v15;
    v17 = &unk_100B66230 + 32 * v14;
    if (v17[2])
    {
      v18 = *(v17 + 1);
      if (v18)
      {
        if (*(v17 + 2))
        {
          v19 = *(v17 + 2);
        }

        else
        {
          v19 = &v20;
        }

        *(v19 + 3) = a3;
        *v19 = a2;
        *(v19 + 2) = v13;
        *(v19 + 4) = a4;
        *(v19 + 5) = a5;
        *(v19 + 6) = a6;
        *(v19 + 7) = a7;
        result = v18(v13);
        if (v17[1])
        {
          v17[2] = 0;
        }
      }
    }

    v15 = 0;
    v14 = 1;
  }

  while ((v16 & 1) != 0);
  return result;
}

void sub_1002C4208(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, __int16 a12, __int16 a13, unsigned __int8 a14, unsigned __int16 a15, unsigned __int16 a16, unsigned __int16 a17, unsigned __int16 a18, unsigned __int16 a19, unsigned __int8 a20, char a21)
{
  v29 = sub_1000ABB80(a1);
  if (a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("CS read remote supported capabilities error: %!", v30, v31, v32, v33, v34, v35, v36, a2);
      v37 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
LABEL_10:
        sub_10080F604();
      }
    }
  }

  else
  {
    v38 = v29;
    if (v29 && sub_1000ABD24(v29))
    {
      *(v38 + 326) = a3;
      *(v38 + 164) = a4;
      *(v38 + 330) = a5;
      *(v38 + 331) = a6;
      *(v38 + 332) = a7;
      *(v38 + 333) = a8;
      *(v38 + 334) = a9;
      *(v38 + 335) = a10;
      *(v38 + 336) = a11;
      *(v38 + 169) = a12;
      *(v38 + 170) = a13;
      *(v38 + 342) = a14;
      *(v38 + 172) = a15;
      *(v38 + 173) = a16;
      *(v38 + 174) = a17;
      *(v38 + 175) = a18;
      *(v38 + 176) = a19;
      *(v38 + 354) = a20;
      *(v38 + 355) = a21;
      sub_100304AF8("Channel Sounding numConfigSupported: %d maxProceduresSupported: %d numAntennasSupported: %d rolesSupported: %d modes_Supported: %d rttCapability: %d rttCoarseN: %d rttSoundingN: %d rttRandomPayloadN: %d csSyncPHYsSupported: %d subfeaturesSupported: %d tIP1TimesSupported: %d tIP2TimesSupported: %d tFcsTimesSupported: %d tPMTimesSupported: %d tSWTimesSupported: %d ", a3, a4, a5, a6, a7, a8, a9, a10, a11, a14, a15, a16, a17, a18, a19, a20);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Invaid LM handle %x from CS read remote supported capabilities", v39, v40, v41, v42, v43, v44, v45, a1);
      v46 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_1002C43C0(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (sub_10000C240())
  {
    sub_10000AF54("_connectionCancelDefer lConnectionInProgress %d, lRestartConnectionInProgress %d, lCancelConnectionInProgress %d lCancelConnectionDeferInProgress %d - %!", v2, v3, v4, v5, v6, v7, v8, byte_100B66200);
    v9 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return sub_1002BFB50(v1);
}

void sub_1002C44B8(uint64_t *a1, unsigned __int8 a2)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v2 = 0;
    goto LABEL_14;
  }

  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v2 = v4 - v5;
  v104 = 0;
  v103 = 0;
  if (v2 != 18)
  {
LABEL_14:
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid connection complete event packet size : %d, expecting %d", v22, v23, v24, v25, v26, v27, v28, v2);
      v29 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 158, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v4 <= v5)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the status of the LE connection complete event", v30, v31, v32, v33, v34, v35, v36, v101);
    v37 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_29:
    sub_1000E09C0();
    return;
  }

  v6 = *a1;
  *(a1 + 6) = v5 + 1;
  if ((v4 - (v5 + 1)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the connection handle of the LE connection complete event", v38, v39, v40, v41, v42, v43, v44, v101);
    v45 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_29;
  }

  v7 = *(v6 + v5);
  v8 = *(v6 + v5 + 1);
  *(a1 + 6) = v5 + 3;
  if (v4 <= (v5 + 3))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the connection role of the LE connection complete event", v46, v47, v48, v49, v50, v51, v52, v101);
    v53 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_29;
  }

  v9 = v5 + 4;
  *(a1 + 6) = v5 + 4;
  if (v4 <= (v5 + 4))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the peer address type of the LE connection complete event", v54, v55, v56, v57, v58, v59, v60, v101);
    v61 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_29;
  }

  v10 = *(v6 + (v5 + 3));
  v11 = v5 + 5;
  *(a1 + 6) = v11;
  v102 = *(v6 + v9);
  if ((v4 - v11) <= 5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 166, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
  }

  sub_1000075EC(&v103, v6 + v11, 6uLL);
  v13 = *(a1 + 6);
  *(a1 + 6) = v13 + 6;
  if (*(a1 + 15))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the peer address of the LE connection complete event", v14, v15, v16, v17, v18, v19, v20, v101);
    v21 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_47;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 168, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  v62 = *(a1 + 5);
  if ((v62 - (v13 + 6)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the connection interval of the LE connection complete event", v69, v70, v71, v72, v73, v74, v75, v101);
    v76 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_47:
    sub_1000E09C0();
    return;
  }

  v63 = *a1;
  v64 = *(*a1 + (v13 + 6));
  *(a1 + 6) = v13 + 8;
  if ((v62 - (v13 + 8)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the connection latency  of the LE connection complete event", v77, v78, v79, v80, v81, v82, v83, v101);
    v84 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_47;
  }

  v65 = *(v63 + (v13 + 8));
  *(a1 + 6) = v13 + 10;
  if ((v62 - (v13 + 10)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the supervision timeout of the LE connection complete event", v85, v86, v87, v88, v89, v90, v91, v101);
    v92 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_47;
  }

  v66 = (v63 + (v13 + 10));
  v67 = *v66;
  v68 = v66[1];
  *(a1 + 6) = v13 + 12;
  if (v62 > (v13 + 12))
  {
    *(a1 + 6) = v13 + 13;
    sub_1002C1EE8(v7, v8, v10, &v102, 0, v64, v65, v67 | (v68 << 8), *(v63 + (v13 + 12)), 0xFFFF, a2);
    return;
  }

  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the central clock accuracy of the LE connection complete event", v93, v94, v95, v96, v97, v98, v99, v101);
    v100 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }
  }
}

void sub_1002C49B0(uint64_t *a1, char a2)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v2 = 0;
LABEL_4:
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Not enough data in the packet : %d, expecting at least %d", v6, v7, v8, v9, v10, v11, v12, v2);
    v13 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_6;
  }

  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v2 = v4 - v5;
  *ptr = 0u;
  memset(v106, 0, sizeof(v106));
  v104 = 0u;
  if (v2 <= 9)
  {
    goto LABEL_4;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 195, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v4 <= v5)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the number of reports of the LE advertising report event", v39, v40, v41, v42, v43, v44, v45, v103);
    v46 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_6:
    sub_1000E09C0();
    return;
  }

  v14 = *a1;
  *(a1 + 6) = v5 + 1;
  v15 = *(v14 + v5);
  BYTE1(ptr[1]) = a2;
  if (!v15)
  {
    return;
  }

  v16 = 0;
  while (1)
  {
    if (*(a1 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 202, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
LABEL_45:
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the event type of the LE advertising report event", v47, v48, v49, v50, v51, v52, v53, v103);
      v54 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_67;
    }

    v17 = *(a1 + 5);
    v18 = *(a1 + 6);
    if (v17 <= v18)
    {
      goto LABEL_45;
    }

    v19 = *a1;
    v20 = v18 + 1;
    *(a1 + 6) = v18 + 1;
    LOBYTE(v104) = *(v19 + v18);
    if (v17 <= v18 + 1)
    {
      break;
    }

    v21 = v18 + 2;
    *(a1 + 6) = v21;
    BYTE1(v104) = *(v19 + v20);
    if ((v17 - v21) <= 5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 206, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
    }

    sub_1000075EC(&v104 + 2, v19 + v21, 6uLL);
    v22 = *(a1 + 6);
    *(a1 + 6) = v22 + 6;
    if (*(a1 + 15))
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the address of the LE advertising report event", v63, v64, v65, v66, v67, v68, v69, v103);
      v70 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_67;
    }

    if (*(a1 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 208, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a1 + 5) <= (v22 + 6))
    {
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the dataLength of the LE advertising report event", v71, v72, v73, v74, v75, v76, v77, v103);
      v78 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_67;
    }

    v23 = *a1;
    *(a1 + 6) = v22 + 7;
    v24 = (v22 + 6);
    v25 = *(v23 + v24);
    WORD4(v104) = *(v23 + v24);
    if (v25 >= 0x20)
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Too many info bytes in the LE advertising report event.", v79, v80, v81, v82, v83, v84, v85, v103);
      v86 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_67;
    }

    v26 = sub_100007618(v25, 0x41E9648CuLL);
    ptr[0] = v26;
    v27 = WORD4(v104);
    v28 = *(a1 + 14);
    if (v26)
    {
      v29 = WORD4(v104) == 0;
    }

    else
    {
      v29 = 1;
    }

    if (!v29)
    {
      if (v28 != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 216, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v30 = v26;
      v31 = *a1;
      v32 = *(a1 + 6);
      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
        v33 = 0;
      }

      else
      {
        v33 = *(a1 + 5) - v32;
      }

      if (v33 < WORD4(v104))
      {
        *(a1 + 15) = 1;
LABEL_65:
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Could not get the dataLength of the LE advertising report event", v95, v96, v97, v98, v99, v100, v101, v103);
        v102 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          return;
        }

LABEL_67:
        sub_1000E09C0();
        return;
      }

      v34 = (v31 + v32);
      v35 = &v30[v27];
      do
      {
        v36 = *v34++;
        *v30++ = v36;
      }

      while (v30 < v35);
      *(a1 + 6) += WORD4(v104);
      if (*(a1 + 15))
      {
        goto LABEL_65;
      }

      v28 = *(a1 + 14);
    }

    if (v28 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 219, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a1 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
LABEL_61:
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the rssi of the LE advertising report event", v87, v88, v89, v90, v91, v92, v93, v103);
      v94 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_67;
    }

    v37 = *(a1 + 6);
    if (*(a1 + 5) <= v37)
    {
      goto LABEL_61;
    }

    v38 = *a1;
    *(a1 + 6) = v37 + 1;
    LOBYTE(ptr[1]) = *(v38 + v37);
    if (BYTE1(v104) >= 2u)
    {
      BYTE1(v104) -= 2;
    }

    BYTE12(v106[0]) = 0;
    *(v106 + 15) = 256;
    sub_100008150(&v104);
    sub_10000C1E8(ptr[0]);
    if (++v16 == v15)
    {
      return;
    }
  }

  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the address type of the LE advertising report event", v55, v56, v57, v58, v59, v60, v61, v103);
    v62 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }
  }
}

void sub_1002C4F8C(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = v2 - v3;
    if (v1 == 9)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 266, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (v2 <= v3)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the status of the LE connection update event", v20, v21, v22, v23, v24, v25, v26, v60);
          v27 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        v4 = *a1;
        *(a1 + 6) = v3 + 1;
        if ((v2 - (v3 + 1)) <= 1)
        {
          *(a1 + 15) = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get the connection handle of the LE connection update event", v28, v29, v30, v31, v32, v33, v34, v60);
            v35 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_15;
            }
          }
        }

        else
        {
          v5 = *(v4 + v3);
          v6 = *(v4 + v3 + 1);
          *(a1 + 6) = v3 + 3;
          if ((v2 - (v3 + 3)) <= 1)
          {
            *(a1 + 15) = 1;
            if (sub_10000C240())
            {
              sub_10000AF54("Could not get the connection interval of the LE connection update event", v36, v37, v38, v39, v40, v41, v42, v60);
              v43 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_15;
              }
            }
          }

          else
          {
            v7 = *(v4 + (v3 + 3));
            *(a1 + 6) = v3 + 5;
            if ((v2 - (v3 + 5)) <= 1)
            {
              *(a1 + 15) = 1;
              if (sub_10000C240())
              {
                sub_10000AF54("Could not get the connection latency  of the LE connection update event", v44, v45, v46, v47, v48, v49, v50, v60);
                v51 = sub_10000C050(0x42u);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_15;
                }
              }
            }

            else
            {
              v8 = (v4 + (v3 + 5));
              v9 = *v8;
              v10 = v8[1];
              *(a1 + 6) = v3 + 7;
              if ((v2 - (v3 + 7)) <= 1)
              {
                *(a1 + 15) = 1;
                if (sub_10000C240())
                {
                  sub_10000AF54("Could not get the supervision timeout of the LE connection update event", v52, v53, v54, v55, v56, v57, v58, v60);
                  v59 = sub_10000C050(0x42u);
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_15;
                  }
                }
              }

              else
              {
                v11 = *(v4 + (v3 + 7));
                *(a1 + 6) = v3 + 9;

                sub_1002C26C8(v5, v6, v7, v9 | (v10 << 8), v11);
              }
            }
          }
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the connection update packet : %d expecting at least %d", v12, v13, v14, v15, v16, v17, v18, v1);
    v19 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      sub_1000E09C0();
    }
  }
}

void sub_1002C5278(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
    goto LABEL_11;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v1 = v2 - v3;
  v43 = 0;
  if (v1 != 11)
  {
LABEL_11:
    if (sub_10000C240())
    {
      sub_10000AF54("Not enough data in the feature packet : %d expecting at least %d", v10, v11, v12, v13, v14, v15, v16, v1);
      v17 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 296, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v2 <= v3)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the status of the read remote used features event", v18, v19, v20, v21, v22, v23, v24, v42);
    v25 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_23:
    sub_1000E09C0();
    return;
  }

  v4 = *a1;
  *(a1 + 6) = v3 + 1;
  if ((v2 - (v3 + 1)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the connection handle of the read remote used features event", v26, v27, v28, v29, v30, v31, v32, v42);
    v33 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_23;
  }

  v5 = *(v4 + v3);
  v6 = *(v4 + v3 + 1);
  *(a1 + 6) = v3 + 3;
  if ((v2 - (v3 + 3)) >= 8)
  {
    v7 = 0;
    v8 = v4 + (v3 + 3);
    do
    {
      *(&v43 + v7) = *(v8 + v7);
      ++v7;
    }

    while (v7 != 8);
    *(a1 + 6) = v3 + 11;
    v9 = sub_100022244(v5);
    sub_1002C2AC8(v9, v6, &v43);
    return;
  }

  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the features of the read remote used features event", v34, v35, v36, v37, v38, v39, v40, v42);
    v41 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }
  }
}

void sub_1002C54CC(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = (v2 - v3);
    v33 = 0;
    if (v1 == 12)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 319, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v4 = *a1;
      v5 = *(*a1 + v3);
      *(a1 + 6) = v3 + 2;
      if (v2 - (v3 + 2) < 8)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the random number of the long term key request event", v16, v17, v18, v19, v20, v21, v22, v32);
          v23 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        for (i = 0; i != 8; ++i)
        {
          *(&v33 + i) = *(v4 + (v3 + 2) + i);
        }

        *(a1 + 6) = v3 + 10;
        if (v2 - (v3 + 10) <= 1)
        {
          *(a1 + 15) = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get the encryption diversifier of the long term key request event", v24, v25, v26, v27, v28, v29, v30, v32);
            v31 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }
        }

        else
        {
          v7 = *(v4 + (v3 + 10));
          *(a1 + 6) = v3 + 12;
          sub_1002DA700(v5, &v33, v7);
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the long term key request packet : %d expecting at least %d", v8, v9, v10, v11, v12, v13, v14, v1);
    v15 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      sub_1000E09C0();
    }
  }
}

void sub_1002C56CC(uint64_t a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 10);
    v3 = *(a1 + 12);
    v1 = (v2 - v3);
    if (v1 == 10)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 346, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v4 = *(*a1 + v3);
      *(a1 + 12) = v3 + 2;
      if (v2 - (v3 + 2) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 347, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      *(a1 + 12) = v3 + 4;
      if (v2 - (v3 + 4) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 348, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      *(a1 + 12) = v3 + 6;
      if (v2 - (v3 + 6) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 349, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      *(a1 + 12) = v3 + 8;
      if (v2 - (v3 + 8) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 350, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      *(a1 + 12) = v3 + 10;
      if (sub_1000ABB80(v4))
      {

        sub_1002D02FC();
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("LE_HCIEventHandler_RemoteConnectionParameterRequest: Invalid connectionHandle for lmHandle 0x%2x", v13, v14, v15, v16, v17, v18, v19, v4);
        v20 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the Remote Connection Parameter Request message: %d expecting at least %d", v5, v6, v7, v8, v9, v10, v11, v1);
    v12 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      sub_1000E09C0();
    }
  }
}

void sub_1002C5930(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
    goto LABEL_12;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v1 = (v2 - v3);
  if (v1 != 10)
  {
LABEL_12:
    if (sub_10000C240())
    {
      sub_10000AF54("Not enough data for data length changed: %d expecting at least %d", v12, v13, v14, v15, v16, v17, v18, v1);
      v19 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 375, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  v4 = *a1;
  v5 = *(*a1 + v3);
  *(a1 + 6) = v3 + 2;
  if (v2 - (v3 + 2) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 376, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v6 = *(v4 + (v3 + 2));
  *(a1 + 6) = v3 + 4;
  if (v2 - (v3 + 4) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 377, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v7 = *(v4 + (v3 + 4));
  *(a1 + 6) = v3 + 6;
  if (v2 - (v3 + 6) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 378, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v8 = (v4 + (v3 + 6));
  v9 = *v8;
  v10 = v8[1];
  *(a1 + 6) = v3 + 8;
  if (v2 - (v3 + 8) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 379, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v11 = *(v4 + (v3 + 8));
  *(a1 + 6) = v3 + 10;

  sub_1002C3008(v5, v6, v7, v9 | (v10 << 8), v11);
}

void sub_1002C5B10(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
    goto LABEL_12;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v1 = v2 - v3;
  if (v1 != 5)
  {
LABEL_12:
    if (sub_10000C240())
    {
      sub_10000AF54("Not enough data for phy update complete: %d expecting aØt least 6", v10, v11, v12, v13, v14, v15, v16, v1);
      v17 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (v2 <= v3)
  {
    v18 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_18;
  }

  if (*(a1 + 14) != 1)
  {
    v18 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_18:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 391, v18);
  }

  v4 = *a1;
  *(a1 + 6) = v3 + 1;
  if ((v2 - (v3 + 1)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 392, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v5 = *(v4 + v3);
  v6 = *(v4 + v3 + 1);
  *(a1 + 6) = v3 + 3;
  if (v2 <= (v3 + 3))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 393, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  *(a1 + 6) = v3 + 4;
  if (v2 <= (v3 + 4))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 394, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v7 = *(v4 + (v3 + 3));
  *(a1 + 6) = v3 + 5;
  v8 = *(v4 + (v3 + 4));
  v9 = sub_1000ABB80(v6);

  sub_1002C33F4(v5, v9, v7, v8);
}

void sub_1002C5CD8(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
    goto LABEL_11;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v1 = v2 - v3;
  if (v1 != 3)
  {
LABEL_11:
    if (sub_10000C240())
    {
      sub_10000AF54("Not enough data for phy update complete: %d expecting at least 3", v14, v15, v16, v17, v18, v19, v20, v1);
      v21 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 411, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  *(a1 + 6) = v3 + 2;
  if (v2 <= (v3 + 2))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 412, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
  }

  v4 = *a1;
  *(a1 + 6) = v3 + 3;
  v5 = *(v4 + (v3 + 2));
  if (v5 >= 2)
  {
    sub_1000D660C();
  }

  if (sub_10000C240())
  {
    sub_10000AF54("LE channel Selection algorithm %d", v6, v7, v8, v9, v10, v11, v12, v5);
    v13 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v23 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }
}

void sub_1002C5E88(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = v2 - v3;
    if (v1 > 4)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 572, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (v2 <= v3)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the status of the LE advertising set terminated event", v18, v19, v20, v21, v22, v23, v24, v50);
          v25 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        v12 = *a1;
        *(a1 + 6) = v3 + 1;
        if (v2 <= (v3 + 1))
        {
          *(a1 + 15) = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get the advertising handle of the LE advertising set terminated event", v26, v27, v28, v29, v30, v31, v32, v50);
            v33 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
          v13 = *(v12 + v3);
          v14 = v3 + 2;
          *(a1 + 6) = v3 + 2;
          if ((v2 - (v3 + 2)) <= 1)
          {
            *(a1 + 15) = 1;
            if (sub_10000C240())
            {
              sub_10000AF54("Could not get the connection handle of the LE advertising set terminated event", v34, v35, v36, v37, v38, v39, v40, v50);
              v41 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_6;
              }
            }
          }

          else
          {
            v15 = v12 + v14;
            v16 = *(v12 + v14);
            v17 = *(v15 + 1);
            *(a1 + 6) = v3 + 4;
            if (v2 <= (v3 + 4))
            {
              *(a1 + 15) = 1;
              if (sub_10000C240())
              {
                sub_10000AF54("Could not get the number of advertising events of the LE advertising set terminated event", v42, v43, v44, v45, v46, v47, v48, v50);
                v49 = sub_10000C050(0x42u);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_6;
                }
              }
            }

            else
            {
              *(a1 + 6) = v3 + 5;
              sub_1000ABB80(v16 | (v17 << 8));

              nullsub_21(v13);
            }
          }
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the packet : %d, expecting at least %d", v4, v5, v6, v7, v8, v9, v10, v1);
    v11 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      sub_1000E09C0();
    }
  }
}

void sub_1002C6120(int a1, uint64_t *a2, unsigned __int8 a3)
{
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 5) - *(a2 + 6);
  }

  *&v144[3] = 0;
  *v144 = 0;
  *(v143 + 3) = 0;
  v143[0] = 0;
  if (a1 != 1 || v6 == 30)
  {
    if (a1 == 2 && v6 != 33)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid enhanced connection complete V2 event packet size : %d, expecting %d", v15, v16, v17, v18, v19, v20, v21, v6);
        v22 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }

      return;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 745, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
LABEL_26:
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the status of the LE enhanced connection complete event", v40, v41, v42, v43, v44, v45, v46, v142);
        v47 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return;
    }

    v23 = *(a2 + 5);
    v24 = *(a2 + 6);
    if (v23 <= v24)
    {
      goto LABEL_26;
    }

    v25 = *a2;
    *(a2 + 6) = v24 + 1;
    if ((v23 - (v24 + 1)) <= 1)
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the connection handle of the LE enhanced connection complete event", v48, v49, v50, v51, v52, v53, v54, v142);
        v55 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }

      return;
    }

    v26 = *(v25 + v24);
    v27 = *(v25 + v24 + 1);
    *(a2 + 6) = v24 + 3;
    if (v23 <= (v24 + 3))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the connection role of the LE enhanced connection complete event", v56, v57, v58, v59, v60, v61, v62, v142);
        v63 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }

      return;
    }

    v28 = v24 + 4;
    *(a2 + 6) = v24 + 4;
    if (v23 <= (v24 + 4))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the peer address type of the LE enhanced connection complete event", v64, v65, v66, v67, v68, v69, v70, v142);
        v71 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }

      return;
    }

    v29 = *(v25 + (v24 + 3));
    v30 = v24 + 5;
    *(a2 + 6) = v30;
    v144[0] = *(v25 + v28);
    if ((v23 - v30) <= 5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 757, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
    }

    sub_1000075EC(&v144[1], v25 + v30, 6uLL);
    v31 = *(a2 + 6);
    *(a2 + 6) = v31 + 6;
    if (*(a2 + 15))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the peer address of the LE enhanced connection complete event", v32, v33, v34, v35, v36, v37, v38, v142);
        v39 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return;
    }

    v72 = *(a2 + 5);
    if (v72 - (v31 + 6) <= 5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 760, "ByteStream_NumReadBytesAvail(*pBs) >= (6)");
    }

    v73 = v31 + 12;
    *(a2 + 6) = v73;
    if (v72 - v73 <= 5)
    {
      v141 = "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE";
    }

    else
    {
      if (*(a2 + 14) == 1)
      {
        sub_1000075EC(v143 + 1, *a2 + v73, 6uLL);
        v74 = *(a2 + 6);
        *(a2 + 6) = v74 + 6;
        if (*(a2 + 15))
        {
          if (!sub_10000C240())
          {
            return;
          }

          sub_10000AF54("Could not get the peer address of the LE enhanced connection complete event", v75, v76, v77, v78, v79, v80, v81, v142);
          v82 = sub_10000C050(0x42u);
          if (!os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
            return;
          }

          goto LABEL_84;
        }

        LOBYTE(v143[0]) = 1;
        if (*(a2 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 766, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        v83 = *(a2 + 5);
        if ((v83 - (v74 + 6)) <= 1)
        {
          *(a2 + 15) = 1;
          if (!sub_10000C240())
          {
            return;
          }

          sub_10000AF54("Could not get the connection interval of the LE enhanced connection complete event", v90, v91, v92, v93, v94, v95, v96, v142);
          v97 = sub_10000C050(0x42u);
          if (!os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        else
        {
          v84 = *a2;
          v85 = *(*a2 + (v74 + 6));
          *(a2 + 6) = v74 + 8;
          if ((v83 - (v74 + 8)) <= 1)
          {
            *(a2 + 15) = 1;
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("Could not get the connection latency  of the LE enhanced connection complete event", v98, v99, v100, v101, v102, v103, v104, v142);
            v105 = sub_10000C050(0x42u);
            if (!os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
            {
              return;
            }
          }

          else
          {
            v86 = *(v84 + (v74 + 8));
            *(a2 + 6) = v74 + 10;
            if ((v83 - (v74 + 10)) <= 1)
            {
              *(a2 + 15) = 1;
              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("Could not get the supervision timeout of the LE enhanced connection complete event", v106, v107, v108, v109, v110, v111, v112, v142);
              v113 = sub_10000C050(0x42u);
              if (!os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
              {
                return;
              }
            }

            else
            {
              v87 = *(v84 + (v74 + 10));
              *(a2 + 6) = v74 + 12;
              if (v83 <= (v74 + 12))
              {
                *(a2 + 15) = 1;
                if (!sub_10000C240())
                {
                  return;
                }

                sub_10000AF54("Could not get the central clock accuracy of the LE enhanced connection complete event", v114, v115, v116, v117, v118, v119, v120, v142);
                v121 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
                {
                  return;
                }
              }

              else
              {
                *(a2 + 6) = v74 + 13;
                v88 = *(v84 + (v74 + 12));
                if (a1 != 2)
                {
                  v89 = -1;
                  goto LABEL_68;
                }

                if (v83 <= (v74 + 13))
                {
                  *(a2 + 15) = 1;
                  if (!sub_10000C240())
                  {
                    return;
                  }

                  sub_10000AF54("Could not get the advertising handle of the LE enhanced connection complete V2 event", v123, v124, v125, v126, v127, v128, v129, v142);
                  v130 = sub_10000C050(0x42u);
                  if (!os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
                  {
                    return;
                  }
                }

                else
                {
                  *(a2 + 6) = v74 + 14;
                  if ((v83 - (v74 + 14)) >= 2)
                  {
                    v89 = *(v84 + (v74 + 14));
                    *(a2 + 6) = v74 + 16;
LABEL_68:
                    v122 = v144[0] & 0xFE;
                    if (v144[0] == 3)
                    {
                      v144[0] = 1;
                    }

                    else if (v144[0] == 2)
                    {
                      v144[0] = 0;
                    }

                    if (v122 == 2)
                    {
                      v131 = v143;
                    }

                    else
                    {
                      v131 = v144;
                    }

                    if (v122 == 2)
                    {
                      v132 = v144;
                    }

                    else
                    {
                      v132 = 0;
                    }

                    sub_1002C1EE8(v26, v27, v29, v131, v132, v85, v86, v87, v88, v89, a3);
                    return;
                  }

                  *(a2 + 15) = 1;
                  if (!sub_10000C240())
                  {
                    return;
                  }

                  sub_10000AF54("Could not get the sync handle of the LE enhanced connection complete V2 event", v133, v134, v135, v136, v137, v138, v139, v142);
                  v140 = sub_10000C050(0x42u);
                  if (!os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
                  {
                    return;
                  }
                }
              }
            }
          }
        }

LABEL_84:
        sub_1000E09C0();
        return;
      }

      v141 = "(*pBs).__RWFlag == BYTESTREAM_READ";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 762, v141);
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid enhanced connection complete event packet size : %d, expecting %d", v7, v8, v9, v10, v11, v12, v13, v6);
    v14 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_38:
      sub_1000E09C0();
    }
  }
}

void sub_1002C6898(int a1, uint64_t *a2)
{
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 5) - *(a2 + 6);
  }

  memset(v128, 0, 20);
  if (a1 != 1 || v4 == 15)
  {
    if (a1 == 2 && v4 != 19)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid periodic advertising sync established V2 event packet size : %d, expecting %d", v13, v14, v15, v16, v17, v18, v19, v4);
        v20 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }

      return;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 828, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
LABEL_26:
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the status of the LE periodic advertising sync established event", v36, v37, v38, v39, v40, v41, v42, v127);
        v43 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return;
    }

    v21 = *(a2 + 5);
    v22 = *(a2 + 6);
    if (v21 <= v22)
    {
      goto LABEL_26;
    }

    v23 = *a2;
    *(a2 + 6) = v22 + 1;
    if ((v21 - (v22 + 1)) <= 1)
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the sync handle of the LE periodic advertising sync established event", v44, v45, v46, v47, v48, v49, v50, v127);
        v51 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }

      return;
    }

    v24 = *(v23 + v22);
    LOWORD(v128[0]) = *(v23 + v22 + 1);
    *(a2 + 6) = v22 + 3;
    if (v21 <= (v22 + 3))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the SID of the LE periodic advertising sync established event", v52, v53, v54, v55, v56, v57, v58, v127);
        v59 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }

      return;
    }

    v25 = v22 + 4;
    *(a2 + 6) = v22 + 4;
    BYTE2(v128[0]) = *(v23 + (v22 + 3));
    if (v21 <= (v22 + 4))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the advertiser address type of the LE periodic advertising sync established event", v60, v61, v62, v63, v64, v65, v66, v127);
        v67 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }
      }

      return;
    }

    v26 = v22 + 5;
    *(a2 + 6) = v26;
    BYTE3(v128[0]) = *(v23 + v25);
    if ((v21 - v26) <= 5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 836, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
    }

    sub_1000075EC(v128 + 4, v23 + v26, 6uLL);
    v27 = *(a2 + 6);
    *(a2 + 6) = v27 + 6;
    if (*(a2 + 15))
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the advertiser address of the LE periodic advertising sync established event", v28, v29, v30, v31, v32, v33, v34, v127);
      v35 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_70;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 838, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v68 = *(a2 + 5);
    if (v68 <= (v27 + 6))
    {
      *(a2 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the PHY of the LE periodic advertising sync established event", v71, v72, v73, v74, v75, v76, v77, v127);
      v78 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      v69 = *a2;
      *(a2 + 6) = v27 + 7;
      BYTE2(v128[1]) = *(v69 + (v27 + 6));
      if ((v68 - (v27 + 7)) <= 1)
      {
        *(a2 + 15) = 1;
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Could not get the periodic advertsing interval of the LE periodic advertising sync established event", v79, v80, v81, v82, v83, v84, v85, v127);
        v86 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        WORD2(v128[1]) = *(v69 + (v27 + 7));
        *(a2 + 6) = v27 + 9;
        if (v68 <= (v27 + 9))
        {
          *(a2 + 15) = 1;
          if (!sub_10000C240())
          {
            return;
          }

          sub_10000AF54("Could not get the central clock accuracy of the LE periodic advertising sync established event", v87, v88, v89, v90, v91, v92, v93, v127);
          v94 = sub_10000C050(0x42u);
          if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        else
        {
          *(a2 + 6) = v27 + 10;
          BYTE6(v128[1]) = *(v69 + (v27 + 9));
          *(&v128[1] + 7) = 0;
          if (a1 != 2)
          {
LABEL_49:
            v70 = sub_100022244(v24);
            sub_1001B8B70(v128, v70);
            return;
          }

          if (v68 <= (v27 + 10))
          {
            *(a2 + 15) = 1;
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("Could not get Number_Subevents of LE periodic advertising sync transfer received event", v95, v96, v97, v98, v99, v100, v101, v127);
            v102 = sub_10000C050(0x42u);
            if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
            {
              return;
            }
          }

          else
          {
            *(a2 + 6) = v27 + 11;
            HIBYTE(v128[1]) = *(v69 + (v27 + 10));
            if (v68 <= (v27 + 11))
            {
              *(a2 + 15) = 1;
              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("Could not get Subevent_Interval of LE periodic advertising sync transfer received event", v103, v104, v105, v106, v107, v108, v109, v127);
              v110 = sub_10000C050(0x42u);
              if (!os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
              {
                return;
              }
            }

            else
            {
              *(a2 + 6) = v27 + 12;
              LOBYTE(v128[2]) = *(v69 + (v27 + 11));
              if (v68 <= (v27 + 12))
              {
                *(a2 + 15) = 1;
                if (!sub_10000C240())
                {
                  return;
                }

                sub_10000AF54("Could not get Response_Slot_Delay of LE periodic advertising sync transfer received event", v111, v112, v113, v114, v115, v116, v117, v127);
                v118 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
                {
                  return;
                }
              }

              else
              {
                *(a2 + 6) = v27 + 13;
                BYTE1(v128[2]) = *(v69 + (v27 + 12));
                if (v68 > (v27 + 13))
                {
                  *(a2 + 6) = v27 + 14;
                  BYTE2(v128[2]) = *(v69 + (v27 + 13));
                  goto LABEL_49;
                }

                *(a2 + 15) = 1;
                if (!sub_10000C240())
                {
                  return;
                }

                sub_10000AF54("Could not get Response_Slot_Spacing of LE periodic advertising sync transfer received event", v119, v120, v121, v122, v123, v124, v125, v127);
                v126 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
                {
                  return;
                }
              }
            }
          }
        }
      }
    }

LABEL_70:
    sub_1000E09C0();
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid periodic advertising sync established event packet size : %d, expecting %d", v5, v6, v7, v8, v9, v10, v11, v4);
    v12 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_38:
      sub_1000E09C0();
    }
  }
}

void sub_1002C6F30(int a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 10) - *(a2 + 12);
  }

  if (a1 != 1 || v5 > 6)
  {
    if (a1 == 2 && v5 <= 9)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid periodic advertising report V2 event packet size : %d, expecting at least %d", v14, v15, v16, v17, v18, v19, v20, v5);
        v21 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      return;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 884, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
LABEL_25:
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the sync handle of the LE periodic advertising report event", v37, v38, v39, v40, v41, v42, v43, v132);
        v44 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return;
    }

    v22 = *(a2 + 10);
    v23 = *(a2 + 12);
    if ((v22 - v23) <= 1)
    {
      goto LABEL_25;
    }

    v24 = *a2;
    v25 = *(*a2 + v23);
    *(a2 + 12) = v23 + 2;
    if (v22 <= (v23 + 2))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the TX power of the LE periodic advertising report event", v45, v46, v47, v48, v49, v50, v51, v132);
        v52 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      return;
    }

    *(a2 + 12) = v23 + 3;
    if (v22 <= (v23 + 3))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the RSSI of the LE periodic advertising report event", v53, v54, v55, v56, v57, v58, v59, v132);
        v60 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      return;
    }

    v26 = *(v24 + (v23 + 2));
    *(a2 + 12) = v23 + 4;
    if (v22 <= (v23 + 4))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the CTE Type of the LE periodic advertising report event", v61, v62, v63, v64, v65, v66, v67, v132);
        v68 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      return;
    }

    v27 = *(v24 + (v23 + 3));
    v28 = v23 + 5;
    *(a2 + 12) = v23 + 5;
    v29 = *(v24 + (v23 + 4));
    if (a1 == 2)
    {
      if ((v22 - v28) <= 1)
      {
        *(a2 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the periodic event counter of the LE periodic advertising report event", v88, v89, v90, v91, v92, v93, v94, v132);
          v95 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }
        }

        return;
      }

      v30 = (v24 + v28);
      v31 = *v30;
      v32 = v30[1];
      v33 = v23 + 7;
      *(a2 + 12) = v23 + 7;
      if (v22 <= (v23 + 7))
      {
        *(a2 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the subevent of the LE periodic advertising report event", v104, v105, v106, v107, v108, v109, v110, v132);
          v111 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_56;
          }
        }

        return;
      }

      v34 = v31 | (v32 << 8);
      v35 = v23 + 8;
      *(a2 + 12) = v35;
      v36 = *(v24 + v33);
    }

    else
    {
      v36 = 0;
      v34 = 0;
      v35 = v23 + 5;
    }

    if (v22 <= v35)
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the data status of the LE periodic advertising report event", v80, v81, v82, v83, v84, v85, v86, v132);
        v87 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      return;
    }

    v69 = v35 + 1;
    *(a2 + 12) = v35 + 1;
    if (v22 <= (v35 + 1))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the data length of the LE periodic advertising report event", v96, v97, v98, v99, v100, v101, v102, v132);
        v103 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      return;
    }

    v70 = *(v24 + v35);
    *(a2 + 12) = v35 + 2;
    v71 = *(v24 + v69);
    if (v71 >= 0xF8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Too many data bytes in the LE extended advertising report event.", v72, v73, v74, v75, v76, v77, v78, v132);
        v79 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      return;
    }

    if (*(v24 + v69))
    {
      v112 = sub_100007618(*(v24 + v69), 0xA0A50E8BuLL);
      if (v112)
      {
        if (*(a2 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 911, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        v113 = v112;
        v133 = *(a2 + 12);
        v134 = *a2;
        if (*(a2 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
          v114 = 0;
        }

        else
        {
          v114 = *(a2 + 10) - *(a2 + 12);
        }

        if (v114 < v71)
        {
          *(a2 + 15) = 1;
          goto LABEL_74;
        }

        v121 = (v134 + v133);
        v122 = v113;
        do
        {
          v123 = *v121++;
          *v122++ = v123;
        }

        while (v122 < &v113[v71]);
        *(a2 + 12) += v71;
        if (*(a2 + 15))
        {
LABEL_74:
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get the data of the LE periodic advertising report event", v124, v125, v126, v127, v128, v129, v130, v132);
            v131 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          goto LABEL_77;
        }

LABEL_66:
        v135 = v25;
        v136 = v26;
        v137 = v27;
        v138 = v29;
        v139 = 0;
        v140 = v34;
        v141 = v36;
        v142 = v70;
        v143 = v71;
        v144 = 0;
        v145 = 0;
        v146 = v113;
        sub_1001B91A8(&v135, a2, a3);
        if (!v113)
        {
          return;
        }

LABEL_77:
        sub_10000C1E8(v113);
        return;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Could not allocate memory for the LE periodic advertising report event", a2, a3, v115, v116, v117, v118, v119, v132);
        v120 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    v113 = 0;
    goto LABEL_66;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid periodic advertising report event packet size : %d, expecting at least %d", v6, v7, v8, v9, v10, v11, v12, v5);
    v13 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_56:
      sub_1000E09C0();
    }
  }
}

void sub_1002C75B0(uint64_t a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
    goto LABEL_8;
  }

  v2 = *(a1 + 12);
  v1 = *(a1 + 10) - v2;
  if (v1 != 2)
  {
LABEL_8:
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid periodic advertising sync established event packet size : %d, expecting %d", v5, v6, v7, v8, v9, v10, v11, v1);
      v12 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 941, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  v3 = v2 + 2;
  v4 = *(*a1 + v2);
  *(a1 + 12) = v3;

  sub_1001B913C(v4);
}

void sub_1002C76B0(int a1, uint64_t *a2)
{
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 5) - *(a2 + 6);
  }

  *(v158 + 3) = 0;
  v158[0] = 0;
  if (a1 != 1 || v4 == 19)
  {
    if (a1 == 1 && v4 != 23)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid periodic advertising sync transfer received event packet size : %d, expecting ", v13, v14, v15, v16, v17, v18, v19, v4);
        v20 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }
      }

      return;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 974, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
LABEL_28:
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get status of LE periodic advertising sync transfer received event", v40, v41, v42, v43, v44, v45, v46, v154);
        v47 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return;
    }

    v21 = *(a2 + 5);
    v22 = *(a2 + 6);
    if (v21 <= v22)
    {
      goto LABEL_28;
    }

    v23 = *a2;
    *(a2 + 6) = v22 + 1;
    if ((v21 - (v22 + 1)) <= 1)
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get connection_handle of LE periodic advertising sync transfer received event", v48, v49, v50, v51, v52, v53, v54, v154);
        v55 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }
      }

      return;
    }

    v24 = *(v23 + v22);
    v25 = *(v23 + v22 + 1);
    *(a2 + 6) = v22 + 3;
    if ((v21 - (v22 + 3)) <= 1)
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get service_data of LE periodic advertising sync transfer received event", v56, v57, v58, v59, v60, v61, v62, v154);
        v63 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }
      }

      return;
    }

    v26 = *(v23 + (v22 + 3));
    *(a2 + 6) = v22 + 5;
    if ((v21 - (v22 + 5)) <= 1)
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get sync_handle of LE periodic advertising sync transfer received event", v64, v65, v66, v67, v68, v69, v70, v154);
        v71 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }
      }

      return;
    }

    v27 = *(v23 + (v22 + 5));
    *(a2 + 6) = v22 + 7;
    if (v21 <= (v22 + 7))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get advertising_SID of LE periodic advertising sync transfer received event", v72, v73, v74, v75, v76, v77, v78, v154);
        v79 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }
      }

      return;
    }

    v28 = v22 + 8;
    *(a2 + 6) = v22 + 8;
    if (v21 <= (v22 + 8))
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get advertiser address_type of LE periodic advertising sync transfer received event", v80, v81, v82, v83, v84, v85, v86, v154);
        v87 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }
      }

      return;
    }

    v29 = *(v23 + (v22 + 7));
    v30 = v22 + 9;
    *(a2 + 6) = v30;
    LOBYTE(v158[0]) = *(v23 + v28);
    if ((v21 - v30) <= 5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 986, "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE");
    }

    sub_1000075EC(v158 + 1, v23 + v30, 6uLL);
    v31 = *(a2 + 6);
    *(a2 + 6) = v31 + 6;
    if (*(a2 + 15))
    {
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get advertiser address of LE periodic advertising sync transfer received event", v32, v33, v34, v35, v36, v37, v38, v154);
      v39 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_79;
    }

    if (*(a2 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 988, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v88 = *(a2 + 5);
    if (v88 <= (v31 + 6))
    {
      *(a2 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get advertiser_PHY of LE periodic advertising sync transfer received event", v96, v97, v98, v99, v100, v101, v102, v154);
      v103 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      v89 = *a2;
      *(a2 + 6) = v31 + 7;
      if ((v88 - (v31 + 7)) <= 1)
      {
        *(a2 + 15) = 1;
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Could not get Periodic_Advertising_Interval of LE periodic advertising sync transfer received event", v104, v105, v106, v107, v108, v109, v110, v154);
        v111 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        v90 = *(v89 + (v31 + 6));
        v91 = *(v89 + (v31 + 7));
        *(a2 + 6) = v31 + 9;
        if (v88 <= (v31 + 9))
        {
          *(a2 + 15) = 1;
          if (!sub_10000C240())
          {
            return;
          }

          sub_10000AF54("Could not get Advertiser_Clock_Accuracy of LE periodic advertising sync transfer received event", v112, v113, v114, v115, v116, v117, v118, v154);
          v119 = sub_10000C050(0x42u);
          if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        else
        {
          v156 = v91;
          v157 = v90;
          *(a2 + 6) = v31 + 10;
          v92 = *(v89 + (v31 + 9));
          if (a1 != 2)
          {
            v95 = 0;
            v94 = 0;
            v93 = 0;
            v155 = 0;
            goto LABEL_67;
          }

          if (v88 <= (v31 + 10))
          {
            *(a2 + 15) = 1;
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("Could not get Number_Subevents of LE periodic advertising sync transfer received event", v122, v123, v124, v125, v126, v127, v128, v154);
            v129 = sub_10000C050(0x42u);
            if (!os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
            {
              return;
            }
          }

          else
          {
            *(a2 + 6) = v31 + 11;
            if (v88 <= (v31 + 11))
            {
              *(a2 + 15) = 1;
              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("Could not get Subevent_Interval of LE periodic advertising sync transfer received event", v130, v131, v132, v133, v134, v135, v136, v154);
              v137 = sub_10000C050(0x42u);
              if (!os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
              {
                return;
              }
            }

            else
            {
              v155 = *(v89 + (v31 + 10));
              *(a2 + 6) = v31 + 12;
              if (v88 <= (v31 + 12))
              {
                *(a2 + 15) = 1;
                if (!sub_10000C240())
                {
                  return;
                }

                sub_10000AF54("Could not get Response_Slot_Delay of LE periodic advertising sync transfer received event", v138, v139, v140, v141, v142, v143, v144, v154);
                v145 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
                {
                  return;
                }
              }

              else
              {
                v93 = *(v89 + (v31 + 11));
                *(a2 + 6) = v31 + 13;
                if (v88 > (v31 + 13))
                {
                  v94 = *(v89 + (v31 + 12));
                  *(a2 + 6) = v31 + 14;
                  v95 = *(v89 + (v31 + 13));
LABEL_67:
                  v120 = sub_1000ABB80(v25);
                  v121 = sub_100022244(v24);
                  sub_1001B9218(v121, v120, v26, v27, v29, v158, v157, v156, v92, v155, v93, v94, v95);
                  return;
                }

                *(a2 + 15) = 1;
                if (!sub_10000C240())
                {
                  return;
                }

                sub_10000AF54("Could not get Response_Slot_Spacing of LE periodic advertising sync transfer received event", v146, v147, v148, v149, v150, v151, v152, v154);
                v153 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
                {
                  return;
                }
              }
            }
          }
        }
      }
    }

LABEL_79:
    sub_1000E09C0();
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid periodic advertising sync transfer received event packet size : %d, expecting ", v5, v6, v7, v8, v9, v10, v11, v4);
    v12 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_46:
      sub_1000E09C0();
    }
  }
}

void sub_1002C7E54(uint64_t *a1)
{
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1027, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    if (v2 > v3)
    {
      v4 = *a1;
      *(a1 + 6) = v3 + 1;
      if ((v2 - (v3 + 1)) <= 1)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get connection_handle of tx power report  event", v20, v21, v22, v23, v24, v25, v26, v68);
          v27 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        v5 = *(v4 + v3);
        v6 = *(v4 + v3 + 1);
        *(a1 + 6) = v3 + 3;
        if (v2 <= (v3 + 3))
        {
          *(a1 + 15) = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get reason of tx power report  event", v28, v29, v30, v31, v32, v33, v34, v68);
            v35 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
          *(a1 + 6) = v3 + 4;
          if (v2 <= (v3 + 4))
          {
            *(a1 + 15) = 1;
            if (sub_10000C240())
            {
              sub_10000AF54("Could not get phy of tx power report  event", v36, v37, v38, v39, v40, v41, v42, v68);
              v43 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_17;
              }
            }
          }

          else
          {
            v7 = *(v4 + (v3 + 3));
            *(a1 + 6) = v3 + 5;
            if (v2 <= (v3 + 5))
            {
              *(a1 + 15) = 1;
              if (sub_10000C240())
              {
                sub_10000AF54("Could not get TX_Power_Level of tx power report  event", v44, v45, v46, v47, v48, v49, v50, v68);
                v51 = sub_10000C050(0x42u);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_17;
                }
              }
            }

            else
            {
              v8 = *(v4 + (v3 + 4));
              *(a1 + 6) = v3 + 6;
              if (v2 <= (v3 + 6))
              {
                *(a1 + 15) = 1;
                if (sub_10000C240())
                {
                  sub_10000AF54("Could not get TX_Power_Level_Flag of tx power report  event", v52, v53, v54, v55, v56, v57, v58, v68);
                  v59 = sub_10000C050(0x42u);
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_17;
                  }
                }
              }

              else
              {
                v9 = *(v4 + (v3 + 5));
                *(a1 + 6) = v3 + 7;
                if (v2 <= (v3 + 7))
                {
                  *(a1 + 15) = 1;
                  if (sub_10000C240())
                  {
                    sub_10000AF54("Could not get delta of tx power report  event", v60, v61, v62, v63, v64, v65, v66, v68);
                    v67 = sub_10000C050(0x42u);
                    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_17;
                    }
                  }
                }

                else
                {
                  v10 = *(v4 + (v3 + 6));
                  *(a1 + 6) = v3 + 8;
                  v11 = *(v4 + (v3 + 7));
                  if (sub_1000ABB80(v6))
                  {

                    sub_1002C4130(v5, v6, v7, v8, v9, v10, v11);
                  }
                }
              }
            }
          }
        }
      }

      return;
    }
  }

  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get status tx power report  event", v12, v13, v14, v15, v16, v17, v18, v68);
    v19 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      sub_1000E09C0();
    }
  }
}

void sub_1002C81CC(uint64_t *a1)
{
  v145 = 0;
  v143 = 0u;
  v144 = 0u;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
    goto LABEL_22;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v1 = v2 - v3;
  if (v1 != 28)
  {
LABEL_22:
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid CIS established event packet size : %d, expecting at least %d", v6, v7, v8, v9, v10, v11, v12, v1);
      v13 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1083, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (v2 <= v3)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get status of LE LE CIS established event", v14, v15, v16, v17, v18, v19, v20, v142);
    v21 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_73:
    sub_1000E09C0();
    return;
  }

  v4 = *a1;
  *(a1 + 6) = v3 + 1;
  if ((v2 - (v3 + 1)) < 2)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the CIS handle of the LE CIS established event", v22, v23, v24, v25, v26, v27, v28, v142);
    v29 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  v5 = *(v4 + v3);
  LOWORD(v143) = *(v4 + v3 + 1);
  *(a1 + 6) = v3 + 3;
  if ((v2 - (v3 + 3)) <= 2)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the CIG sync delay of the LE CIS established event", v30, v31, v32, v33, v34, v35, v36, v142);
    v37 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  DWORD1(v143) = *(v4 + (v3 + 3)) | (*(v4 + (v3 + 3) + 2) << 16);
  *(a1 + 6) = v3 + 6;
  if ((v2 - (v3 + 6)) <= 2)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the CIS sync delay of the LE CIS established event", v38, v39, v40, v41, v42, v43, v44, v142);
    v45 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  DWORD2(v143) = *(v4 + (v3 + 6)) | (*(v4 + (v3 + 6) + 2) << 16);
  *(a1 + 6) = v3 + 9;
  if ((v2 - (v3 + 9)) <= 2)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the transport latency central to peripheral of the LE CIS established event", v46, v47, v48, v49, v50, v51, v52, v142);
    v53 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  HIDWORD(v143) = *(v4 + (v3 + 9)) | (*(v4 + (v3 + 9) + 2) << 16);
  *(a1 + 6) = v3 + 12;
  if ((v2 - (v3 + 12)) <= 2)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the transport latency peripheral to central of the LE CIS established event", v54, v55, v56, v57, v58, v59, v60, v142);
    v61 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  LODWORD(v144) = *(v4 + (v3 + 12)) | (*(v4 + (v3 + 12) + 2) << 16);
  *(a1 + 6) = v3 + 15;
  if (v2 <= (v3 + 15))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the PHY central to peripheral of the LE CIS established event", v62, v63, v64, v65, v66, v67, v68, v142);
    v69 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  *(a1 + 6) = v3 + 16;
  BYTE4(v144) = *(v4 + (v3 + 15));
  if (v2 <= (v3 + 16))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the PHY peripheral to central of the LE CIS established event", v70, v71, v72, v73, v74, v75, v76, v142);
    v77 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  *(a1 + 6) = v3 + 17;
  BYTE5(v144) = *(v4 + (v3 + 16));
  if (v2 <= (v3 + 17))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the number of subevent of the LE CIS established event", v78, v79, v80, v81, v82, v83, v84, v142);
    v85 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  *(a1 + 6) = v3 + 18;
  BYTE6(v144) = *(v4 + (v3 + 17));
  if (v2 <= (v3 + 18))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the burst number central to peripheral of the LE CIS established event", v86, v87, v88, v89, v90, v91, v92, v142);
    v93 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  *(a1 + 6) = v3 + 19;
  BYTE7(v144) = *(v4 + (v3 + 18));
  if (v2 <= (v3 + 19))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the burst number peripheral to central of the LE CIS established event", v94, v95, v96, v97, v98, v99, v100, v142);
    v101 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  *(a1 + 6) = v3 + 20;
  BYTE8(v144) = *(v4 + (v3 + 19));
  if (v2 <= (v3 + 20))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the flush timeout central to peripheral of the LE CIS established event", v102, v103, v104, v105, v106, v107, v108, v142);
    v109 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  *(a1 + 6) = v3 + 21;
  BYTE9(v144) = *(v4 + (v3 + 20));
  if (v2 <= (v3 + 21))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the flush timeout peripheral to central of the LE CIS established event", v110, v111, v112, v113, v114, v115, v116, v142);
    v117 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  *(a1 + 6) = v3 + 22;
  BYTE10(v144) = *(v4 + (v3 + 21));
  if ((v2 - (v3 + 22)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the maximum PDU central to peripheral of the LE CIS established event", v118, v119, v120, v121, v122, v123, v124, v142);
    v125 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  WORD6(v144) = *(v4 + (v3 + 22));
  *(a1 + 6) = v3 + 24;
  if ((v2 - (v3 + 24)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the maximum PDU peripheral to central of the LE CIS established event", v126, v127, v128, v129, v130, v131, v132, v142);
    v133 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_73;
  }

  HIWORD(v144) = *(v4 + (v3 + 24));
  *(a1 + 6) = v3 + 26;
  if ((v2 - (v3 + 26)) > 1)
  {
    LOWORD(v145) = *(v4 + (v3 + 26));
    *(a1 + 6) = v3 + 28;
    sub_1002189A0(v5, &v143);
    return;
  }

  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the ISO interval of the LE CIS established event", v134, v135, v136, v137, v138, v139, v140, v142);
    v141 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_73;
    }
  }
}

void sub_1002C892C(uint64_t *a1)
{
  v40 = 0;
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
    goto LABEL_9;
  }

  v2 = *(a1 + 5);
  v3 = *(a1 + 6);
  v1 = v2 - v3;
  if (v1 != 6)
  {
LABEL_9:
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid CIS request event packet size : %d, expecting at least %d", v6, v7, v8, v9, v10, v11, v12, v1);
      v13 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1137, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  v4 = *a1;
  v5 = *(*a1 + v3);
  *(a1 + 6) = v3 + 2;
  if ((v2 - (v3 + 2)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the CIS handle of the LE CIS request event", v14, v15, v16, v17, v18, v19, v20, v38);
    v21 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_21:
    sub_1000E09C0();
    return;
  }

  LOWORD(v40) = *(v4 + (v3 + 2));
  *(a1 + 6) = v3 + 4;
  if (v2 <= (v3 + 4))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the CIG ID of of the LE CIS request event", v22, v23, v24, v25, v26, v27, v28, v38);
    v29 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_21;
  }

  *(a1 + 6) = v3 + 5;
  BYTE2(v40) = *(v4 + (v3 + 4));
  if (v2 > (v3 + 5))
  {
    *(a1 + 6) = v3 + 6;
    BYTE3(v40) = *(v4 + (v3 + 5));
    v39 = sub_1000ABB80(v5);
    sub_100218CF0(&v39);
    return;
  }

  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the CIS ID of of the LE CIS request event", v30, v31, v32, v33, v34, v35, v36, v38);
    v37 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }
  }
}

void sub_1002C8B54(uint64_t *a1)
{
  v123 = 0;
  v121 = 0u;
  *ptr = 0u;
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1173, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (!*(a1 + 15))
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    if (v2 <= v3)
    {
      goto LABEL_11;
    }

    v4 = *a1;
    v5 = v3 + 1;
    *(a1 + 6) = v3 + 1;
    v6 = *(v4 + v3);
    if (*(v4 + v3))
    {
      v7 = 0;
      goto LABEL_7;
    }

    if (v2 <= v5)
    {
      *(a1 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the BIG handle of the LE create BIG complete event", v30, v31, v32, v33, v34, v35, v36, v121);
        v37 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }
      }

      return;
    }

    *(a1 + 6) = v3 + 2;
    if ((v2 - (v3 + 2)) <= 2)
    {
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the BIG sync delay of the LE create BIG complete event", v38, v39, v40, v41, v42, v43, v44, v121);
      v45 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      v17 = *(v4 + v5);
      LODWORD(v121) = *(v4 + v3 + 2) | (*(v4 + v3 + 2 + 2) << 16);
      *(a1 + 6) = v3 + 5;
      if ((v2 - (v3 + 5)) <= 2)
      {
        *(a1 + 15) = 1;
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Could not get the transport latency of the LE create BIG complete event", v46, v47, v48, v49, v50, v51, v52, v121);
        v53 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        DWORD1(v121) = *(v4 + (v3 + 5)) | (*(v4 + (v3 + 5) + 2) << 16);
        *(a1 + 6) = v3 + 8;
        if (v2 <= (v3 + 8))
        {
          *(a1 + 15) = 1;
          if (!sub_10000C240())
          {
            return;
          }

          sub_10000AF54("Could not get the PHY of the LE create BIG complete event", v54, v55, v56, v57, v58, v59, v60, v121);
          v61 = sub_10000C050(0x42u);
          if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        else
        {
          *(a1 + 6) = v3 + 9;
          BYTE8(v121) = *(v4 + (v3 + 8));
          if (v2 <= (v3 + 9))
          {
            *(a1 + 15) = 1;
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("Could not get the NSE of the LE create BIG complete event", v62, v63, v64, v65, v66, v67, v68, v121);
            v69 = sub_10000C050(0x42u);
            if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              return;
            }
          }

          else
          {
            *(a1 + 6) = v3 + 10;
            BYTE9(v121) = *(v4 + (v3 + 9));
            if (v2 <= (v3 + 10))
            {
              *(a1 + 15) = 1;
              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("Could not get the BN of the LE create BIG complete event", v70, v71, v72, v73, v74, v75, v76, v121);
              v77 = sub_10000C050(0x42u);
              if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                return;
              }
            }

            else
            {
              *(a1 + 6) = v3 + 11;
              BYTE10(v121) = *(v4 + (v3 + 10));
              if (v2 <= (v3 + 11))
              {
                *(a1 + 15) = 1;
                if (!sub_10000C240())
                {
                  return;
                }

                sub_10000AF54("Could not get the PTO of the LE create BIG complete event", v78, v79, v80, v81, v82, v83, v84, v121);
                v85 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                {
                  return;
                }
              }

              else
              {
                *(a1 + 6) = v3 + 12;
                BYTE11(v121) = *(v4 + (v3 + 11));
                if (v2 <= (v3 + 12))
                {
                  *(a1 + 15) = 1;
                  if (!sub_10000C240())
                  {
                    return;
                  }

                  sub_10000AF54("Could not get the IRC of the LE create BIG complete event", v86, v87, v88, v89, v90, v91, v92, v121);
                  v93 = sub_10000C050(0x42u);
                  if (!os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                  {
                    return;
                  }
                }

                else
                {
                  *(a1 + 6) = v3 + 13;
                  BYTE12(v121) = *(v4 + (v3 + 12));
                  if ((v2 - (v3 + 13)) <= 1)
                  {
                    *(a1 + 15) = 1;
                    if (!sub_10000C240())
                    {
                      return;
                    }

                    sub_10000AF54("Could not get the maximum PDU of the LE create BIG complete event", v94, v95, v96, v97, v98, v99, v100, v121);
                    v101 = sub_10000C050(0x42u);
                    if (!os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                    {
                      return;
                    }
                  }

                  else
                  {
                    HIWORD(v121) = *(v4 + (v3 + 13));
                    *(a1 + 6) = v3 + 15;
                    if ((v2 - (v3 + 15)) <= 1)
                    {
                      *(a1 + 15) = 1;
                      if (!sub_10000C240())
                      {
                        return;
                      }

                      sub_10000AF54("Could not get the ISO interval of the LE create BIG complete event", v102, v103, v104, v105, v106, v107, v108, v121);
                      v109 = sub_10000C050(0x42u);
                      if (!os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                      {
                        return;
                      }
                    }

                    else
                    {
                      LOWORD(ptr[0]) = *(v4 + (v3 + 15));
                      *(a1 + 6) = v3 + 17;
                      if (v2 > (v3 + 17))
                      {
                        v18 = v6;
                        *(a1 + 6) = v3 + 18;
                        BYTE2(ptr[0]) = *(v4 + (v3 + 17));
                        v19 = sub_100007618(2 * BYTE2(ptr[0]), 0x1000040BDFB0063uLL);
                        ptr[1] = v19;
                        v20 = sub_100007618(8 * BYTE2(ptr[0]), 0x2004093837F09uLL);
                        v123 = v20;
                        if (BYTE2(ptr[0]))
                        {
                          if (*(a1 + 14) != 1)
                          {
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1204, "(*pBs).__RWFlag == BYTESTREAM_READ");
                          }

                          v21 = v20;
                          if (*(a1 + 15))
                          {
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                          }

                          else
                          {
                            v118 = BYTE2(ptr[0]);
                            v119 = *(a1 + 6);
                            v120 = v19;
                            while (*(a1 + 5) - v119 > 1)
                            {
                              *v120++ = *(*a1 + v119);
                              v119 = *(a1 + 6) + 2;
                              *(a1 + 6) = v119;
                              if (!--v118)
                              {
                                goto LABEL_70;
                              }
                            }
                          }

                          *(a1 + 15) = 1;
                          if (sub_10000C240())
                          {
                            sub_10000AF54("Could not get the LM handle of the LE create BIG complete event", v22, v23, v24, v25, v26, v27, v28, v121);
                            v29 = sub_10000C050(0x42u);
                            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                            {
                              sub_1000E09C0();
                            }
                          }

                          sub_10000C1E8(v21);
                          v8 = v19;
                          goto LABEL_10;
                        }

LABEL_70:
                        v6 = v18;
                        v7 = v17;
LABEL_7:
                        sub_10018396C(v6, v7, &v121);
                        if (ptr[1])
                        {
                          sub_10000C1E8(ptr[1]);
                        }

                        v8 = v123;
                        if (!v123)
                        {
                          return;
                        }

LABEL_10:
                        sub_10000C1E8(v8);
                        return;
                      }

                      *(a1 + 15) = 1;
                      if (!sub_10000C240())
                      {
                        return;
                      }

                      sub_10000AF54("Could not get the number of BIS of the LE create BIG complete event", v110, v111, v112, v113, v114, v115, v116, v121);
                      v117 = sub_10000C050(0x42u);
                      if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                      {
                        return;
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

    sub_1000E09C0();
    return;
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
LABEL_11:
  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get status of LE create BIG complete event", v9, v10, v11, v12, v13, v14, v15, v121);
    v16 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      sub_1000E09C0();
    }
  }
}

void sub_1002C9208(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = v2 - v3;
    if (v1 == 2)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1240, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (v2 <= v3)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get BIG handle of LE terminate BIG complete event", v15, v16, v17, v18, v19, v20, v21, v31);
          v22 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        v4 = *a1;
        *(a1 + 6) = v3 + 1;
        if (v2 <= v3 + 1)
        {
          *(a1 + 15) = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get reason of LE terminate BIG complete event", v23, v24, v25, v26, v27, v28, v29, v31);
            v30 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v5 = *(v4 + v3);
          *(a1 + 6) = v3 + 2;
          v6 = *(v4 + v3 + 1);

          sub_100183C9C(0, v5, v6);
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid terminate BIG complete event packet size : %d, expecting at least %d", v7, v8, v9, v10, v11, v12, v13, v1);
    v14 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      sub_1000E09C0();
    }
  }
}

void sub_1002C93B4(uint64_t *a1)
{
  v107 = 0u;
  *ptr = 0u;
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1269, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (!*(a1 + 15))
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    if (v2 <= v3)
    {
      goto LABEL_11;
    }

    v4 = *a1;
    v5 = v3 + 1;
    *(a1 + 6) = v3 + 1;
    v6 = *(v4 + v3);
    if (*(v4 + v3))
    {
      v7 = 0;
      goto LABEL_7;
    }

    if (v2 <= v5)
    {
      *(a1 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the BIG handle of the LE BIG Sync Established event", v28, v29, v30, v31, v32, v33, v34, v103);
        v35 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }
      }

      return;
    }

    *(a1 + 6) = v3 + 2;
    if ((v2 - (v3 + 2)) <= 2)
    {
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the transport latency of the LE BIG Sync Established event", v36, v37, v38, v39, v40, v41, v42, v103);
      v43 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      v17 = *(v4 + v5);
      LODWORD(v107) = *(v4 + v3 + 2) | (*(v4 + v3 + 2 + 2) << 16);
      *(a1 + 6) = v3 + 5;
      if (v2 <= (v3 + 5))
      {
        *(a1 + 15) = 1;
        if (!sub_10000C240())
        {
          return;
        }

        sub_10000AF54("Could not get the NSE of the LE BIG Sync Established event", v44, v45, v46, v47, v48, v49, v50, v103);
        v51 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          return;
        }
      }

      else
      {
        *(a1 + 6) = v3 + 6;
        BYTE4(v107) = *(v4 + (v3 + 5));
        if (v2 <= (v3 + 6))
        {
          *(a1 + 15) = 1;
          if (!sub_10000C240())
          {
            return;
          }

          sub_10000AF54("Could not get the BN of the LE BIG Sync Established event", v52, v53, v54, v55, v56, v57, v58, v103);
          v59 = sub_10000C050(0x42u);
          if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            return;
          }
        }

        else
        {
          *(a1 + 6) = v3 + 7;
          BYTE5(v107) = *(v4 + (v3 + 6));
          if (v2 <= (v3 + 7))
          {
            *(a1 + 15) = 1;
            if (!sub_10000C240())
            {
              return;
            }

            sub_10000AF54("Could not get the PTO of the LE BIG Sync Established event", v60, v61, v62, v63, v64, v65, v66, v103);
            v67 = sub_10000C050(0x42u);
            if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              return;
            }
          }

          else
          {
            *(a1 + 6) = v3 + 8;
            BYTE6(v107) = *(v4 + (v3 + 7));
            if (v2 <= (v3 + 8))
            {
              *(a1 + 15) = 1;
              if (!sub_10000C240())
              {
                return;
              }

              sub_10000AF54("Could not get the IRC of the LE BIG Sync Established event", v68, v69, v70, v71, v72, v73, v74, v103);
              v75 = sub_10000C050(0x42u);
              if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                return;
              }
            }

            else
            {
              *(a1 + 6) = v3 + 9;
              BYTE7(v107) = *(v4 + (v3 + 8));
              if ((v2 - (v3 + 9)) <= 1)
              {
                *(a1 + 15) = 1;
                if (!sub_10000C240())
                {
                  return;
                }

                sub_10000AF54("Could not get the maximum PDU of the LE BIG Sync Established event", v76, v77, v78, v79, v80, v81, v82, v103);
                v83 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                {
                  return;
                }
              }

              else
              {
                WORD4(v107) = *(v4 + (v3 + 9));
                *(a1 + 6) = v3 + 11;
                if ((v2 - (v3 + 11)) <= 1)
                {
                  *(a1 + 15) = 1;
                  if (!sub_10000C240())
                  {
                    return;
                  }

                  sub_10000AF54("Could not get the ISO interval of the LE BIG Sync Established event", v84, v85, v86, v87, v88, v89, v90, v103);
                  v91 = sub_10000C050(0x42u);
                  if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                  {
                    return;
                  }
                }

                else
                {
                  WORD5(v107) = *(v4 + (v3 + 11));
                  *(a1 + 6) = v3 + 13;
                  if (v2 > (v3 + 13))
                  {
                    v105 = v6;
                    v106 = v17;
                    *(a1 + 6) = v3 + 14;
                    BYTE12(v107) = *(v4 + (v3 + 13));
                    v18 = sub_100007618(2 * BYTE12(v107), 0x1000040BDFB0063uLL);
                    ptr[0] = v18;
                    v19 = sub_100007618(8 * BYTE12(v107), 0x2004093837F09uLL);
                    ptr[1] = v19;
                    if (BYTE12(v107))
                    {
                      v104 = v19;
                      if (*(a1 + 14) != 1)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1297, "(*pBs).__RWFlag == BYTESTREAM_READ");
                      }

                      if (*(a1 + 15))
                      {
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                      }

                      else
                      {
                        v100 = BYTE12(v107);
                        v101 = *(a1 + 6);
                        v102 = v18;
                        while (*(a1 + 5) - v101 > 1)
                        {
                          *v102++ = *(*a1 + v101);
                          v101 = *(a1 + 6) + 2;
                          *(a1 + 6) = v101;
                          if (!--v100)
                          {
                            goto LABEL_62;
                          }
                        }
                      }

                      *(a1 + 15) = 1;
                      if (sub_10000C240())
                      {
                        sub_10000AF54("Could not get the LM handle of the LE BIG Sync Established event", v20, v21, v22, v23, v24, v25, v26, v104);
                        v27 = sub_10000C050(0x42u);
                        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                        {
                          sub_1000E09C0();
                        }
                      }

                      sub_10000C1E8(v104);
                      v8 = v18;
                      goto LABEL_10;
                    }

LABEL_62:
                    v6 = v105;
                    v7 = v106;
LABEL_7:
                    sub_100183E2C(v6, v7, &v107);
                    if (ptr[0])
                    {
                      sub_10000C1E8(ptr[0]);
                    }

                    v8 = ptr[1];
                    if (!ptr[1])
                    {
                      return;
                    }

LABEL_10:
                    sub_10000C1E8(v8);
                    return;
                  }

                  *(a1 + 15) = 1;
                  if (!sub_10000C240())
                  {
                    return;
                  }

                  sub_10000AF54("Could not get the number of BIS of the LE BIG Sync Established event", v92, v93, v94, v95, v96, v97, v98, v103);
                  v99 = sub_10000C050(0x42u);
                  if (!os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
                  {
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }

    sub_1000E09C0();
    return;
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
LABEL_11:
  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get status of LE BIG Sync Established event", v9, v10, v11, v12, v13, v14, v15, v103);
    v16 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      sub_1000E09C0();
    }
  }
}

void sub_1002C9984(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = v2 - v3;
    if (v1 == 2)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1333, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (v2 <= v3)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get BIG handle of LE BIG sync lost event", v15, v16, v17, v18, v19, v20, v21, v31);
          v22 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        v4 = *a1;
        *(a1 + 6) = v3 + 1;
        if (v2 <= v3 + 1)
        {
          *(a1 + 15) = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get reason of LE BIG sync lost event", v23, v24, v25, v26, v27, v28, v29, v31);
            v30 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v5 = *(v4 + v3);
          *(a1 + 6) = v3 + 2;
          v6 = *(v4 + v3 + 1);

          sub_100184150(v5, v6);
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid BIG sync lost event packet size : %d, expecting at least %d", v7, v8, v9, v10, v11, v12, v13, v1);
    v14 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      sub_1000E09C0();
    }
  }
}

void sub_1002C9B30(uint64_t a1)
{
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1363, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    goto LABEL_18;
  }

  v2 = *(a1 + 10);
  v3 = *(a1 + 12);
  if ((v2 - v3) <= 1)
  {
LABEL_18:
    *(a1 + 15) = 1;
    if (sub_10000C240())
    {
      sub_10000AF54("Could not get the sync handle of the LE BIGInfo Advertising Report event", v4, v5, v6, v7, v8, v9, v10, v108);
      v11 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return;
  }

  *(a1 + 12) = v3 + 2;
  if (v2 <= (v3 + 2))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the number of BIS of the LE BIGInfo Advertising Report event", v12, v13, v14, v15, v16, v17, v18, v108);
    v19 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_57:
    sub_1000E09C0();
    return;
  }

  *(a1 + 12) = v3 + 3;
  if (v2 <= (v3 + 3))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the NSE of the LE BIGInfo Advertising Report event", v20, v21, v22, v23, v24, v25, v26, v108);
    v27 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 4;
  if ((v2 - (v3 + 4)) <= 1)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the ISO interval of the LE BIGInfo Advertising Report event", v28, v29, v30, v31, v32, v33, v34, v108);
    v35 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 6;
  if (v2 <= (v3 + 6))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the BN of the LE BIGInfo Advertising Report event", v36, v37, v38, v39, v40, v41, v42, v108);
    v43 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 7;
  if (v2 <= (v3 + 7))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the PTO of the LE BIGInfo Advertising Report event", v44, v45, v46, v47, v48, v49, v50, v108);
    v51 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 8;
  if (v2 <= (v3 + 8))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the IRC of the LE BIGInfo Advertising Report event", v52, v53, v54, v55, v56, v57, v58, v108);
    v59 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 9;
  if ((v2 - (v3 + 9)) < 2)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the maximum PDU of the LE BIGInfo Advertising Report event", v60, v61, v62, v63, v64, v65, v66, v108);
    v67 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 11;
  if ((v2 - (v3 + 11)) <= 2)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the SDU interval of the LE BIGInfo Advertising Report event", v68, v69, v70, v71, v72, v73, v74, v108);
    v75 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 14;
  if ((v2 - (v3 + 14)) < 2)
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the maximum SDU of the LE BIGInfo Advertising Report event", v76, v77, v78, v79, v80, v81, v82, v108);
    v83 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 16;
  if (v2 <= (v3 + 16))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the PHY of the LE BIGInfo Advertising Report event", v84, v85, v86, v87, v88, v89, v90, v108);
    v91 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 17;
  if (v2 <= (v3 + 17))
  {
    *(a1 + 15) = 1;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not get the framing of the LE BIGInfo Advertising Report event", v92, v93, v94, v95, v96, v97, v98, v108);
    v99 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_57;
  }

  *(a1 + 12) = v3 + 18;
  if (v2 > (v3 + 18))
  {
    *(a1 + 12) = v3 + 19;
    sub_10018421C();
    return;
  }

  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the encryption of the LE BIGInfo Advertising Report event", v100, v101, v102, v103, v104, v105, v106, v108);
    v107 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }
  }
}

void sub_1002CA0EC(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = v2 - v3;
    if (v1 == 25)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1454, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v4 = *a1;
      v5 = *(*a1 + v3);
      *(a1 + 6) = v3 + 2;
      if (v2 <= (v3 + 2))
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the status of the read remote used features event", v36, v37, v38, v39, v40, v41, v42, v44);
          v43 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        *(a1 + 6) = v3 + 3;
        if (v2 <= (v3 + 3))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1458, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v6 = *(v4 + (v3 + 2));
        *(a1 + 6) = v3 + 4;
        if ((v2 - (v3 + 4)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1459, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v7 = *(v4 + (v3 + 3));
        v8 = *(v4 + (v3 + 4));
        *(a1 + 6) = v3 + 6;
        if (v2 <= (v3 + 6))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1460, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *(a1 + 6) = v3 + 7;
        if (v2 <= (v3 + 7))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1461, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v9 = *(v4 + (v3 + 6));
        *(a1 + 6) = v3 + 8;
        if (v2 <= (v3 + 8))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1462, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v10 = *(v4 + (v3 + 7));
        *(a1 + 6) = v3 + 9;
        if (v2 <= (v3 + 9))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1463, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v11 = *(v4 + (v3 + 8));
        *(a1 + 6) = v3 + 10;
        if (v2 <= (v3 + 10))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1464, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v12 = *(v4 + (v3 + 9));
        *(a1 + 6) = v3 + 11;
        if (v2 <= (v3 + 11))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1465, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v13 = *(v4 + (v3 + 10));
        *(a1 + 6) = v3 + 12;
        if (v2 <= (v3 + 12))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1466, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v14 = *(v4 + (v3 + 11));
        *(a1 + 6) = v3 + 13;
        if ((v2 - (v3 + 13)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1467, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v15 = *(v4 + (v3 + 12));
        v16 = *(v4 + (v3 + 13));
        *(a1 + 6) = v3 + 15;
        if ((v2 - (v3 + 15)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1468, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v17 = *(v4 + (v3 + 15));
        *(a1 + 6) = v3 + 17;
        if (v2 <= (v3 + 17))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1469, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        *(a1 + 6) = v3 + 18;
        if ((v2 - (v3 + 18)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1470, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v18 = *(v4 + (v3 + 17));
        v19 = *(v4 + (v3 + 18));
        *(a1 + 6) = v3 + 20;
        if ((v2 - (v3 + 20)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1471, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v20 = *(v4 + (v3 + 20));
        *(a1 + 6) = v3 + 22;
        if ((v2 - (v3 + 22)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1472, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v21 = *(v4 + (v3 + 22));
        *(a1 + 6) = v3 + 24;
        if ((v2 - (v3 + 24)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1473, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v22 = *(v4 + (v3 + 24));
        *(a1 + 6) = v3 + 26;
        if ((v2 - (v3 + 26)) <= 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1474, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
        }

        v23 = *(v4 + (v3 + 26));
        *(a1 + 6) = v3 + 28;
        if (v2 <= (v3 + 28))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1475, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v46 = v16;
        v47 = v15;
        v48 = v14;
        v49 = v13;
        v53 = v11;
        v54 = v12;
        v51 = v9;
        v52 = v10;
        v45 = v8;
        v50 = v7;
        *(a1 + 6) = v3 + 29;
        if (v2 <= (v3 + 29))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1476, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v24 = v5;
        v25 = *(v4 + (v3 + 28));
        *(a1 + 6) = v3 + 30;
        v26 = *(v4 + (v3 + 29));
        v27 = sub_100022244(v6);
        sub_1002C4208(v24, v27, v50, v45, v51, v52, v53, v54, v49, v48, v47, v46, v17, v18, v19, v20, v21, v22, v23, v25, v26);
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the capabilites packet : %d expecting at least %d", v28, v29, v30, v31, v32, v33, v34, v1);
    v35 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
LABEL_28:
      sub_1000E09C0();
    }
  }
}

void sub_1002CA678(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = v2 - v3;
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    if (v1 == 75)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1494, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v4 = *a1;
      v5 = *(*a1 + v3);
      *(a1 + 6) = v3 + 2;
      if (v2 <= (v3 + 2))
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the status of the read remote used features event", v17, v18, v19, v20, v21, v22, v23, v26);
          v24 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        *(a1 + 6) = v3 + 3;
        v6 = *(v4 + (v3 + 2));
        if ((v2 - (v3 + 3)) < 72)
        {
          *(a1 + 15) = 1;
        }

        else
        {
          v7 = 0;
          v8 = v4 + (v3 + 3);
          do
          {
            *(v27 + v7) = *(v8 + v7);
            ++v7;
          }

          while (v7 != 72);
          *(a1 + 6) = v3 + 75;
        }

        v25 = sub_1000ABB80(v5);
        sub_1002CFBA4(v6, v25, v27);
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the capabilites packet : %d expecting  %d", v9, v10, v11, v12, v13, v14, v15, v1);
    v16 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      sub_1000E09C0();
    }
  }
}

void sub_1002CA850(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = v2 - v3;
    if (v1 == 3)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1516, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v4 = *a1;
      v5 = (*a1 + v3);
      v6 = *v5;
      v7 = v5[1];
      *(a1 + 6) = v3 + 2;
      if (v2 <= (v3 + 2))
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the status of the read remote used features event", v18, v19, v20, v21, v22, v23, v24, v26);
          v25 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        *(a1 + 6) = v3 + 3;
        v8 = *(v4 + (v3 + 2));
        v9 = sub_1000ABB80(v6 | (v7 << 8));

        sub_1002CFC28(v8, v9);
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data for security enable complete event : %d expecting at least %d", v10, v11, v12, v13, v14, v15, v16, v1);
    v17 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      sub_1000E09C0();
    }
  }
}

void sub_1002CA9C8(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
    goto LABEL_31;
  }

  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  v1 = v3 - v4;
  v96 = 0;
  v95 = 0;
  if (v1 == 33)
  {
    if (*(a1 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1557, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (v3 <= v4)
    {
      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the status of the read remote used features event", v43, v44, v45, v46, v47, v48, v49, v79);
      v50 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      v5 = *a1;
      *(a1 + 6) = v4 + 1;
      if ((v3 - (v4 + 1)) > 1)
      {
        v93 = *(v5 + v4 + 1);
        v94 = *(v5 + v4);
        *(a1 + 6) = v4 + 3;
        if (v3 <= (v4 + 3))
        {
          *(a1 + 15) = 1;
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
          v59 = *(a1 + 14);
          *(a1 + 15) = 1;
          if (v59 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1563, "(*pBs).__RWFlag == BYTESTREAM_READ");
          }

          v92 = 0;
        }

        else
        {
          *(a1 + 6) = v4 + 4;
          v92 = *(v5 + (v4 + 3));
          if (v3 > (v4 + 4))
          {
            *(a1 + 6) = v4 + 5;
            v91 = *(v5 + (v4 + 4));
            if (*(a1 + 5) > (v4 + 5))
            {
              v6 = *a1;
              *(a1 + 6) = v4 + 6;
              v90 = *(v6 + (v4 + 5));
              if (*(a1 + 5) > (v4 + 6))
              {
                v7 = *a1;
                *(a1 + 6) = v4 + 7;
                v89 = *(v7 + (v4 + 6));
                if (*(a1 + 5) > (v4 + 7))
                {
                  v8 = *a1;
                  *(a1 + 6) = v4 + 8;
                  v88 = *(v8 + (v4 + 7));
                  if (*(a1 + 5) > (v4 + 8))
                  {
                    v9 = *a1;
                    *(a1 + 6) = v4 + 9;
                    v87 = *(v9 + (v4 + 8));
                    if (*(a1 + 5) > (v4 + 9))
                    {
                      v10 = *a1;
                      *(a1 + 6) = v4 + 10;
                      v86 = *(v10 + (v4 + 9));
                      if (*(a1 + 5) > (v4 + 10))
                      {
                        v11 = *a1;
                        *(a1 + 6) = v4 + 11;
                        v85 = *(v11 + (v4 + 10));
                        if (*(a1 + 5) > (v4 + 11))
                        {
                          v12 = *a1;
                          *(a1 + 6) = v4 + 12;
                          v84 = *(v12 + (v4 + 11));
                          if (*(a1 + 5) > (v4 + 12))
                          {
                            v13 = *a1;
                            *(a1 + 6) = v4 + 13;
                            v83 = *(v13 + (v4 + 12));
                            if (*(a1 + 5) > (v4 + 13))
                            {
                              v14 = *a1;
                              *(a1 + 6) = v4 + 14;
                              v82 = *(v14 + (v4 + 13));
                              if (*(a1 + 5) - (v4 + 14) >= 10)
                              {
                                v15 = 0;
                                v16 = v14 + (v4 + 14);
                                do
                                {
                                  *(&v95 + v15) = *(v16 + v15);
                                  ++v15;
                                }

                                while (v15 != 10);
                                *(a1 + 6) = v4 + 24;
                                if (*(a1 + 5) > (v4 + 24))
                                {
                                  v17 = *a1;
                                  *(a1 + 6) = v4 + 25;
                                  v18 = *(v17 + (v4 + 24));
                                  if (*(a1 + 5) > (v4 + 25))
                                  {
                                    v19 = *a1;
                                    *(a1 + 6) = v4 + 26;
                                    v20 = *(v19 + (v4 + 25));
                                    if (*(a1 + 5) > (v4 + 26))
                                    {
                                      v21 = *a1;
                                      *(a1 + 6) = v4 + 27;
                                      v22 = *(v21 + (v4 + 26));
                                      if (*(a1 + 5) > (v4 + 27))
                                      {
                                        v23 = *a1;
                                        *(a1 + 6) = v4 + 28;
                                        v24 = *(v23 + (v4 + 27));
                                        if (*(a1 + 5) > (v4 + 28))
                                        {
                                          v25 = *a1;
                                          *(a1 + 6) = v4 + 29;
                                          v26 = *(v25 + (v4 + 28));
                                          if (*(a1 + 5) > (v4 + 29))
                                          {
                                            v27 = *a1;
                                            *(a1 + 6) = v4 + 30;
                                            v28 = *(v27 + (v4 + 29));
                                            if (*(a1 + 5) > (v4 + 30))
                                            {
                                              v29 = *a1;
                                              *(a1 + 6) = v4 + 31;
                                              v30 = *(v29 + (v4 + 30));
                                              if (*(a1 + 5) > (v4 + 31))
                                              {
                                                v31 = *a1;
                                                *(a1 + 6) = v4 + 32;
                                                v32 = *(v31 + (v4 + 31));
                                                if (*(a1 + 5) > (v4 + 32))
                                                {
                                                  v33 = *a1;
                                                  *(a1 + 6) = v4 + 33;
                                                  v34 = *(v33 + (v4 + 32));
LABEL_81:
                                                  v78 = sub_1000ABB80(v93);
                                                  HIBYTE(v81) = v32;
                                                  BYTE6(v81) = v30;
                                                  BYTE5(v81) = v28;
                                                  BYTE4(v81) = v26;
                                                  BYTE3(v81) = v24;
                                                  BYTE2(v81) = v22;
                                                  BYTE1(v81) = v20;
                                                  LOBYTE(v81) = v18;
                                                  HIBYTE(v80) = v85;
                                                  LOBYTE(v80) = v86;
                                                  sub_1002CFCA4(v94, v78, v92, v91, v90, v89, v88, v87, v80, v84, v83, v82, &v95, v81, v34);
                                                  return;
                                                }

LABEL_80:
                                                v34 = 0;
                                                *(a1 + 15) = 1;
                                                goto LABEL_81;
                                              }

                                              *(a1 + 15) = 1;
LABEL_79:
                                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                                              v32 = 0;
                                              goto LABEL_80;
                                            }

                                            *(a1 + 15) = 1;
LABEL_77:
                                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                                            v77 = *(a1 + 14);
                                            *(a1 + 15) = 1;
                                            if (v77 != 1)
                                            {
                                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1581, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                            }

                                            v30 = 0;
                                            goto LABEL_79;
                                          }

                                          *(a1 + 15) = 1;
LABEL_75:
                                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                                          v76 = *(a1 + 14);
                                          *(a1 + 15) = 1;
                                          if (v76 != 1)
                                          {
                                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1580, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                          }

                                          v28 = 0;
                                          goto LABEL_77;
                                        }

                                        *(a1 + 15) = 1;
LABEL_73:
                                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                                        v75 = *(a1 + 14);
                                        *(a1 + 15) = 1;
                                        if (v75 != 1)
                                        {
                                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1579, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                        }

                                        v26 = 0;
                                        goto LABEL_75;
                                      }

                                      *(a1 + 15) = 1;
LABEL_71:
                                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                                      v74 = *(a1 + 14);
                                      *(a1 + 15) = 1;
                                      if (v74 != 1)
                                      {
                                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1578, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                      }

                                      v24 = 0;
                                      goto LABEL_73;
                                    }

                                    *(a1 + 15) = 1;
LABEL_69:
                                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                                    v73 = *(a1 + 14);
                                    *(a1 + 15) = 1;
                                    if (v73 != 1)
                                    {
                                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1577, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                    }

                                    v22 = 0;
                                    goto LABEL_71;
                                  }

                                  *(a1 + 15) = 1;
LABEL_67:
                                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                                  v72 = *(a1 + 14);
                                  *(a1 + 15) = 1;
                                  if (v72 != 1)
                                  {
                                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1576, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                  }

                                  v20 = 0;
                                  goto LABEL_69;
                                }

                                *(a1 + 15) = 1;
LABEL_65:
                                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                                v71 = *(a1 + 14);
                                *(a1 + 15) = 1;
                                if (v71 != 1)
                                {
                                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1575, "(*pBs).__RWFlag == BYTESTREAM_READ");
                                }

                                v18 = 0;
                                goto LABEL_67;
                              }

                              *(a1 + 15) = 1;
LABEL_64:
                              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                              v70 = *(a1 + 14);
                              *(a1 + 15) = 1;
                              if (v70 != 1)
                              {
                                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1574, "(*pBs).__RWFlag == BYTESTREAM_READ");
                              }

                              goto LABEL_65;
                            }

                            *(a1 + 15) = 1;
LABEL_62:
                            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                            v69 = *(a1 + 14);
                            *(a1 + 15) = 1;
                            if (v69 != 1)
                            {
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1573, "(*pBs).__RWFlag == BYTESTREAM_READ");
                            }

                            v82 = 0;
                            goto LABEL_64;
                          }

                          *(a1 + 15) = 1;
LABEL_60:
                          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                          v68 = *(a1 + 14);
                          *(a1 + 15) = 1;
                          if (v68 != 1)
                          {
                            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1572, "(*pBs).__RWFlag == BYTESTREAM_READ");
                          }

                          v83 = 0;
                          goto LABEL_62;
                        }

                        *(a1 + 15) = 1;
LABEL_58:
                        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                        v67 = *(a1 + 14);
                        *(a1 + 15) = 1;
                        if (v67 != 1)
                        {
                          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1571, "(*pBs).__RWFlag == BYTESTREAM_READ");
                        }

                        v84 = 0;
                        goto LABEL_60;
                      }

                      *(a1 + 15) = 1;
LABEL_56:
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                      v66 = *(a1 + 14);
                      *(a1 + 15) = 1;
                      if (v66 != 1)
                      {
                        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1570, "(*pBs).__RWFlag == BYTESTREAM_READ");
                      }

                      v85 = 0;
                      goto LABEL_58;
                    }

                    *(a1 + 15) = 1;
LABEL_54:
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                    v65 = *(a1 + 14);
                    *(a1 + 15) = 1;
                    if (v65 != 1)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1569, "(*pBs).__RWFlag == BYTESTREAM_READ");
                    }

                    v86 = 0;
                    goto LABEL_56;
                  }

                  *(a1 + 15) = 1;
LABEL_52:
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                  v64 = *(a1 + 14);
                  *(a1 + 15) = 1;
                  if (v64 != 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1568, "(*pBs).__RWFlag == BYTESTREAM_READ");
                  }

                  v87 = 0;
                  goto LABEL_54;
                }

                *(a1 + 15) = 1;
LABEL_50:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                v63 = *(a1 + 14);
                *(a1 + 15) = 1;
                if (v63 != 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1567, "(*pBs).__RWFlag == BYTESTREAM_READ");
                }

                v88 = 0;
                goto LABEL_52;
              }

              *(a1 + 15) = 1;
LABEL_48:
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
              v62 = *(a1 + 14);
              *(a1 + 15) = 1;
              if (v62 != 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1566, "(*pBs).__RWFlag == BYTESTREAM_READ");
              }

              v89 = 0;
              goto LABEL_50;
            }

            *(a1 + 15) = 1;
LABEL_46:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
            v61 = *(a1 + 14);
            *(a1 + 15) = 1;
            if (v61 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1565, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            v90 = 0;
            goto LABEL_48;
          }

          *(a1 + 15) = 1;
        }

        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
        v60 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v60 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1564, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        v91 = 0;
        goto LABEL_46;
      }

      *(a1 + 15) = 1;
      if (!sub_10000C240())
      {
        return;
      }

      sub_10000AF54("Could not get the connection handle of the read remote used features event", v51, v52, v53, v54, v55, v56, v57, v79);
      v58 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    sub_1000E09C0();
    return;
  }

LABEL_31:
  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the cs Create Config Event : %d expecting  %d", v35, v36, v37, v38, v39, v40, v41, v1);
    v42 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1002CB564(uint64_t *a1)
{
  if (!*(a1 + 15))
  {
    v3 = *(a1 + 5);
    v4 = *(a1 + 6);
    v1 = v3 - v4;
    if (v1 != 19)
    {
      goto LABEL_18;
    }

    if (*(a1 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1614, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (v3 <= v4)
    {
      *(a1 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the status of the read remote used features event", v33, v34, v35, v36, v37, v38, v39, v58);
        v40 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }
      }

      return;
    }

    v5 = *a1;
    *(a1 + 6) = v4 + 1;
    if ((v3 - (v4 + 1)) <= 1)
    {
      *(a1 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not get the connection handle of the read remote used features event", v41, v42, v43, v44, v45, v46, v47, v58);
        v48 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }
      }

      return;
    }

    v6 = *(v5 + v4);
    v7 = *(v5 + v4 + 1);
    *(a1 + 6) = v4 + 3;
    if (v3 <= (v4 + 3))
    {
      *(a1 + 15) = 1;
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
      v49 = *(a1 + 14);
      *(a1 + 15) = 1;
      if (v49 != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1620, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      v8 = 0;
    }

    else
    {
      *(a1 + 6) = v4 + 4;
      v8 = *(v5 + (v4 + 3));
      if (v3 > (v4 + 4))
      {
        *(a1 + 6) = v4 + 5;
        v9 = *(v5 + (v4 + 4));
        if (*(a1 + 5) > (v4 + 5))
        {
          v10 = *a1;
          *(a1 + 6) = v4 + 6;
          v11 = *(v10 + (v4 + 5));
          if (*(a1 + 5) > (v4 + 6))
          {
            v12 = *a1;
            *(a1 + 6) = v4 + 7;
            v13 = *(v12 + (v4 + 6));
            if (*(a1 + 5) > (v4 + 7))
            {
              v14 = *a1;
              *(a1 + 6) = v4 + 8;
              v15 = *(v14 + (v4 + 7));
              if (*(a1 + 5) > (v4 + 8))
              {
                v16 = *a1;
                *(a1 + 6) = v4 + 9;
                v17 = *(v16 + (v4 + 8));
                if (*(a1 + 5) > (v4 + 9))
                {
                  v18 = *a1;
                  *(a1 + 6) = v4 + 10;
                  v19 = *(v18 + (v4 + 9));
                  if (*(a1 + 5) > (v4 + 10))
                  {
                    v20 = *a1;
                    *(a1 + 6) = v4 + 11;
                    v60 = *(v20 + (v4 + 10));
                    v61 = v19;
                    if (*(a1 + 5) > (v4 + 11))
                    {
                      v62 = v17;
                      v21 = *a1;
                      *(a1 + 6) = v4 + 12;
                      v22 = *(v21 + (v4 + 11));
                      if (*(a1 + 5) > (v4 + 12))
                      {
                        v23 = *a1;
                        *(a1 + 6) = v4 + 13;
                        v24 = *(v23 + (v4 + 12));
LABEL_47:
                        v57 = sub_1000ABB80(v7);
                        HIBYTE(v59) = v24;
                        BYTE2(v59) = v22;
                        BYTE1(v59) = v60;
                        LOBYTE(v59) = v61;
                        sub_1002CFDF8(v6, v57, v8, v9, v11, v13, v15, v62, v59);
                        return;
                      }

LABEL_46:
                      v24 = 0;
                      *(a1 + 15) = 1;
                      goto LABEL_47;
                    }

                    *(a1 + 15) = 1;
LABEL_45:
                    v62 = v17;
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                    v22 = 0;
                    goto LABEL_46;
                  }

                  *(a1 + 15) = 1;
LABEL_43:
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                  v56 = *(a1 + 14);
                  *(a1 + 15) = 1;
                  if (v56 != 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1627, "(*pBs).__RWFlag == BYTESTREAM_READ");
                  }

                  v60 = 0;
                  v61 = v19;
                  goto LABEL_45;
                }

                *(a1 + 15) = 1;
LABEL_41:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                v55 = *(a1 + 14);
                *(a1 + 15) = 1;
                if (v55 != 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1626, "(*pBs).__RWFlag == BYTESTREAM_READ");
                }

                v19 = 0;
                goto LABEL_43;
              }

              *(a1 + 15) = 1;
LABEL_39:
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
              v54 = *(a1 + 14);
              *(a1 + 15) = 1;
              if (v54 != 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1625, "(*pBs).__RWFlag == BYTESTREAM_READ");
              }

              v17 = 0;
              goto LABEL_41;
            }

            *(a1 + 15) = 1;
LABEL_37:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
            v53 = *(a1 + 14);
            *(a1 + 15) = 1;
            if (v53 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1624, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            v15 = 0;
            goto LABEL_39;
          }

          *(a1 + 15) = 1;
LABEL_35:
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
          v52 = *(a1 + 14);
          *(a1 + 15) = 1;
          if (v52 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1623, "(*pBs).__RWFlag == BYTESTREAM_READ");
          }

          v13 = 0;
          goto LABEL_37;
        }

        *(a1 + 15) = 1;
LABEL_33:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
        v51 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v51 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1622, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        v11 = 0;
        goto LABEL_35;
      }

      *(a1 + 15) = 1;
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v50 = *(a1 + 14);
    *(a1 + 15) = 1;
    if (v50 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1621, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v9 = 0;
    goto LABEL_33;
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
  v1 = 0;
LABEL_18:
  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the cs Procedure Enable Event : %d expecting  %d", v25, v26, v27, v28, v29, v30, v31, v1);
    v32 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
LABEL_20:
      sub_1000E09C0();
    }
  }
}

void sub_1002CBB64()
{
  v0 = __chkstk_darwin();
  memset(v106, 0, sizeof(v106));
  memset(v105, 0, sizeof(v105));
  memset(v104, 0, sizeof(v104));
  bzero(v103, 0x6400uLL);
  if (*(v0 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1668, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (!*(v0 + 15))
  {
    v1 = *(v0 + 12);
    if (*(v0 + 10) - v1 <= 1)
    {
      goto LABEL_9;
    }

    v2 = *(*v0 + v1);
    *(v0 + 12) = v1 + 2;
    v3 = sub_1000ABB80(v2);
    if (*(v0 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1671, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    if (*(v0 + 15))
    {
      v4 = v3;
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
      v5 = *(v0 + 14);
      *(v0 + 15) = 1;
      if (v5 != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1672, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }
    }

    else
    {
      v14 = *(v0 + 12);
      if (*(v0 + 10) > v14)
      {
        v15 = *v0;
        *(v0 + 12) = v14 + 1;
        v16 = *(v15 + v14);
        if (*(v0 + 10) - (v14 + 1) > 1)
        {
          v17 = *(*v0 + v14 + 1);
          *(v0 + 12) = v14 + 3;
          if (*(v0 + 10) - (v14 + 3) > 1)
          {
            v18 = *(*v0 + (v14 + 3));
            *(v0 + 12) = v14 + 5;
            if (*(v0 + 10) - (v14 + 5) > 1)
            {
              v19 = *(*v0 + (v14 + 5));
              *(v0 + 12) = v14 + 7;
              if (*(v0 + 10) > (v14 + 7))
              {
                v20 = *v0;
                *(v0 + 12) = v14 + 8;
                v21 = *(v20 + (v14 + 7));
                if (*(v0 + 10) > (v14 + 8))
                {
                  v22 = *v0;
                  *(v0 + 12) = v14 + 9;
                  v23 = *(v22 + (v14 + 8));
                  if (*(v0 + 10) > (v14 + 9))
                  {
                    v24 = *v0;
                    *(v0 + 12) = v14 + 10;
                    v25 = *(v24 + (v14 + 9));
                    if (*(v0 + 10) > (v14 + 10))
                    {
                      v26 = *v0;
                      *(v0 + 12) = v14 + 11;
                      v27 = *(v26 + (v14 + 10));
                      if (*(v0 + 10) > (v14 + 11))
                      {
                        v28 = *v0;
                        *(v0 + 12) = v14 + 12;
                        v29 = *(v28 + (v14 + 11));
                        if (*(v0 + 10) > (v14 + 12))
                        {
                          v30 = *v0;
                          v31 = v14 + 13;
                          *(v0 + 12) = v14 + 13;
                          v32 = *(v30 + (v14 + 12));
                          if (v32 > 0xA0)
                          {
                            if (sub_10000C240())
                            {
                              sub_10000AF54("numStepsReported > MAX_NUM_STEPS_REPORTED aborting, numStepsReported=%d", v33, v34, v35, v36, v37, v38, v39, v32);
                              v40 = sub_10000C050(0x42u);
                              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_82;
                              }
                            }

                            return;
                          }

                          v49 = v3;
                          if (*(v30 + (v14 + 12)))
                          {
                            if (*(v0 + 14) != 1)
                            {
                              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1689, "(*pBs).__RWFlag == BYTESTREAM_READ");
                            }

                            v50 = 0;
                            v51 = 0;
                            v52 = *(v0 + 10);
                            while (v52 > v31)
                            {
                              v53 = *v0;
                              *(v0 + 12) = v31 + 1;
                              *(v106 + v50) = *(v53 + v31);
                              if (v52 <= (v31 + 1))
                              {
                                *(v0 + 15) = 1;
                                if (!sub_10000C240())
                                {
                                  return;
                                }

                                sub_10000AF54("Could not get the stepChannel[i] of the for the cs sub event results", v69, v70, v71, v72, v73, v74, v75, v101);
                                v76 = sub_10000C050(0x42u);
                                if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                                {
                                  return;
                                }

                                goto LABEL_82;
                              }

                              v54 = v31 + 2;
                              *(v0 + 12) = v54;
                              *(v105 + v50) = *(v53 + v31 + 1);
                              if (v52 <= v54)
                              {
                                *(v0 + 15) = 1;
                                if (!sub_10000C240())
                                {
                                  return;
                                }

                                sub_10000AF54("Could not get the stepDataLength[i] of the for the cs sub event results", v77, v78, v79, v80, v81, v82, v83, v101);
                                v84 = sub_10000C050(0x42u);
                                if (!os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                                {
                                  return;
                                }

                                goto LABEL_82;
                              }

                              v55 = v31 + 3;
                              *(v0 + 12) = v55;
                              v56 = *(v53 + v54);
                              *(v104 + v50) = v56;
                              if (v56 >= 0xA1)
                              {
                                if (!sub_10000C240())
                                {
                                  return;
                                }

                                sub_10000AF54("stepDataLength[i] > MAX_NUM_STEPS_REPORTED, aborting", v85, v86, v87, v88, v89, v90, v91, v101);
                                v92 = sub_10000C050(0x42u);
                                if (!os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                                {
                                  return;
                                }

                                goto LABEL_82;
                              }

                              if ((v52 - v55) < v56)
                              {
                                *(v0 + 15) = 1;
                                if (!sub_10000C240())
                                {
                                  return;
                                }

                                sub_10000AF54("Could not get the stepData of the for the cs sub event results", v93, v94, v95, v96, v97, v98, v99, v101);
                                v100 = sub_10000C050(0x42u);
                                if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                                {
                                  return;
                                }

                                goto LABEL_82;
                              }

                              if (v56)
                              {
                                v57 = &v103[v51];
                                v58 = &v57[v56];
                                v59 = (v53 + v55);
                                do
                                {
                                  v60 = *v59++;
                                  *v57++ = v60;
                                }

                                while (v57 < v58);
                              }

                              v31 = v55 + v56;
                              *(v0 + 12) = v31;
                              v51 += v56;
                              if (v32 <= ++v50)
                              {
                                goto LABEL_67;
                              }
                            }

                            *(v0 + 15) = 1;
                            if (!sub_10000C240())
                            {
                              return;
                            }

                            sub_10000AF54("Could not get the stepMode[i] of the for the cs sub event results", v61, v62, v63, v64, v65, v66, v67, v101);
                            v68 = sub_10000C050(0x42u);
                            if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                            {
                              return;
                            }

                            goto LABEL_82;
                          }

LABEL_67:
                          v3 = v49;
LABEL_45:
                          HIBYTE(v102) = v29;
                          LOBYTE(v102) = v27;
                          sub_1002CFED0(v3, v16, v17, v18, v19, v21, v23, v25, v102, v32, v106, v105, v104, v103);
                          return;
                        }

LABEL_44:
                        LOBYTE(v32) = 0;
                        *(v0 + 15) = 1;
                        goto LABEL_45;
                      }

                      v4 = v3;
                      *(v0 + 15) = 1;
LABEL_43:
                      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                      v29 = 0;
                      v3 = v4;
                      goto LABEL_44;
                    }

                    v4 = v3;
                    *(v0 + 15) = 1;
LABEL_41:
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                    v48 = *(v0 + 14);
                    *(v0 + 15) = 1;
                    if (v48 != 1)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1680, "(*pBs).__RWFlag == BYTESTREAM_READ");
                    }

                    v27 = 0;
                    goto LABEL_43;
                  }

                  v4 = v3;
                  *(v0 + 15) = 1;
LABEL_39:
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                  v47 = *(v0 + 14);
                  *(v0 + 15) = 1;
                  if (v47 != 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1679, "(*pBs).__RWFlag == BYTESTREAM_READ");
                  }

                  v25 = 0;
                  goto LABEL_41;
                }

                v4 = v3;
                *(v0 + 15) = 1;
LABEL_37:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
                v46 = *(v0 + 14);
                *(v0 + 15) = 1;
                if (v46 != 1)
                {
                  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1678, "(*pBs).__RWFlag == BYTESTREAM_READ");
                }

                v23 = 0;
                goto LABEL_39;
              }

              v4 = v3;
              *(v0 + 15) = 1;
LABEL_35:
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
              v45 = *(v0 + 14);
              *(v0 + 15) = 1;
              if (v45 != 1)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1677, "(*pBs).__RWFlag == BYTESTREAM_READ");
              }

              v21 = 0;
              goto LABEL_37;
            }

            v4 = v3;
            *(v0 + 15) = 1;
LABEL_33:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
            v44 = *(v0 + 14);
            *(v0 + 15) = 1;
            if (v44 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1676, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            v19 = 0;
            goto LABEL_35;
          }

          v4 = v3;
          *(v0 + 15) = 1;
LABEL_31:
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
          v43 = *(v0 + 14);
          *(v0 + 15) = 1;
          if (v43 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1675, "(*pBs).__RWFlag == BYTESTREAM_READ");
          }

          v18 = 0;
          goto LABEL_33;
        }

        v4 = v3;
        *(v0 + 15) = 1;
LABEL_29:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
        v42 = *(v0 + 14);
        *(v0 + 15) = 1;
        if (v42 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1674, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        v17 = 0;
        goto LABEL_31;
      }

      v4 = v3;
      *(v0 + 15) = 1;
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v41 = *(v0 + 14);
    *(v0 + 15) = 1;
    if (v41 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1673, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v16 = 0;
    goto LABEL_29;
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
LABEL_9:
  *(v0 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the connection handle of the read remote used features event", v6, v7, v8, v9, v10, v11, v12, v101);
    v13 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_82:
      sub_1000E09C0();
    }
  }
}

void sub_1002CC4CC()
{
  v0 = __chkstk_darwin();
  memset(v87, 0, sizeof(v87));
  memset(v86, 0, sizeof(v86));
  memset(v85, 0, sizeof(v85));
  bzero(v84, 0x6400uLL);
  if (*(v0 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1735, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (!*(v0 + 15))
  {
    v1 = *(v0 + 12);
    if (*(v0 + 10) - v1 <= 1)
    {
      goto LABEL_9;
    }

    v2 = *(*v0 + v1);
    *(v0 + 12) = v1 + 2;
    v3 = sub_1000ABB80(v2);
    if (*(v0 + 14) != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1738, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v4 = v3;
    if (*(v0 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
      v5 = *(v0 + 14);
      *(v0 + 15) = 1;
      if (v5 != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1739, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }
    }

    else
    {
      v14 = *(v0 + 12);
      if (*(v0 + 10) > v14)
      {
        v15 = *v0;
        *(v0 + 12) = v14 + 1;
        v16 = *(v15 + v14);
        if (*(v0 + 10) > (v14 + 1))
        {
          v17 = *v0;
          *(v0 + 12) = v14 + 2;
          v18 = *(v17 + v14 + 1);
          if (*(v0 + 10) > (v14 + 2))
          {
            v19 = *v0;
            *(v0 + 12) = v14 + 3;
            v20 = *(v19 + v14 + 2);
            if (*(v0 + 10) > (v14 + 3))
            {
              v21 = *v0;
              *(v0 + 12) = v14 + 4;
              v22 = *(v21 + v14 + 3);
              if (*(v0 + 10) > (v14 + 4))
              {
                v23 = *v0;
                *(v0 + 12) = v14 + 5;
                v24 = *(v23 + v14 + 4);
                if (*(v0 + 10) > (v14 + 5))
                {
                  v25 = *v0;
                  v26 = v14 + 6;
                  *(v0 + 12) = v14 + 6;
                  v27 = *(v25 + v14 + 5);
                  if (v27 > 0xA0)
                  {
                    if (sub_10000C240())
                    {
                      sub_10000AF54("numStepsReported > MAX_NUM_STEPS_REPORTED aborting, numStepsReported=%d", v28, v29, v30, v31, v32, v33, v34, v27);
                      v35 = sub_10000C050(0x42u);
                      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_67;
                      }
                    }

                    return;
                  }

                  if (*(v25 + v14 + 5))
                  {
                    if (*(v0 + 14) != 1)
                    {
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1752, "(*pBs).__RWFlag == BYTESTREAM_READ");
                    }

                    v40 = 0;
                    v41 = 0;
                    v42 = 0;
                    v43 = *(v0 + 10);
                    while (!v40)
                    {
                      if (v43 <= v26)
                      {
                        goto LABEL_56;
                      }

                      v44 = *v0;
                      *(v0 + 12) = v26 + 1;
                      *(v87 + v41) = *(v44 + v26);
                      if (v43 <= (v26 + 1))
                      {
                        *(v0 + 15) = 1;
                        if (!sub_10000C240())
                        {
                          return;
                        }

                        sub_10000AF54("Could not get the stepChannel[i] of the for the cs sub event results", v59, v60, v61, v62, v63, v64, v65, v83);
                        v66 = sub_10000C050(0x42u);
                        if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                        {
                          return;
                        }

                        goto LABEL_67;
                      }

                      v45 = v26 + 2;
                      *(v0 + 12) = v45;
                      *(v86 + v41) = *(v44 + v26 + 1);
                      if (v43 <= v45)
                      {
                        *(v0 + 15) = 1;
                        if (!sub_10000C240())
                        {
                          return;
                        }

                        sub_10000AF54("Could not get the stepDataLength[i] of the for the cs sub event results", v67, v68, v69, v70, v71, v72, v73, v83);
                        v74 = sub_10000C050(0x42u);
                        if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                        {
                          return;
                        }

                        goto LABEL_67;
                      }

                      v26 += 3;
                      *(v0 + 12) = v26;
                      v46 = *(v44 + v45);
                      *(v85 + v41) = v46;
                      if (v46 >= 0xA1)
                      {
                        if (!sub_10000C240())
                        {
                          return;
                        }

                        sub_10000AF54("stepDataLength[i] > MAX_STEP_DATA_LENGTH, aborting", v75, v76, v77, v78, v79, v80, v81, v83);
                        v82 = sub_10000C050(0x42u);
                        if (!os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                        {
                          return;
                        }

                        goto LABEL_67;
                      }

                      if ((v43 - v26) >= v46)
                      {
                        if (v46)
                        {
                          v47 = &v84[v42];
                          v48 = &v47[v46];
                          v49 = (v44 + v26);
                          do
                          {
                            v50 = *v49++;
                            *v47++ = v50;
                          }

                          while (v47 < v48);
                        }

                        v40 = 0;
                        v26 += v46;
                        *(v0 + 12) = v26;
                      }

                      else
                      {
                        v40 = 1;
                        *(v0 + 15) = 1;
                      }

                      v42 += v46;
                      if (v27 <= ++v41)
                      {
                        goto LABEL_33;
                      }
                    }

                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
LABEL_56:
                    *(v0 + 15) = 1;
                    if (!sub_10000C240())
                    {
                      return;
                    }

                    sub_10000AF54("Could not get the stepMode[i] of the for the cs sub event results", v51, v52, v53, v54, v55, v56, v57, v83);
                    v58 = sub_10000C050(0x42u);
                    if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                    {
                      return;
                    }

                    goto LABEL_67;
                  }

LABEL_33:
                  sub_1002CFFA8(v4, v16, v18, v20, v22, v24, v27, v87, v86, v85, v84);
                  return;
                }

LABEL_32:
                LODWORD(v27) = 0;
                *(v0 + 15) = 1;
                goto LABEL_33;
              }

              *(v0 + 15) = 1;
LABEL_31:
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
              v24 = 0;
              goto LABEL_32;
            }

            *(v0 + 15) = 1;
LABEL_29:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
            v39 = *(v0 + 14);
            *(v0 + 15) = 1;
            if (v39 != 1)
            {
              sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1743, "(*pBs).__RWFlag == BYTESTREAM_READ");
            }

            v22 = 0;
            goto LABEL_31;
          }

          *(v0 + 15) = 1;
LABEL_27:
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
          v38 = *(v0 + 14);
          *(v0 + 15) = 1;
          if (v38 != 1)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1742, "(*pBs).__RWFlag == BYTESTREAM_READ");
          }

          v20 = 0;
          goto LABEL_29;
        }

        *(v0 + 15) = 1;
LABEL_25:
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
        v37 = *(v0 + 14);
        *(v0 + 15) = 1;
        if (v37 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1741, "(*pBs).__RWFlag == BYTESTREAM_READ");
        }

        v18 = 0;
        goto LABEL_27;
      }

      *(v0 + 15) = 1;
    }

    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v36 = *(v0 + 14);
    *(v0 + 15) = 1;
    if (v36 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1740, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v16 = 0;
    goto LABEL_25;
  }

  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
LABEL_9:
  *(v0 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the connection handle of the read remote used features event", v6, v7, v8, v9, v10, v11, v12, v83);
    v13 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_67:
      sub_1000E09C0();
    }
  }
}

void sub_1002CCBE8(uint64_t *a1)
{
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1406, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v2 = *(a1 + 14);
    *(a1 + 15) = 1;
    if (v2 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1407, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    goto LABEL_13;
  }

  v3 = *(a1 + 6);
  if (*(a1 + 5) <= v3)
  {
    *(a1 + 15) = 1;
LABEL_13:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v11 = *(a1 + 14);
    *(a1 + 15) = 1;
    if (v11 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1408, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v5 = 0;
    goto LABEL_15;
  }

  v4 = *a1;
  *(a1 + 6) = v3 + 1;
  v5 = *(v4 + v3);
  if (*(a1 + 5) - (v3 + 1) <= 1)
  {
    *(a1 + 15) = 1;
LABEL_15:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v12 = *(a1 + 14);
    *(a1 + 15) = 1;
    if (v12 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1409, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v6 = 0;
    goto LABEL_17;
  }

  v6 = *(*a1 + v3 + 1);
  *(a1 + 6) = v3 + 3;
  if (*(a1 + 5) - (v3 + 3) <= 1)
  {
    *(a1 + 15) = 1;
LABEL_17:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v13 = *(a1 + 14);
    *(a1 + 15) = 1;
    if (v13 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1410, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v7 = 0;
    goto LABEL_19;
  }

  v7 = *(*a1 + (v3 + 3));
  *(a1 + 6) = v3 + 5;
  if (*(a1 + 5) - (v3 + 5) <= 1)
  {
    *(a1 + 15) = 1;
LABEL_19:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v14 = *(a1 + 14);
    *(a1 + 15) = 1;
    if (v14 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1411, "(*pBs).__RWFlag == BYTESTREAM_READ");
    }

    v8 = 0;
    goto LABEL_21;
  }

  v8 = *(*a1 + (v3 + 5));
  *(a1 + 6) = v3 + 7;
  if (*(a1 + 5) - (v3 + 7) <= 1)
  {
    *(a1 + 15) = 1;
LABEL_21:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v9 = 0;
    goto LABEL_22;
  }

  v9 = *(*a1 + (v3 + 7));
  *(a1 + 6) = v3 + 9;
  if (*(a1 + 5) - (v3 + 9) >= 2)
  {
    v10 = *(*a1 + (v3 + 9));
    *(a1 + 6) = v3 + 11;
    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
  *(a1 + 15) = 1;
LABEL_23:
  if (sub_1000ABB80(v6))
  {

    sub_1002C1E5C(v5, v6, v7, v8, v9, v10);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("LE_HCIEventHandler_RemoteConnectionParameterRequest: Invalid connectionHandle for lmHandle 0x%2x", v15, v16, v17, v18, v19, v20, v21, v6);
    v22 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1002CCF84(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    v1 = v2 - v3;
    if (v1 == 3)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 612, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (v2 <= v3)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the advertising handle of the LE Periodic Advertising Subevent Data Request event", v14, v15, v16, v17, v18, v19, v20, v38);
          v21 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v4 = *a1;
        *(a1 + 6) = v3 + 1;
        if (v2 <= v3 + 1)
        {
          *(a1 + 15) = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get the subevent start of the LE Periodic Advertising Subevent Data Request event", v22, v23, v24, v25, v26, v27, v28, v38);
            v29 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v5 = *(v4 + v3);
          *(a1 + 6) = v3 + 2;
          if (v2 <= v3 + 2)
          {
            *(a1 + 15) = 1;
            if (sub_10000C240())
            {
              sub_10000AF54("Could not get the subevent data count of the LE Periodic Advertising Subevent Data Request event", v30, v31, v32, v33, v34, v35, v36, v38);
              v37 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
            *(a1 + 6) = v3 + 3;

            nullsub_21(v5);
          }
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid Periodic Advertising Subevent Data Request event packet size : %d, expecting %d", v6, v7, v8, v9, v10, v11, v12, v1);
    v13 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      sub_1000E09C0();
    }
  }
}

void sub_1002CD18C(uint64_t *a1)
{
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
    v1 = 0;
  }

  else
  {
    v3 = *(a1 + 5);
    v4 = *(a1 + 6);
    v1 = v3 - v4;
    if (v1 > 0xA)
    {
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 659, "(*pBs).__RWFlag == BYTESTREAM_READ");
      }

      if (v3 <= v4)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the advertising handle of the LE Periodic Advertising Response Report event", v20, v21, v22, v23, v24, v25, v26, v84);
          v27 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        v13 = *a1;
        *(a1 + 6) = v4 + 1;
        if (v3 <= v4 + 1)
        {
          *(a1 + 15) = 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not get the subevent of the LE Periodic Advertising Response Report event", v28, v29, v30, v31, v32, v33, v34, v84);
            v35 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
          v14 = *(v13 + v4);
          *(a1 + 6) = v4 + 2;
          if (v3 <= v4 + 2)
          {
            *(a1 + 15) = 1;
            if (sub_10000C240())
            {
              sub_10000AF54("Could not get the txStatus of the LE Periodic Advertising Response Report event", v36, v37, v38, v39, v40, v41, v42, v84);
              v43 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_6;
              }
            }
          }

          else
          {
            v15 = v4 + 3;
            *(a1 + 6) = v4 + 3;
            if (v3 <= v4 + 3)
            {
              *(a1 + 15) = 1;
              if (sub_10000C240())
              {
                sub_10000AF54("Could not get the number of responses of the LE Periodic Advertising Response Report event", v44, v45, v46, v47, v48, v49, v50, v84);
                v51 = sub_10000C050(0x42u);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_6;
                }
              }
            }

            else
            {
              *(a1 + 6) = v4 + 4;
              if (*(v13 + v15))
              {
                v16 = *(v13 + v15);
                while (1)
                {
                  if (*(a1 + 14) != 1)
                  {
                    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 672, "(*pBs).__RWFlag == BYTESTREAM_READ");
                  }

                  if (*(a1 + 15))
                  {
                    break;
                  }

                  v17 = *(a1 + 5);
                  v18 = *(a1 + 6);
                  if (v17 <= v18)
                  {
                    goto LABEL_37;
                  }

                  *(a1 + 6) = v18 + 1;
                  if (v17 <= v18 + 1)
                  {
                    *(a1 + 15) = 1;
                    if (!sub_10000C240())
                    {
                      return;
                    }

                    sub_10000AF54("Could not get the address type of the LE advertising report event", v60, v61, v62, v63, v64, v65, v66, v84);
                    v67 = sub_10000C050(0x42u);
                    if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                    {
                      return;
                    }

                    goto LABEL_6;
                  }

                  *(a1 + 6) = v18 + 2;
                  if (v17 <= v18 + 2)
                  {
                    *(a1 + 15) = 1;
                    if (!sub_10000C240())
                    {
                      return;
                    }

                    sub_10000AF54("Could not get the address of the LE advertising report event", v68, v69, v70, v71, v72, v73, v74, v84);
                    v75 = sub_10000C050(0x42u);
                    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                    {
                      return;
                    }

                    goto LABEL_6;
                  }

                  *(a1 + 6) = v18 + 3;
                  if (v17 <= v18 + 3)
                  {
                    *(a1 + 15) = 1;
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
LABEL_47:
                    *(a1 + 15) = 1;
                    if (!sub_10000C240())
                    {
                      return;
                    }

                    sub_10000AF54("Could not get the dataLength of the LE advertising report event", v76, v77, v78, v79, v80, v81, v82, v84);
                    v83 = sub_10000C050(0x42u);
                    if (!os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                    {
                      return;
                    }

                    goto LABEL_6;
                  }

                  *(a1 + 6) = v18 + 4;
                  if (v17 <= v18 + 4)
                  {
                    goto LABEL_47;
                  }

                  *(a1 + 6) = v18 + 5;
                  v19 = sub_100007618(0, 0xBA2DB8FEuLL);
                  nullsub_21(v14);
                  sub_10000C1E8(v19);
                  if (!--v16)
                  {
                    return;
                  }
                }

                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
LABEL_37:
                *(a1 + 15) = 1;
                if (!sub_10000C240())
                {
                  return;
                }

                sub_10000AF54("Could not get the event type of the LE advertising report event", v52, v53, v54, v55, v56, v57, v58, v84);
                v59 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  return;
                }

                goto LABEL_6;
              }
            }
          }
        }
      }

      return;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Not enough data in the packet : %d, expecting at least %d", v5, v6, v7, v8, v9, v10, v11, v1);
    v12 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      sub_1000E09C0();
    }
  }
}

void sub_1002CD640(uint64_t *a1)
{
  if (*(a1 + 14) != 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1781, "(*pBs).__RWFlag == BYTESTREAM_READ");
  }

  memset(v32, 0, sizeof(v32));
  if (*(a1 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c");
  }

  else
  {
    v2 = *(a1 + 5);
    v3 = *(a1 + 6);
    if (v2 > v3)
    {
      v4 = *a1;
      *(a1 + 6) = v3 + 1;
      if ((v2 - (v3 + 1)) <= 1)
      {
        *(a1 + 15) = 1;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not get the connection handle of the read all remote features complete event", v20, v21, v22, v23, v24, v25, v26, *&v32[0]);
          v27 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        v5 = *(v4 + v3);
        v6 = *(v4 + v3 + 1);
        *(a1 + 6) = v3 + 3;
        if (v2 <= (v3 + 3))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1785, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v7 = v3 + 4;
        *(a1 + 6) = v3 + 4;
        if (v2 <= (v3 + 4))
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LE_Events.c", 1786, "ByteStream_NumReadBytesAvail(*pBs) >= 1");
        }

        v8 = *(v4 + (v3 + 3));
        v9 = v3 + 5;
        *(a1 + 6) = v9;
        v10 = *(v4 + v7);
        v11 = 24 * v10 + 8;
        if ((v2 - v9) >= v11)
        {
          v28 = (v4 + v9);
          v29 = v32;
          do
          {
            v30 = *v28++;
            *v29++ = v30;
          }

          while (v29 < v32 + v11);
          *(a1 + 6) = v9 + v11;
        }

        else
        {
          *(a1 + 15) = 1;
        }

        v31 = sub_100022244(v5);
        sub_1002C2BD8(v31, v6, v8, v10, v32);
      }

      return;
    }
  }

  *(a1 + 15) = 1;
  if (sub_10000C240())
  {
    sub_10000AF54("Could not get the status of the read all remote features complete event", v12, v13, v14, v15, v16, v17, v18, *&v32[0]);
    v19 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      sub_1000E09C0();
    }
  }
}

void sub_1002CD87C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (a1 > 8295)
  {
    if (a1 <= 8317)
    {
      if ((a1 - 8296) < 2)
      {
        if (a2)
        {
          v23 = *a3;

          sub_10018396C(a2, v23, 0);
        }

        return;
      }

      if (a1 == 8298)
      {
        if (a2)
        {
          v24 = *a3;

          sub_100183C9C(a2, v24, 22);
        }

        return;
      }

      if (a1 == 8299)
      {
        if (a2)
        {
          v14 = *a3;

          sub_100183E2C(a2, v14, 0);
        }

        return;
      }

      goto LABEL_48;
    }

    if (a1 == 8318)
    {
      if (a2)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send connection subrating command: %!", v51, v52, v53, v54, v55, v56, v57, a2);
          v58 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }
        }
      }

      return;
    }

    if (a1 == 8328)
    {
      if (a2)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send all remote features: %!", v33, v34, v35, v36, v37, v38, v39, a2);
          v40 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }
        }
      }

      return;
    }

    if (a1 != 8325)
    {
      goto LABEL_48;
    }

    goto LABEL_28;
  }

  if (a1 > 8258)
  {
    if (a1 > 8291)
    {
      if (a1 == 8292)
      {
        if (a2)
        {
          for (i = 0; i != 8; i += 2)
          {
            v50 = *&a3[i];
            if (v50 != 0xFFFF)
            {
              v61 = 0;
              v59 = 0u;
              v60 = 0u;
              LOWORD(v59) = v50;
              sub_1002189A0(a2, &v59);
            }
          }
        }

        return;
      }

      if (a1 == 8294)
      {
        if (a2)
        {
          v61 = 0;
          v59 = 0u;
          v60 = 0u;
          LOWORD(v59) = *a3;
          sub_1002189A0(a2, &v59);
        }

        return;
      }

      goto LABEL_48;
    }

    if (a1 != 8259)
    {
      if (a1 == 8260)
      {
        if (a2)
        {

          sub_1001B8EC0();
        }

        return;
      }

      goto LABEL_48;
    }

LABEL_28:
    sub_1002C1EE8(a2, 0, 0, a3, 0, 0, 0, 0, 0, 0xFFFF, 0);
    return;
  }

  if (a1 > 8213)
  {
    if (a1 == 8214)
    {
      if (a2)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send remote used features: %!", v41, v42, v43, v44, v45, v46, v47, a2);
          v48 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }
        }
      }

      return;
    }

    if (a1 == 8242)
    {
      if (a2)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send set phy: %!", v15, v16, v17, v18, v19, v20, v21, a2);
          v22 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }
        }
      }

      return;
    }

    goto LABEL_48;
  }

  if (a1 == 8205)
  {
    goto LABEL_28;
  }

  if (a1 != 8211)
  {
LABEL_48:
    if (sub_10000C240())
    {
      sub_10000AF54("Unknown LE event code 0x%x", v25, v26, v27, v28, v29, v30, v31, a1);
      v32 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }
    }

    return;
  }

  if (a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send connection update : %!", v6, v7, v8, v9, v10, v11, v12, a2);
      v13 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_68:
        sub_10080F604();
      }
    }
  }
}

void sub_1002CDCA8(uint64_t a1, uint64_t a2)
{
  if (!a1 || *(a1 + 125) != 1)
  {
    return;
  }

  if (a2 <= 760)
  {
    if (!a2)
    {
      v20 = 48;
      if (*(a1 + 55))
      {
        v20 = 56;
      }

      if (sub_1002DF928((a1 + v20)) && *(a1 + 132))
      {
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    if (a2 != 634)
    {
      if (a2 == 706)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Encryption failed, peer removed keys, keepConnectedAfterFailedInitialEncryption=%d", v4, v5, v6, v7, v8, v9, v10, *(a1 + 296));
          v11 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        if ((*(a1 + 296) & 1) == 0)
        {
          *(a1 + 132) = 6;
          *(a1 + 140) = 4833;
          sub_1002CDF48(a1);
          return;
        }
      }

      goto LABEL_20;
    }

LABEL_13:
    if (sub_10000C240())
    {
      sub_10000AF54("Encryption failed due to %!, aborting connection notifications, waiting for disconnection event", v12, v13, v14, v15, v16, v17, v18, a2);
      v19 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return;
  }

  if ((a2 - 761) <= 1)
  {
    goto LABEL_13;
  }

LABEL_20:
  *(a1 + 125) = 0;
  if (*(a1 + 356))
  {
    if (*(a1 + 132) == 5)
    {
      sub_1002CE094(a1, a2);
    }

LABEL_34:
    if (*(a1 + 132) == 5)
    {
      sub_1002CE094(a1, 0);
    }

    return;
  }

  if (*(a1 + 70))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("FastLEConnection:Skipping LE_GAP_ReadRemoteVersionInformation on encryptionStartedCb", v21, v22, v23, v24, v25, v26, v27, v39);
      v28 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v41 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    goto LABEL_34;
  }

  v29 = sub_1002CDFF8(a1);
  if (!v29)
  {
    *(a1 + 126) = 1;
    if (*(a1 + 132) != 6)
    {
      *(a1 + 132) = 1;
    }

    goto LABEL_34;
  }

  v30 = v29;
  if (sub_10000C240())
  {
    sub_10000AF54("LE_GAP_ReadRemoteVersionInformation failed %!", v31, v32, v33, v34, v35, v36, v37, v30);
    v38 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  *(a1 + 132) = 5;
}

uint64_t sub_1002CDF48(uint64_t a1)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  if (a1 && sub_1000ABD24(a1))
  {

    return sub_1002BF944(a1);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This handle is not a LE connection.", v3, v4, v5, v6, v7, v8, v9, v11);
      v10 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1310;
  }
}

uint64_t sub_1002CDFF8(uint64_t a1)
{
  v11 = a1;
  if (!a1)
  {
    return 1310;
  }

  v1 = a1;
  if (!sub_1000ABD24(a1))
  {
    return 1310;
  }

  if (dword_100B6A5B4)
  {
    v10[1] = &v11;
    v10[0] = 8;
    result = sub_10002195C(sub_1002D207C, v10, ((dword_100B6A5B4 + 99) / 0x64u), 0);
    if (!result)
    {
      return result;
    }

    v1 = v11;
  }

  return sub_1002C1E0C(v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_1002CE094(uint64_t a1, uint64_t a2)
{
  if (a1 && !a2)
  {
    v24 = 0;
    sub_100016250(&v24);
    *(a1 + 368) = sub_100306DA4((a1 + 360), &v24);
    if (sub_10000C240())
    {
      sub_10000AF54("LinkReady took %llums from connectionComplete", v4, v5, v6, v7, v8, v9, v10, *(a1 + 368));
      v11 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = sub_10000C0FC();
        *buf = 136446210;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    goto LABEL_12;
  }

  if (!a2)
  {
LABEL_12:
    v21 = word_100B66270;
    if (word_100B66270)
    {
      v22 = 0;
      do
      {
        v23 = *(qword_100B66278[v22] + 40);
        if (v23)
        {
          v23(a1, 0, *(a1 + 356));
          v21 = word_100B66270;
        }

        ++v22;
      }

      while (v22 < v21);
    }

    goto LABEL_17;
  }

  if (a2 != 719 && *(a1 + 124) != 7)
  {
    if (sub_10000C240())
    {
      sub_1002567E8(*(a1 + 124));
      sub_10000AF54("GAP LinkReadyCB error with status %! during %s, not-disconnecting", v13, v14, v15, v16, v17, v18, v19, a2);
      v20 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

LABEL_17:
  *(a1 + 132) = 7;
  *(a1 + 356) = 0;
}

uint64_t sub_1002CE244(uint64_t a1)
{
  v2 = word_100B66270;
  v3 = word_100B66270;
  if (word_100B66270)
  {
    if (word_100B66270 == 8)
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

      return 4050;
    }

    else
    {
      v13 = 0;
      while (qword_100B66278[v13] != a1)
      {
        if (word_100B66270 <= ++v13)
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
    qword_100B66278[v3] = a1;
    word_100B66270 = v2 + 1;
  }

  return v12;
}

uint64_t sub_1002CE314(uint64_t a1)
{
  v2 = word_100B662B8;
  v3 = word_100B662B8;
  if (word_100B662B8)
  {
    if (word_100B662B8 == 8)
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

      return 4050;
    }

    else
    {
      v13 = 0;
      while (qword_100B662C0[v13] != a1)
      {
        if (word_100B662B8 <= ++v13)
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
    qword_100B662C0[v3] = a1;
    word_100B662B8 = v2 + 1;
  }

  return v12;
}

uint64_t sub_1002CE3E4(uint64_t result)
{
  if (word_100B66270)
  {
    v1 = 0;
    while (qword_100B66278[v1] != result)
    {
      if (word_100B66270 <= ++v1)
      {
        return result;
      }
    }

    v3 = qword_100B66278[--word_100B66270];
    v2 = word_100B66270;
    qword_100B66278[v1] = v3;
    qword_100B66278[v2] = 0;
  }

  return result;
}

void sub_1002CE438(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (byte_100B66300 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Connection complete, we need to update our own address now", v8, v9, v10, v11, v12, v13, v14, v77);
      v15 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    sub_1002CE968();
  }

  if (a2)
  {
    if (*(a2 + 55))
    {
      v16 = (a2 + 56);
    }

    else
    {
      v16 = a1;
    }

    v17 = (v16[1] << 40) | (v16[2] << 32) | (v16[3] << 24) | (v16[4] << 16) | (v16[5] << 8) | v16[6] | (*v16 << 48);
    if (sub_1002CED40(v17))
    {
      if (sub_10000C240())
      {
        v25 = *a1 ? "Random" : "Public";
        sub_10000AF54("FastLEConnection:LE_GAP_IsFastLeConnectionEnabledForAddress enabled for %s:%:", v18, v19, v20, v21, v22, v23, v24, v25);
        v26 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = sub_10000C0FC();
          *buf = 136446210;
          *&buf[4] = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      *(a2 + 356) = 1;
      *(a2 + 357) = sub_1002CEED0(v17);
      *(a2 + 358) = sub_1002CF074(v17);
    }

    if (*(a2 + 55) == 1)
    {
      v84 = 0;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      *buf = 0u;
      v79 = 0u;
      *&buf[1] = *(a2 + 49);
      *&buf[5] = *(a2 + 53);
      buf[7] = *(a2 + 56);
      *&buf[8] = *(a2 + 57);
      *&buf[12] = *(a2 + 61);
      sub_1001C4DCC(buf, 14);
      a1 = (a2 + 56);
    }

    if (!a3)
    {
      if (*(a2 + 70) == 1)
      {
        byte_100B663B9 &= 0x7Cu;
        sub_1002B16B4(0);
      }

      else if (*(a2 + 356))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("FastLEConnection:Skipping startLinkEncryption, pendingAuth=%d", v35, v36, v37, v38, v39, v40, v41, *(a2 + 357));
          v42 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = sub_10000C0FC();
            *buf = 136446210;
            *&buf[4] = v43;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        *(a2 + 125) = *(a2 + 357);
      }

      else
      {
        if (!sub_1002CF218(a2))
        {
          v45 = 1;
          *(a2 + 125) = 1;
          goto LABEL_39;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Encryption start fails with status %!", v46, v47, v48, v49, v50, v51, v52, 0);
          v53 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }

      v45 = 1;
      goto LABEL_39;
    }
  }

  if (a3 != 702)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("GAP_ConnectionCompleteCallback with error stats %! on lm 0x%x", v28, v29, v30, v31, v32, v33, v34, a3);
      v44 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  v45 = 0;
LABEL_39:
  v54 = word_100B66270;
  if (word_100B66270)
  {
    v55 = 0;
    do
    {
      v56 = *qword_100B66278[v55];
      if (v56)
      {
        if (a2)
        {
          v57 = *(a2 + 356);
        }

        else
        {
          v57 = 0;
        }

        v56(a1, a2, a3, a4, v57);
        v54 = word_100B66270;
      }

      ++v55;
    }

    while (v54 > v55);
  }

  if (v45 && *(a2 + 70) == 1)
  {
    if (*(a2 + 132))
    {
      sub_1000D660C();
    }

    if (*(a2 + 356))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("FastLEConnection:Skipping LE_GAP_ReadRemoteVersionInformation", v58, v59, v60, v61, v62, v63, v64, v77);
        v65 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = sub_10000C0FC();
          *buf = 136446210;
          *&buf[4] = v66;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }

    else
    {
      v67 = sub_1002CDFF8(a2);
      if (v67)
      {
        v68 = v67;
        if (sub_10000C240())
        {
          sub_10000AF54("LE_GAP_ReadRemoteVersionInformation failed %!", v69, v70, v71, v72, v73, v74, v75, v68);
          v76 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        sub_1002CE094(a2, v68);
      }

      else
      {
        *(a2 + 132) = 1;
      }
    }
  }
}

void sub_1002CE968()
{
  if (byte_100B6A5C4 == 1)
  {
    *buf = 0;
    sub_100304E90(dword_100B6A5C0, buf);
  }

  if (sub_10000C240())
  {
    v0 = byte_100B6A5B0;
    sub_1002BF8F8();
    sub_1002D9C4C();
    sub_10000AF54("refreshing PrivateAddressTimer gPrivateMode=%d gOverrideLocalAddress=%d IsConnectionInProgress=%d IsScanInProgress=%d gHoldStableAddress=%d gHoldStableAddressCount=%d gLeHoldStablePrivateAddressTimer=%d Hold Time Remaining=%d:%d", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_10000C0FC();
      *buf = 136446210;
      v39 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  sub_1002D1404();
  byte_100B6A5C4 = 0;
  word_100B6A5C6 = 0;
  sub_1002D430C();
  if ((byte_100B6A5B0 & 1) == 0 && (byte_100B6A5B1 & 1) == 0)
  {
    if (sub_1002B2C40())
    {
      if (byte_100B6A5CA)
      {
LABEL_10:
        byte_100B6A5C8 = 0;
        if (sub_1002D2260(byte_100B6A57D) && sub_10000C240())
        {
          sub_10000AF54("createAddress with type %d failed with stats %! in refreshLePrivateAddress", v10, v11, v12, v13, v14, v15, v16, byte_100B6A57D);
          v17 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_1002D14F4((&dword_100B6A57E[2 * byte_100B6A57D] - byte_100B6A57D), 1);
        return;
      }

      if ((sub_1002BF8F8() & 1) == 0 && !sub_1002D9C4C())
      {
        if ((byte_100B6A5CA & 1) == 0)
        {
          byte_100B66300 = 0;
          byte_100B6A5CB = 0;
          dword_100B6A5CC = 0;
          word_100B6A5D0 = 0;
        }

        goto LABEL_10;
      }

      if ((byte_100B66300 & 1) == 0 && (byte_100B6A5CB & 1) == 0)
      {
        sub_1001BABC0(&dword_100B6A5CC);
      }

      if (sub_1002BF8F8())
      {
        byte_100B66300 = 1;
      }

      if (sub_1002D9C4C())
      {
        byte_100B6A5CB = 1;
      }

      v37 = 0;
      sub_1001BABC0(&v37);
      if (sub_10000C240())
      {
        sub_10000AF54("Busy with a connection/scan, can't update an address right now (gRefreshLocalAddressOnConnectionComplete=%d gRefreshLocalAddressOnScanComplete=%d). Address refresh deferral for %d seconds", v27, v28, v29, v30, v31, v32, v33, byte_100B66300);
        v34 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = sub_10000C0FC();
          *buf = 136446210;
          v39 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Advertising is starting/stopping, wait with the address change until we're settled", v18, v19, v20, v21, v22, v23, v24, v36);
        v25 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = sub_10000C0FC();
          *buf = 136446210;
          v39 = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      byte_100B6A5C8 = 1;
    }

    sub_1002D4144();
  }
}

uint64_t sub_1002CED40(unint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFLL) == 0)
  {
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("FastLeConnection:LE_GAP_IsFastLeConnectionEnabledForAddress compare with zero address", v5, v6, v7, v8, v9, v10, v11, v24);
    v12 = sub_10000C050(0x42u);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1000E09C0();
    return 0;
  }

  v1 = byte_100B6A5E8;
  if (!byte_100B6A5E8)
  {
    return 0;
  }

  v2 = qword_100B6A5F0;
  while (1)
  {
    v3 = *v2;
    v2 += 2;
    if (v3 == a1)
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  v13 = (a1 << 32) & 0xFF0000000000 | (a1 << 48) | (a1 << 16) & 0xFF00000000 | a1 & 0xFF000000 | (a1 >> 16) & 0xFF0000 | WORD2(a1) & 0xFF00 | BYTE6(a1);
  if (sub_10000C240())
  {
    v21 = "Random";
    if (!v13)
    {
      v21 = "Public";
    }

    sub_10000AF54("FastLeConnection:LE_GAP_IsFastLeConnectionEnabledForAddress for %s:%: enabled", v14, v15, v16, v17, v18, v19, v20, v21);
    v22 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = sub_10000C0FC();
      *buf = 136446210;
      v26 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return 1;
}

uint64_t sub_1002CEED0(unint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v1 = byte_100B6A5E8;
    if (byte_100B6A5E8)
    {
      for (i = &byte_100B6A5F8; *(i - 1) != a1; i += 16)
      {
        if (!--v1)
        {
          return v1 & 1;
        }
      }

      v11 = (a1 << 32) & 0xFF0000000000 | (a1 << 48) | (a1 << 16) & 0xFF00000000 | a1 & 0xFF000000 | (a1 >> 16) & 0xFF0000 | WORD2(a1) & 0xFF00 | BYTE6(a1);
      if (sub_10000C240())
      {
        v19 = "Random";
        if (!v11)
        {
          v19 = "Public";
        }

        sub_10000AF54("FastLeConnection:LE_GAP_IsFastLeConnectionEncryptionExpectedForAddress for %s:%: pending:%d", v12, v13, v14, v15, v16, v17, v18, v19);
        v20 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = sub_10000C0FC();
          *buf = 136446210;
          v25 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      LOBYTE(v1) = *i;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("FastLeConnection:LE_GAP_IsFastLeConnectionEncryptionExpectedForAddress compare with zero address", v3, v4, v5, v6, v7, v8, v9, v23);
      v10 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t sub_1002CF074(unint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v1 = byte_100B6A5E8;
    if (byte_100B6A5E8)
    {
      for (i = &byte_100B6A5F9; *(i - 9) != a1; i += 16)
      {
        if (!--v1)
        {
          return v1 & 1;
        }
      }

      v11 = (a1 << 32) & 0xFF0000000000 | (a1 << 48) | (a1 << 16) & 0xFF00000000 | a1 & 0xFF000000 | (a1 >> 16) & 0xFF0000 | WORD2(a1) & 0xFF00 | BYTE6(a1);
      if (sub_10000C240())
      {
        v19 = "Random";
        if (!v11)
        {
          v19 = "Public";
        }

        sub_10000AF54("FastLeConnection:LE_GAP_IsFastLeConnectionEncryptionFakeEvent for %s:%: fakeEncryptionEvent:%d", v12, v13, v14, v15, v16, v17, v18, v19);
        v20 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = sub_10000C0FC();
          *buf = 136446210;
          v25 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      LOBYTE(v1) = *i;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("FastLeConnection:LE_GAP_IsFastLeConnectionEncryptionFakeEvent compare with zero address", v3, v4, v5, v6, v7, v8, v9, v23);
      v10 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}