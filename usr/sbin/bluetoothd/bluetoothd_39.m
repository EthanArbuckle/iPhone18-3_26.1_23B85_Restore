void sub_10029BCD4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a2 || !a3)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("BR/EDR Security Manager error : invalid size %d", v8, v9, v10, v11, v12, v13, v14, a3);
    v15 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_21:
    sub_1000E09C0();
    return;
  }

  if (sub_1000B8B5C(a1))
  {
    v6 = *a2;
    if (v6 < 0xF)
    {
      v7 = &unk_100AE7FE8;
      goto LABEL_12;
    }
  }

  if (!sub_1000ABD24(a1) || (v6 = *a2, v6 >= 0xF))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Invalid connection", v17, v18, v19, v20, v21, v22, v23, v33);
    v24 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_21;
  }

  v7 = &unk_100AE9E30;
LABEL_12:
  v16 = v7[v6];
  if (!v16)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Unknow SMP header 0x%x or invalid connection", v25, v26, v27, v28, v29, v30, v31, *a2);
    v32 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_21;
  }

  v16(a1, a2 + 1, (a3 - 1));
}

uint64_t sub_10029BE74(uint64_t a1)
{
  if (sub_1000ABD24(a1))
  {
    v2 = 272;
    return *(a1 + v2);
  }

  if (sub_1000B8B5C(a1))
  {
    v2 = 312;
    return *(a1 + v2);
  }

  return 0;
}

uint64_t sub_10029BEC0(__int128 *a1, char *a2, size_t a3, int a4)
{
  memset(v49, 0, sizeof(v49));
  if (!sub_1000ABD24(a1) && !sub_1000B8B5C(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid handle", v27, v28, v29, v30, v31, v32, v33, v48);
      v34 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4820;
  }

  v8 = sub_10001FF10(v49, 1u);
  if (!v8)
  {
    v18 = sub_10001F968(v49, a2, a3, 2u);
    if (v18)
    {
      v9 = v18;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to append mbuf result %!", v19, v20, v21, v22, v23, v24, v25, v9);
        v26 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }
      }

      return v9;
    }

    if (sub_1000B8B5C(a1))
    {
      v36 = 7;
    }

    else
    {
      if (!sub_1000ABD24(a1))
      {
        v9 = 0;
        goto LABEL_23;
      }

      v36 = 6;
    }

    v9 = sub_1000B7EDC(0, v36, a1, v49, 0);
    if (v9)
    {
      sub_1000D660C();
    }

LABEL_23:
    sub_1000B7B40(v49);
    v37 = sub_10029BE74(a1);
    if (v9)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not write to the SMP channel for handle 0x%x with status %!", v38, v39, v40, v41, v42, v43, v44, a1);
        v45 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v46 = v37;
      if (v37)
      {
        v47 = *(v37 + 12);
        if (v47)
        {
          sub_10002242C(v47);
          v46[3] = 0;
        }

        if (a4)
        {
          sub_10029C104(v46);
        }
      }

      return 0;
    }

    return v9;
  }

  v9 = v8;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to init mbuf result %!", v10, v11, v12, v13, v14, v15, v16, v9);
    v17 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_26:
      sub_10080F604();
    }
  }

  return v9;
}

void sub_10029C104(int *a1)
{
  v11[1] = a1;
  v11[0] = 8;
  v1 = sub_10002195C(sub_10029C4EC, v11, 300, a1 + 3);
  if (v1)
  {
    v2 = v1;
    if (sub_10000C240())
    {
      sub_10000AF54("Could not register timeout for SMP Tx wth status %!.", v3, v4, v5, v6, v7, v8, v9, v2);
      v10 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }
}

_BYTE *sub_10029C1A0(uint64_t a1)
{
  if (sub_1000ABD24(a1) && *(a1 + 272) || sub_1000B8B5C(a1) && *(a1 + 312))
  {
    return 0;
  }

  v3 = sub_100007618(0x270uLL, 0x10200401C304EB8uLL);
  v2 = v3;
  if (v3)
  {
    bzero(v3, 0x270uLL);
    *v2 = a1;
    v2[8] = 0;
  }

  if (sub_1000ABD24(a1))
  {
    *(a1 + 272) = v2;
    sub_1002BE5CC(a1);
  }

  else if (sub_1000B8B5C(a1))
  {
    *(a1 + 312) = v2;
  }

  return v2;
}

BOOL sub_10029C250(uint64_t a1, char a2, char a3, char a4, unsigned int a5, char a6, char a7)
{
  *(a1 + 78) = a2;
  *(a1 + 79) = a3;
  *(a1 + 80) = a4;
  *(a1 + 82) = a6;
  *(a1 + 83) = a7;
  v9 = sub_1000ABD24(*a1);
  if (a5 >= 0x10)
  {
    v10 = 16;
  }

  else
  {
    v10 = a5;
  }

  v11 = 9;
  if (v9)
  {
    v11 = 81;
  }

  else
  {
    v10 = 1;
  }

  *(a1 + v11) = v10;

  return sub_10029C2C8(a1);
}

BOOL sub_10029C2C8(uint64_t *a1)
{
  result = sub_1000ABD24(*a1);
  if (result)
  {
    result = sub_1000ABD24(*a1);
    if (!result)
    {
      v3 = *a1;

      return sub_1000B8B5C(v3);
    }
  }

  return result;
}

uint64_t sub_10029C388(char a1)
{
  if ((a1 + 16) > 0x1Eu)
  {
    return 4800;
  }

  else
  {
    return dword_1008A48A0[(a1 + 16)];
  }
}

void sub_10029C3C0(uint64_t a1, char a2)
{
  if (sub_10000EFCC())
  {
    if (sub_10000C240())
    {
      sub_10000AF54("SMP State device:%: %s -> %s", v4, v5, v6, v7, v8, v9, v10, *a1 + 49);
      v11 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v13 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }
  }

  *(a1 + 8) = a2;
}

uint64_t sub_10029C4C0(uint64_t a1, int a2)
{
  result = sub_10029BE74(a1);
  if (result)
  {
    *(result + 616) = a2;
  }

  return result;
}

void sub_10029C4EC(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (sub_10000C240())
  {
    sub_10000AF54("SMP timeout for handle 0x%x.", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  if (!sub_1000ABD24(v1) && !sub_1000B8B5C(v1))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Handle is not valid anymore, probably disconnected. Ignoring.", v22, v23, v24, v25, v26, v27, v28, v30);
    v29 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_17:
    sub_10080F604();
    return;
  }

  v10 = sub_10029BE74(v1);
  if (!v10)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("No pairing entry for handle 0x%x", v14, v15, v16, v17, v18, v19, v20, v1);
    v21 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_17;
  }

  v11 = v10;
  v12 = sub_1000ABD24(v1);
  v13 = 4807;
  if (v12)
  {
    if (v11[490])
    {
      v13 = 4807;
    }

    else
    {
      v13 = 4827;
    }
  }

  sub_10029BA98(v11, v13, 1);
}

uint64_t sub_10029C6AC(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 4);
  __chkstk_darwin();
  v6 = &v8[-v5];
  bzero(&v8[-v5], v4);
  v9 = 0;
  sub_10001F788(v6, a1, v4);
  sub_1000BC0D0(a1);
  result = sub_100813EE4(v6, v4, &v9);
  if (!result)
  {
    *a2 = v9;
  }

  return result;
}

uint64_t sub_10029C77C(unsigned int a1)
{
  v2 = 0;
  if (sub_1000ABC7C(a1, &v2))
  {
    return 0;
  }

  result = v2;
  if (v2)
  {
    if (*(sub_1000B12AC(v2) + 64))
    {
      return *(sub_1000B12AC(v2) + 66);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10029C7D0(unsigned int a1)
{
  v2 = 0;
  if (sub_1000ABC7C(a1, &v2) || *(sub_1000B12AC(v2) + 64) != 3)
  {
    return 0;
  }

  else
  {
    return sub_100299344(v2);
  }
}

uint64_t sub_10029C820(unsigned int a1, char a2)
{
  v4 = 0;
  result = sub_1000ABC7C(a1, &v4);
  if (!result)
  {
    result = sub_1000B12AC(v4);
    if (*(result + 64) == 3)
    {
      return sub_100297A98(v4, a2);
    }
  }

  return result;
}

uint64_t sub_10029C878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_10029C92C(a1))
  {
    if (!a1)
    {
      sub_1000D660C();
    }

    if (*(sub_1000B12AC(a1) + 65))
    {
      return 2;
    }

    *(a3 + 10) = 0;
    return 1;
  }

  v6 = *(sub_1000B12AC(a1) + 64);
  *(a3 + 10) = v6;
  (off_100AE9B40[v6])(a1, a2, a3);
  if (*(sub_1000B12AC(a1) + 64))
  {
    return 1;
  }

  if (!a1)
  {
    sub_1000D660C();
  }

  return *(sub_1000B12AC(a1) + 65);
}

BOOL sub_10029C92C(uint64_t a1)
{
  v2 = *sub_1000B12AC(a1);
  v3 = *(sub_1000B12AC(a1) + 64);
  if (*(v2 + 2))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Forcing channel mode for non-ACL handle.", v4, v5, v6, v7, v8, v9, v10, v13);
      v11 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return v3 == 0;
  }

  else if (v3 <= 1)
  {
    if (v3)
    {
      return *(v2 + 229) & 1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        return (*(v2 + 229) >> 1) & 1;
      case 3:
        return (*(v2 + 229) >> 3) & 1;
      case 4:
        return (*(v2 + 229) >> 2) & 1;
      default:
        return 0;
    }
  }
}

uint64_t sub_10029CA24(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  return *(sub_1000B12AC(a1) + 65);
}

uint64_t sub_10029CA58(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v2 = *(sub_1003045A0(0x2Fu) + 12);
      return v2 & 1;
    }

    if (a1 == 4)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if ((a1 - 1) < 2)
  {
LABEL_10:
    v2 = 0;
    return v2 & 1;
  }

  if (a1)
  {
LABEL_7:
    if (sub_10000C240())
    {
      sub_10000AF54("Unknown mode 0x%x.", v3, v4, v5, v6, v7, v8, v9, a1);
      v10 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_10;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t sub_10029CB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(sub_1000B12AC(a1) + 64);
  v9 = *(a2 + 10);
  if (v8 == v9)
  {
    *(a4 + 10) = v8;
    goto LABEL_3;
  }

  if (!a3)
  {
    if (!a1)
    {
      sub_1000D660C();
    }

    if (*(sub_1000B12AC(a1) + 65) == 1)
    {
      v23 = 2;
      if (sub_10000C240())
      {
        v40 = sub_10029D670(v9);
        sub_10029D670(v8);
        sub_10000AF54("Remote responded with %s, since our mode (%s) is mandatory, failing.", v41, v42, v43, v44, v45, v46, v47, v40);
        v48 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_59;
        }

        return 2;
      }

      return v23;
    }

    if (sub_10029CA58(v9))
    {
      goto LABEL_45;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Remote device responded with a mode we don't support, falling back to basic.", v57, v58, v59, v60, v61, v62, v63, v99);
      v64 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    goto LABEL_47;
  }

  if (!a1)
  {
    sub_1000D660C();
  }

  v21 = *(sub_1000B12AC(a1) + 65);
  v22 = *(sub_1000B12AC(a1) + 76);
  if (v21 != 1)
  {
    if (v22)
    {
      if (!sub_10029CA58(v9))
      {
        v23 = 2;
        if (sub_10000C240())
        {
          sub_10000AF54("Remote device requested an unsupported mode a second time, failling negotiation.", v49, v50, v51, v52, v53, v54, v55, v99);
          v56 = sub_10000C050(0x2Fu);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_59;
          }

          return 2;
        }

        return v23;
      }

LABEL_48:
      *(a4 + 10) = v9;
LABEL_3:
      v10 = sub_1000B12AC(a1);
      v11 = *(a2 + 10);
      v12 = *(a4 + 10);
      if (v12 != v11)
      {
        if (v12 == *(v10 + 64))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Mode negotiation resulted in using our mode -> using our params.", v32, v33, v34, v35, v36, v37, v38, v99);
            v39 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }
        }

        (off_100AE9B40[v12])(a1, a3, a4);
        return 1;
      }

      if (*(a2 + 10))
      {
        if (v11 != 3)
        {
          goto LABEL_57;
        }

        if (*(a2 + 11) - 64 <= 0xFFFFFFC0)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Invalid parameter %s:%d=%d", v13, v14, v15, v16, v17, v18, v19, "checkParams");
            v20 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
LABEL_56:
              sub_10080F7A0();
            }
          }

LABEL_57:
          v23 = 2;
          if (sub_10000C240())
          {
            sub_10000AF54("Remote side parameters are invalid, bailing.", v90, v91, v92, v93, v94, v95, v96, v99);
            v97 = sub_10000C050(0x2Fu);
            if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
            {
LABEL_59:
              sub_10080F7A0();
            }

            return 2;
          }

          return v23;
        }

        if ((a3 & 1) == 0)
        {
          if ((*(a2 + 14) + 5535) <= 0x1602u)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Invalid parameter %s:%d=%d", v74, v75, v76, v77, v78, v79, v80, "checkParams");
              v81 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_56;
              }
            }

            goto LABEL_57;
          }

          if ((*(a2 + 16) + 5535) <= 0x1602u)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Invalid parameter %s:%d=%d", v82, v83, v84, v85, v86, v87, v88, "checkParams");
              v89 = sub_10000C050(0x2Fu);
              if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_56;
              }
            }

            goto LABEL_57;
          }
        }
      }

      (off_100AE9B70[*(a2 + 10)])(a1, a2, a4);
      return 0;
    }

    if (sub_10029C92C(a1))
    {
LABEL_45:
      if (v9 > v8)
      {
LABEL_46:
        *(a4 + 10) = v8;
        v73 = sub_1000B12AC(a1);
        ++*(v73 + 76);
        goto LABEL_3;
      }

      goto LABEL_48;
    }

LABEL_47:
    *(a4 + 10) = 0;
    goto LABEL_3;
  }

  if (!v22)
  {
    if (!sub_10029C92C(a1))
    {
      v23 = 2;
      if (sub_10000C240())
      {
        sub_10000AF54("Remote device doesn't support our mandatory mode, can't negotiate.", v65, v66, v67, v68, v69, v70, v71, v99);
        v72 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_59;
        }

        return 2;
      }

      return v23;
    }

    goto LABEL_46;
  }

  v23 = 2;
  if (sub_10000C240())
  {
    sub_10000AF54("Failed to negotiate mode.", v24, v25, v26, v27, v28, v29, v30, v99);
    v31 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

    return 2;
  }

  return v23;
}

uint64_t sub_10029CFF4(uint64_t a1, int a2, char a3)
{
  v37 = 0;
  if (a1)
  {
    sub_1002593B4(&v37);
    if (v37 - 12 <= word_100B53E12)
    {
      word_100B53E12 = v37 - 12;
    }

    result = 490;
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        v23 = *(sub_1000B12AC(a1) + 48);
        v24 = sub_1000B12AC(a1);
        v25 = v24;
        if (v23)
        {
          v26 = sub_1000B12AC(a1);
          v27 = *(v26 + 50);
          *(v25 + 66) = *(v26 + 42);
          *(v25 + 74) = v27;
          v28 = sub_1000B12AC(a1);
          v29 = sub_1000B12AC(a1);
          v30 = *(v29 + 50);
          *(v28 + 54) = *(v29 + 42);
          *(v28 + 62) = v30;
        }

        else
        {
          *(v24 + 66) = 0;
          *(sub_1000B12AC(a1) + 67) = 0;
          *(sub_1000B12AC(a1) + 68) = 0;
          *(sub_1000B12AC(a1) + 70) = 0;
          v33 = word_100B53E12 - 4;
          *(sub_1000B12AC(a1) + 72) = v33;
          *(sub_1000B12AC(a1) + 54) = 0;
          *(sub_1000B12AC(a1) + 55) = 0;
          *(sub_1000B12AC(a1) + 56) = 0;
          *(sub_1000B12AC(a1) + 58) = 0;
          v34 = word_100B53E12 - 4;
          *(sub_1000B12AC(a1) + 60) = v34;
        }
      }

      else
      {
        if (a2 != 5)
        {
          return result;
        }

        *(sub_1000B12AC(a1) + 66) = 0;
        *(sub_1000B12AC(a1) + 67) = 0;
        *(sub_1000B12AC(a1) + 68) = 0;
        *(sub_1000B12AC(a1) + 70) = 0;
        *(sub_1000B12AC(a1) + 54) = 0;
        *(sub_1000B12AC(a1) + 55) = 0;
        *(sub_1000B12AC(a1) + 56) = 0;
        *(sub_1000B12AC(a1) + 58) = 0;
      }
    }

    else if (a2)
    {
      if (a2 != 3)
      {
        return result;
      }

      v7 = *(sub_1000B12AC(a1) + 48);
      v8 = sub_1000B12AC(a1);
      if (v7)
      {
        if (!*(v8 + 42))
        {
          sub_1000D660C();
        }

        if (!*(sub_1000B12AC(a1) + 43))
        {
          sub_1000D660C();
        }

        v9 = sub_1000B12AC(a1);
        v10 = sub_1000B12AC(a1);
        v11 = *(v10 + 50);
        *(v9 + 66) = *(v10 + 42);
        *(v9 + 74) = v11;
        v12 = sub_1000B12AC(a1);
        v13 = sub_1000B12AC(a1);
        v14 = *(v13 + 50);
        *(v12 + 54) = *(v13 + 42);
        *(v12 + 62) = v14;
      }

      else
      {
        *(v8 + 66) = 63;
        *(sub_1000B12AC(a1) + 67) = 16;
        *(sub_1000B12AC(a1) + 68) = 2000;
        *(sub_1000B12AC(a1) + 70) = 12000;
        v31 = word_100B53E12 - 4;
        *(sub_1000B12AC(a1) + 72) = v31;
        *(sub_1000B12AC(a1) + 54) = 63;
        *(sub_1000B12AC(a1) + 55) = 16;
        *(sub_1000B12AC(a1) + 56) = 2000;
        *(sub_1000B12AC(a1) + 58) = 12000;
        v32 = word_100B53E12 - 4;
        *(sub_1000B12AC(a1) + 60) = v32;
      }

      sub_10029915C(a1);
    }

    else
    {
      *(sub_1000B12AC(a1) + 66) = 0;
      *(sub_1000B12AC(a1) + 67) = 0;
      *(sub_1000B12AC(a1) + 68) = 0;
      *(sub_1000B12AC(a1) + 70) = 0;
      *(sub_1000B12AC(a1) + 72) = 0;
      *(sub_1000B12AC(a1) + 54) = 0;
      *(sub_1000B12AC(a1) + 55) = 0;
      *(sub_1000B12AC(a1) + 56) = 0;
      *(sub_1000B12AC(a1) + 58) = 0;
      *(sub_1000B12AC(a1) + 60) = 0;
    }

    *(sub_1000B12AC(a1) + 64) = a2;
    *(sub_1000B12AC(a1) + 65) = a3;
    v35 = sub_1000B12AC(a1);
    result = 0;
    *(v35 + 52) = a2;
  }

  else
  {
    sub_1000D660C();
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid channel", v15, v16, v17, v18, v19, v20, v21, v36);
      v22 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 535;
  }

  return result;
}

uint64_t sub_10029D3EC(uint64_t a1)
{
  if (*(sub_1000B12AC(a1) + 52) == 3 || *(sub_1000B12AC(a1) + 64) == 3)
  {

    return sub_10029925C(a1);
  }

  else
  {
    result = sub_1000B12AC(a1);
    if (*(result + 64) == 5)
    {

      return sub_10028A2D4(a1);
    }
  }

  return result;
}

uint64_t sub_10029D484(unsigned int a1)
{
  v2 = 0;
  if (sub_1000ABC7C(a1, &v2))
  {
    return 537;
  }

  if (*(sub_1000B12AC(v2) + 64) == 3)
  {
    return sub_1002977D4(v2);
  }

  return 0;
}

uint64_t sub_10029D4DC(uint64_t a1)
{
  result = sub_1000B12AC(a1);
  if (*(result + 64) == 3)
  {
    v3 = *(sub_1000B12AC(a1) + 128);

    return sub_1002976B0(v3);
  }

  return result;
}

uint64_t sub_10029D538(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a3 + 10);
  result = sub_1000B12AC(a1);
  if (v6 == *(result + 64))
  {
    *(a3 + 11) = 4159;
    if (a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = 2000;
    }

    if (a2)
    {
      v9 = 0;
    }

    else
    {
      v9 = 12000;
    }

    *(a3 + 14) = v8;
    *(a3 + 16) = v9;
    v10 = word_100B53E12 - 4;
  }

  else
  {
    *(a3 + 11) = *(sub_1000B12AC(a1) + 66);
    *(a3 + 12) = *(sub_1000B12AC(a1) + 67);
    if (a2)
    {
      v11 = 0;
      *(a3 + 14) = 0;
    }

    else
    {
      *(a3 + 14) = *(sub_1000B12AC(a1) + 68);
      v11 = *(sub_1000B12AC(a1) + 70);
    }

    *(a3 + 16) = v11;
    result = sub_1000B12AC(a1);
    v10 = *(result + 72);
  }

  *(a3 + 18) = v10;
  return result;
}

uint64_t sub_10029D610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 10);
  result = sub_1000B12AC(a1);
  if (v5 == *(result + 64))
  {
    v7 = word_100B53E12 - 4;
  }

  else
  {
    result = sub_1000B12AC(a1);
    v7 = *(result + 72);
  }

  *(a3 + 18) = v7;
  return result;
}

const char *sub_10029D670(unsigned int a1)
{
  if (a1 > 5)
  {
    return "L2CAP_FLOW_MODE_UNKNOWN";
  }

  else
  {
    return off_100AE9BA0[a1];
  }
}

uint64_t sub_10029D694(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 10);
  *(sub_1000B12AC(a1) + 64) = v3;
  v4 = *(a1 + 4);

  return sub_10029EAB8(v4);
}

uint64_t sub_10029D6D4(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v6 = *(a2 + 10);
  *(sub_1000B12AC(a1) + 64) = v6;
  v7 = *(a2 + 11);
  *(sub_1000B12AC(a1) + 66) = v7;
  v8 = *(a2 + 12);
  *(sub_1000B12AC(a1) + 67) = v8;
  v9 = *(a2 + 14);
  *(sub_1000B12AC(a1) + 68) = v9;
  if (!*(a2 + 14))
  {
    *(sub_1000B12AC(a1) + 68) = 2000;
  }

  v10 = *(a2 + 16);
  *(sub_1000B12AC(a1) + 70) = v10;
  if (!*(sub_1000B12AC(a1) + 70))
  {
    *(sub_1000B12AC(a1) + 70) = 12000;
  }

  v11 = *(a2 + 18);
  *(sub_1000B12AC(a1) + 72) = v11;
  LOBYTE(v11) = *(a2 + 10);
  *(sub_1000B12AC(a1) + 52) = v11;
  *(sub_1000B12AC(a1) + 54) = 63;
  *(sub_1000B12AC(a1) + 55) = 16;
  *(sub_1000B12AC(a1) + 56) = 2000;
  *(sub_1000B12AC(a1) + 58) = 12000;
  v12 = word_100B53E12 - 4;
  *(sub_1000B12AC(a1) + 60) = v12;
  if (a3)
  {
    *(a3 + 11) = *(a2 + 11);
    v13 = *(a2 + 14);
    if (!v13)
    {
      v13 = 2000;
    }

    a3[7] = v13;
    v14 = *(a2 + 16);
    if (!v14)
    {
      v14 = 12000;
    }

    a3[8] = v14;
    a3[9] = *(a2 + 18);
  }

  sub_10029915C(a1);
  v15 = *(a1 + 4);

  return sub_10029EAB8(v15);
}

uint64_t sub_10029D858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 10);
  *(sub_1000B12AC(a1) + 64) = v6;
  v7 = *(a2 + 18);
  *(sub_1000B12AC(a1) + 72) = v7;
  LOBYTE(v7) = *(a2 + 10);
  *(sub_1000B12AC(a1) + 52) = v7;
  v8 = word_100B53E12 - 4;
  *(sub_1000B12AC(a1) + 60) = v8;
  if (a3)
  {
    *(a3 + 18) = *(a2 + 18);
  }

  v9 = *(a1 + 4);

  return sub_10029EAB8(v9);
}

uint64_t sub_10029D8EC(uint64_t result, const void **a2)
{
  v2 = result;
  if (a2)
  {
    if (*(a2 + 12) == result)
    {
      sub_100304AF8("\t cid : 0x%x, address %p\n", result, a2);
      if (*(a2 + 29))
      {
        v4 = "Yes";
      }

      else
      {
        v4 = "No";
      }

      sub_100304AF8("\t\t stalled : %s\n", v4);
      if (*(a2 + 16))
      {
        v5 = "Yes";
      }

      else
      {
        v5 = "No";
      }

      sub_100304AF8("\t\t retransmitEnabled : %s\n", v5);
      sub_100304AF8("\t\t maxPackets : %d\n", *(a2 + 26));
      sub_100304AF8("\t\t priority : %d\n", *(a2 + 27));
      sub_100304AF8("\t\t transport : 0x%x\n", *(a2 + 28));
      if (a2[8])
      {
        v6 = "Yes";
      }

      else
      {
        v6 = "No";
      }

      sub_100304AF8("\t\t readyForTx : %s\n", v6);
      sub_100304AF8("\t\t packetSent : 0x%x\n", a2[9]);
      sub_100304AF8("\t\t nextQueue : 0x%x\n", a2[10]);
      sub_100304AF8("\t\t previousQueue : 0x%x\n", a2[11]);
      if (*(a2 + 16) == 1)
      {
        sub_100304AF8("\t\t iFrames : %p\n", *a2);
        v7 = sub_1000B47B8(*a2);
        v14 = v7;
        if (v7)
        {
          v8 = 0;
          do
          {
            v9 = sub_1000BC720(v7);
            sub_100304AF8("\tiFrame number %d\n", v8);
            sub_10029DB6C(v9);
            sub_1000BC828(&v14);
            ++v8;
            v7 = v14;
          }

          while (v14);
        }

        sub_100304AF8("\t\t sFrames : %p\n", a2[1]);
        result = sub_1000B47B8(a2[1]);
        v14 = result;
        if (result)
        {
          v10 = 0;
          do
          {
            v11 = sub_1000BC720(result);
            sub_100304AF8("\tsFrame number %d\n", v10);
            sub_10029DB6C(v11);
            sub_1000BC828(&v14);
            ++v10;
            result = v14;
          }

          while (v14);
        }
      }

      else
      {
        sub_100304AF8("\t\t dataQueues : %p\n", *a2);
        result = sub_1000B47B8(*a2);
        v14 = result;
        if (result)
        {
          v12 = 0;
          do
          {
            v13 = sub_1000BC720(result);
            sub_100304AF8("\tFrame number %d\n", v12);
            sub_10029DB6C(v13);
            sub_1000BC828(&v14);
            ++v12;
            result = v14;
          }

          while (v14);
        }
      }
    }
  }

  else
  {
    sub_1000D660C(result);
    return sub_100304AF8("Queue is null, cid 0x%x", v2);
  }

  return result;
}

uint64_t sub_10029DB6C(unsigned __int8 *a1)
{
  sub_100304AF8("\t\t\t address : %p\n", a1);
  sub_100304AF8("\t\t\t frameType : 0x%x\n", *a1);
  if (a1[1])
  {
    v2 = "Yes";
  }

  else
  {
    v2 = "No";
  }

  sub_100304AF8("\t\t\t reliable : %s\n", v2);
  sub_100304AF8("\t\t\t sendState : 0x%x\n", *(a1 + 1));
  sub_100304AF8("\t\t\t handle : %p\n", *(a1 + 1));
  sub_100304AF8("\t\t\t mbuf : %p\n", *(a1 + 3));
  sub_100304AF8("\t\t\t priority : %d\n", a1[32]);
  sub_100304AF8("\t\t\t packetPosition : 0x%x\n", a1[33]);
  sub_100304AF8("\t\t\t totalSize : %d\n", *(a1 + 17));
  sub_100304AF8("\t\t\t cid : 0x%x\n", *(a1 + 18));
  sub_100304AF8("\t\t\t txSequence : %d\n", *(a1 + 19));
  if (*(a1 + 5))
  {
    sub_100304AF8("\t\t\t payloadMBuf : %p, numbytes %d\n");
  }

  else
  {
    sub_100304AF8("\t\t\t payloadMBuf : NONE\n");
  }

  return sub_100304AF8("\t\t\t retryCount : %d\n", a1[48]);
}

void sub_10029DCCC()
{
  v0 = qword_100B60318;
  v8 = 0;
  sub_100304AF8("L2CAP Queue states :\n");
  sub_100304AF8("\trunning = 0x%x\n", byte_100B60339);
  sub_100304AF8("\tnbQueues = %d\n", byte_100B60320);
  sub_100304AF8("\tqueues = %p\n", qword_100B60318);
  sub_100304AF8("\tfragmentedQueue = %p\n", qword_100B60328);
  sub_100304AF8("\tunstallableQueue = %p\n", qword_100B60330);
  sub_100304AF8("TxQ State: %s\n", off_100AE9BD0[dword_100B6033C]);
  if (byte_100B60338 == 1)
  {
    sub_100304AF8("L2CAP Queues :\n");
    if (v0)
    {
      do
      {
        sub_10029D8EC(*(v0 + 24), v0);
        v0 = *(v0 + 80);
        if (v0)
        {
          v1 = v0 == qword_100B60318;
        }

        else
        {
          v1 = 1;
        }
      }

      while (!v1);
    }

    if (qword_100B60328)
    {
      sub_100304AF8("Fragmented Queue : %p\n", qword_100B60328);
      v2 = sub_1000B47B8(qword_100B60328);
      v8 = v2;
      if (v2)
      {
        v3 = 0;
        do
        {
          v4 = sub_1000BC720(v2);
          sub_100304AF8("\tFrame number %d\n", v3);
          sub_10029DB6C(v4);
          sub_1000BC828(&v8);
          ++v3;
          v2 = v8;
        }

        while (v8);
      }
    }

    if (qword_100B60330)
    {
      sub_100304AF8("Unstallable Queue : %p\n", qword_100B60330);
      v5 = sub_1000B47B8(qword_100B60330);
      v8 = v5;
      if (v5)
      {
        v6 = 0;
        do
        {
          v7 = sub_1000BC720(v5);
          sub_100304AF8("\tPacket number %d\n", v6);
          sub_10029DB6C(v7);
          sub_1000BC828(&v8);
          ++v6;
          v5 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    sub_100304AF8("To enable queue dumps look at the code instructions");
  }

  sub_10028D6A8();
}

uint64_t sub_10029DECC(unsigned int a1)
{
  v3 = 0;
  if (!sub_1000ABC7C(a1, &v3) && v3 && (*v3 != 4 ? (v2 = *v3 == 2) : (v2 = 1), v2 && sub_1000E10E0(*(v3 + 4))))
  {
    return sub_10028A16C(v3);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10029DF2C(uint64_t a1)
{
  if (qword_100B60318)
  {
    v2 = qword_100B60318;
    while (*(v2 + 24) != a1)
    {
      v2 = *(v2 + 80);
      if (v2 == qword_100B60318 || v2 == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    sub_1000D660C();
    v2 = 0;
  }

  if (*(v2 + 16) != 1)
  {
    if (!sub_10000C248(*v2))
    {
      sub_1000D660C();
    }

    v13 = sub_1000BB054(*v2, 0);
    if (v13)
    {
      (*(v2 + 72))(v2, v13);
      sub_10028E154(a1);
    }

    else
    {
      result = sub_10000C240();
      if (!result)
      {
        return result;
      }

      sub_10000AF54("Invalid packet", v14, v15, v16, v17, v18, v19, v20, v22);
      v21 = sub_10000C050(0x2Fu);
      result = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_1000E09C0();
    }

    return 0;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Should not be flushing Queue with E/RT enabled", v4, v5, v6, v7, v8, v9, v10, v22);
    v11 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 485;
}

uint64_t sub_10029E064(unsigned int a1, char a2, unsigned int a3, uint64_t a4, uint64_t *a5, unsigned int a6)
{
  v26 = 0;
  if (byte_100B60320 > 0x29u)
  {
    return 104;
  }

  if (!qword_100B60318)
  {
LABEL_11:
    v15 = sub_100007618(0x68uLL, 0x10A00409F038DFAuLL);
    if (!v15)
    {
      return 106;
    }

    v16 = v15;
    if (a3 >= 0x13)
    {
      v17 = 19;
    }

    else
    {
      v17 = a3;
    }

    if (a3)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1;
    }

    if (sub_1000B135C(a1))
    {
      *(v16 + 16) = 1;
      *(v16 + 20) = 0;
      *v16 = sub_1000BAE38(0, sub_1000BC728);
      *(v16 + 8) = sub_1000BAE38(0, sub_1000BC728);
      *(v16 + 64) = sub_1000BA610;
      v19 = sub_1000BBCA8;
    }

    else
    {
      v20 = sub_1000E10E0(a1);
      *(v16 + 16) = 0;
      *(v16 + 20) = 0;
      *v16 = sub_1000BAE38(0, sub_1000BC728);
      if (v20)
      {
        *(v16 + 64) = sub_10029E2F8;
        v19 = sub_10029E41C;
      }

      else
      {
        *(v16 + 64) = sub_1000B8D48;
        v19 = sub_10029E47C;
      }
    }

    *(v16 + 72) = v19;
    *(v16 + 56) = a6;
    *(v16 + 24) = a1;
    *(v16 + 26) = a2;
    *(v16 + 27) = v18;
    *(v16 + 28) = 255;
    *(v16 + 40) = a4;
    *(v16 + 32) = 0;
    *(v16 + 48) = sub_1000B11F4();
    v21 = qword_100B60318;
    if (qword_100B60318)
    {
      v22 = qword_100B60318;
      do
      {
        if (*(v22 + 27) < v18)
        {
          break;
        }

        v22 = *(v22 + 80);
      }

      while (qword_100B60318 != v22);
      v23 = *(v22 + 88);
      *(v16 + 80) = v22;
      *(v16 + 88) = v23;
      *(v23 + 80) = v16;
      *(v22 + 88) = v16;
      if (*(v21 + 27) >= v18)
      {
        goto LABEL_33;
      }

      v24 = &qword_100B60318;
    }

    else
    {
      qword_100B60318 = v16;
      *(v16 + 80) = v16;
      v24 = (v16 + 88);
    }

    *v24 = v16;
LABEL_33:
    if (a5)
    {
      *a5 = v16;
    }

    ++byte_100B60320;
    if (!sub_1000ABC7C(a1, &v26) && *v26 == 4)
    {
      v25 = sub_1000B12AC(v26);
      sub_1002324F8(*v25);
    }

    return 0;
  }

  v13 = qword_100B60318;
  while (*(v13 + 24) != a1)
  {
    v13 = *(v13 + 80);
    if (v13 == qword_100B60318 || v13 == 0)
    {
      goto LABEL_11;
    }
  }

  return 119;
}

uint64_t sub_10029E2F8(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  *a2 = 0;
  v4 = *a1;
  *(a1 + 96) = *a1;
  if (!sub_10000C248(v4))
  {
    if (*(a1 + 56) == 0xFFFFFFFFLL)
    {
      v8 = sub_1000B11F4();
      result = 0;
      *(a1 + 48) = v8;
      return result;
    }

    return 0;
  }

  v5 = sub_1000BA5F8(*a1);
  if (!sub_1000B8B5C(*(v5 + 8)) && !sub_1000C0E08(*(v5 + 8)) && !sub_1000ABD24(*(v5 + 8)) && !sub_1000B7994(*(v5 + 8)))
  {
    goto LABEL_15;
  }

  v9 = 0;
  v6 = *(v5 + 8);
  if (*(v6 + 2) == 4 && byte_100BCE1BA != 1)
  {
    return 0;
  }

  result = sub_100255644(v6);
  if (!result)
  {
    return result;
  }

  if (sub_1000ABC7C(*(a1 + 24), &v9) && v9)
  {
    return 0;
  }

  result = sub_10028A324(v9);
  if (result)
  {
    result = sub_1000B8E94(*(v5 + 8), *(v5 + 32));
    if (result)
    {
LABEL_15:
      *a2 = v5;
      return 1;
    }
  }

  return result;
}

void sub_10029E41C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (!sub_1000ABC7C(*(a2 + 36), &v4))
  {
    sub_10028A424(v4, 1u);
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    sub_1000BC14C(v3);
    *(a2 + 24) = 0;
  }

  sub_10000C1E8(a2);
}

void sub_10029E47C(uint64_t a1, void *a2)
{
  if (!a2)
  {
    sub_1000D660C();
  }

  v3 = a2[3];
  if (v3 || (sub_1000D660C(), (v3 = a2[3]) != 0))
  {
    sub_1000BC14C(v3);
    a2[3] = 0;
  }

  sub_10000C1E8(a2);
}

void *sub_10029E4D4(void *result)
{
  if (byte_100B60339 != 1)
  {
    return result;
  }

  v2 = result;
  if (qword_100B60318)
  {
    v3 = qword_100B60318;
    while (*(v3 + 12) != result)
    {
      v3 = v3[10];
      if (v3 == qword_100B60318 || v3 == 0)
      {
        goto LABEL_22;
      }
    }

    if (v3[5])
    {
      sub_10002242C(*(v3 + 8));
    }

    v5 = v3[10];
    if (v5 == v3)
    {
      v7 = 0;
    }

    else
    {
      v6 = v3[11];
      v6[10] = v5;
      v7 = v3[10];
      *(v7 + 88) = v6;
      if (qword_100B60318 != v3)
      {
LABEL_19:
        --byte_100B60320;
        if (*(v3 + 16) == 1)
        {
          sub_1000BBDD0(v3[1]);
        }

        sub_1000BBDD0(*v3);
        sub_10000C1E8(v3);
        goto LABEL_22;
      }
    }

    qword_100B60318 = v7;
    goto LABEL_19;
  }

LABEL_22:
  sub_10029E5E4(qword_100B60328, v2);
  v8 = qword_100B60330;

  return sub_10029E5E4(v8, v2);
}

void *sub_10029E5E4(uint64_t a1, int a2)
{
  result = sub_1000B47B8(a1);
  for (ptr = result; ptr; result = ptr)
  {
    while (1)
    {
      v5 = sub_1000BC720(result);
      if (!v5 || *(v5 + 36) != a2)
      {
        break;
      }

      sub_1000BC77C(a1, ptr, 1);
      result = sub_1000B47B8(a1);
      ptr = result;
      if (!result)
      {
        return result;
      }
    }

    sub_1000BC828(&ptr);
  }

  return result;
}

uint64_t sub_10029E664(int a1)
{
  if (!qword_100B60318)
  {
    return 0;
  }

  v1 = qword_100B60318;
  while (*(v1 + 24) != a1)
  {
    v1 = *(v1 + 80);
    if (v1 == qword_100B60318 || v1 == 0)
    {
      return 0;
    }
  }

  return sub_10000C248(*v1);
}

void sub_10029E6A0(unsigned int a1)
{
  if (!qword_100B60318)
  {
    return;
  }

  v2 = qword_100B60318;
  while (*(v2 + 24) != a1)
  {
    v2 = *(v2 + 80);
    if (v2 == qword_100B60318 || v2 == 0)
    {
      return;
    }
  }

  if (*(v2 + 16) != 1)
  {
    v6 = sub_1000E10E0(a1);
    v7 = sub_10000C248(*v2);
    v8 = *(v2 + 26);
    if (v6)
    {
      if (v7 != v8 - sub_10029DECC(a1))
      {
        goto LABEL_14;
      }
    }

    else if (v7 < v8)
    {
      goto LABEL_14;
    }

LABEL_13:
    v9[0] = 2;
    v9[1] = (v2 + 24);
    sub_10002195C(sub_10029F154, v9, 0, 0);
    goto LABEL_14;
  }

  if (sub_10000C248(*v2))
  {
    v4 = sub_10000C248(*v2);
    if (v4 + sub_10029C7D0(*(v2 + 24)) >= *(v2 + 26))
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  v5 = *(v2 + 16);
  sub_100302BB4(*v2);
  if (v5 == 1)
  {
    sub_100302BB4(*(v2 + 8));
  }
}

void *sub_10029E7D4(void *result, unsigned __int16 *a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = qword_100B60318;
  do
  {
    if (!v8)
    {
      break;
    }

    v9 = *(v8 + 24);
    if (a3)
    {
      if (v9 == *a2)
      {
        v10 = 1;
      }

      else
      {
        v11 = 1;
        do
        {
          v12 = v11;
          if (a3 == v11)
          {
            break;
          }

          v13 = a2[v11++];
        }

        while (v9 != v13);
        v10 = v12 < a3;
      }
    }

    else
    {
      v10 = 0;
    }

    v14 = 0;
    result = sub_1000ABC7C(v9, &v14);
    if (!v10 && !result)
    {
      result = v14;
      if (*v14 == 2)
      {
        result = sub_1000B12AC(v14);
        if (*result == v7)
        {
          *(v8 + 29) = a4;
        }
      }
    }

    v8 = *(v8 + 80);
  }

  while (v8 != qword_100B60318);
  if ((a4 & 1) == 0)
  {
    dword_100B6033C = 2;
  }

  return result;
}

void sub_10029E8D0(uint64_t a1)
{
  if (a1)
  {
    if (qword_100B60318)
    {
      v1 = **(a1 + 8);
      v2 = qword_100B60318;
      while (*(v2 + 24) != v1)
      {
        v2 = *(v2 + 80);
        if (v2 == qword_100B60318 || v2 == 0)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      sub_1000D660C();
      __break(1u);
    }

    if (!*(v2 + 40))
    {
      sub_1000D660C();
    }

    sub_1000B11F4();
    if (sub_10000C240())
    {
      sub_10000AF54("Stall Monitor detected TX stall on CID 0x%04x Priority= %u maxLatency=%llu lastServiceTime=%llu, deltaTime=%llu ms,  CB 0x%x", v4, v5, v6, v7, v8, v9, v10, v1);
      v11 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v12 = *(v2 + 40);
    if (v12)
    {
      v12(v1);
    }
  }

  else
  {

    sub_1000D660C();
  }
}

uint64_t sub_10029E9E4(uint64_t a1)
{
  if (!qword_100B60318)
  {
    goto LABEL_12;
  }

  v1 = qword_100B60318;
  while (*(v1 + 24) != *(a1 + 36))
  {
    v1 = *(v1 + 80);
    if (v1 == qword_100B60318 || v1 == 0)
    {
      goto LABEL_12;
    }
  }

  if (*(v1 + 16))
  {
    *(a1 + 4) = 0;
    sub_100302C18(*v1, a1, 8);
    result = 0;
    ++*(v1 + 20);
    dword_100B6033C = 2;
  }

  else
  {
LABEL_12:
    if (sub_10000C240())
    {
      sub_10000AF54("Can't retransmit a basic flow control channel.", v4, v5, v6, v7, v8, v9, v10, v12);
      v11 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1000D660C();
    return 510;
  }

  return result;
}

uint64_t sub_10029EAB8(unsigned int a1)
{
  if (!qword_100B60318)
  {
    return 404;
  }

  v2 = qword_100B60318;
  while (*(v2 + 12) != a1)
  {
    v2 = v2[10];
    if (v2 == qword_100B60318 || v2 == 0)
    {
      return 404;
    }
  }

  v5 = *(v2 + 16);
  if (v5 == sub_1000B135C(a1))
  {
    v6 = *(v2 + 26);
    if (sub_10029C77C(a1) < v6)
    {
      return 0;
    }

    goto LABEL_28;
  }

  v7 = *(v2 + 16);
  v8 = sub_10000C248(*v2);
  if (v7 != 1)
  {
    if (v8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Warning there is packets queued in the basic queue. This will drop packets", v18, v19, v20, v21, v22, v23, v24, v27);
        v25 = sub_10000C050(0x2Fu);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      sub_10029E6A0(a1);
    }

    sub_1000BBDD0(*v2);
    *(v2 + 16) = 1;
    *(v2 + 5) = 0;
    *v2 = sub_1000BAE38(0, sub_1000BC728);
    v2[1] = sub_1000BAE38(0, sub_1000BC728);
    v2[8] = sub_1000BA610;
    v2[9] = sub_1000BBCA8;
LABEL_28:
    v26 = sub_10029C77C(a1);
    result = 0;
    *(v2 + 26) = v26 + 1;
    return result;
  }

  if (v8 || sub_10000C248(v2[1]))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Warning there is packets queued in the sFrame or iFrame queues. This will drop packets", v9, v10, v11, v12, v13, v14, v15, v27);
      v16 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_10029E6A0(a1);
  }

  *(v2 + 16) = 0;
  *(v2 + 5) = 0;
  sub_1000BBDD0(*v2);
  sub_1000BBDD0(v2[1]);
  v17 = sub_1000BAE38(0, sub_1000BC728);
  result = 0;
  *v2 = v17;
  v2[8] = sub_1000B8D48;
  v2[9] = sub_10029E47C;
  return result;
}

uint64_t sub_10029ECE4(int a1)
{
  v1 = qword_100B60318;
  if (!qword_100B60318)
  {
    return 404;
  }

  v2 = qword_100B60318;
  while (*(v2 + 24) != a1)
  {
    v2 = *(v2 + 80);
    if (v2 == qword_100B60318 || v2 == 0)
    {
      return 404;
    }
  }

  *(v2 + 27) = 10;
  if (v1 == v2)
  {
    return 0;
  }

  v5 = *(v2 + 80);
  if (v2 == v5)
  {
    return 0;
  }

  result = 0;
  v6 = *(v2 + 88);
  *(v6 + 80) = v5;
  *(*(v2 + 80) + 88) = v6;
  v7 = *(v1 + 88);
  *(v2 + 80) = v1;
  *(v2 + 88) = v7;
  *(v7 + 80) = v2;
  *(v1 + 88) = v2;
  qword_100B60318 = v2;
  return result;
}

uint64_t sub_10029ED68(int a1, unsigned int a2, unsigned int a3)
{
  if (!qword_100B60318)
  {
    return 404;
  }

  v4 = a2;
  v5 = qword_100B60318;
  while (*(v5 + 24) != a1)
  {
    v5 = *(v5 + 80);
    if (v5 == qword_100B60318 || v5 == 0)
    {
      return 404;
    }
  }

  if (a2 >= 0x14)
  {
    sub_1000D660C();
    if (sub_10000C240())
    {
      v4 = 19;
      sub_10000AF54("Scaling down requested priority to %d", v8, v9, v10, v11, v12, v13, v14, 19);
      v15 = sub_10000C050(0x2Fu);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      sub_10080F604();
    }

    v4 = 19;
    goto LABEL_17;
  }

  if (a2 != 12)
  {
LABEL_17:
    sub_1001C5C78(qword_100B60340, 0, 0, 0, 1);
    goto LABEL_18;
  }

  sub_1001C5C78(qword_100B60340, 0, 0, 0, 0);
  v4 = 12;
LABEL_18:
  *(v5 + 56) = a3;
  *(v5 + 48) = sub_1000B11F4();
  *(v5 + 27) = v4;
  v16 = qword_100B60318;
  if (qword_100B60318 == v5)
  {
    return 0;
  }

  v17 = *(v5 + 80);
  if (v5 == v17)
  {
    return 0;
  }

  result = 0;
  v18 = *(v5 + 88);
  *(v18 + 80) = v17;
  *(*(v5 + 80) + 88) = v18;
  v19 = *(v16 + 88);
  *(v5 + 80) = v16;
  *(v5 + 88) = v19;
  *(v19 + 80) = v5;
  *(v16 + 88) = v5;
  qword_100B60318 = v5;
  return result;
}

uint64_t sub_10029EED0(int a1)
{
  if (!qword_100B60318)
  {
    return 404;
  }

  v1 = qword_100B60318;
  while (*(v1 + 24) != a1)
  {
    v1 = *(v1 + 80);
    if (v1 == qword_100B60318 || v1 == 0)
    {
      return 404;
    }
  }

  v4 = sub_1000B11F4();
  result = 0;
  *(v1 + 48) = v4;
  return result;
}

uint64_t sub_10029EF3C()
{
  if (byte_100B60339 == 1)
  {
    sub_1000D660C();
  }

  if (byte_100B60320)
  {
    sub_1000D660C();
  }

  if (qword_100B60318)
  {
    sub_1000D660C();
  }

  byte_100B60339 = 1;
  sub_1001C5D40(&stru_100B60348);
  sub_1001C5D40(&stru_100B60378);
  dword_100B6033C = 0;
  qword_100B60328 = sub_1000BAE38(0, sub_1000BC728);
  qword_100B60330 = sub_1000BAE38(0, sub_1000BC728);
  sub_10029E064(1u, 48, 0xAu, 0, 0, 0xFFFFFFFF);
  sub_10029E064(2u, 5, 1u, 0, 0, 0xFFFFFFFF);
  if (!sub_1001C5BA4(&qword_100B60340, sub_1000BA218, 0))
  {
    return 511;
  }

  sub_1001C5C44(qword_100B60340, 63);
  result = 0;
  byte_100B603A8 = 1;
  return result;
}

BOOL sub_10029F06C()
{
  if ((byte_100B60339 & 1) == 0)
  {
    sub_1000D660C();
  }

  if (!qword_100B60318)
  {
    sub_1000D660C();
  }

  if (byte_100B60320 <= 1u)
  {
    sub_1000D660C();
  }

  sub_10029E4D4(1);
  sub_10029E4D4(2);
  sub_1000BBDD0(qword_100B60328);
  qword_100B60328 = 0;
  sub_1000BBDD0(qword_100B60330);
  qword_100B60330 = 0;
  byte_100B60320 = 0;
  qword_100B60318 = 0;
  byte_100B60339 = 0;
  dword_100B6033C = 0;
  j__pthread_cond_signal(&stru_100B60348);
  do
  {
    sub_1000B9C80(&stru_100B60378);
  }

  while ((byte_100B603A8 & 1) != 0);
  sub_1001C5D64(&stru_100B60348);

  return sub_1001C5D64(&stru_100B60378);
}

uint64_t sub_10029F16C()
{
  qword_100B603B0 = 0;
  *&word_100B603B8 = 0;
  sub_1002418FC(sub_10029F388);
  sub_1002FD010(sub_10029F2C0);
  sub_100305B9C(sub_10029F418);
  sub_1002DB89C(&off_100AE9BE8);

  return sub_10024DCD0(&off_100AE9C00, 0);
}

uint64_t sub_10029F1F0(uint64_t a1)
{
  v2 = sub_100007618(0x18uLL, 0x10100403708C548uLL);
  if (!v2)
  {
    return 104;
  }

  v3 = v2;
  v2[6] = 48;
  v4 = sub_100007618(0x30uLL, 0x2A8F299DuLL);
  *v3 = v4;
  if (!v4)
  {
    sub_10000C1E8(v3);
    return 104;
  }

  v3[7] = 0;
  v5 = *(a1 + 2);
  if (v5 == 8)
  {
    result = 0;
    *(a1 + 64) = v3;
  }

  else if (v5 == 4)
  {
    *(a1 + 224) = v3;
    v7 = sub_1000BAE38(0, 0);
    result = 0;
    *(a1 + 256) = v7;
  }

  else
  {
    result = 0;
    if (!*(a1 + 2))
    {
      result = 0;
      *(a1 + 160) = v3;
    }
  }

  return result;
}

void sub_10029F2C0(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 2) == 4)
  {
    sub_100256788(a2);

    sub_1000BB990(1);
  }

  else if (*(a2 + 2))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid connection type.", v5, v6, v7, v8, v9, v10, v11, v13);
      v12 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    v4 = a3;
    if (a3)
    {
      if (!*(a2 + 153))
      {
        sub_100256788(a2);
        sub_1000BB990(1);
      }
    }

    *(a2 + 153) = v4;
  }
}

void sub_10029F388(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 2))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Received mode change for non ACL connection handle.", v2, v3, v4, v5, v6, v7, v8, v10);
      v9 = sub_10000C050(0x2Fu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    sub_100256788(a2);

    sub_1000BB990(3);
  }
}

void sub_10029F418(uint64_t a1)
{
  sub_100256788(a1);

  sub_1000BB990(2);
}

uint64_t sub_10029F448(uint64_t a1)
{
  v2 = sub_10028D534();
  result = sub_1003045A0(0x2Fu);
  if (*(result + 2))
  {
    v4 = 0;
    do
    {
      v5 = *v2 == 4 || *v2 == 2;
      if (v5 && *sub_1000B12AC(v2) == a1 && *(sub_1000B12AC(v2) + 16) == 4 && sub_10028D660(v2))
      {
        sub_10029D484(*(v2 + 4));
        ++*(v2 + 88);
        v6 = *(v2 + 136);
        if (v6)
        {
          v6(*(v2 + 4));
        }
      }

      ++v4;
      result = sub_1003045A0(0x2Fu);
      v2 += 144;
    }

    while (v4 < *(result + 2));
  }

  return result;
}

void sub_10029F510(uint64_t a1, unsigned int a2, char *__src, unsigned int a4, int a5, uint64_t a6)
{
  v12 = 0;
  v13 = 0;
  v14 = a4;
  while (1)
  {
    v15 = *(a1 + 28);
    *(a1 + 28) = 0;
    if (!v15)
    {
      LOWORD(v15) = *__src + 4;
    }

    if (a2 >= 3)
    {
      break;
    }

    if (v15 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    if (a2 != 1 || v12)
    {
      sub_1000B0EC4(__src, v16, a1, 0, a5, a6);
    }

    else
    {
      sub_1000C0944(__src, v16, a1, 0, a5, a6);
    }

    v13 += v16;
    v14 = a4 - v13;
    if (a4 < v13)
    {
      v14 = 0;
    }

    if (v13 == a4)
    {
      return;
    }

    if (v13 > a4)
    {
      *(a1 + 28) = v13 - a4;
      return;
    }

    __src += v16;
    ++v12;
  }

  sub_1000D660C();
  if (sub_10000C240())
  {
    sub_10000AF54("L2CAPAGG RX: This should never happen, Invalid packet boundary flag for aggregated packets - dropping packet", v17, v18, v19, v20, v21, v22, v23, v25);
    v24 = sub_10000C050(0x2Fu);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  sub_1000C52F4(411);
  sub_10029F660();
}

void sub_10029F660(uint64_t a1, const void *a2)
{
  dword_100B603C0 = a1;
  if ((a1 - 1) <= 0x7CE)
  {
    sub_10026DDFC(&off_100B604D0);

    sub_10026DDD4(&off_100B60F20, a2);
    return;
  }

  if ((a1 - 2000) <= 0x7CF)
  {
    goto LABEL_6;
  }

  if ((a1 - 4000) > 0x7CF)
  {
    if (a1 == 6000)
    {
LABEL_6:
      sub_1001C8574(&off_100B604D0);

      sub_1001C854C(&off_100B60F20, a2);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Invalid chipset %d", v4, v5, v6, v7, v8, v9, v10, a1);
      v11 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    sub_10016D6E0(&off_100B604D0, a1);

    sub_10016D6B8(&off_100B60F20, a2);
  }
}

uint64_t sub_10029F7EC(int a1, uint64_t a2)
{
  if ((a1 - 1) >> 4 > 0x176)
  {
    return 101;
  }

  result = 0;
  dword_100B53E14 = a1;
  qword_100B60F28 = a2;
  return result;
}

uint64_t sub_10029F820()
{
  sub_10029F660(dword_100B53E14, qword_100B60F28);
  dword_100B604C8 = 0;
  v0 = sub_1002418B0(sub_1000A62C8, 0);
  if (v0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to register vsevent %!", v1, v2, v3, v4, v5, v6, v7, v0);
      v8 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F6C8();
      }
    }
  }

  return v0;
}

void sub_10029F8C8(uint64_t a1)
{
  qword_100B60F50 = a1;
  if ((dword_100B603C0 - 1) > 0x7CE)
  {
    if ((dword_100B603C0 - 2000) > 0x7CF)
    {
      if ((dword_100B603C0 - 5000) > 0x3E7 && (dword_100B603C0 - 4000) > 0x3E7)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid chipset %d", v1, v2, v3, v4, v5, v6, v7, dword_100B603C0);
          v8 = sub_10000C050(0x54u);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }

      else
      {

        sub_10016DAA0(&unk_100B60F30);
      }
    }

    else
    {

      sub_1001C8668(&unk_100B60F30);
    }
  }

  else
  {

    sub_10026DF88(&unk_100B60F30);
  }
}

void sub_10029F9F0(uint64_t a1)
{
  qword_100B610F8 = a1;
  if ((dword_100B603C0 - 1) > 0x7CE)
  {
    if ((dword_100B603C0 - 2001) > 0x7CE && (dword_100B603C0 - 3000) > 0x3E7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid chipset %d for LMP Halt VSE Callback Registration", v1, v2, v3, v4, v5, v6, v7, dword_100B603C0);
        v8 = sub_10000C050(0x54u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    else
    {

      sub_1001C8668(&unk_100B60F30);
    }
  }

  else
  {

    sub_10026DF88(&unk_100B60F30);
  }
}

void sub_10029FAE0(uint64_t a1)
{
  qword_100B61010 = a1;
  if ((dword_100B603C0 - 1) > 0x7CE)
  {
    if ((dword_100B603C0 - 3000) > 0x3E7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid chipset %d for Advanced Sniff Mode Change Registration", v1, v2, v3, v4, v5, v6, v7, dword_100B603C0);
        v8 = sub_10000C050(0x54u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    else
    {

      sub_1001C8668(&unk_100B60F30);
    }
  }

  else
  {

    sub_10026DF88(&unk_100B60F30);
  }
}

uint64_t sub_10029FBC4()
{
  if (off_100B604D0)
  {
    v0 = off_100B604D0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_10029FC50()
{
  if (off_100B604E0)
  {
    v0 = off_100B604E0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_10029FCDC()
{
  if (off_100B604D8)
  {
    v0 = off_100B604D8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_10029FD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!sub_1000ABD24(a1))
  {
    return 122;
  }

  if (off_100B604E8)
  {
    v8 = off_100B604E8(a1, a2, a3, a4);
    if (!v8)
    {
      return v8;
    }
  }

  else
  {
    v8 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v9, v10, v11, v12, v13, v14, v15, v8);
    v16 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v8;
}

uint64_t sub_10029FE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1000ABD24(a1))
  {
    return 122;
  }

  if (off_100B604F0)
  {
    v6 = off_100B604F0(a1, a2, a3);
    if (!v6)
    {
      return v6;
    }
  }

  else
  {
    v6 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v7, v8, v9, v10, v11, v12, v13, v6);
    v14 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v6;
}

uint64_t sub_10029FEE8()
{
  if (off_100B604F8)
  {
    v0 = off_100B604F8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_10029FF74()
{
  if (off_100B60500)
  {
    v0 = off_100B60500();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0000()
{
  if (off_100B60508)
  {
    v0 = off_100B60508();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A008C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1000ABD24(a1))
  {
    return 122;
  }

  if (off_100B60510)
  {
    v6 = off_100B60510(a1, a2, a3);
    if (!v6)
    {
      return v6;
    }
  }

  else
  {
    v6 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v7, v8, v9, v10, v11, v12, v13, v6);
    v14 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v6;
}

uint64_t sub_1002A0148()
{
  if (off_100B60530)
  {
    v0 = off_100B60530();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A01D4()
{
  if (off_100B60548)
  {
    v0 = off_100B60548();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0260(uint64_t a1)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B60550)
  {
    v1 = off_100B60550();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A02F8()
{
  if (off_100B60558)
  {
    v0 = off_100B60558();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0384()
{
  if (off_100B60560)
  {
    v0 = off_100B60560();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0410()
{
  if (off_100B60568)
  {
    v0 = off_100B60568();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A049C()
{
  if (off_100B60E20)
  {
    v0 = off_100B60E20();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0528()
{
  if (off_100B60E28)
  {
    v0 = off_100B60E28();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A05B4()
{
  if (off_100B60E30)
  {
    v0 = off_100B60E30();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0640()
{
  if (off_100B60E38)
  {
    v0 = off_100B60E38();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A06CC()
{
  if (off_100B60E40)
  {
    v0 = off_100B60E40();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0758()
{
  if (off_100B60E48)
  {
    v0 = off_100B60E48();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A07E4()
{
  if (off_100B60ED8)
  {
    v0 = off_100B60ED8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0870()
{
  if (off_100B60570)
  {
    v0 = off_100B60570();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A08FC()
{
  if (off_100B60578)
  {
    v0 = off_100B60578();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0988()
{
  if (off_100B60580)
  {
    v0 = off_100B60580();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0A14()
{
  if (off_100B60518)
  {
    v0 = off_100B60518();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0AA0()
{
  if (off_100B60520)
  {
    v0 = off_100B60520();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 101;
  }

  v15 = 0;
  v5 = sub_10023DB58(a2, &v15);
  if (!v5)
  {
    if (off_100B60528)
    {
      v5 = off_100B60528(a1, v15, a3);
      if (!v5)
      {
        return v5;
      }
    }

    else
    {
      v5 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v7, v8, v9, v10, v11, v12, v13, v5);
      v14 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v5;
}

uint64_t sub_1002A0BF8()
{
  if (off_100B60588)
  {
    v0 = off_100B60588();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0C84()
{
  if (off_100B60590)
  {
    v0 = off_100B60590();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0D10(uint64_t a1)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B60598)
  {
    v1 = off_100B60598();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A0DA8()
{
  if (dword_100B603C0 != 12)
  {
    return 3601;
  }

  if (off_100B605B0)
  {
    v0 = off_100B605B0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0E4C()
{
  if (off_100B605B8)
  {
    v0 = off_100B605B8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0ED8()
{
  if (off_100B605C0)
  {
    v0 = off_100B605C0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0F64()
{
  if (off_100B60E50)
  {
    v0 = off_100B60E50();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A0FF0()
{
  if (off_100B605E8)
  {
    v0 = off_100B605E8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A107C()
{
  if (off_100B60600)
  {
    v0 = off_100B60600();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A1108()
{
  if (off_100B605F8)
  {
    v0 = off_100B605F8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A1194(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v18 = 0;
  v5 = sub_1002D3618(a2);
  v16 = v5;
  v17 = WORD2(v5);
  v6 = sub_10023DB58(&v16, &v18);
  if (!v6)
  {
    if (off_100B60608)
    {
      v6 = off_100B60608(a1, v18, a3);
      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      v6 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v8, v9, v10, v11, v12, v13, v14, v6);
      v15 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v6;
}

uint64_t sub_1002A1268()
{
  if (off_100B60610)
  {
    v0 = off_100B60610();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A12F4()
{
  if (off_100B60618)
  {
    v0 = off_100B60618();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A1380()
{
  if (off_100B60620)
  {
    v0 = off_100B60620();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A140C()
{
  if (off_100B60628)
  {
    v0 = off_100B60628();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A1498()
{
  if (off_100B60630)
  {
    v0 = off_100B60630();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A1524(uint64_t a1, uint64_t a2)
{
  if (off_100B60C30)
  {
    v2 = off_100B60C30(a1, a2);
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v2;
}

uint64_t sub_1002A15C0(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, uint64_t a25)
{
  if (off_100B60DE0)
  {
    BYTE4(v35) = a24;
    LODWORD(v35) = a23;
    v25 = off_100B60DE0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v35, a25);
    if (!v25)
    {
      return v25;
    }
  }

  else
  {
    v25 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v26, v27, v28, v29, v30, v31, v32, v25);
    v33 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v25;
}

uint64_t sub_1002A1794()
{
  if (off_100B60DE8)
  {
    v0 = off_100B60DE8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A1820()
{
  if (off_100B60640)
  {
    v0 = off_100B60640();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A18AC()
{
  if (off_100B60648)
  {
    v0 = off_100B60648();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC LMP Halt failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A1938()
{
  if (off_100B60650)
  {
    v0 = off_100B60650();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A19C4()
{
  if (off_100B60670)
  {
    v0 = off_100B60670();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A1A50()
{
  if (off_100B60CE0)
  {
    v0 = off_100B60CE0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A1ADC(unsigned int a1, uint64_t a2)
{
  v2 = 101;
  if (a1 <= 1 && a2)
  {
    if (off_100B60690)
    {
      v2 = off_100B60690();
      if (!v2)
      {
        return v2;
      }
    }

    else
    {
      v2 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
      v10 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v2;
}

uint64_t sub_1002A1B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 101;
  if (a2 && a3)
  {
    if (off_100B60678)
    {
      v3 = off_100B60678();
      if (!v3)
      {
        return v3;
      }
    }

    else
    {
      v3 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v4, v5, v6, v7, v8, v9, v10, v3);
      v11 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v3;
}

uint64_t sub_1002A1C10(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 101;
  }

  if (off_100B60680)
  {
    v2 = off_100B60680();
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v2;
}

uint64_t sub_1002A1CA8()
{
  if (off_100B60688)
  {
    v0 = off_100B60688();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A1D34()
{
  if (off_100B606A8)
  {
    v0 = off_100B606A8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A1DC0(uint64_t a1)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B606B0)
  {
    v1 = off_100B606B0();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A1E58(uint64_t a1)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B60798)
  {
    v1 = off_100B60798();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A1EF0()
{
  if (off_100B607C0)
  {
    v0 = off_100B607C0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A1F7C()
{
  if (off_100B606B8)
  {
    v0 = off_100B606B8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A2008(uint64_t a1, unsigned int a2)
{
  v2 = 101;
  if (a1 && a2 <= 0x15)
  {
    if (off_100B606C0)
    {
      v2 = off_100B606C0();
      if (!v2)
      {
        return v2;
      }
    }

    else
    {
      v2 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
      v10 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v2;
}

uint64_t sub_1002A20A4(uint64_t a1, unsigned int a2)
{
  v2 = 101;
  if (a1 && a2 <= 0x15)
  {
    if (off_100B606C8)
    {
      v2 = off_100B606C8();
      if (!v2)
      {
        return v2;
      }
    }

    else
    {
      v2 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
      v10 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v2;
}

uint64_t sub_1002A2140()
{
  if (off_100B606D0)
  {
    v0 = off_100B606D0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A21CC()
{
  if (off_100B60A90)
  {
    v0 = off_100B60A90();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A2258()
{
  if (off_100B60A98)
  {
    v0 = off_100B60A98();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A22E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 101;
  if (a4 <= a2 && a2 <= 0x19 && a1 && a3)
  {
    if (off_100B60730)
    {
      v4 = off_100B60730(a1, a2, a3);
      if (!v4)
      {
        return v4;
      }
    }

    else
    {
      v4 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v5, v6, v7, v8, v9, v10, v11, v4);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v4;
}

uint64_t sub_1002A23B4(unsigned int a1, unsigned int a2, uint64_t a3)
{
  if ((a1 - 21) < 0xECu || a3 == 0)
  {
    return 101;
  }

  v7 = a1 > 4 && a2 != 0;
  v4 = 101;
  if (a2 <= 0x19 && !v7)
  {
    if (off_100B60740)
    {
      v4 = off_100B60740();
      if (!v4)
      {
        return v4;
      }
    }

    else
    {
      v4 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v8, v9, v10, v11, v12, v13, v14, v4);
      v15 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v4;
}

uint64_t sub_1002A2474()
{
  if (off_100B60778)
  {
    v0 = off_100B60778();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A2500()
{
  if (off_100B60748)
  {
    v0 = off_100B60748();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A258C()
{
  if (off_100B60758)
  {
    v0 = off_100B60758();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A2618()
{
  if (off_100B60760)
  {
    v0 = off_100B60760();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A26A4(unsigned __int8 a1)
{
  if (off_100B60768)
  {
    v1 = off_100B60768(a1);
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A2734(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 101;
  if (a4 <= a2 && a2 <= 0x16 && a1 && a3)
  {
    if (off_100B606D8)
    {
      v4 = off_100B606D8(a1, a2);
      if (!v4)
      {
        return v4;
      }
    }

    else
    {
      v4 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v5, v6, v7, v8, v9, v10, v11, v4);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v4;
}

uint64_t sub_1002A27E4()
{
  if (off_100B60718)
  {
    v0 = off_100B60718();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A2870(char a1, unsigned int a2, uint64_t a3)
{
  if ((a1 - 26) < 0xE7u || a2 > 1 || a3 == 0)
  {
    return 101;
  }

  if (off_100B60720)
  {
    v5 = off_100B60720();
    if (!v5)
    {
      return v5;
    }
  }

  else
  {
    v5 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v6, v7, v8, v9, v10, v11, v12, v5);
    v13 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v5;
}

uint64_t sub_1002A291C()
{
  if (off_100B60700)
  {
    v0 = off_100B60700();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A29A8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!sub_1000ABD24(a1))
  {
    return 122;
  }

  v8 = *(a1 + 80);
  if (*(a1 + 80) || (sub_1000D660C(), v8 = *(a1 + 80), *(a1 + 80)))
  {
    v9 = a3 / v8;
    if (v9 >= 0x100)
    {
      sub_1000D660C();
    }
  }

  else
  {
    LOBYTE(v9) = 127;
  }

  if (off_100B606E0)
  {
    v10 = off_100B606E0(a1, a2, v9, a4);
    if (!v10)
    {
      return v10;
    }
  }

  else
  {
    v10 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v11, v12, v13, v14, v15, v16, v17, v10);
    v18 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v10;
}

uint64_t sub_1002A2A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!sub_1000ABD24(a1))
  {
    return 122;
  }

  if (!a2)
  {
    return 101;
  }

  if (off_100B606E8)
  {
    v8 = off_100B606E8(a1, a2, a3, a4);
    if (!v8)
    {
      return v8;
    }
  }

  else
  {
    v8 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v9, v10, v11, v12, v13, v14, v15, v8);
    v16 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v8;
}

uint64_t sub_1002A2B68(uint64_t a1)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B606F0)
  {
    v1 = off_100B606F0();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A2C00(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B60D10)
  {
    v2 = off_100B60D10(a1, a2);
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v2;
}

uint64_t sub_1002A2CB0()
{
  if (off_100B60D18)
  {
    v0 = off_100B60D18();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A2D3C(uint64_t a1)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B60D08)
  {
    v1 = off_100B60D08(a1);
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A2DDC(uint64_t a1, uint64_t a2)
{
  if (off_100B607C8)
  {
    v2 = off_100B607C8(a1, a2);
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v2;
}

uint64_t sub_1002A2E90(unint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 101;
  }

  v3 = sub_100255884(a1);
  if (!sub_1000ABD24(v3))
  {
    return 122;
  }

  *(v14 + 3) = 0;
  v14[0] = 0;
  v4 = 101;
  if (!sub_1002D0158(v3, v14, 0) && !LOBYTE(v14[0]))
  {
    if (off_100B607D0)
    {
      v4 = off_100B607D0(v3, v14 + 1, a2);
      if (!v4)
      {
        return v4;
      }
    }

    else
    {
      v4 = 3601;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v5, v6, v7, v8, v9, v10, v11, v4);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v4;
}

uint64_t sub_1002A2F84(uint64_t a1, uint64_t a2)
{
  if (!sub_1000ABD24(a1))
  {
    return 122;
  }

  v15 = 0;
  v14 = 0;
  if (off_100B607D0)
  {
    v4 = off_100B607D0(a1, &v14, a2);
    if (!v4)
    {
      return v4;
    }
  }

  else
  {
    v4 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v5, v6, v7, v8, v9, v10, v11, v4);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v4;
}

uint64_t sub_1002A303C(void *a1)
{
  if (!a1 || !*a1)
  {
    return 101;
  }

  if (off_100B60708)
  {
    v1 = off_100B60708();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v1);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A30D8(uint64_t a1)
{
  if (!a1 || !*(a1 + 8))
  {
    return 101;
  }

  if (off_100B60780)
  {
    v1 = off_100B60780();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v1);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A3174(void *a1)
{
  if (!a1 || !*a1)
  {
    return 101;
  }

  if (off_100B60788)
  {
    v1 = off_100B60788();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v1);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A3210(int a1, __int16 a2, __int16 a3)
{
  if (!a1 || (v3 = 101, (a2 - 16385) >= 0xC003u) && (a3 - 16385) >= 0xC003u)
  {
    if (off_100B60790)
    {
      v3 = off_100B60790();
      if (!v3)
      {
        return v3;
      }
    }

    else
    {
      v3 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v4, v5, v6, v7, v8, v9, v10, v3);
      v11 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v3;
}

uint64_t sub_1002A32C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  if (a4)
  {
    if (!a1)
    {
      return 101;
    }
  }

  else
  {
    sub_1000D660C();
    if (!a1)
    {
      return 101;
    }
  }

  v27 = 0;
  v10 = sub_10023DB58(a1, &v27);
  if (!v10)
  {
    v11 = v27;
    if (*v27 == -1)
    {
      return 101;
    }

    v12 = *(v27 + 62);
    if ((a2 - 3) <= 0xFFFFFFFD && (v12 - 1) < 2)
    {
      return 101;
    }

    if (a3)
    {
      v14 = v12 | a2;
      *(v27 + 62) = v12 | a2;
      if ((dword_100B603C0 - 5000) < 0x3E8)
      {
        *a4 = v14;
        if ((dword_100B603C0 - 5000) >= 0x3E8)
        {
          goto LABEL_32;
        }

        goto LABEL_27;
      }

      *a4 = v14;
      if (!v12)
      {
        if ((dword_100B603C0 - 5000) > 0x3E7)
        {
          goto LABEL_32;
        }

LABEL_27:
        if (v11[330])
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v15 = v12 & ~a2;
      *(v27 + 62) = v15;
      if (v12 && !v15)
      {
        if (v11[144] == 1 && v11[197] == 1)
        {
          v11[197] = 0;
          sub_100247BFC(v11, 2);
          v16 = *(v27 + 62);
        }

        else
        {
          v16 = 0;
        }

        *a4 = v16;
        if ((dword_100B603C0 - 5000) >= 0x3E8)
        {
LABEL_32:
          if (off_100B607E0)
          {
            v18 = off_100B607E0(a1, a3, a2, a5);
LABEL_34:
            v10 = v18;
            if (!v18)
            {
              return v10;
            }

            goto LABEL_37;
          }

          goto LABEL_36;
        }

        v17 = 0;
LABEL_30:
        if (off_100B607E0)
        {
          v18 = off_100B607E0(a1, v17, a2, a5);
          goto LABEL_34;
        }

LABEL_36:
        v10 = 3601;
LABEL_37:
        if (sub_10000C240())
        {
          sub_10000AF54("VSC failed %!", v19, v20, v21, v22, v23, v24, v25, v10);
          v26 = sub_10000C050(0x54u);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        return v10;
      }

      *a4 = v15;
    }

    return 3603;
  }

  return v10;
}

uint64_t sub_1002A34E4()
{
  if (off_100B607D8)
  {
    v0 = off_100B607D8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A3570()
{
  if (off_100B607E8)
  {
    v0 = off_100B607E8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A35FC()
{
  if (off_100B607F0)
  {
    v0 = off_100B607F0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A3688()
{
  if (off_100B60800)
  {
    v0 = off_100B60800();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A3714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 101;
  }

  v15 = 0;
  v5 = sub_10023DB58(a2, &v15);
  if (!v5)
  {
    sub_1002489CC(a1);
    if (off_100B60808)
    {
      v5 = off_100B60808(a1, v15, a3);
      if (!v5)
      {
        return v5;
      }
    }

    else
    {
      v5 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("%s VSC failed %!", v7, v8, v9, v10, v11, v12, v13, "BT_VSC_WriteWBSEnable");
      v14 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v5;
}

uint64_t sub_1002A37F0()
{
  if (off_100B60810)
  {
    v0 = off_100B60810();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A387C(uint64_t a1)
{
  if (a1)
  {
    return 101;
  }

  if (off_100B60818)
  {
    v1 = off_100B60818(0);
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v1);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A3914(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 101;
  }

  v13 = 0;
  v3 = sub_10023DB58(a1, &v13);
  if (!v3)
  {
    if (off_100B60820)
    {
      v3 = off_100B60820(v13, a2);
      if (!v3)
      {
        return v3;
      }
    }

    else
    {
      v3 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v5, v6, v7, v8, v9, v10, v11, v3);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v3;
}

uint64_t sub_1002A39C8()
{
  if (off_100B60830)
  {
    v0 = off_100B60830();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A3A54(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 101;
  }

  v13 = 0;
  v3 = sub_10023DB58(a1, &v13);
  if (!v3)
  {
    if (off_100B60838)
    {
      v3 = off_100B60838(v13, a2);
      if (!v3)
      {
        return v3;
      }
    }

    else
    {
      v3 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v5, v6, v7, v8, v9, v10, v11, v3);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v3;
}

uint64_t sub_1002A3B08(uint64_t a1)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B60840)
  {
    v1 = off_100B60840();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A3BA0(uint64_t a1)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B60848)
  {
    v1 = off_100B60848();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A3C38(uint64_t a1)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B60850)
  {
    v1 = off_100B60850();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A3CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 101;
  }

  v17 = 0;
  v7 = sub_10023DB58(a1, &v17);
  if (!v7)
  {
    if (off_100B60858)
    {
      v7 = off_100B60858(v17, a2, a3, a4);
      if (!v7)
      {
        return v7;
      }
    }

    else
    {
      v7 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v9, v10, v11, v12, v13, v14, v15, v7);
      v16 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v7;
}

uint64_t sub_1002A3D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    return 101;
  }

  v23 = 0;
  v13 = sub_10023DB58(a1, &v23);
  if (!v13)
  {
    if (off_100B60860)
    {
      v13 = off_100B60860(v23, a2, a3, a4, a5, a6, a7);
      if (!v13)
      {
        return v13;
      }
    }

    else
    {
      v13 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v15, v16, v17, v18, v19, v20, v21, v13);
      v22 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v13;
}

uint64_t sub_1002A3E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  if (!a1)
  {
    return 101;
  }

  v27 = 0;
  v17 = sub_10023DB58(a1, &v27);
  if (!v17)
  {
    if (off_100B60868)
    {
      v17 = off_100B60868(v27, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      if (!v17)
      {
        return v17;
      }
    }

    else
    {
      v17 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v19, v20, v21, v22, v23, v24, v25, v17);
      v26 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v17;
}

uint64_t sub_1002A3F9C()
{
  if (off_100B60870)
  {
    v0 = off_100B60870();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A4028()
{
  if (off_100B60878)
  {
    v0 = off_100B60878();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A40B4(uint64_t a1)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B60880)
  {
    v1 = off_100B60880();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A414C(uint64_t a1)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B60888)
  {
    v1 = off_100B60888();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A41E4(uint64_t a1)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B60890)
  {
    v1 = off_100B60890();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A427C(uint64_t a1)
{
  if (!a1)
  {
    return 101;
  }

  if (off_100B60898)
  {
    v1 = off_100B60898();
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A4314()
{
  if (off_100B608A0)
  {
    v0 = off_100B608A0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A43A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1000ABD24(a1))
  {
    return 122;
  }

  if (off_100B608A8)
  {
    v6 = off_100B608A8(a1, a2, a3);
    if (!v6)
    {
      return v6;
    }
  }

  else
  {
    v6 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v7, v8, v9, v10, v11, v12, v13, v6);
    v14 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v6;
}

uint64_t sub_1002A445C()
{
  if (off_100B608B0)
  {
    v0 = off_100B608B0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A44E8()
{
  if (off_100B608B8)
  {
    v0 = off_100B608B8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A4574()
{
  if (off_100B608C0)
  {
    v0 = off_100B608C0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A4600()
{
  if (off_100B608D0)
  {
    v0 = off_100B608D0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A468C()
{
  if (off_100B608D8)
  {
    v0 = off_100B608D8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A4718()
{
  if (off_100B608E0)
  {
    v0 = off_100B608E0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A47A4()
{
  if (off_100B608E8)
  {
    v0 = off_100B608E8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A4830()
{
  if (off_100B608F0)
  {
    v0 = off_100B608F0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A48BC()
{
  if (off_100B608F8)
  {
    v0 = off_100B608F8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A4948()
{
  if (off_100B60900)
  {
    v0 = off_100B60900();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A49D4(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!sub_1000ABD24(a1))
  {
    return 122;
  }

  if (off_100B60918)
  {
    v8 = off_100B60918(*a1, a2, a3, a4);
    if (!v8)
    {
      return v8;
    }
  }

  else
  {
    v8 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v9, v10, v11, v12, v13, v14, v15, v8);
    v16 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v8;
}

uint64_t sub_1002A4A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 101;
  }

  v19 = 0;
  v9 = sub_10023DB58(a1, &v19);
  if (!v9)
  {
    if (off_100B608C8)
    {
      v9 = off_100B608C8(v19, a2, a3, a4, a5);
      if (!v9)
      {
        return v9;
      }
    }

    else
    {
      v9 = 3601;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("VSC failed %!", v11, v12, v13, v14, v15, v16, v17, v9);
      v18 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  return v9;
}

uint64_t sub_1002A4B74()
{
  if (off_100B60908)
  {
    v0 = off_100B60908();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A4C00()
{
  if (off_100B60910)
  {
    v0 = off_100B60910();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A4C8C()
{
  if (off_100B60920)
  {
    v0 = off_100B60920();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A4D18()
{
  if (off_100B60928)
  {
    v0 = off_100B60928();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A4DA4(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return 101;
  }

  v25 = 0;
  v6 = sub_10023DB58(a1, &v25);
  if (v6)
  {
    return v6;
  }

  if (*v25 == 0xFFFF)
  {
    return 101;
  }

  if ((dword_100B603C0 - 5000) <= 0x3E7)
  {
    *(v25 + 330) = a2;
    if (off_100B607E0)
    {
      if (a2)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      v6 = off_100B607E0(a1, v7, 2, a3);
      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      v6 = 3601;
    }

    if (!sub_10000C240())
    {
      return v6;
    }

    sub_10000AF54("VSC failed %!", v9, v10, v11, v12, v13, v14, v15, v6);
    v16 = sub_10000C050(0x54u);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return v6;
    }

LABEL_19:
    sub_10080F604();
    return v6;
  }

  if (off_100B60980)
  {
    v6 = off_100B60980();
    if (!v6)
    {
      return v6;
    }
  }

  else
  {
    v6 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v17, v18, v19, v20, v21, v22, v23, v6);
    v24 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }
  }

  return v6;
}

uint64_t sub_1002A4F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1000ABD24(a1))
  {
    if (off_100B60930)
    {
      v6 = off_100B60930(a1, a2, a3);
      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      v6 = 3601;
    }
  }

  else
  {
    v6 = 122;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v7, v8, v9, v10, v11, v12, v13, v6);
    v14 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v6;
}

uint64_t sub_1002A4FD4()
{
  if (off_100B60938)
  {
    v0 = off_100B60938();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5060()
{
  if (off_100B60940)
  {
    v0 = off_100B60940();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A50EC()
{
  if (off_100B60948)
  {
    v0 = off_100B60948();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5178()
{
  if (off_100B60950)
  {
    v0 = off_100B60950();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1000ABD24(a1))
  {
    return 122;
  }

  if (*(a1 + 94) == a2)
  {
    return 3603;
  }

  *(a1 + 94) = a2;
  if (off_100B60990)
  {
    v6 = off_100B60990(a1, a2, a3);
    if (!v6)
    {
      return v6;
    }
  }

  else
  {
    v6 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v8, v9, v10, v11, v12, v13, v14, v6);
    v15 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v6;
}

uint64_t sub_1002A52D4(uint64_t a1, unsigned __int16 a2)
{
  if (off_100B60C58)
  {
    v2 = off_100B60C58(a1, a2);
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v2;
}

uint64_t sub_1002A5364()
{
  if (off_100B60C60)
  {
    v0 = off_100B60C60();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A53F0()
{
  if (off_100B60958)
  {
    v0 = off_100B60958();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A547C()
{
  if (off_100B60960)
  {
    v0 = off_100B60960();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5508()
{
  if (off_100B60968)
  {
    v0 = off_100B60968();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5594()
{
  if (off_100B60970)
  {
    v0 = off_100B60970();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5620()
{
  if (off_100B60998)
  {
    v0 = off_100B60998();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A56AC()
{
  if (off_100B609A0)
  {
    v0 = off_100B609A0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5738()
{
  if (off_100B609A8)
  {
    v0 = off_100B609A8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A57C4()
{
  if (off_100B609B0)
  {
    v0 = off_100B609B0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5850()
{
  if (off_100B60EC0)
  {
    v0 = off_100B60EC0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A58DC()
{
  if (off_100B60EC8)
  {
    v0 = off_100B60EC8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5968(uint64_t a1, uint64_t a2)
{
  if (off_100B60ED0)
  {
    v2 = off_100B60ED0(a1, a2);
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v2;
}

uint64_t sub_1002A5A04()
{
  if (off_100B609B8)
  {
    v0 = off_100B609B8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5A90()
{
  if (off_100B609C0)
  {
    v0 = off_100B609C0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5B1C()
{
  if (off_100B609C8)
  {
    v0 = off_100B609C8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5BA8()
{
  if (off_100B609D0)
  {
    v0 = off_100B609D0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5C34()
{
  if (off_100B609D8)
  {
    v0 = off_100B609D8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5CC0()
{
  if (off_100B609E0)
  {
    v0 = off_100B609E0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5D4C()
{
  if (off_100B609E8)
  {
    v0 = off_100B609E8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5DD8(uint64_t a1)
{
  v1 = *a1;
  word_100B6114C = *(a1 + 4);
  dword_100B61148 = v1;
  if (off_100B609F0)
  {
    v2 = off_100B609F0(a1);
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v2;
}

uint64_t sub_1002A5E84()
{
  if (off_100B609F8)
  {
    v0 = off_100B609F8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5F10()
{
  if (off_100B60A00)
  {
    v0 = off_100B60A00();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A5F9C()
{
  if (off_100B60A08)
  {
    v0 = off_100B60A08();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6028()
{
  if (off_100B60A10)
  {
    v0 = off_100B60A10();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A60B4()
{
  if (off_100B60A18)
  {
    v0 = off_100B60A18();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6140()
{
  if (off_100B60A20)
  {
    v0 = off_100B60A20();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A61CC()
{
  if (off_100B60A28)
  {
    v0 = off_100B60A28();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6258()
{
  if (off_100B60A30)
  {
    v0 = off_100B60A30();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A62E4()
{
  if (off_100B60A38)
  {
    v0 = off_100B60A38();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6370(uint64_t a1, uint64_t a2)
{
  if (off_100B60A40)
  {
    v2 = off_100B60A40(a1, a2);
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v2;
}

uint64_t sub_1002A642C(uint64_t a1, uint64_t a2)
{
  if (off_100B60A48)
  {
    v2 = off_100B60A48(a1, a2);
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v2;
}

uint64_t sub_1002A64D0(uint64_t a1, uint64_t a2)
{
  if (off_100B60A50)
  {
    v2 = off_100B60A50(a1, a2);
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v2;
}

uint64_t sub_1002A657C(uint64_t a1, uint64_t a2)
{
  if (off_100B60A58)
  {
    v2 = off_100B60A58(a1, a2);
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v2;
}

uint64_t sub_1002A6638()
{
  if (off_100B60A60)
  {
    v0 = off_100B60A60();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A66C4()
{
  if (off_100B60A68)
  {
    v0 = off_100B60A68();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6750()
{
  if (off_100B60A70)
  {
    v0 = off_100B60A70();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A67DC()
{
  if (off_100B60A78)
  {
    v0 = off_100B60A78();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6868()
{
  if (off_100B60A80)
  {
    v0 = off_100B60A80();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A68F4()
{
  if (off_100B60A88)
  {
    v0 = off_100B60A88();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6980()
{
  if (off_100B60AB0)
  {
    v0 = off_100B60AB0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6A0C()
{
  if (off_100B60AB8)
  {
    v0 = off_100B60AB8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6A98()
{
  if (off_100B60AF0)
  {
    v0 = off_100B60AF0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6B24()
{
  if (off_100B60AF8)
  {
    v0 = off_100B60AF8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6BB0()
{
  if (off_100B60B00)
  {
    v0 = off_100B60B00();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6C3C()
{
  if (off_100B60C48)
  {
    v0 = off_100B60C48();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6CC8()
{
  if (off_100B60DC0)
  {
    v0 = off_100B60DC0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6D54()
{
  if (off_100B60B08)
  {
    v0 = off_100B60B08();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6DE0()
{
  if (off_100B60C00)
  {
    v0 = off_100B60C00();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6E6C(uint64_t a1)
{
  if (off_100B60B20)
  {
    v1 = off_100B60B20(a1);
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v2, v3, v4, v5, v6, v7, v8, v1);
    v9 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v1;
}

uint64_t sub_1002A6F00()
{
  if (off_100B60B28)
  {
    v0 = off_100B60B28();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A6F8C(uint64_t a1, uint64_t a2)
{
  if (off_100B60B38)
  {
    v2 = off_100B60B38(a1, a2);
    if (!v2)
    {
      return v2;
    }
  }

  else
  {
    v2 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
    v10 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v2;
}

uint64_t sub_1002A7028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (off_100B60B40)
  {
    v7 = off_100B60B40(a1, a2, a3, a4, a5, a6, a7);
    if (!v7)
    {
      return v7;
    }
  }

  else
  {
    v7 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v8, v9, v10, v11, v12, v13, v14, v7);
    v15 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v7;
}

uint64_t sub_1002A70E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (off_100B60B50)
  {
    v3 = off_100B60B50(a1, a2, a3);
    if (!v3)
    {
      return v3;
    }
  }

  else
  {
    v3 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v4, v5, v6, v7, v8, v9, v10, v3);
    v11 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v3;
}

uint64_t sub_1002A7188()
{
  if (off_100B60B60)
  {
    v0 = off_100B60B60();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A7214()
{
  if (off_100B60B70)
  {
    v0 = off_100B60B70();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A72A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (off_100B60B68)
  {
    v4 = off_100B60B68(a1, a2, a3, a4);
    if (!v4)
    {
      return v4;
    }
  }

  else
  {
    v4 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v5, v6, v7, v8, v9, v10, v11, v4);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v4;
}

uint64_t sub_1002A7354()
{
  if (off_100B60B80)
  {
    v0 = off_100B60B80();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A73E0()
{
  if (off_100B60B88)
  {
    v0 = off_100B60B88();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A746C()
{
  if (off_100B60B90)
  {
    v0 = off_100B60B90();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A74F8()
{
  if (off_100B60B98)
  {
    v0 = off_100B60B98();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A7584()
{
  if (off_100B60BA0)
  {
    v0 = off_100B60BA0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A7610()
{
  if (off_100B60BA8)
  {
    v0 = off_100B60BA8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A769C()
{
  if (off_100B60BB0)
  {
    v0 = off_100B60BB0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A7728()
{
  if (off_100B60BB8)
  {
    v0 = off_100B60BB8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A77B4()
{
  if (off_100B60BC0)
  {
    v0 = off_100B60BC0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A7840()
{
  if (off_100B60BC8)
  {
    v0 = off_100B60BC8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A78CC(uint64_t a1, uint64_t a2, void *a3)
{
  if (off_100B60BD0)
  {
    v4 = off_100B60BD0(a1, a2, a3);
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v5, v6, v7, v8, v9, v10, v11, v4);
    v12 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

LABEL_8:
  free(a3);
  return v4;
}

uint64_t sub_1002A7970()
{
  if (off_100B60BE8)
  {
    v0 = off_100B60BE8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A79FC()
{
  if (off_100B60CE8)
  {
    v0 = off_100B60CE8();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_1002A7A88()
{
  if (off_100B60C28)
  {
    v0 = off_100B60C28();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}