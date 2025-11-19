void sub_100222088(void *ptr)
{
  v2 = ptr[1];
  if (v2)
  {
    sub_10000C1E8(v2);
  }

  v3 = ptr[52];
  if (v3)
  {
    sub_10000C1E8(v3);
  }

  if (*(ptr + 408))
  {
    v4 = 0;
    v5 = (ptr + 4);
    do
    {
      v6 = *v5;
      v5 += 3;
      sub_10000C1E8(v6);
      ++v4;
    }

    while (v4 < *(ptr + 408));
  }

  *(ptr + 25) = 0u;
  *(ptr + 26) = 0u;
  *(ptr + 23) = 0u;
  *(ptr + 24) = 0u;
  *(ptr + 21) = 0u;
  *(ptr + 22) = 0u;
  *(ptr + 19) = 0u;
  *(ptr + 20) = 0u;
  *(ptr + 17) = 0u;
  *(ptr + 18) = 0u;
  *(ptr + 15) = 0u;
  *(ptr + 16) = 0u;
  *(ptr + 13) = 0u;
  *(ptr + 14) = 0u;
  *(ptr + 11) = 0u;
  *(ptr + 12) = 0u;
  *(ptr + 9) = 0u;
  *(ptr + 10) = 0u;
  *(ptr + 7) = 0u;
  *(ptr + 8) = 0u;
  *(ptr + 5) = 0u;
  *(ptr + 6) = 0u;
  *(ptr + 3) = 0u;
  *(ptr + 4) = 0u;
  *(ptr + 1) = 0u;
  *(ptr + 2) = 0u;
  *ptr = 0u;

  sub_10000C1E8(ptr);
}

uint64_t sub_100222140(unsigned __int8 *a1, uint64_t a2)
{
  v46 = 0;
  v45 = 0;
  v44 = 0;
  if (*a1 == 1)
  {
    if (a1[408])
    {
      v4 = 0;
      v5 = a1 + 24;
      do
      {
        if (*v5 == 14)
        {
          __memmove_chk();
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("Unknown application parameter %d", v6, v7, v8, v9, v10, v11, v12, *v5);
          v13 = sub_10000C050(0x50u);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = sub_10000C0FC();
            *buf = 136446466;
            v48 = v14;
            v49 = 1024;
            v50 = 0xFFFF;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }

        ++v4;
        v5 += 24;
      }

      while (v4 < a1[408]);
    }

    v24 = sub_1001C28A0(a2, 0, 0);
    if (v24)
    {
      v23 = v24;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not send PUT response : %!", v25, v26, v27, v28, v29, v30, v31, v23);
        v32 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      v33 = sub_1001C32B4(a2, &v44);
      if (v33)
      {
        v23 = v33;
        if (sub_10000C240())
        {
          sub_10000AF54("Could get address from connection %d : %!", v34, v35, v36, v37, v38, v39, v40, a2);
          v41 = sub_10000C050(0x50u);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      else
      {
        v42 = *(qword_100B5EF98 + 320);
        if (v42)
        {
          v42(a2, v46);
        }

        if (v46)
        {
          return sub_10021E9EC(&v44);
        }

        else
        {
          sub_10021EF24(&v44);
          return 0;
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Send events should be PUT, not %d", v15, v16, v17, v18, v19, v20, v21, *a1);
      v22 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 1720;
  }

  return v23;
}

uint64_t sub_100222404(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 == 2)
  {
    v4 = a1[408];
    if (a1[408])
    {
      LOWORD(v5) = 0;
      LOWORD(v6) = 0;
      v7 = a1 + 40;
      do
      {
        v8 = *(v7 - 16);
        if (v8 == 2)
        {
          if (*v7 == 2)
          {
            v5 = bswap32(**(v7 - 1)) >> 16;
          }

          else
          {
            LOWORD(v5) = 0;
          }
        }

        else if (v8 == 1)
        {
          if (*v7 == 2)
          {
            v6 = bswap32(**(v7 - 1)) >> 16;
          }

          else
          {
            LOWORD(v6) = 0;
          }
        }

        v7 += 24;
        --v4;
      }

      while (v4);
    }

    else
    {
      LOWORD(v6) = 0;
      LOWORD(v5) = 0;
    }

    v18 = *(qword_100B5EF98 + 280);
    if (!v18)
    {
      sub_1000D660C();
      v18 = *(qword_100B5EF98 + 280);
    }

    v18(a2, v6, v5);
    return 0;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Send events should be GET, not %d", v9, v10, v11, v12, v13, v14, v15, *a1);
      v16 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 1720;
  }
}

uint64_t sub_100222550(unsigned __int8 *a1, uint64_t a2)
{
  memset(v38, 0, 32);
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, 255);
  memset(v35, 0, 255);
  if (*a1 == 2)
  {
    v4 = *(a1 + 1);
    if (a1[408])
    {
      v5 = 0;
      LOWORD(v6) = 0;
      v7 = 0;
      v8 = a1 + 40;
      LOWORD(v9) = 1024;
      while (1)
      {
        v10 = *(v8 - 16);
        if (v10 > 5)
        {
          break;
        }

        if (*(v8 - 16) > 2u)
        {
          if (v10 != 3 && v10 != 4 && v10 != 5)
          {
            goto LABEL_32;
          }

LABEL_29:
          __memmove_chk();
          goto LABEL_30;
        }

        if (v10 == 1)
        {
          if (*v8 == 2)
          {
            v9 = bswap32(**(v8 - 1)) >> 16;
          }

          else
          {
            LOWORD(v9) = 0;
          }
        }

        else
        {
          if (v10 != 2)
          {
            goto LABEL_32;
          }

          if (*v8 == 2)
          {
            v6 = bswap32(**(v8 - 1)) >> 16;
          }

          else
          {
            LOWORD(v6) = 0;
          }
        }

LABEL_30:
        ++v5;
        v8 += 24;
        if (v5 >= a1[408])
        {
          goto LABEL_43;
        }
      }

      if (*(v8 - 16) > 8u)
      {
        if (v10 != 9)
        {
          if (v10 == 16)
          {
            if (*v8 == 4)
            {
              v7 = bswap32(**(v8 - 1));
            }

            goto LABEL_30;
          }

          if (v10 != 19)
          {
LABEL_32:
            if (sub_10000C240())
            {
              v18 = v4;
              sub_10000AF54("Unknown application parameter %d", v11, v12, v13, v14, v15, v16, v17, *(v8 - 16));
              v19 = sub_10000C050(0x50u);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                v20 = sub_10000C0FC();
                *buf = 136446466;
                v32 = v20;
                v33 = 1024;
                v34 = 0xFFFF;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
              }

              v4 = v18;
            }

            goto LABEL_30;
          }
        }
      }

      else if (v10 != 6 && v10 != 7 && v10 != 8)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    v7 = 0;
    LOWORD(v6) = 0;
    LOWORD(v9) = 1024;
LABEL_43:
    v30 = *(qword_100B5EF98 + 272);
    if (!v30)
    {
      sub_1000D660C();
      v30 = *(qword_100B5EF98 + 272);
    }

    v30(a2, v4, v9, v6, 255, v7, 12, v38, v37, 0, v36, v35, 0);
    return 0;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Send events should be GET, not %d", v21, v22, v23, v24, v25, v26, v27, *a1);
      v28 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 1720;
  }
}

uint64_t sub_100222978(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 == 1)
  {
    if (!a1[408])
    {
LABEL_44:
      v72 = *(qword_100B5EF98 + 264);
      if (!v72)
      {
        sub_1000D660C();
        v72 = *(qword_100B5EF98 + 264);
      }

      v72(a2, *(a1 + 52), *(a1 + 212));
      return 0;
    }

    v39 = 0;
    v40 = a1 + 40;
    while (1)
    {
      v41 = *(v40 - 16);
      switch(v41)
      {
        case 20:
          __memmove_chk();
          if (!sub_10000C240())
          {
            goto LABEL_41;
          }

          sub_10000AF54("Charset is set to %s", v57, v58, v59, v60, v61, v62, v63, "UTF8");
          v49 = sub_10000C050(0x50u);
          if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }

          break;
        case 12:
          __memmove_chk();
          if (!sub_10000C240())
          {
            goto LABEL_41;
          }

          sub_10000AF54("Retry is set to %s", v50, v51, v52, v53, v54, v55, v56, "ON");
          v49 = sub_10000C050(0x50u);
          if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }

          break;
        case 11:
          __memmove_chk();
          if (!sub_10000C240())
          {
            goto LABEL_41;
          }

          sub_10000AF54("Transparent is set to %s", v42, v43, v44, v45, v46, v47, v48, "OFF");
          v49 = sub_10000C050(0x50u);
          if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }

          break;
        default:
          if (!sub_10000C240())
          {
            goto LABEL_41;
          }

          sub_10000AF54("Unknown application parameter %d", v64, v65, v66, v67, v68, v69, v70, *(v40 - 16));
          v49 = sub_10000C050(0x50u);
          if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }

          break;
      }

      v71 = sub_10000C0FC();
      *buf = 136446466;
      v84 = v71;
      v85 = 1024;
      v86 = 0xFFFF;
      _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
LABEL_41:
      ++v39;
      v40 += 24;
      if (v39 >= a1[408])
      {
        goto LABEL_44;
      }
    }
  }

  if (v4 != 2)
  {
    if (sub_10000C240())
    {
      v73 = 1720;
      sub_10000AF54("Error in GET or PUT message : %!", v74, v75, v76, v77, v78, v79, v80, 1720);
      v81 = sub_10000C050(0x50u);
      if (!os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        return v73;
      }

      sub_10080F7A0();
    }

    return 1720;
  }

  if (a1[408])
  {
    v5 = 0;
    v6 = a1 + 40;
    do
    {
      v7 = *(v6 - 16);
      switch(v7)
      {
        case 21:
          __memmove_chk();
          if (!sub_10000C240())
          {
            goto LABEL_19;
          }

          sub_10000AF54("Fraction set to %s", v23, v24, v25, v26, v27, v28, v29, "First");
          v15 = sub_10000C050(0x50u);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          break;
        case 20:
          __memmove_chk();
          if (!sub_10000C240())
          {
            goto LABEL_19;
          }

          sub_10000AF54("Charset is set to %s", v16, v17, v18, v19, v20, v21, v22, "UTF8");
          v15 = sub_10000C050(0x50u);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          break;
        case 10:
          __memmove_chk();
          if (!sub_10000C240())
          {
            goto LABEL_19;
          }

          sub_10000AF54("Attachement is set to %s", v8, v9, v10, v11, v12, v13, v14, "OFF");
          v15 = sub_10000C050(0x50u);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          break;
        default:
          if (!sub_10000C240())
          {
            goto LABEL_19;
          }

          sub_10000AF54("Unknown application parameter %d", v30, v31, v32, v33, v34, v35, v36, *(v6 - 16));
          v15 = sub_10000C050(0x50u);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          break;
      }

      v37 = sub_10000C0FC();
      *buf = 136446466;
      v84 = v37;
      v85 = 1024;
      v86 = 0xFFFF;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
LABEL_19:
      ++v5;
      v6 += 24;
    }

    while (v5 < a1[408]);
  }

  v38 = *(qword_100B5EF98 + 256);
  if (!v38)
  {
    sub_1000D660C();
    v38 = *(qword_100B5EF98 + 256);
  }

  v38(a2, *(a1 + 1), 0, 1, 1);
  return 0;
}

uint64_t sub_100223078(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Send events should be PUT, not %d", v32, v33, v34, v35, v36, v37, v38, *a1);
      v39 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 1720;
  }

  if (!*(a1 + 1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Message handle is NULL", v46, v47, v48, v49, v50, v51, v52, v54);
      v53 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 1739;
  }

  if (!a1[408])
  {
    v41 = 0;
    goto LABEL_36;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = a1 + 40;
  do
  {
    v8 = *(v7 - 16);
    if (v8 == 24)
    {
      if (*v7 == 1)
      {
        v6 = **(v7 - 1);
        goto LABEL_19;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Invalid msg of len %d for MapTagStatusValue", v24, v25, v26, v27, v28, v29, v30, *v7);
        v16 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
LABEL_21:
          v31 = sub_10000C0FC();
          *buf = 136446466;
          v56 = v31;
          v57 = 1024;
          v58 = 0xFFFF;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
        }
      }
    }

    else if (v8 == 23)
    {
      if (*v7 == 1)
      {
        v5 = **(v7 - 1);
        goto LABEL_19;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Invalid msg of len %d for MapTagStatusIndicator", v17, v18, v19, v20, v21, v22, v23, *v7);
        v16 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Unknown application parameter %d", v9, v10, v11, v12, v13, v14, v15, *(v7 - 16));
      v16 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }
    }

LABEL_19:
    ++v4;
    v7 += 24;
  }

  while (v4 < a1[408]);
  v41 = v6 != 0;
  if (v5)
  {
    if (v5)
    {
      v42 = *(qword_100B5EF98 + 312);
      if (!v42)
      {
        sub_1000D660C();
        v42 = *(qword_100B5EF98 + 312);
      }

      v43 = v6 != 0;
      v44 = *(a1 + 1);
      v45 = a2;
      goto LABEL_39;
    }

    return 0;
  }

LABEL_36:
  v42 = *(qword_100B5EF98 + 304);
  if (!v42)
  {
    sub_1000D660C();
    v42 = *(qword_100B5EF98 + 304);
  }

  v44 = *(a1 + 1);
  v45 = a2;
  v43 = v41;
LABEL_39:
  v42(v45, v43, v44);
  return 0;
}

uint64_t sub_100223418(_BYTE *a1, unsigned int a2)
{
  if (*a1 == 1)
  {
    v3 = *(qword_100B5EF98 + 296);
    if (v3)
    {
      v3();
    }

    v4 = sub_1001C28A0(a2, 0, 0);
    if (v4)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not send PUT response : %!", v5, v6, v7, v8, v9, v10, v11, v4);
        v12 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Send events should be PUT, not %d", v14, v15, v16, v17, v18, v19, v20, *a1);
      v21 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 1720;
  }

  return v4;
}

uint64_t sub_100223510(unsigned __int8 *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (a1[408])
    {
      v4 = 0;
      v5 = a1 + 40;
      do
      {
        if (*(v5 - 16) == 37)
        {
          __memmove_chk();
          if (sub_10000C240())
          {
            sub_10000AF54("NotificationFilter is set to 0x%x", v6, v7, v8, v9, v10, v11, v12, 0);
            v13 = sub_10000C050(0x50u);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = sub_10000C0FC();
              *buf = 136446466;
              v25 = v14;
              v26 = 1024;
              v27 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }
        }

        ++v4;
        v5 += 24;
      }

      while (v4 < a1[408]);
    }

    (*(qword_100B5EF98 + 328))(a2, 0);
    return 0;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Send events should be PUT, not %d", v15, v16, v17, v18, v19, v20, v21, *a1);
      v22 = sub_10000C050(0x50u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 1720;
  }
}

void sub_100223714(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = WORD2(a1);
  if (qword_100B5EF98)
  {
    v3 = sub_10021F660(&v30);
    if (v3 == 7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid connection ID %:.", v4, v5, v6, v7, v8, v9, v10, &v30);
        v11 = sub_10000C050(0x50u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      v20 = v3;
      if (a2)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("BT Map Send failed with status %!", v21, v22, v23, v24, v25, v26, v27, a2);
          v28 = sub_10000C050(0x50u);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB054(*(qword_100B5EF98 + 32 * v20 + 32), 1);
      if (sub_10000C248(*(qword_100B5EF98 + 32 * v20 + 32)))
      {
        sub_100220050(*(qword_100B5EF98 + 32 * v20 + 16));
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("MAP is not initialized", v12, v13, v14, v15, v16, v17, v18, v29);
    v19 = sub_10000C050(0x50u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

double sub_10022387C(uint64_t a1)
{
  v1 = *(a1 + 64);
  result = 0.0;
  *(v1 + 139) = 0u;
  v1[7] = 0u;
  v1[8] = 0u;
  v1[5] = 0u;
  v1[6] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *v1 = 0u;
  return result;
}

uint64_t sub_1002238A0(uint64_t a1, const void *a2, unsigned int a3, char *__s)
{
  v8 = strlen(__s);
  v9 = v8;
  if (v8 > 0x10)
  {
    return 1740;
  }

  memmove(*(a1 + 64), __s, v8 & 0x1F);
  v11 = *(a1 + 64);
  v11[16] = v9;
  if (a3 > 0x14)
  {
    return 1757;
  }

  v12 = 0;
  if (a2)
  {
    if (a3)
    {
      memmove(v11 + 17, a2, a3);
      v11 = *(a1 + 64);
      v12 = a3;
    }
  }

  result = 0;
  v11[37] = v12;
  return result;
}

uint64_t sub_10022394C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (!v4)
  {
    sub_1000D660C();
  }

  if (*a2 != 77)
  {
    sub_1000D660C();
  }

  v5 = *(a2 + 8);
  if (*(a2 + 8))
  {
    result = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(a2 + 16);
      v10 = (v9 + v8);
      v11 = v8 + 2;
      v12 = v10[1];
      if (*v10)
      {
        if (*v10 == 1)
        {
          if (v12 != 1)
          {
            goto LABEL_13;
          }

          v7 = *(v9 + v11);
        }
      }

      else
      {
        if (v12 != 16)
        {
LABEL_13:
          result = 1744;
          goto LABEL_14;
        }

        *(v4 + 61) = *(v9 + v11);
        v5 = *(a2 + 8);
      }

LABEL_14:
      v8 = v11 + v12;
      if (v8 >= v5)
      {
        goto LABEL_17;
      }
    }
  }

  v7 = 0;
  result = 0;
LABEL_17:
  *(v4 + 60) = v7 & 1;
  *(a1 + 57) = (v7 & 2) != 0;
  return result;
}

uint64_t sub_100223A20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1000D660C();
  }

  if (*a2 != 78)
  {
    sub_1000D660C();
  }

  *(v3 + 38) = 0;
  *(v3 + 46) = 0;
  *(v3 + 54) = 0;
  *(v3 + 58) = 0;
  if (*(a2 + 8))
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(a2 + 16);
      v7 = (v6 + v5);
      v8 = v5 + 2;
      v9 = v7[1];
      if (*v7 == 1)
      {
        if (v7[1])
        {
          if (v9 <= 0x14)
          {
            memmove((v3 + 38), (v6 + v8), v7[1]);
            *(v3 + 58) = v9;
            goto LABEL_15;
          }

LABEL_13:
          v4 = 1744;
        }
      }

      else if (!*v7)
      {
        if (v9 != 16)
        {
          goto LABEL_13;
        }

        *(v3 + 77) = *(v6 + v8);
      }

LABEL_15:
      v5 = v8 + v9;
      if (v8 + v9 >= *(a2 + 8))
      {
        return v4;
      }
    }
  }

  return 0;
}

void sub_100223B08(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (!v4)
  {
    sub_1000D660C();
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_100302DAC(v7);
  sub_100302DC0(v7, (*(a1 + 64) + 61), 0x10uLL);
  sub_100302DC0(v7, ":", 1uLL);
  sub_100302DC0(v7, *(a1 + 64), *(*(a1 + 64) + 16));
  *(v4 + 93) = 4096;
  sub_1003038C0((v4 + 95), v7);
  v5 = *(v4 + 37);
  if (*(v4 + 37))
  {
    *(v4 + 111) = 1;
    *(v4 + 112) = v5;
    memmove((v4 + 113), (v4 + 17), v5);
    v6 = *(v4 + 37) + 20;
  }

  else
  {
    v6 = 18;
  }

  *a2 = 78;
  *(a2 + 16) = v4 + 93;
  *(a2 + 8) = v6;
}

void sub_100223BF4(char *__s, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 64);
  if (v6)
  {
    if (__s)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (__s)
    {
      goto LABEL_3;
    }
  }

  sub_1000D660C();
LABEL_3:
  v12 = 0;
  memset(__src, 0, sizeof(__src));
  v7 = strlen(__s);
  sub_100302DAC(&__src[8]);
  sub_100016250(__src);
  sub_100302DC0(&__src[8], __src, 8uLL);
  sub_100302DC0(&__src[8], __s, v7);
  *(v6 + 134) = 4096;
  sub_1003038C0((v6 + 136), &__src[8]);
  if (*(a2 + 57))
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | *(v6 + 59);
  if ((v9 & 3) != 0)
  {
    *(v6 + 152) = 257;
    *(v6 + 154) = v9;
    v10 = 21;
  }

  else
  {
    v10 = 18;
  }

  *a3 = 77;
  *(a3 + 16) = v6 + 134;
  *(a3 + 8) = v10;
}

uint64_t sub_100223D04(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    sub_1000D660C();
  }

  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v5 = 0uLL;
  sub_100302DAC(v3);
  sub_100302DC0(v3, (v1 + 136), 0x10uLL);
  sub_100302DC0(v3, ":", 1uLL);
  sub_100302DC0(v3, v1, *(v1 + 16));
  sub_1003038C0(&v5, v3);
  if (v5 == *(v1 + 77))
  {
    return 0;
  }

  else
  {
    return 1742;
  }
}

uint64_t sub_100223DE4(uint64_t a1)
{
  for (i = 0; i != 6; ++i)
  {
    v3 = qword_100B5F1E8[i];
    if (!v3)
    {
      qword_100B5F1E8[i] = a1;
      *(a1 + 280) = i;
      return v3;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("No more OBEX handles available!", v4, v5, v6, v7, v8, v9, v10, v1);
    v11 = sub_10000C050(0x17u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 104;
}

unsigned __int16 *sub_100223E78(int a1)
{
  v1 = 0;
  while (1)
  {
    v2 = qword_100B5F1E8[v1];
    if (v2)
    {
      if (*v2 == a1)
      {
        break;
      }
    }

    if (++v1 == 6)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("GetObexCliConnectionByLinkHandle - context not found", v3, v4, v5, v6, v7, v8, v9, v12);
        v10 = sub_10000C050(0x17u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return 0;
    }
  }

  return v2;
}

void sub_100223F08(int a1)
{
  v2 = 0;
  while (1)
  {
    v3 = qword_100B5F1E8[v2];
    if (v3)
    {
      if (*(v3 + 280) == a1)
      {
        break;
      }
    }

    if (++v2 == 6)
    {

      sub_1000D660C();
      return;
    }
  }

  if (*(v3 + 8))
  {
    sub_10000C1E8(*(v3 + 8));
    v3 = qword_100B5F1E8[v2];
    *(v3 + 8) = 0;
  }

  if (*(v3 + 64))
  {
    sub_10000C1E8(*(v3 + 64));
    v3 = qword_100B5F1E8[v2];
    *(v3 + 64) = 0;
  }

  sub_10000C1E8(v3);
  qword_100B5F1E8[v2] = 0;
}

void sub_100223FA8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 132);
  v5 = *(a1 + 276);
  *(a1 + 276) = 0;
  if (v4)
  {
    sub_10002242C(v4);
    *(a1 + 132) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    sub_1000BB9CC(v6);
    *(a1 + 40) = 0;
  }

  if (v5 > 5)
  {
    if (v5 == 6 || v5 == 7)
    {
      if (v4)
      {
        (*(a1 + 152))(*(a1 + 280), 0, a2);
      }
    }

    else if (v5 == 8)
    {
      (*(a1 + 152))(*(a1 + 280), a2);
    }
  }

  else if ((v5 - 1) >= 2)
  {
    if (v5 == 5)
    {
      v7 = *(a1 + 264);
      if ((v7 - 3) < 2)
      {
        *(a1 + 264) = 0;
        v9 = *(a1 + 152);
        if (v9)
        {
          v9(*(a1 + 280));
        }
      }

      else if (v7 == 2 || v7 == 1)
      {
        *(a1 + 264) = 0;
        (*(a1 + 152))(*(a1 + 280), 0, 1719);
      }
    }
  }

  else
  {
    (*(a1 + 152))(*(a1 + 280), 0, a2);
    *(a1 + 136) = 0;
  }

  v8 = *(a1 + 136);
  if (v8)
  {
    v8(*(a1 + 280));
  }

  sub_100223F08(*(a1 + 280));
  --dword_100BCE28C;
}

void sub_1002240F8(unsigned __int16 *a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("OBEX client error %!", v4, v5, v6, v7, v8, v9, v10, a2);
    v11 = sub_10000C050(0x17u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  *(a1 + 8) = 0;
  *(a1 + 66) = 0;
  if (*(a1 + 69) < 2u)
  {
    goto LABEL_15;
  }

  *(a1 + 268) = 1;
  v12 = *(a1 + 1);
  if (v12 == 1)
  {
    v13 = sub_10029104C(*a1, 436);
  }

  else
  {
    if (v12)
    {
      v14 = 101;
LABEL_12:
      if (sub_10000C240())
      {
        sub_10000AF54("Transport disconnect failed %!", v15, v16, v17, v18, v19, v20, v21, v14);
        v22 = sub_10000C050(0x17u);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

LABEL_15:
      sub_100223FA8(a1, a2);
      return;
    }

    v13 = sub_1002EFF1C(*a1, 926);
  }

  v14 = v13;
  if (v13)
  {
    goto LABEL_12;
  }
}

uint64_t sub_100224218(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 1701)
  {
    v4 = 2;
  }

  else
  {
    v4 = -126;
  }

  if (!a3)
  {
    sub_1000D660C();
    return 101;
  }

  if (a1 >= 6)
  {
    sub_1000D660C();
  }

  v9 = qword_100B5F1E8[a1];
  if (!v9)
  {
    return 1709;
  }

  v10 = *(v9 + 276);
  if (v10 < 4)
  {
    return 1709;
  }

  if (*(v9 + 132))
  {
    if (*(v9 + 264) == 4)
    {
      return 1719;
    }

    else
    {
      return 1711;
    }
  }

  if (v10 != 7 && v10 != 4)
  {
    return 1711;
  }

  *(v9 + 152) = a3;
  if (*(v9 + 264) == 2)
  {
LABEL_32:
    sub_100224468(v9);
    return 0;
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  v33[0] = 0;
  v33[1] = 0;
  if (a4 && a4 != 1701)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OBEX client terminating PUT operation with error %!", v15, v16, v17, v18, v19, v20, v21, a4);
      v22 = sub_10000C050(0x17u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    *(v9 + 264) = 2;
    goto LABEL_32;
  }

  if (!a2)
  {
    return 101;
  }

  sub_100225AF4(v9, v4, v33);
  if (*(v9 + 276) == 4)
  {
    v13 = *(v9 + 260);
    if (v13 == -1)
    {
      v14 = 0;
    }

    else
    {
      LOBYTE(v34) = -53;
      LODWORD(v35) = v13;
      v14 = 1;
    }

    *(v9 + 276) = 7;
  }

  else
  {
    v14 = 0;
  }

  v23 = sub_100225400(v9, v33, &v34, v14, a2);
  if (v23)
  {
    v11 = v23;
  }

  else
  {
    v11 = sub_1002244F0(v9, *(v9 + 128));
    if (!v11)
    {
      return v11;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("OBEXCLI_PutReq %!", v24, v25, v26, v27, v28, v29, v30, v11);
    v31 = sub_10000C050(0x17u);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  *(v9 + 276) = 4;
  return v11;
}

void sub_100224468(uint64_t a1)
{
  if (sub_100225160(a1, 255, 50))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not send abort command", v2, v3, v4, v5, v6, v7, v8, v10);
      v9 = sub_10000C050(0x17u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1002240F8(a1, 1706);
  }

  else
  {
    *(a1 + 276) = 5;
  }
}

uint64_t sub_1002244F0(unsigned __int16 *a1, int a2)
{
  v4 = *(a1 + 1);
  if (v4 == 1)
  {
    v5 = sub_1000B7EDC(sub_1001B9B2C, *a1, 0, *(a1 + 5), 0);
  }

  else
  {
    if (v4)
    {
      v6 = 101;
      goto LABEL_9;
    }

    v5 = sub_1002EF65C(sub_10024A504, *a1, *(a1 + 5));
  }

  v6 = v5;
  if (v5)
  {
LABEL_9:
    sub_1000BB9CC(*(a1 + 5));
    *(a1 + 5) = 0;
    return v6;
  }

  v11 = a1;
  v8 = *(a1 + 33);
  v7 = (a1 + 66);
  if (sub_10002260C(v8))
  {
    sub_1000B7ADC(*v7, a2);
  }

  else
  {
    v10[0] = 8;
    v10[1] = &v11;
    sub_10002195C(sub_100225214, v10, a2, v7);
  }

  return 0;
}

uint64_t sub_1002245E8(uint64_t a1, int a2)
{
  if (*(a1 + 276) != 2)
  {
    sub_1000D660C();
  }

  v15 = 0;
  v16 = 0;
  memset(v17, 0, sizeof(v17));
  v13 = 0;
  v14 = 0;
  sub_100225AF4(a1, 128, &v13);
  if (HIBYTE(v14))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcli_common.c");
    goto LABEL_21;
  }

  v4 = WORD2(v14);
  if (WORD1(v14) <= WORD2(v14))
  {
LABEL_21:
    v10 = "ByteStream_NumReadBytesAvail(pkt) >= 1";
    goto LABEL_23;
  }

  if (BYTE6(v14) != 2)
  {
    v10 = "(pkt).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcli_common.c", 1084, v10);
  }

  ++WORD2(v14);
  *(v13 + v4) = 16;
  if (HIBYTE(v14))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcli_common.c");
    goto LABEL_25;
  }

  v5 = WORD2(v14);
  if (WORD1(v14) <= WORD2(v14))
  {
LABEL_25:
    v11 = "ByteStream_NumReadBytesAvail(pkt) >= 1";
    goto LABEL_27;
  }

  if (BYTE6(v14) != 2)
  {
    v11 = "(pkt).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcli_common.c", 1085, v11);
  }

  ++WORD2(v14);
  *(v13 + v5) = 0;
  if (HIBYTE(v14))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcli_common.c");
    goto LABEL_29;
  }

  if (WORD1(v14) - WORD2(v14) <= 1)
  {
LABEL_29:
    v12 = "ByteStream_NumReadBytesAvail(pkt) >= 2";
    goto LABEL_31;
  }

  if (BYTE6(v14) != 2)
  {
    v12 = "(pkt).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcli_common.c", 1086, v12);
  }

  *(v13 + WORD2(v14) + 1) = *(a1 + 74);
  *(v13 + WORD2(v14)) = *(a1 + 75);
  WORD2(v14) += 2;
  if (*(a1 + 272))
  {
    v6 = sub_1003045A0(0x17u);
    sub_100223BF4(*(v6 + 16), a1, v17);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 56) == 1)
  {
    v8 = v7 + 1;
    sub_100223B08(a1, v17 + 24 * v7);
    v7 = v8;
  }

  v15 = a1 + 160;
  LOBYTE(v16) = *(a1 + 256);
  result = sub_100225400(a1, &v13, v17, v7, &v15);
  if (!result)
  {
    return sub_1002244F0(a1, a2);
  }

  return result;
}

void sub_100224890(uint64_t a1, void *a2, size_t a3)
{
  if (a1)
  {
    v4 = sub_100225B28(a1, a2, a3);
    if (v4)
    {

      sub_1002240F8(a1, v4);
    }

    else if (*(a1 + 32) == 2 && !*(a1 + 40))
    {

      sub_100224974(a1);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OBEX received data for unknown connection [%d]", v5, v6, v7, v8, v9, v10, v11, &link);
    v12 = sub_10000C050(0x17u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_100224974(unsigned __int16 *a1)
{
  if (*(a1 + 8) != 2)
  {
    sub_1000D660C();
  }

  if (*(a1 + 31))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcli_common.c");
    goto LABEL_110;
  }

  v2 = a1[13];
  v3 = a1[14];
  if (v2 <= v3)
  {
LABEL_110:
    v57 = "ByteStream_NumReadBytesAvail(connection->common.rcvPacket) >= 1";
    goto LABEL_112;
  }

  if (*(a1 + 30) != 1)
  {
    v57 = "(connection->common.rcvPacket).__RWFlag == BYTESTREAM_READ";
LABEL_112:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcli_common.c", 1268, v57);
  }

  v4 = *(a1 + 2);
  a1[14] = v3 + 1;
  if ((v2 - (v3 + 1)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcli_common.c", 1269, "ByteStream_NumReadBytesAvail(connection->common.rcvPacket) >= (sizeof(uint16_t))");
  }

  v5 = *(v4 + v3);
  a1[14] = v3 + 3;
  sub_10002242C(*(a1 + 33));
  *(a1 + 33) = 0;
  if ((a1[134] & 1) == 0)
  {
    v6 = *(a1 + 69);
    if (v6 <= 5)
    {
      if (v6 != 2)
      {
        if (v6 == 3)
        {
          v25 = sub_100225224(v5, 1705);
          if (v25)
          {
            v24 = v25;
            v23 = a1;
          }

          else
          {
            *(a1 + 268) = 1;
            v27 = *(a1 + 1);
            if (v27 == 1)
            {
              v28 = sub_10029104C(*a1, 436);
            }

            else
            {
              if (v27)
              {
                goto LABEL_84;
              }

              v28 = sub_1002EFF1C(*a1, 926);
            }

            if (!v28)
            {
              goto LABEL_84;
            }

            v23 = a1;
            v24 = 1705;
          }

LABEL_83:
          sub_1002240F8(v23, v24);
          goto LABEL_84;
        }

        if (v6 == 5)
        {
          *(a1 + 69) = 4;
          v7 = *(a1 + 66);
          if ((v7 - 3) < 2)
          {
            *(a1 + 66) = 0;
            v26 = *(a1 + 19);
            if (v26)
            {
              v26(a1[140]);
            }
          }

          else if (v7 == 2 || v7 == 1)
          {
            *(a1 + 66) = 0;
            (*(a1 + 19))(a1[140], 0, 1719);
          }

          goto LABEL_84;
        }

LABEL_35:
        if (sub_10000C240())
        {
          sub_10000AF54("Unexpected response packet", v15, v16, v17, v18, v19, v20, v21, v58);
          v22 = sub_10000C050(0x17u);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        v23 = a1;
        v24 = 1706;
        goto LABEL_83;
      }

      ptr = 0;
      v60 = 0;
      v11 = sub_100225224(v5, 1704);
      if (v11)
      {
        v12 = v11;
        if (v11 != 1742)
        {
LABEL_79:
          if (sub_10000C240())
          {
            sub_10000AF54("OBEX Client connection failed %!", v43, v44, v45, v46, v47, v48, v49, v12);
            v50 = sub_10000C050(0x17u);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          v23 = a1;
          v24 = v12;
          goto LABEL_83;
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      if (*(a1 + 30) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcli_common.c", 891, "(connection->common.rcvPacket).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 31))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcli_common.c");
LABEL_72:
        v33 = 0;
        *(a1 + 31) = 1;
LABEL_73:
        if (sub_10000C240())
        {
          sub_10000AF54("OBEX Client connect - version mismatch %d.%d", v35, v36, v37, v38, v39, v40, v41, v33);
          v42 = sub_10000C050(0x17u);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        v12 = 1718;
        goto LABEL_77;
      }

      v30 = a1[13];
      v31 = a1[14];
      if (v30 <= v31)
      {
        goto LABEL_72;
      }

      v32 = *(a1 + 2);
      a1[14] = v31 + 1;
      v33 = *(v32 + v31) >> 4;
      if (v33 != 1)
      {
        goto LABEL_73;
      }

      if (v30 <= (v31 + 1))
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcli_common.c", 907, "ByteStream_NumReadBytesAvail(connection->common.rcvPacket) >= (1)");
      }

      a1[14] = v31 + 2;
      if ((v30 - (v31 + 2)) <= 1)
      {
        *(a1 + 31) = 1;
        v12 = 1707;
        goto LABEL_77;
      }

      v34 = __rev16(*(v32 + v31 + 2));
      a1[38] = v34;
      a1[14] = v31 + 4;
      if (v34 < 0xC8)
      {
        v12 = 1736;
        goto LABEL_77;
      }

      v12 = sub_100225EAC(&ptr, a1 + 2);
      if (v12)
      {
LABEL_77:
        if (ptr)
        {
          sub_10000C1E8(ptr);
          ptr = 0;
        }

        goto LABEL_79;
      }

      if (v13)
      {
        *(a1 + 56) = 1;
        v51 = sub_100225E80(&ptr, 77);
        if (v51)
        {
          if (*(a1 + 8))
          {
            sub_10022394C(a1, v51);
            v52 = *(a1 + 18);
            if (v52)
            {
              v52(a1[140], *(*(a1 + 8) + 60));
            }

            v29 = ptr;
            goto LABEL_65;
          }

          v12 = 1743;
          goto LABEL_77;
        }

LABEL_106:
        v12 = 1714;
        goto LABEL_77;
      }

      v53 = sub_100225E80(&ptr, 203);
      if (v53)
      {
        *(a1 + 65) = *(v53 + 2);
      }

      if (*(a1 + 68))
      {
        v54 = sub_100225E80(&ptr, 78);
        if (!v54)
        {
          goto LABEL_106;
        }

        sub_100223A20(a1, v54);
        v55 = *(a1 + 8);
        if (*(v55 + 59) == 1 && ((v56 = *(v55 + 58), !*(v55 + 58)) || *(v55 + 37) != v56 || strncmp((v55 + 17), (v55 + 38), v56)) || sub_100223D04(a1))
        {
          sub_10022387C(a1);
          v12 = 1735;
          goto LABEL_77;
        }
      }

      *(a1 + 69) = 4;
      (*(a1 + 19))(a1[140], *(a1 + 57), 0);
LABEL_64:
      v29 = ptr;
      if (!ptr)
      {
        goto LABEL_84;
      }

LABEL_65:
      sub_10000C1E8(v29);
      goto LABEL_84;
    }

    switch(v6)
    {
      case 6:
        ptr = 0;
        v60 = 0;
        v14 = sub_100225EAC(&ptr, a1 + 2);
        if (!v14)
        {
          v14 = sub_100225224(v5, 1713);
        }

        if (v14 == 1701)
        {
          if (*(a1 + 66) == 1)
          {
            if (ptr)
            {
              sub_10000C1E8(ptr);
              ptr = 0;
            }

            goto LABEL_45;
          }

          if (*(a1 + 69) != 6)
          {
            goto LABEL_62;
          }

LABEL_59:
          if ((a1[40] & 0xFE) == 0x48)
          {
            v14 = sub_1002252F0(a1);
            if (!v14)
            {
              goto LABEL_64;
            }

LABEL_63:
            (*(a1 + 19))(a1[140], &ptr, v14);
            goto LABEL_64;
          }

LABEL_62:
          v14 = 1701;
          goto LABEL_63;
        }

        break;
      case 7:
        ptr = 0;
        v60 = 0;
        v14 = sub_100225EAC(&ptr, a1 + 2);
        if (!v14)
        {
          v14 = sub_100225224(v5, 1712);
        }

        if (v14 == 1701)
        {
          if (*(a1 + 66) == 2)
          {
LABEL_45:
            sub_100224468(a1);
            goto LABEL_84;
          }

          if (*(a1 + 69) != 7)
          {
            goto LABEL_62;
          }

          goto LABEL_59;
        }

        break;
      case 8:
        if (v5 == 161)
        {
          v8 = -96;
        }

        else
        {
          v8 = v5;
        }

        v9 = sub_100225224(v8, 1706);
        if (v9 == 1724)
        {
          v10 = 1738;
        }

        else
        {
          v10 = v9;
        }

        *(a1 + 69) = 4;
        (*(a1 + 19))(a1[140], v10);
        goto LABEL_84;
      default:
        goto LABEL_35;
    }

    *(a1 + 69) = 4;
    *(a1 + 66) = 0;
    goto LABEL_63;
  }

LABEL_84:
  *(a1 + 8) = 0;
}

void sub_100224FE0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    *(a1 + 40) = 0;
    sub_1000BB9CC(a2);
    if (a3)
    {

      sub_1002240F8(a1, a3);
    }

    else if (*(a1 + 32) == 2)
    {

      sub_100224974(a1);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Write confirmation for unknown link [%d]", v5, v6, v7, v8, v9, v10, v11, &link);
    v12 = sub_10000C050(0x17u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1002250C8(unsigned int a1)
{
  if (a1 >= 6)
  {
    sub_1000D660C();
  }

  v2 = qword_100B5F1E8[a1];
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 276);
  if (v3 <= 3)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = v2;
    v5 = 1719;
LABEL_10:
    sub_1002240F8(v4, v5);
    return 0;
  }

  if (v3 != 4)
  {
    return 1711;
  }

  result = sub_100225160(v2, 129, 30);
  if (result)
  {
    v5 = result;
    v4 = v2;
    goto LABEL_10;
  }

  *(v2 + 276) = 3;
  return result;
}

uint64_t sub_100225160(uint64_t a1, char a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v8[0] = 0;
  v8[1] = 0;
  sub_100225AF4(a1, a2, v8);
  v5 = *(a1 + 260);
  if (v5 == -1)
  {
    v6 = 0;
  }

  else
  {
    LOBYTE(v9) = -53;
    LODWORD(v10) = v5;
    v6 = 1;
  }

  result = sub_100225400(a1, v8, &v9, v6, 0);
  if (!result)
  {
    return sub_1002244F0(a1, a3);
  }

  return result;
}

uint64_t sub_100225224(int a1, uint64_t a2)
{
  if (a1 <= 191)
  {
    if (a1 == 166)
    {
      v2 = 1750;
    }

    else
    {
      v2 = a2;
    }

    if (a1 == 160)
    {
      v2 = 0;
    }

    if (a1 == 144)
    {
      return 1701;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    switch(a1)
    {
      case 192:
        a2 = 1721;
        break;
      case 193:
        a2 = 1742;
        break;
      case 195:
        a2 = 1735;
        break;
      case 196:
        a2 = 1724;
        break;
      case 197:
        a2 = 1751;
        break;
      case 198:
        a2 = 1736;
        break;
      case 203:
        a2 = 1708;
        break;
      case 204:
        a2 = 1741;
        break;
      case 207:
        a2 = 1749;
        break;
      case 208:
        a2 = 1748;
        break;
      case 209:
        a2 = 1717;
        break;
      case 211:
        a2 = 1715;
        break;
      case 224:
        a2 = 1746;
        break;
      case 225:
        a2 = 1747;
        break;
      default:
        return a2;
    }
  }

  return a2;
}

uint64_t sub_1002252F0(uint64_t a1)
{
  result = sub_100225A60(a1);
  if (!result)
  {
    v3 = *(a1 + 128);

    return sub_1002244F0(a1, v3);
  }

  return result;
}

uint64_t sub_10022533C(unsigned __int8 *a1)
{
  v2 = *a1 >> 6;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      return 2;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    if (v2)
    {
      v12 = *(a1 + 4);
    }

    else
    {
      if (!*(a1 + 4))
      {
        return 3;
      }

      if (*(*(a1 + 2) + 2 * (*(a1 + 4) - 1)))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OBEX unicode must be NUL terminated", v4, v5, v6, v7, v8, v9, v10, v1);
          v11 = sub_10000C050(0x18u);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      v12 = 2 * *(a1 + 4);
    }

    return (v12 + 3);
  }
}

uint64_t sub_100225400(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4, uint64_t a5)
{
  if (a5)
  {
    v10 = *(a5 + 8);
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 40))
  {
    sub_1000D660C();
  }

  if (*(a1 + 80))
  {
    sub_1000D660C();
  }

  v11 = v10 + a4 + 1;
  if (a4)
  {
    v12 = a4;
    v13 = a3;
    do
    {
      v14 = *v13;
      v13 += 24;
      if ((v14 & 0xC0) == 0x40)
      {
        ++v11;
      }

      --v12;
    }

    while (v12);
  }

  if (v10)
  {
    v15 = *a5;
    v16 = v10;
    do
    {
      v17 = *v15;
      v15 += 24;
      if ((v17 & 0xC0) == 0x40)
      {
        ++v11;
      }

      --v16;
    }

    while (v16);
  }

  v37 = *(a2 + 12);
  v18 = sub_1000B914C(v11);
  if (v18)
  {
    v19 = v18;
    if (a4)
    {
      v20 = a4;
      do
      {
        v21 = sub_100225770(a1, v19, a3, &v37);
        if (v21)
        {
          goto LABEL_38;
        }

        a3 += 24;
      }

      while (--v20);
    }

    if (v10)
    {
      v22 = 0;
      v23 = 24 * v10;
      while (1)
      {
        v21 = sub_100225770(a1, v19, (*a5 + v22), &v37);
        if (v21)
        {
          break;
        }

        v22 += 24;
        if (v23 == v22)
        {
          goto LABEL_27;
        }
      }

LABEL_38:
      v29 = v21;
LABEL_50:
      sub_1000BB9CC(v19);
      return v29;
    }

LABEL_27:
    v24 = *(a2 + 12);
    *(a2 + 12) = 0;
    if ((*(a1 + 80) & 0xFE) == 0x48)
    {
      v25 = *(a1 + 78);
      v26 = v25 & 0x7F;
      if (v25 == 160)
      {
        v26 = -112;
      }

      if (v25 == 144)
      {
        v27 = -112;
      }

      else
      {
        v27 = v26;
      }

      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c");
      }

      else if (*(a2 + 10))
      {
        if (*(a2 + 14) != 2)
        {
          v28 = "(*pktHdr).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_60;
        }

LABEL_43:
        v30 = *a2;
        *(a2 + 12) = 1;
        *v30 = v27;
        if (*(a2 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c");
        }

        else
        {
          v31 = *(a2 + 12);
          if (*(a2 + 10) - v31 > 1)
          {
            if (*(a2 + 14) == 2)
            {
              v32 = HIBYTE(v37);
              *(*a2 + v31 + 1) = v37;
              *(*a2 + *(a2 + 12)) = v32;
              *(a2 + 12) += 2;
              v33 = *(a2 + 10);
              if (v24 > v33)
              {
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 408, "(size_t)(pos) <= (size_t)((*pktHdr).__size)");
              }

              *(a2 + 12) = v24;
              if (*(a2 + 14) == 2)
              {
                *(a2 + 10) = v24;
                v33 = v24;
              }

              *(a2 + 14) = 15;
              v29 = sub_1003054C0(v19, *a2, v33, 0);
              if (!v29)
              {
                sub_100305614(v19, *(a1 + 72));
                *(a1 + 40) = v19;
                return v29;
              }

              goto LABEL_50;
            }

            v35 = "(*pktHdr).__RWFlag == BYTESTREAM_WRITE";
LABEL_56:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 407, v35);
          }
        }

        v35 = "ByteStream_NumReadBytesAvail(*pktHdr) >= 2";
        goto LABEL_56;
      }

      v28 = "ByteStream_NumReadBytesAvail(*pktHdr) >= 1";
LABEL_60:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 403, v28);
    }

    if (*(a2 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c");
    }

    else if (*(a2 + 10))
    {
      if (*(a2 + 14) == 2)
      {
        v27 = *(a1 + 78);
        goto LABEL_43;
      }

      v36 = "(*pktHdr).__RWFlag == BYTESTREAM_WRITE";
LABEL_64:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 405, v36);
    }

    v36 = "ByteStream_NumReadBytesAvail(*pktHdr) >= 1";
    goto LABEL_64;
  }

  return 106;
}

uint64_t sub_100225770(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, _WORD *a4)
{
  v8 = *a3;
  v9 = sub_10022533C(a3);
  if (!v9)
  {
    return 101;
  }

  v10 = v9;
  v25 = 0;
  v11 = *a4;
  v12 = *(a1 + 76);
  if (v11 + v9 > v12)
  {
    if ((*a3 & 0xFE) != 0x48)
    {
      return 1737;
    }

    LOWORD(v10) = v12 - v11;
    if ((v12 - v11) < 4u)
    {
      return 0;
    }

    v22 = *(a3 + 2);
    *(a1 + 80) = *a3;
    *(a1 + 96) = v22 + v10 - 3;
    *(a1 + 88) -= v10 - 3;
    *a4 += v10;
    LOBYTE(v8) = 72;
    goto LABEL_20;
  }

  *a4 = v11 + v9;
  v14 = v8 >> 6;
  if (v8 >> 6 > 1)
  {
    LOBYTE(v25) = v8;
    if (v14 == 2)
    {
      BYTE1(v25) = a3[8];
      v19 = &v25;
      v20 = a2;
      v21 = 2;
    }

    else
    {
      *(&v25 + 1) = bswap32(*(a3 + 2));
      v19 = &v25;
      v20 = a2;
      v21 = 5;
    }

    v23 = 0;
    return sub_10001F968(v20, v19, v21, v23);
  }

  if (v14)
  {
LABEL_20:
    LOBYTE(v25) = v8;
    BYTE1(v25) = BYTE1(v10);
    BYTE2(v25) = v10;
    result = sub_10001F968(a2, &v25, 3uLL, 0);
    if (result)
    {
      return result;
    }

    v19 = *(a3 + 2);
    v21 = (v10 - 3);
    v20 = a2;
    v23 = 2;
    return sub_10001F968(v20, v19, v21, v23);
  }

  v15 = sub_100007618(v9, 0x60C15C55uLL);
  if (!v15)
  {
    return 106;
  }

  *v15 = v8;
  if (v10 <= 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 269, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  *(v15 + 1) = __rev16(v10);
  if (*(a3 + 4))
  {
    v16 = 0;
    v17 = 3;
    do
    {
      if ((v10 - 1) <= v17)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 271, "ByteStream_NumReadBytesAvail(bs) >= 2");
      }

      v18 = &v15[v17];
      v18[1] = *(*(a3 + 2) + 2 * v16);
      *v18 = *(*(a3 + 2) + 2 * v16 + 1);
      v17 += 2;
      ++v16;
    }

    while (v16 < *(a3 + 4));
  }

  else
  {
    v17 = 3;
  }

  if (v10 > v17)
  {
    if ((v10 - v17) <= 1)
    {
      v24 = "ByteStream_NumReadBytesAvail(bs) >= 2";
    }

    else
    {
      v24 = "sizeof(0) == 2";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 279, v24);
  }

  return sub_10001F968(a2, v15, v17, 1u);
}

uint64_t sub_100225A60(uint64_t a1)
{
  v2 = a1 + 80;
  if ((*(a1 + 80) & 0xFE) != 0x48)
  {
    sub_1000D660C();
  }

  v4 = *v2;
  v5 = *(v2 + 16);
  *(a1 + 40) = 0;
  *(a1 + 80) = 0;
  v6 = a1 + 48;
  v7 = 8;
  v9 = 2;
  v8 = 196616;
  return sub_100225400(a1, &v6, &v4, 1u, 0);
}

uint64_t sub_100225AF4(uint64_t result, char a2, uint64_t a3)
{
  *(result + 78) = a2;
  *(result + 40) = 0;
  *(result + 80) = 0;
  *a3 = result + 48;
  *(a3 + 8) = 8;
  *(a3 + 14) = 2;
  *(a3 + 10) = 196616;
  return result;
}

uint64_t sub_100225B28(uint64_t a1, void *__src, size_t __len)
{
  v3 = __len;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (v6 == 2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OBEXCOMMON ReassemblePacket discarding data", v7, v8, v9, v10, v11, v12, v13, v54);
        v14 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      goto LABEL_17;
    }

    v17 = *(a1 + 28);
    v16 = *(a1 + 26);
  }

  else
  {
    v15 = *(a1 + 8);
    if (!v15)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OBEXCOMMON ReassemblePacket received dual DISCONNECT messages!", v44, v45, v46, v47, v48, v49, v50, v54);
        v51 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v22 = 1709;
      goto LABEL_18;
    }

    v16 = *(a1 + 74);
    if (!*(a1 + 74))
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 518, "(common->maxRecvPktLen) > 0");
    }

    v17 = 0;
    *(a1 + 16) = v15;
    *(a1 + 24) = v16;
    *(a1 + 28) = 0x100020000;
    *(a1 + 26) = v16;
  }

  v18 = v17;
  v20 = v17 < 3 && v17 + __len > 2;
  v21 = v16 - v17;
  if (v21 >= __len)
  {
    v32 = *(a1 + 16);
    if (*(a1 + 31))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c");
      v21 = 0;
    }

    if (v21 < v3)
    {
      v52 = "ByteStream_NumReadBytesAvail(common->rcvPacket) >= (dataLen)";
    }

    else
    {
      if (*(a1 + 30) == 2)
      {
        memmove((v32 + v18), __src, v3);
        v33 = *(a1 + 28) + v3;
        *(a1 + 28) = v33;
        if (v20)
        {
          v34 = __rev16(*(*(a1 + 16) + 1));
          if (v34 > *(a1 + 74))
          {
            if (sub_10000C240())
            {
              sub_10000AF54("OI_OBEXCOMMON_ReassemblePacket packet len %d exceeds buffer len %d\n", v35, v36, v37, v38, v39, v40, v41, v34);
              v42 = sub_10000C050(0x18u);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                sub_10080F7A0();
              }
            }

            goto LABEL_46;
          }

          if (v34 < v3)
          {
LABEL_46:
            v22 = 1720;
            goto LABEL_18;
          }

          if (v34 > *(a1 + 24) || v34 < v33)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 555, "((pktLen) <= (common->rcvPacket).__trueSize) && ((pktLen) >= (common->rcvPacket).__pos)");
          }

          *(a1 + 26) = v34;
        }

        else
        {
          LODWORD(v34) = *(a1 + 26);
        }

        if (v34 != v33)
        {
          return 0;
        }

        if (*(a1 + 30) == 2)
        {
          *(a1 + 26) = v33;
        }

        *(a1 + 30) = 15;
        v43 = *(a1 + 8);
        if (v43)
        {
          if (v33)
          {
            v22 = 0;
            *(a1 + 16) = v43;
            *(a1 + 24) = v33;
            *(a1 + 28) = 0x200010000;
            *(a1 + 26) = v33;
            return v22;
          }

          v53 = "(pktLen) > 0";
        }

        else
        {
          v53 = "common->rcvBuffer";
        }

        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 567, v53);
      }

      v52 = "(common->rcvPacket).__RWFlag == BYTESTREAM_WRITE";
    }

    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 536, v52);
  }

LABEL_17:
  v22 = 1737;
LABEL_18:
  if (*(a1 + 32) == 1)
  {
    *(a1 + 32) = 0;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("OBEXCOMMON Received Packet error %!", v23, v24, v25, v26, v27, v28, v29, v22);
    v30 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return v22;
}

unsigned __int8 *sub_100225E80(unsigned __int8 **a1, int a2)
{
  v2 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  for (result = *a1; *result != a2; result += 24)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100225EAC(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  v4 = *(a2 + 6);
  if (*(a2 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c");
    v5 = *(a2 + 5);
    goto LABEL_19;
  }

  v5 = *(a2 + 5);
  if (v5 <= v4)
  {
LABEL_19:
    if (v4 > v5)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 748, "(size_t)(pos) <= (size_t)((*bs).__size)");
    }

    *(a2 + 6) = v4;
    if (!*(a1 + 8))
    {
      goto LABEL_60;
    }

    v15 = sub_100007618(24 * *(a1 + 8), 0x1010040A7E890C4uLL);
    *a1 = v15;
    if (!v15)
    {
      return 106;
    }

    if (!*(a1 + 8))
    {
LABEL_60:
      if (*(a2 + 14) == 2)
      {
        *(a2 + 5) = *(a2 + 6);
      }

      result = 0;
      *(a2 + 14) = 15;
      return result;
    }

    v16 = 0;
    while (1)
    {
      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c");
LABEL_77:
        v75 = "ByteStream_NumReadBytesAvail(*bs) >= 1";
LABEL_78:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 644, v75);
      }

      v17 = *(a2 + 5);
      v18 = *(a2 + 6);
      if (v17 <= v18)
      {
        goto LABEL_77;
      }

      if (*(a2 + 14) != 1)
      {
        v75 = "(*bs).__RWFlag == BYTESTREAM_READ";
        goto LABEL_78;
      }

      v19 = *a1 + 24 * v16;
      v20 = *a2;
      v21 = v18 + 1;
      *(a2 + 6) = v18 + 1;
      v22 = *(v20 + v18);
      *v19 = v22;
      v23 = v22 >> 6;
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          if (v17 <= v21)
          {
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 691, "ByteStream_NumReadBytesAvail(*bs) >= 1");
          }

          *(a2 + 6) = v18 + 2;
          *(v19 + 8) = *(v20 + (v18 + 1));
          goto LABEL_59;
        }

        if ((v17 - v21) <= 3)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 694, "ByteStream_NumReadBytesAvail(*bs) >= 4");
        }

        *(v19 + 8) = bswap32(*(v20 + (v18 + 1)));
        v32 = *(a2 + 6) + 4;
        goto LABEL_58;
      }

      if (v23)
      {
        break;
      }

      if ((v17 - v21) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 648, "ByteStream_NumReadBytesAvail(*bs) >= 2");
      }

      v24 = __rev16(*(v20 + v21));
      *(a2 + 6) = v18 + 3;
      if (v24 >= 4)
      {
        v25 = v24 - 3;
        if (v25)
        {
          sub_1000D660C();
        }

        *(v19 + 8) = v25 >> 1;
        *(v19 + 16) = (*a2 + *(a2 + 6)) & 0xFFFFFFFFFFFFFFFELL;
        if (v25 >= 2u)
        {
          if (*(a2 + 14) == 1)
          {
            if (*(a2 + 15))
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c");
            }

            else
            {
              v26 = 0;
              while (1)
              {
                v27 = *(a2 + 6);
                if (*(a2 + 5) - v27 <= 1)
                {
                  break;
                }

                v28 = bswap32(*(*a2 + v27));
                *(a2 + 6) = v27 + 2;
                *(*(v19 + 16) + 2 * v26++) = HIWORD(v28);
                if (v26 >= *(v19 + 8))
                {
                  goto LABEL_59;
                }
              }
            }

            v76 = "ByteStream_NumReadBytesAvail(*bs) >= 2";
          }

          else
          {
            v76 = "(*bs).__RWFlag == BYTESTREAM_READ";
          }

          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 668, v76);
        }

        goto LABEL_59;
      }

      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      if (sub_10000C240())
      {
        sub_10000AF54("Bad OBEX len: %d for header ID: %d", v33, v34, v35, v36, v37, v38, v39, v24);
        v40 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_54;
        }
      }

LABEL_59:
      if (++v16 >= *(a1 + 8))
      {
        goto LABEL_60;
      }
    }

    if ((v17 - v21) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 678, "ByteStream_NumReadBytesAvail(*bs) >= 2");
    }

    v29 = __rev16(*(v20 + (v18 + 1)));
    *(a2 + 6) = v18 + 3;
    if (v29 >= 4)
    {
      v30 = v29 - 3;
      *(v19 + 8) = v30;
      *(v19 + 16) = *a2 + *(a2 + 6);
      if (*(a2 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c");
        v31 = 0;
      }

      else
      {
        v31 = *(a2 + 5) - *(a2 + 6);
      }

      if (v31 < v30)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 683, "ByteStream_NumReadBytesAvail(*bs) >= (len)");
      }

      v32 = *(a2 + 6) + v30;
LABEL_58:
      *(a2 + 6) = v32;
      goto LABEL_59;
    }

    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    if (!sub_10000C240())
    {
      goto LABEL_59;
    }

    sub_10000AF54("Bad OBEX len: %d for header ID: %d", v41, v42, v43, v44, v45, v46, v47, v29);
    v40 = sub_10000C050(0x18u);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_59;
    }

LABEL_54:
    v48 = sub_10000C0FC();
    *buf = 136446466;
    v78 = v48;
    v79 = 1024;
    v80 = 0xFFFF;
    _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
    goto LABEL_59;
  }

  v6 = 0;
  v7 = *(a2 + 14);
  v8 = *(a2 + 6);
  while (1)
  {
    if (v7 != 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/obex/obexcommon.c", 599, "(*bs).__RWFlag == BYTESTREAM_READ");
    }

    v9 = *a2;
    v10 = v8 + 1;
    *(a2 + 6) = v8 + 1;
    v11 = *(v9 + v8);
    if (v11 >> 6 >= 2)
    {
      if (v11 >> 6 == 2)
      {
        v13 = 1;
      }

      else
      {
        v13 = 4;
      }

      goto LABEL_17;
    }

    if ((v5 - 1) <= (v8 + 1))
    {
      v12 = 0;
      *(a2 + 15) = 1;
LABEL_68:
      if (sub_10000C240())
      {
        sub_10000AF54("Bad OBEX Unicode len: %d, at least: %d \n", v58, v59, v60, v61, v62, v63, v64, v12);
        v65 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_73;
        }
      }

      goto LABEL_74;
    }

    v12 = __rev16(*(v9 + v10));
    LODWORD(v10) = v8 + 3;
    *(a2 + 6) = v8 + 3;
    if (v12 <= 2)
    {
      goto LABEL_68;
    }

    v13 = v12 - 3;
    if (v11 <= 0x3F && (v13 & 1) != 0)
    {
      break;
    }

LABEL_17:
    if ((v5 - v10) < v13)
    {
      *(a2 + 15) = 1;
      if (sub_10000C240())
      {
        sub_10000AF54("Bad OBEX Header:(%2x) len: (%d)\n", v50, v51, v52, v53, v54, v55, v56, v11);
        v57 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_73;
        }
      }

      goto LABEL_74;
    }

    v8 = v13 + v10;
    *(a2 + 6) = v13 + v10;
    *(a1 + 8) = ++v6;
    if (v5 <= (v13 + v10))
    {
      goto LABEL_19;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Bad OBEX Unicode len: %d (odd)\n", v67, v68, v69, v70, v71, v72, v73, v13);
    v74 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
LABEL_73:
      sub_10080F7A0();
    }
  }

LABEL_74:
  *(a1 + 8) = 0;
  return 1720;
}

void sub_1002265BC(int a1, void *a2, uint64_t a3)
{
  v5 = sub_1001C0CEC(a1);

  sub_1001C10D8(v5, a2, a3);
}

uint64_t sub_1002265FC(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, uint64_t a5)
{
  if (!a5)
  {
    sub_1000D660C();
    return 101;
  }

  if (!a2 || a1 && !*(a1 + 8))
  {
    return 101;
  }

  v10 = sub_1001BBBD8(0xD8uLL, 0x10700402832AF65uLL);
  if (v10)
  {
    v11 = sub_1003045A0(0x18u);
    v12 = sub_1002EF24C(sub_100226914, off_100AE7930, *(v11 + 8), 0, a4, a5);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Registered channel number %d", v15, v16, v17, v18, v19, v20, v21, *a4);
        v22 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          v32 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
        }
      }

      if (a1)
      {
        v10[17] = *(a1 + 8);
        *(v10 + 64) = *a1;
      }

      v10[18] = a2;
      *(v10 + 38) = a3;
      *(v10 + 200) = 0;
      *(v10 + 192) = 1;
      *(v10 + 51) = 0;
      *(v10 + 194) = *a4;
      *(v10 + 201) = 0;
      v10[8] = 0;
      v10[1] = 0;
      v13 = sub_1001C100C(v10);
      if (!v13)
      {
        ++dword_100BCE290;
        return v13;
      }
    }
  }

  else
  {
    v13 = 104;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("OI_OBEXSRV_RegisterServer error %!", v23, v24, v25, v26, v27, v28, v29, v13);
    v30 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
      if (!v10)
      {
        return v13;
      }

      goto LABEL_21;
    }
  }

  if (v10)
  {
LABEL_21:
    sub_10000C1E8(v10);
  }

  return v13;
}

void sub_10022682C(uint64_t a1)
{
  v2 = sub_1001C0CEC(a1);
  if (v2)
  {

    sub_1001C2348(v2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OBEX server RFCOMM disconnect on bogus link handle %x %!", v3, v4, v5, v6, v7, v8, v9, a1);
    v10 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002268D4(int a1, void *a2, size_t a3)
{
  v5 = sub_1001C0CEC(a1);

  sub_1001C2418(v5, a2, a3);
}

void sub_100226914(int *a1, int a2, uint64_t a3, unsigned int a4)
{
  v6 = sub_1001C0D7C(a2);
  if (!v6)
  {
LABEL_14:
    sub_1002EFBAC(0, a4, 0);
    return;
  }

  v7 = v6;
  v8 = *(v6 + 204);
  if (v8)
  {
LABEL_12:
    if (v8 == 1)
    {
      *(v7 + 204) = 0;
      return;
    }

    goto LABEL_14;
  }

  v9 = *(v6 + 8);
  if (v9)
  {
    sub_10000C1E8(v9);
  }

  *(v7 + 112) = 0;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = 0u;
  v10 = *a1;
  *(v7 + 108) = *(a1 + 2);
  *(v7 + 104) = v10;
  *v7 = a4;
  *(v7 + 4) = 0;
  *(v7 + 76) = 200;
  v11 = *(sub_1003045A0(0x18u) + 8);
  *(v7 + 74) = v11;
  *(v7 + 8) = sub_100007618(v11, 0x8F40D109uLL);
  *(v7 + 204) = 1;
  v12 = sub_1002EFBAC(sub_100226C4C, a4, 1);
  if (v12)
  {
    v13 = v12;
    v14 = *(v7 + 8);
    if (v14)
    {
      sub_10000C1E8(v14);
      *(v7 + 8) = 0;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OBEX server error %! accepting link request from %:", v15, v16, v17, v18, v19, v20, v21, v13);
      v22 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v8 = *(v7 + 204);
    goto LABEL_12;
  }

  if (sub_1002F000C(a4, v7))
  {

    sub_1000D660C();
  }
}

uint64_t sub_100226A9C(uint64_t a1)
{
  v2 = sub_1001C0D7C(a1);
  if (!v2)
  {
    if (sub_10000C240())
    {
      v11 = 1715;
      sub_10000AF54("OI_RFCOMM_DeregisterServer channel %d failed %!", v13, v14, v15, v16, v17, v18, v19, a1);
      v20 = sub_10000C050(0x18u);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        return v11;
      }

      sub_10080F7A0();
    }

    return 1715;
  }

  v3 = v2;
  if (*(v2 + 204))
  {
    if (!sub_10000C240())
    {
      return 141;
    }

    v11 = 141;
    sub_10000AF54("OI_RFCOMM_DeregisterServer channel %d failed %!", v4, v5, v6, v7, v8, v9, v10, a1);
    v12 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
      return 141;
    }
  }

  else
  {
    v11 = sub_1002EF558(a1);
    if (v11)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_RFCOMM_DeregisterServer channel %d failed %!", v21, v22, v23, v24, v25, v26, v27, a1);
        v28 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      v29 = *(v3 + 160);
      if (v29)
      {
        do
        {
          v30 = v29[4];
          sub_10000C1E8(v29);
          v29 = v30;
        }

        while (v30);
      }

      --dword_100BCE290;
    }

    sub_1001C0E0C(a1);
  }

  return v11;
}

uint64_t sub_100226C0C(unsigned int a1, _BYTE *a2)
{
  v3 = sub_1001C10A0(a1);
  if (!v3)
  {
    return 1709;
  }

  v4 = v3;
  result = 0;
  *a2 = *(v4 + 194);
  return result;
}

void sub_100226C4C(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  v40 = a1;
  v6 = sub_1001C0CEC(a1);
  v39[0] = 0;
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OBEX server RFCOMM connection failed: %!", v8, v9, v10, v11, v12, v13, v14, a3);
        v15 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      *(v7 + 51) = 0;
      v16 = *(v7 + 1);
      if (v16)
      {
        sub_10000C1E8(v16);
        *(v7 + 1) = 0;
      }
    }

    else
    {
      v26 = (v6 + 88);
      v25 = *(v6 + 44);
      v7[36] = a2;
      *(v7 + 51) = 2;
      if (v25)
      {
        sub_10002242C(v25);
        *v26 = 0;
      }

      v27 = *(v7 + 38) != 0;
      v28 = *(sub_1003045A0(0x18u) + 2 * v27);
      v39[1] = &v40;
      LOWORD(v39[0]) = 2;
      v29 = sub_10002195C(sub_100226DE8, v39, v28, v26);
      if (v29)
      {
        v30 = v29;
        if (sub_10000C240())
        {
          sub_10000AF54("Register connect timeout handler failed %!\n", v31, v32, v33, v34, v35, v36, v37, v30);
          v38 = sub_10000C050(0x18u);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("RFCOMM connect confirm called for bogus link handle %x", v17, v18, v19, v20, v21, v22, v23, a1);
    v24 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_100226DE8(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = sub_1001C0CEC(v1);
  if (!v2)
  {
    sub_1000D660C();
  }

  if (*(v2 + 51) == 5)
  {
    sub_1000D660C();
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Connection timeout: RFCOMM disconnect on link %x!", v3, v4, v5, v6, v7, v8, v9, v1);
    v10 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  *(v2 + 44) = 0;
  return sub_1001C3364(v2[104]);
}

uint64_t sub_100226E88(int a1)
{
  if ((a1 - 4373) < 3)
  {
    return dword_1008A3CC0[(a1 - 4373)];
  }

  sub_1000D660C();
  return 2;
}

uint64_t sub_100226ECC(int a1)
{
  switch(a1)
  {
    case 2:
      return 4373;
    case 8:
      return 4374;
    case 4:
      return 4375;
  }

  sub_1000D660C();
  return 4373;
}

uint64_t sub_100226F4C(int a1)
{
  if (dword_100BCE29C)
  {
    goto LABEL_2;
  }

  qword_100B5F218 = sub_1001BBBD8(0x10uLL, 0x1080040FC6463CFuLL);
  if (!qword_100B5F218)
  {
    return 106;
  }

  v4 = sub_100244814(0x20000);
  if (!v4)
  {
    dword_100BCE29C = 1;
LABEL_2:
    v2 = 0;
    *(qword_100B5F218 + 12) |= a1;
    return v2;
  }

  v2 = v4;
  sub_10024ADB0();
  if (qword_100B5F218)
  {
    sub_10000C1E8(qword_100B5F218);
    qword_100B5F218 = 0;
  }

  return v2;
}

uint64_t sub_100226FFC(int a1)
{
  if (!dword_100BCE29C)
  {
    sub_1000D660C();
  }

  v2 = *(qword_100B5F218 + 12);
  if ((v2 & a1) == 0)
  {
    return 121;
  }

  v3 = v2 & ~a1;
  *(qword_100B5F218 + 12) = v3;
  if (v3)
  {
    return 0;
  }

  dword_100BCE29C = 0;
  v5 = sub_1002448C8(0x20000);
  if (v5)
  {
    v6 = v5;
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("OI_DEVMGR_DeregisterServiceClass failed in internalTerminate - %!\n", v7, v8, v9, v10, v11, v12, v13, v6);
      v14 = sub_10000C050(0x1Bu);
      result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_100810070(v14);
        return 0;
      }
    }
  }

  else
  {
    result = qword_100B5F218;
    if (qword_100B5F218)
    {
      sub_10000C1E8(qword_100B5F218);
      result = 0;
      qword_100B5F218 = 0;
    }
  }

  return result;
}

uint64_t sub_1002270DC(int a1, int a2)
{
  if (*(qword_100B5F218 + 8) != a1)
  {
    return 408;
  }

  if (a1 == a2)
  {
    return 0;
  }

  if (a2)
  {
    if (!a1 && (a2 & ~*(qword_100B5F218 + 12)) == 0)
    {
      qword_100BC9C50 = sub_100007618(0x5EAuLL, 0x6B7528F0uLL);
      if (!qword_100BC9C50)
      {
        return 106;
      }

      result = 0;
      *(qword_100B5F218 + 8) = a2;
      return result;
    }

    return 408;
  }

  *(qword_100B5F218 + 8) = 0;
  result = qword_100BC9C50;
  if (qword_100BC9C50)
  {
    sub_10000C1E8(qword_100BC9C50);
    result = 0;
    qword_100BC9C50 = 0;
  }

  return result;
}

uint64_t sub_10022718C(unsigned int a1, int a2, uint64_t a3, uint64_t (*a4)(uint64_t (*)(uint64_t a1, unsigned int a2)), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v9 = 101;
  if (a7 && a6 && a4 && a5 && a3 && a8)
  {
    if (dword_100BCE29C)
    {
      *qword_100B5F218 = 0;
      switch(a2)
      {
        case 8:
          return sub_100228294(a1, a3, a4, a5, a6, a7, a8, a9);
        case 4:
          return sub_10022813C(a1, a3, a4, a5, a6, a7, a8, a9);
        case 2:
          return sub_100229E08(a1, a3, a4, a5, a6, a7, a8, a9);
      }

      return 101;
    }

    else
    {
      return 408;
    }
  }

  return v9;
}

uint64_t sub_100227254(int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t (*a6)(uint64_t (*)(uint64_t a1, unsigned int a2)), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    v10 = a8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || a6 == 0 || a7 == 0 || a5 == 0 || a10 == 0)
  {
    return 101;
  }

  if (!dword_100BCE29C)
  {
    return 408;
  }

  if ((a1 & ~*(qword_100B5F218 + 12)) != 0)
  {
    return 2202;
  }

  *qword_100B5F218 = 0;
  if (a1 != 8)
  {
    if (a1 != 4)
    {
      if (a1 == 2)
      {
        if (a2 != 2)
        {
          if (a2 == 8)
          {
            v21 = 4374;
            goto LABEL_41;
          }

          if (a2 == 4)
          {
            v21 = 4375;
LABEL_41:

            return sub_10022A11C(v21, a3, a4, a5, a6, a7, a8, a9, a10);
          }

          sub_1000D660C();
        }

        v21 = 4373;
        goto LABEL_41;
      }

      return 101;
    }

    if (a2 == 2)
    {

      return sub_1002282BC(a3, a4, a5, a6, a7, a8, a9, a10);
    }

    return 2203;
  }

  if (a2 != 2)
  {
    return 2203;
  }

  return sub_10022846C(a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_100227438(int a1)
{
  if (!dword_100BCE29C)
  {
    return 408;
  }

  if (*(qword_100B5F218 + 8) == a1)
  {
    return 141;
  }

  if ((*(qword_100B5F218 + 12) & a1) == 0)
  {
    return 121;
  }

  if (a1 == 4)
  {
    sub_100227F04();
  }

  else if (a1 == 8)
  {
    sub_1002280D4();
  }

  else
  {
    sub_100229DB0();
  }

  return 0;
}

uint64_t sub_1002274C0(unsigned int a1, int a2)
{
  if (!dword_100BCE29C)
  {
    return 408;
  }

  v2 = *(qword_100B5F218 + 8);
  if (v2 == 2)
  {
    return sub_10022A340(a1, a2);
  }

  if (v2 == 8 || v2 == 4)
  {
    return sub_100228494(a1, a2);
  }

  else
  {
    return 101;
  }
}

uint64_t sub_100227508(unsigned int a1, int a2)
{
  if (!dword_100BCE29C)
  {
    return 408;
  }

  v2 = *(qword_100B5F218 + 8);
  if (v2 == 2)
  {
    return sub_10022A3C0(a1, a2);
  }

  if (v2 == 8 || v2 == 4)
  {
    return sub_10022858C(a1, a2);
  }

  else
  {
    return 101;
  }
}

uint64_t sub_100227550(unsigned int *a1, unsigned int a2, unsigned __int16 *a3, unsigned int **a4)
{
  if (*a1)
  {
    v4 = *a4;
    if (*a4)
    {
      v5 = *(a4 + 4);
      if (!*(a4 + 4))
      {
        return 0;
      }

      v6 = bswap64(*a1 | (*(a1 + 2) << 32));
      while (1)
      {
        v7 = bswap64(*v4 | (*(v4 + 2) << 32));
        v8 = v7 >= v6;
        v9 = v7 > v6;
        v10 = !v8;
        if (v9 - v10 <= 0)
        {
          v11 = bswap64(*a1 | (*(a1 + 2) << 32));
          v12 = bswap64(*(v4 + 6) | (*(v4 + 5) << 32));
          v8 = v11 >= v12;
          v13 = v11 > v12;
          v14 = !v8;
          if (v13 - v14 < 1)
          {
            break;
          }
        }

        v4 += 3;
        if (!--v5)
        {
          return 0;
        }
      }
    }
  }

  if (*a3)
  {
    v15 = a3[4];
    if (a3[4])
    {
      for (i = (*a3 + 2); *(i - 1) > a2 || *i < a2; i += 2)
      {
        if (!--v15)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100227630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  if (!*(a1 + 8))
  {
    if (a3)
    {
      v8 = *a3;
      *a2 = *a3;
      *(a2 + 8) = *(a3 + 8);
    }

    else
    {
      v8 = 0;
      *a2 = 0;
    }

LABEL_11:
    result = 0;
    if (v5)
    {
      if (v5 != v8)
      {
        sub_10000C1E8(v5);
        return 0;
      }
    }

    return result;
  }

  v7 = sub_100007618(4 * *(a1 + 8), 0x100004052888210uLL);
  *a2 = v7;
  if (v7)
  {
    memmove(v7, *a1, 4 * *(a1 + 8));
    *(a2 + 8) = *(a1 + 8);
    if (a3)
    {
      v8 = *a3;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_11;
  }

  if (a3)
  {
    v9 = *a3;
  }

  else
  {
    v9 = 0;
  }

  v11 = *a2;
  if (*a2 && v11 != v9)
  {
    sub_10000C1E8(v11);
  }

  *a2 = v5;
  return 2023;
}

uint64_t sub_100227724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  if (!*(a1 + 8))
  {
    if (a3)
    {
      v8 = *a3;
      *a2 = *a3;
      *(a2 + 8) = *(a3 + 8);
    }

    else
    {
      v8 = 0;
      *a2 = 0;
    }

LABEL_11:
    result = 0;
    if (v5)
    {
      if (v5 != v8)
      {
        sub_10000C1E8(v5);
        return 0;
      }
    }

    return result;
  }

  v7 = sub_100007618(12 * *(a1 + 8), 0x10000403E1C8BA9uLL);
  *a2 = v7;
  if (v7)
  {
    memmove(v7, *a1, 12 * *(a1 + 8));
    *(a2 + 8) = *(a1 + 8);
    if (a3)
    {
      v8 = *a3;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_11;
  }

  if (a3)
  {
    v9 = *a3;
  }

  else
  {
    v9 = 0;
  }

  v11 = *a2;
  if (*a2 && v11 != v9)
  {
    sub_10000C1E8(v11);
  }

  *a2 = v5;
  return 2033;
}

void sub_100227820(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = *(qword_100B5F220 + 1160);
  if (!*(qword_100B5F220 + 1160))
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("Filter net type request for non-existent connection handle\n", v8, v9, v10, v11, v12, v13, v14, v19);
      v15 = sub_10000C050(0x1Bu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  v7 = qword_100B5F220 + 200;
  while (*(v7 - 100) != a1)
  {
    v7 += 152;
    if (!--v3)
    {
      goto LABEL_5;
    }
  }

  if (*v7)
  {
    sub_10000C1E8(*v7);
    *v7 = 0;
  }

  *(v7 + 8) = a3;
  if (a3)
  {
    v16 = sub_100007618(4 * a3, 0x100004052888210uLL);
    *v7 = v16;
    if (!v16)
    {
      v18 = 2023;
      goto LABEL_21;
    }

    memmove(v16, a2, 4 * a3);
  }

  if (*(qword_100B5F220 + 1164) == 4 && (v17 = *(qword_100B5F220 + 16)) != 0 || (v17 = *(qword_100B5F220 + 24)) != 0)
  {

    v17(a1, a2, a3);
    return;
  }

  v18 = 2021;
LABEL_21:
  sub_10020B528(a1, v18);
  if (*v7)
  {
    sub_10000C1E8(*v7);
    *v7 = 0;
  }

  *(v7 + 8) = 0;
}

void sub_100227984(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = *(qword_100B5F220 + 1160);
  if (!*(qword_100B5F220 + 1160))
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("Filter net type request for non-existent connection handle\n", v8, v9, v10, v11, v12, v13, v14, v19);
      v15 = sub_10000C050(0x1Bu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  v7 = qword_100B5F220 + 216;
  while (*(v7 - 116) != a1)
  {
    v7 += 152;
    if (!--v3)
    {
      goto LABEL_5;
    }
  }

  if (*v7)
  {
    sub_10000C1E8(*v7);
    *v7 = 0;
  }

  *(v7 + 8) = a3;
  if (a3)
  {
    v16 = sub_100007618(12 * a3, 0x10000403E1C8BA9uLL);
    *v7 = v16;
    if (!v16)
    {
      v18 = 2033;
      goto LABEL_21;
    }

    memmove(v16, a2, 12 * a3);
  }

  if (*(qword_100B5F220 + 1164) == 4 && (v17 = *(qword_100B5F220 + 32)) != 0 || (v17 = *(qword_100B5F220 + 40)) != 0)
  {

    v17(a1, a2, a3);
    return;
  }

  v18 = 2031;
LABEL_21:
  sub_10020B590(a1, v18);
  if (*v7)
  {
    sub_10000C1E8(*v7);
    *v7 = 0;
  }

  *(v7 + 8) = 0;
}

uint64_t sub_100227AEC(int a1)
{
  if (sub_100226F1C(a1))
  {
    return 0;
  }

  if (sub_100226F1C(4))
  {
    v2 = sub_100226F4C(a1);
    if (!v2)
    {
      return v2;
    }

    goto LABEL_8;
  }

  v3 = sub_100226F1C(8);
  v4 = sub_100226F4C(a1);
  if (v4)
  {
    v2 = v4;
LABEL_8:
    if (sub_10000C240())
    {
      sub_10000AF54("PAN_RegisterRole inside GN/NAP internalInit failed - %!\n", v5, v6, v7, v8, v9, v10, v11, v2);
      v12 = sub_10000C050(0x1Bu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return v2;
  }

  if (v3)
  {
    return 0;
  }

  v14 = sub_1001BBBD8(0x4F0uLL, 0x10F204096FD3389uLL);
  qword_100B5F220 = v14;
  if (v14)
  {
    sub_1003051D8(v14 + 10);
    v2 = 0;
    v15 = qword_100B5F220;
    *(qword_100B5F220 + 1168) = *&off_100AE7A18;
    *(v15 + 1184) = *&off_100AE7A28;
    *(v15 + 1200) = xmmword_100AE7A38;
    *(v15 + 1216) = unk_100AE7A48;
    *(v15 + 1161) = 0;
    *(v15 + 1164) = 0;
    *(v15 + 1232) = unk_100AE7A58;
  }

  else
  {
    sub_100226FFC(a1);
    if (sub_10000C240())
    {
      sub_10000AF54("GN/NAP internalInit out of memory\n", v16, v17, v18, v19, v20, v21, v22, v24);
      v23 = sub_10000C050(0x1Bu);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 106;
  }

  return v2;
}

void sub_100227C74(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = sub_100229230(a2);
  v9 = qword_100B5F220;
  if (v8 == -1)
  {
    v11 = qword_100B5F220 + 152 * *(qword_100B5F220 + 1160);
    v10 = (v11 + 96);
    ++*(qword_100B5F220 + 1160);
    v12 = *a2;
    *(v11 + 106) = *(a2 + 4);
    *(v11 + 102) = v12;
    *(v11 + 112) = 0;
    *(v11 + 100) = a1;
  }

  else
  {
    v10 = (qword_100B5F220 + 152 * v8 + 96);
  }

  if (*v10 == 1)
  {
LABEL_7:
    if (a3 == 4375)
    {
      v35 = *v9;
      v13 = sub_100226E88(a4);
      v14 = a1;
      v15 = a2;
      v16 = 4;
    }

    else
    {
      v35 = *(v9 + 8);
      v13 = sub_100226E88(a4);
      v14 = a1;
      v15 = a2;
      v16 = 8;
    }

    v35(v14, v15, v16, v13);
    return;
  }

  if (!*v10)
  {
    *v10 = 1;
    goto LABEL_7;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Device for connection to %: in invalid state to accept incoming connect request\n", v17, v18, v19, v20, v21, v22, v23, a2);
    v24 = sub_10000C050(0x1Bu);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  v25 = sub_10020B028(a1, 0, 0, 0, (qword_100B5F220 + 1200));
  if (v25)
  {
    v26 = v25;
    if (sub_10000C240())
    {
      sub_10000AF54("Reject incoming connection failed - %!\n", v27, v28, v29, v30, v31, v32, v33, v26);
      v34 = sub_10000C050(0x1Bu);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

void sub_100227E54(int a1)
{
  if (sub_100226F1C(a1))
  {
    v2 = sub_100226FFC(a1);
    if (v2)
    {
      v3 = v2;
      if (sub_10000C240())
      {
        sub_10000AF54("PAN_DeregisterRole failed inside GN/NAP internalTerminate - %!\n", v4, v5, v6, v7, v8, v9, v10, v3);
        v11 = sub_10000C050(0x1Bu);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else if (!sub_100226F1C(4) && !sub_100226F1C(8) && qword_100B5F220)
    {
      sub_10000C1E8(qword_100B5F220);
      qword_100B5F220 = 0;
    }
  }
}

uint64_t sub_100227F04()
{
  if (!sub_100226F1C(4))
  {
    return 408;
  }

  result = sub_1002F8018(*(qword_100B5F220 + 1252));
  if (!result)
  {
    result = sub_10020AA28(15, 4375);
    if (!result)
    {
      sub_100227E54(4);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100227F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9, int a10)
{
  if (sub_100226F1C(8))
  {
    return 119;
  }

  v22 = 0u;
  v23 = 0u;
  v19 = sub_100227AEC(8);
  if (v19 || (v19 = sub_10020A48C(15, 4374, sub_100227C74), v19))
  {
    v18 = v19;
  }

  else
  {
    v21 = qword_100B5F220;
    *(qword_100B5F220 + 8) = a1;
    *(v21 + 24) = a2;
    *(v21 + 56) = a3;
    *(v21 + 40) = a4;
    *(v21 + 72) = a5;
    *(v21 + 1256) = a10;
    *&v22 = &unk_100AE7958;
    WORD4(v22) = 8;
    *&v23 = *a6;
    WORD4(v23) = *(a6 + 8);
    byte_100B5F228 = 1;
    word_100B5F22A = 2;
    dword_100B5F230 = a7;
    byte_100B5F238 = 1;
    word_100B5F23A = 2;
    dword_100B5F240 = a8;
    byte_100B5F248 = 1;
    word_100B5F24A = 4;
    dword_100B5F250 = a9;
    v18 = sub_1002F7E1C(&v22, (v21 + 1248));
    if (!v18)
    {
      return v18;
    }

    *(qword_100B5F220 + 1248) = 0;
    sub_10020AA28(15, 4374);
  }

  sub_100227E54(8);
  return v18;
}

uint64_t sub_1002280D4()
{
  if (!sub_100226F1C(8))
  {
    return 408;
  }

  result = sub_1002F8018(*(qword_100B5F220 + 1248));
  if (!result)
  {
    *(qword_100B5F220 + 1248) = 0;
    result = sub_10020AA28(15, 4374);
    if (!result)
    {
      sub_100227E54(8);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100228164(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v9 = *(qword_100B5F220 + 1160);
  if (!*(qword_100B5F220 + 1160))
  {
    return 122;
  }

  for (i = qword_100B5F220 + 96; *(i + 4) != a1; i += 152)
  {
    if (!--v9)
    {
      return 122;
    }
  }

  if (a8)
  {
    *(i + 32) = a3;
    *(i + 40) = a4;
    *(i + 48) = a5;
    *(i + 56) = a6;
    *(i + 64) = a7;
    v15 = sub_100226E88(a9);
    v16 = sub_100229280(i, v15);
    v17 = v16 == 0;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  if (*i != 1)
  {
    return 408;
  }

  v18 = qword_100B5F220;
  *(qword_100B5F220 + 1200) = 3;
  *(v18 + 1202) = 4;
  *(v18 + 1208) = a9;
  v19 = sub_10020B028(a1, sub_1002293A4, (v18 + 1168), v17, (v18 + 1200));
  if (v17)
  {
    v13 = v19;
  }

  else
  {
    v13 = v16;
  }

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  if (v20)
  {
    *(i + 24) = a2;
  }

  else
  {
    *i = 0;
    sub_100228C34(i);
  }

  return v13;
}

uint64_t sub_1002282E4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v17 = sub_100229230(a1);
  if (v17 == -1)
  {
    v19 = *(qword_100B5F220 + 1160);
    if (v19 > 6)
    {
      return 104;
    }

    v20 = qword_100B5F220 + 152 * *(qword_100B5F220 + 1160);
    v18 = (v20 + 96);
    *(qword_100B5F220 + 1160) = v19 + 1;
    v21 = *a1;
    *(v20 + 106) = *(a1 + 4);
    *(v20 + 102) = v21;
    *(v20 + 112) = 0;
  }

  else
  {
    v18 = (qword_100B5F220 + 152 * v17 + 96);
  }

  if (*v18)
  {
    return 408;
  }

  v18[4] = a4;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = a7;
  v18[8] = a8;
  v22 = sub_100229280(v18, a9);
  if (!v22)
  {
    v23 = qword_100B5F220;
    *(qword_100B5F220 + 1200) = 3;
    *(v23 + 1202) = 4;
    v24 = sub_100226ECC(a9);
    v25 = qword_100B5F220;
    *(qword_100B5F220 + 1208) = v24;
    v26 = sub_100226ECC(a9);
    v22 = sub_10020AAE4(a2, sub_1002293A4, (v25 + 1168), a1, v26, 4373, qword_100B5F220 + 1200);
    if (v22)
    {
      sub_100228BC4(v18);
      sub_100228C34(v18);
    }

    else
    {
      v18[3] = a3;
      *v18 = 2;
    }
  }

  return v22;
}

uint64_t sub_100228494(unsigned int a1, int a2)
{
  v2 = *(qword_100B5F220 + 1160);
  if (!*(qword_100B5F220 + 1160))
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("Filter net type request for non-existent connection handle\n", v5, v6, v7, v8, v9, v10, v11, v16);
      v12 = sub_10000C050(0x1Bu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 122;
  }

  v4 = (qword_100B5F220 + 200);
  while (*(v4 - 50) != a1)
  {
    v4 += 19;
    if (!--v2)
    {
      goto LABEL_5;
    }
  }

  if (!a2)
  {
    v14 = 56;
    if (*(qword_100B5F220 + 1164) == 4)
    {
      v14 = 48;
    }

    v13 = sub_100227630(v4, (v4 - 4), *(qword_100B5F220 + v14));
    if (v13)
    {
      goto LABEL_14;
    }

    a2 = 0;
  }

  v13 = sub_10020B528(a1, a2);
LABEL_14:
  if (*v4)
  {
    sub_10000C1E8(*v4);
    *v4 = 0;
  }

  return v13;
}

uint64_t sub_10022858C(unsigned int a1, int a2)
{
  v2 = *(qword_100B5F220 + 1160);
  if (!*(qword_100B5F220 + 1160))
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("Filter multicast request for non-existent connection handle\n", v5, v6, v7, v8, v9, v10, v11, v16);
      v12 = sub_10000C050(0x1Bu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 122;
  }

  v4 = (qword_100B5F220 + 216);
  while (*(v4 - 58) != a1)
  {
    v4 += 19;
    if (!--v2)
    {
      goto LABEL_5;
    }
  }

  if (!a2)
  {
    v14 = 72;
    if (*(qword_100B5F220 + 1164) == 4)
    {
      v14 = 64;
    }

    v13 = sub_100227724(v4, (v4 - 4), *(qword_100B5F220 + v14));
    if (v13)
    {
      goto LABEL_14;
    }

    a2 = 0;
  }

  v13 = sub_10020B590(a1, a2);
LABEL_14:
  if (*v4)
  {
    sub_10000C1E8(*v4);
    *v4 = 0;
  }

  return v13;
}

uint64_t sub_100228684(_DWORD *a1)
{
  if (!sub_100226F1C(8))
  {
    return 408;
  }

  result = 0;
  *a1 = *(qword_100B5F220 + 1248);
  return result;
}

void sub_1002286CC(uint64_t a1, uint64_t a2)
{
  v2 = qword_100B5F220;
  if (*(qword_100B5F220 + 1160))
  {
    v5 = 0;
    v6 = qword_100B5F220 + 96;
    while (*(v6 + 4) != a1)
    {
      ++v5;
      v6 += 152;
      if (*(qword_100B5F220 + 1160) == v5)
      {
        goto LABEL_5;
      }
    }

    v15 = *(qword_100B5F220 + 80);
    if (v15 != (qword_100B5F220 + 80))
    {
      v16 = 1 << v5;
      do
      {
        v17 = *v15;
        if ((v16 & *(v15 - 6)) != 0)
        {
          *(v6 + 16) = v15 - 194;
          sub_100228A94(a1);
          v2 = qword_100B5F220;
        }

        v15 = v17;
      }

      while (v17 != (v2 + 80));
    }

    *v6 = 0;
    sub_100228BC4(v6);
    v19 = *(v6 + 64);
    sub_100228C34(v6);

    v19(a1, a2);
  }

  else
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("DisconnectCB issued but no connection\n", v7, v8, v9, v10, v11, v12, v13, v18);
      v14 = sub_10000C050(0x1Bu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

void sub_100228818(int a1, uint64_t a2, uint64_t a3, __int16 a4, const void *a5, unsigned int a6, void *__src, size_t __len)
{
  v8 = *(qword_100B5F220 + 1160);
  if (*(qword_100B5F220 + 1160))
  {
    v9 = __len;
    v16 = qword_100B5F220 + 96;
    while (*(v16 + 4) != a1)
    {
      v16 += 152;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }

    v25 = qword_100BC9C50;
    if (!qword_100BC9C50)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pan/pan_gn.c", 1018, "PAN_RecvBuf");
    }

    v26 = *a2;
    *(qword_100BC9C50 + 4) = *(a2 + 4);
    *v25 = v26;
    v27 = *a3;
    *(v25 + 10) = *(a3 + 4);
    *(v25 + 6) = v27;
    *(v25 + 12) = __rev16(a4);
    if (__len >= 0x5DD)
    {
      sub_1000D660C();
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pan/pan_gn.c", 1031, "ByteStream_NumReadBytesAvail(bs) >= (dataLen)");
    }

    memmove((v25 + 14), __src, __len);
    if (*(qword_100B5F220 + 1256) == 1 || (*a2 & 1) != 0 || (*a2 == xmmword_100BCDFD8 ? (v28 = *(a2 + 4) == WORD2(xmmword_100BCDFD8)) : (v28 = 0), v28))
    {
      if (*a3 != xmmword_100BCDFD8 || *(a3 + 4) != WORD2(xmmword_100BCDFD8))
      {
        v30 = (*(v16 + 48))(v25, (v9 + 14));
        if (v30)
        {
          v31 = v30;
          if (sub_10000C240())
          {
            sub_10000AF54("Forwarding packet to host failed - %!\n", v32, v33, v34, v35, v36, v37, v38, v31);
            v39 = sub_10000C050(0x1Bu);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }
        }
      }
    }

    LOWORD(__lena) = v9;
    v40 = sub_100228DF8(v16, 0, a2, a3, a4, a5, a6, __src, __lena);
    if (v40)
    {
      v41 = v40;
      if (sub_10000C240())
      {
        sub_10000AF54("Forwarding packet to other BT devices failed - %!\n", v42, v43, v44, v45, v46, v47, v48, v41);
        v49 = sub_10000C050(0x1Bu);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
LABEL_5:
    if (sub_10000C240())
    {
      sub_10000AF54("Unknown handle\n", v17, v18, v19, v20, v21, v22, v23, __lena);
      v24 = sub_10000C050(0x1Bu);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
LABEL_28:
        sub_10080F7A0();
      }
    }
  }
}

void sub_100228A94(int a1)
{
  if (!*(qword_100B5F220 + 1160))
  {
LABEL_5:
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("BNEP write completed for non-existent connection handle\n", v3, v4, v5, v6, v7, v8, v9, v21);
    v10 = sub_10000C050(0x1Bu);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_17;
  }

  v1 = 0;
  v2 = (qword_100B5F220 + 100);
  while (*v2 != a1)
  {
    ++v1;
    v2 += 76;
    if (*(qword_100B5F220 + 1160) == v1)
    {
      goto LABEL_5;
    }
  }

  v11 = *(v2 + 6);
  if (!v11)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("FinishSend called on NULL packet\n", v13, v14, v15, v16, v17, v18, v19, v21);
    v20 = sub_10000C050(0x1Bu);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_17:
    sub_10080F7A0();
    return;
  }

  *(v2 + 6) = 0;
  v12 = *(v11 + 1546) & ~(1 << v1);
  *(v11 + 1546) = v12;
  if (!v12)
  {
    if (*(v11 + 1568) == 1)
    {
      (*(v2 + 26))();
    }

    sub_100305208((v11 + 1552));

    sub_100228DB4(v11);
  }
}

void sub_100228BC4(uint64_t a1)
{
  v1 = (*(a1 + 40))();
  LODWORD(v2) = *(qword_100B5F220 + 1161);
  if (v2 == 1)
  {
    if (v1)
    {
      return;
    }

    if (sub_1002270DC(*(qword_100B5F220 + 1164), 0))
    {
      sub_1000D660C();
    }

    v2 = qword_100B5F220;
    *(qword_100B5F220 + 1164) = 0;
    v3 = (v2 + 1161);
    LOBYTE(v2) = *(v2 + 1161);
  }

  else
  {
    v3 = (qword_100B5F220 + 1161);
  }

  *v3 = v2 - 1;
}

void sub_100228C34(void *a1)
{
  v2 = qword_100B5F220;
  v3 = *(qword_100B5F220 + 48);
  if (v3)
  {
    LOBYTE(v3) = a1[9] == *v3;
  }

  v4 = *(qword_100B5F220 + 56);
  v5 = a1[9];
  if (v4)
  {
    LOBYTE(v4) = v5 == *v4;
  }

  if (!((v5 == 0) | v3 & 1) && (v4 & 1) == 0)
  {
    sub_10000C1E8(v5);
    v2 = qword_100B5F220;
  }

  v6 = *(v2 + 64);
  if (v6)
  {
    LOBYTE(v6) = a1[11] == *v6;
  }

  v7 = *(v2 + 72);
  v8 = a1[11];
  if (v7)
  {
    LOBYTE(v7) = v8 == *v7;
  }

  if (!((v8 == 0) | v6 & 1) && (v7 & 1) == 0)
  {
    sub_10000C1E8(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    sub_10000C1E8(v9);
    a1[13] = 0;
  }

  v10 = a1[15];
  if (v10)
  {
    sub_10000C1E8(v10);
    a1[15] = 0;
  }

  v11 = qword_100B5F220;
  v12 = 0x86BCA1AF286BCA1BLL * ((a1 - qword_100B5F220 - 96) >> 3);
  if ((v12 + 1) <= 6)
  {
    v13 = v12;
    v14 = qword_100B5F220 + 152 * v12 + 248;
    v15 = v13 + 2;
    do
    {
      v16 = *(v14 + 112);
      *(v14 - 56) = *(v14 + 96);
      *(v14 - 40) = v16;
      *(v14 - 24) = *(v14 + 128);
      v17 = *(v14 + 48);
      *(v14 - 120) = *(v14 + 32);
      *(v14 - 104) = v17;
      v18 = *(v14 + 80);
      *(v14 - 88) = *(v14 + 64);
      *(v14 - 72) = v18;
      v19 = *(v14 + 16);
      *(v14 - 152) = *v14;
      *(v14 - 8) = *(v14 + 144);
      *(v14 - 136) = v19;
      v14 += 152;
    }

    while (v15++ != 7);
  }

  --*(v11 + 1160);
}

void sub_100228DB4(void *ptr)
{
  v2 = ptr[192];
  if (v2)
  {
    sub_10000C1E8(v2);
    ptr[192] = 0;
  }

  sub_10000C1E8(ptr);
}

uint64_t sub_100228DF8(uint64_t a1, int a2, int *a3, int *a4, __int16 a5, const void *a6, unsigned int a7, const void *a8, size_t __len)
{
  v17 = sub_100007618(0x628uLL, 0x103004086F59378uLL);
  if (!v17)
  {
    return 106;
  }

  v18 = v17;
  if (a6)
  {
    v19 = sub_100007618(a7, 0x9EA0926DuLL);
    *(v18 + 192) = v19;
    if (v19)
    {
      memmove(v19, a6, a7);
      goto LABEL_6;
    }

    sub_10000C1E8(v18);
    return 106;
  }

  *(v17 + 192) = 0;
LABEL_6:
  *(v18 + 772) = a7;
  v20 = *a3;
  *(v18 + 2) = *(a3 + 2);
  *v18 = v20;
  v21 = *a4;
  *(v18 + 5) = *(a4 + 2);
  *(v18 + 6) = v21;
  *(v18 + 6) = a5;
  v22 = memmove(v18 + 14, a8, __len);
  *(v18 + 764) = __len;
  *(v18 + 1546) = 0;
  *(v18 + 1568) = a2;
  v23 = qword_100B5F220;
  if (!*(qword_100B5F220 + 1160))
  {
    goto LABEL_30;
  }

  v40 = a1;
  v24 = 0;
  v25 = 0;
  do
  {
    if (*(v23 + v24 + 96) == 3)
    {
      if ((*a3 & 1) != 0 || (*a3 == *(v23 + v24 + 102) ? (v26 = *(a3 + 2) == *(v23 + v24 + 106)) : (v26 = 0), v26))
      {
        v27 = v23 + v24;
        v28 = (v23 + v24 + 102);
        if ((*a4 != *v28 || *(a4 + 2) != *(v23 + v24 + 106)) && !*(v27 + 112))
        {
          v22 = sub_1002290C4(v18, v23 + v24 + 96);
          if (v22 != 2041)
          {
            if (v22)
            {
              v22 = sub_10000C240();
              if (v22)
              {
                sub_10000AF54("Forwarding packet to %: failed - %!\n", v30, v31, v32, v33, v34, v35, v36, v28);
                v37 = sub_10000C050(0x1Bu);
                v22 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
                if (v22)
                {
                  v38 = sub_10000C0FC();
                  *buf = 136446466;
                  v42 = v38;
                  v43 = 1024;
                  v44 = 0xFFFF;
                  _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
                }
              }
            }

            else
            {
              *(v18 + 1546) |= 1 << v25;
              *(v27 + 112) = v18;
            }
          }
        }
      }
    }

    ++v25;
    v23 = qword_100B5F220;
    v24 += 152;
  }

  while (v25 < *(qword_100B5F220 + 1160));
  a1 = v40;
  if (*(v18 + 1546))
  {
    sub_1003051F4(v18 + 194, qword_100B5F220 + 80);
  }

  else
  {
LABEL_30:
    if (a2)
    {
      (*(a1 + 56))(v22);
    }

    sub_100228DB4(v18);
  }

  return 0;
}

uint64_t sub_1002290C4(uint64_t a1, uint64_t a2)
{
  if (sub_100227550(a1, *(a1 + 12), (a2 + 72), (a2 + 88)))
  {
    v4 = *(a1 + 12);
    v5 = (a1 + 14);
    v6 = *(a1 + 1528);
    v7 = *(a1 + 1536);
    return sub_10020B3E0(sub_10022915C, *(a2 + 4), a1, a1 + 6, v4, v7, *(a1 + 1544), v5, v6);
  }

  v7 = *(a1 + 1536);
  if (v7)
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
    return sub_10020B3E0(sub_10022915C, *(a2 + 4), a1, a1 + 6, v4, v7, *(a1 + 1544), v5, v6);
  }

  return 2041;
}

void sub_10022915C(int a1)
{
  sub_100228A94(a1);
  v2 = qword_100B5F220;
  if (*(qword_100B5F220 + 1160))
  {
    v3 = 0;
    v4 = 0;
    while (*(qword_100B5F220 + v4 + 100) != a1)
    {
      v4 += 152;
      ++v3;
      if (152 * *(qword_100B5F220 + 1160) == v4)
      {
        return;
      }
    }

    v5 = *(qword_100B5F220 + 80);
    if (v5 != (qword_100B5F220 + 80))
    {
      v6 = 1 << v3;
      do
      {
        v7 = *v5;
        if ((v6 & *(v5 - 6)) != 0)
        {
          *(v2 + v4 + 112) = v5 - 194;
          if (!sub_1002290C4())
          {
            return;
          }

          sub_100228A94(a1);
          v2 = qword_100B5F220;
        }

        v5 = v7;
      }

      while (v7 != (v2 + 80));
    }
  }
}

uint64_t sub_100229230(int *a1)
{
  if (!*(qword_100B5F220 + 1160))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v3 = qword_100B5F220 + 102;
  v4 = *a1;
  v5 = *(a1 + 2);
  while (*v3 != v4 || *(v3 + 4) != v5)
  {
    ++result;
    v3 += 152;
    if (*(qword_100B5F220 + 1160) == result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_100229280(uint64_t a1, int a2)
{
  if (*(qword_100B5F220 + 1161))
  {
    if (*(qword_100B5F220 + 1164) != a2)
    {
      return 408;
    }

    v4 = (*(a1 + 32))(sub_10022953C);
    if (!v4)
    {
      goto LABEL_13;
    }

    return v4;
  }

  v4 = sub_1002270DC(0, a2);
  if (v4)
  {
    return v4;
  }

  v6 = (*(a1 + 32))(sub_10022953C);
  if (!v6)
  {
LABEL_13:
    v5 = 0;
    v17 = qword_100B5F220;
    *(qword_100B5F220 + 1164) = a2;
    ++*(v17 + 1161);
    return v5;
  }

  v5 = v6;
  v7 = sub_1002270DC(a2, 0);
  if (v7)
  {
    v8 = v7;
    if (sub_10000C240())
    {
      sub_10000AF54("Could not revert role - %!\n", v9, v10, v11, v12, v13, v14, v15, v8);
      v16 = sub_10000C050(0x1Bu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  return v5;
}

void sub_1002293A4(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = sub_100229230(a2);
  if (v6 != -1)
  {
    v7 = qword_100B5F220 + 152 * v6;
    if ((*(v7 + 96) - 1) >= 2)
    {
      sub_1000D660C();
    }

    v8 = *(v7 + 120);
    if (a3)
    {
      *(v7 + 96) = 0;
      v23 = v8;
      sub_100228BC4(v7 + 96);
      sub_100228C34((v7 + 96));
      v8 = v23;
LABEL_22:

      v8(a1, a2, a3);
      return;
    }

    *(v7 + 100) = a1;
    v17 = qword_100B5F220;
    if (*(qword_100B5F220 + 1164) == 4)
    {
      v18 = *(qword_100B5F220 + 48);
      if (v18)
      {
        v19 = *v18;
        *(v7 + 176) = *(v18 + 4);
      }

      else
      {
        v19 = 0;
      }

      *(v7 + 168) = v19;
      v22 = *(v17 + 64);
      if (v22)
      {
LABEL_17:
        *(v7 + 184) = *v22;
        *(v7 + 192) = *(v22 + 8);
LABEL_21:
        *(v7 + 96) = 3;
        goto LABEL_22;
      }
    }

    else
    {
      v20 = *(qword_100B5F220 + 56);
      if (v20)
      {
        v21 = *v20;
        *(v7 + 176) = *(v20 + 4);
      }

      else
      {
        v21 = 0;
      }

      *(v7 + 168) = v21;
      v22 = *(v17 + 72);
      if (v22)
      {
        goto LABEL_17;
      }
    }

    *(v7 + 184) = 0;
    goto LABEL_21;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Connection %d not found for %:\n", v9, v10, v11, v12, v13, v14, v15, a1);
    v16 = sub_10000C050(0x1Bu);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_10022953C(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    v17 = "data";
    goto LABEL_18;
  }

  v2 = a2;
  if (!a2)
  {
    v17 = "(dataLen) > 0";
LABEL_18:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pan/pan_gn.c", 753, v17);
  }

  if (a2 <= 5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pan/pan_gn.c", 757, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
  }

  v21 = *a1;
  v22 = *(a1 + 4);
  if (a2 <= 0xB)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pan/pan_gn.c", 758, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
  }

  v19 = *(a1 + 6);
  v20 = *(a1 + 10);
  if (a2 <= 0xD)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pan/pan_gn.c", 759, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v4 = *(a1 + 12);
  v5 = sub_100229230(&v21);
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  if (*(qword_100B5F220 + 1160))
  {
    v5 = 0;
LABEL_9:
    v6 = bswap32(v4) >> 16;
    v7 = qword_100B5F220 + 152 * v5;
    LOWORD(__len) = v2 - 14;
    result = sub_100228DF8(v7 + 96, 1, &v21, &v19, v6, 0, 0, (a1 + 14), __len);
    if (result)
    {
      (*(v7 + 152))();
      return 0;
    }

    return result;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("BNEP write completed for non-existent connection handle\n", v9, v10, v11, v12, v13, v14, v15, __len);
    v16 = sub_10000C050(0x1Bu);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return 122;
}

void sub_1002296D8(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = qword_100B5F258;
  v7 = *(qword_100B5F258 + 664);
  if (v7)
  {
    sub_10000C1E8(v7);
    v6 = qword_100B5F258;
    *(qword_100B5F258 + 664) = 0;
  }

  *(v6 + 672) = a3;
  if (a3)
  {
    v8 = sub_100007618(4 * a3, 0x100004052888210uLL);
    *(qword_100B5F258 + 664) = v8;
    if (!v8)
    {
      v10 = 2023;
      goto LABEL_12;
    }

    memmove(v8, a2, 4 * a3);
    v6 = qword_100B5F258;
  }

  v9 = *(v6 + 576);
  if (v9)
  {

    v9(a1, a2, a3);
    return;
  }

  v10 = 2021;
LABEL_12:
  sub_10020B528(a1, v10);
  v11 = qword_100B5F258;
  v12 = *(qword_100B5F258 + 664);
  if (v12)
  {
    sub_10000C1E8(v12);
    v11 = qword_100B5F258;
    *(qword_100B5F258 + 664) = 0;
  }

  *(v11 + 672) = 0;
}

void sub_1002297D4(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = qword_100B5F258;
  v7 = *(qword_100B5F258 + 680);
  if (v7)
  {
    sub_10000C1E8(v7);
    v6 = qword_100B5F258;
    *(qword_100B5F258 + 680) = 0;
  }

  *(v6 + 688) = a3;
  if (a3)
  {
    v8 = sub_100007618(12 * a3, 0x10000403E1C8BA9uLL);
    *(qword_100B5F258 + 680) = v8;
    if (!v8)
    {
      v10 = 2033;
      goto LABEL_12;
    }

    memmove(v8, a2, 12 * a3);
    v6 = qword_100B5F258;
  }

  v9 = *(v6 + 584);
  if (v9)
  {

    v9(a1, a2, a3);
    return;
  }

  v10 = 2031;
LABEL_12:
  sub_10020B590(a1, v10);
  v11 = qword_100B5F258;
  v12 = *(qword_100B5F258 + 680);
  if (v12)
  {
    sub_10000C1E8(v12);
    v11 = qword_100B5F258;
    *(qword_100B5F258 + 680) = 0;
  }

  *(v11 + 688) = 0;
}

uint64_t sub_1002298D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (sub_100226F1C(2))
  {
    return 119;
  }

  v27 = 0u;
  v28 = 0u;
  if (sub_100226F1C(2))
  {
    v15 = qword_100B5F258;
  }

  else
  {
    v17 = sub_100226F4C(2);
    if (v17)
    {
      v14 = v17;
      if (sub_10000C240())
      {
        sub_10000AF54("PAN_RegisterRole inside PANU internalInit failed - %!\n", v18, v19, v20, v21, v22, v23, v24, v14);
        v25 = sub_10000C050(0x1Bu);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      goto LABEL_21;
    }

    qword_100B5F258 = sub_1001BBBD8(0x2D0uLL, 0x10E0040C8938EEEuLL);
    if (!qword_100B5F258)
    {
      sub_100226FFC(2);
      v14 = 106;
      goto LABEL_21;
    }

    qword_100B5F270 = sub_100007618(0x5EAuLL, 0xC2F1FAEDuLL);
    v15 = qword_100B5F258;
    *(qword_100B5F258 + 600) = *&off_100AE7B88;
    *(v15 + 616) = *off_100AE7B98;
  }

  *(v15 + 568) = a1;
  *(v15 + 576) = a2;
  *(v15 + 696) = a3;
  *(v15 + 584) = a4;
  *(v15 + 704) = a5;
  if (a3)
  {
    *(v15 + 632) = *a3;
    *(v15 + 640) = *(a3 + 8);
  }

  if (a5)
  {
    *(v15 + 648) = *a5;
    *(v15 + 656) = *(a5 + 8);
  }

  v14 = sub_10020A48C(4111, 4373, sub_100229AF8);
  v16 = qword_100B5F258;
  *(qword_100B5F258 + 562) = 0;
  if (v14)
  {
    goto LABEL_21;
  }

  if (!a6)
  {
    return 0;
  }

  *&v27 = &unk_100AE7AC8;
  WORD4(v27) = 4;
  *&v28 = *a6;
  WORD4(v28) = *(a6 + 8);
  byte_100B5F260 = 1;
  word_100B5F262 = 2;
  dword_100B5F268 = a7;
  v14 = sub_1002F7E1C(&v27, (v16 + 592));
  if (v14)
  {
    sub_10020AA28(4111, 4373);
LABEL_21:
    sub_100229C84();
  }

  return v14;
}

void sub_100229AF8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = sub_10022A2F0(a2);
  v9 = qword_100B5F258;
  if (v8 == -1)
  {
    v11 = *(qword_100B5F258 + 560);
    if (v11 > 6)
    {
      goto LABEL_12;
    }

    *(qword_100B5F258 + 560) = v11 + 1;
    v10 = v9 + 80 * v11;
    v12 = *a2;
    *(v10 + 10) = *(a2 + 4);
    *(v10 + 6) = v12;
    *(v10 + 12) = 0;
    *(v10 + 16) = 0;
    *(v10 + 4) = a1;
    *(v10 + 72) = a4 == a3;
  }

  else
  {
    if (!qword_100B5F258)
    {
      goto LABEL_12;
    }

    v10 = qword_100B5F258 + 80 * v8;
  }

  if (*v10 == 1)
  {
LABEL_9:
    v25 = *(v9 + 568);
    v13 = sub_100226E88(a3);
    v14 = sub_100226E88(a4);

    v25(a1, a2, v13, v14);
    return;
  }

  if (!*v10)
  {
    *v10 = 1;
    goto LABEL_9;
  }

LABEL_12:
  v15 = sub_10020B028(a1, 0, 0, 0, &unk_100AE7B58);
  if (v15)
  {
    v16 = v15;
    if (sub_10000C240())
    {
      sub_10000AF54("Reject incoming connection failed - %!\n", v17, v18, v19, v20, v21, v22, v23, v16);
      v24 = sub_10000C050(0x1Bu);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }
}

void sub_100229C84()
{
  if (!sub_100226F1C(2))
  {
    return;
  }

  v0 = sub_100226FFC(2);
  if (v0)
  {
    v1 = v0;
    if (sub_10000C240())
    {
      sub_10000AF54("PAN_DeregisterRole failed inside PANU internalTerminate - %!\n", v2, v3, v4, v5, v6, v7, v8, v1);
      v9 = sub_10000C050(0x1Bu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  v10 = qword_100B5F258;
  v11 = *(qword_100B5F258 + 696);
  v12 = *(qword_100B5F258 + 632);
  if (v11)
  {
    if (v12 != *v11 && v12 != 0)
    {
      goto LABEL_11;
    }
  }

  else if (v12)
  {
LABEL_11:
    sub_10000C1E8(*(qword_100B5F258 + 632));
    v10 = qword_100B5F258;
    *(qword_100B5F258 + 632) = 0;
  }

  v14 = *(v10 + 704);
  v15 = *(v10 + 648);
  if (v14)
  {
    if (v15 == *v14 || v15 == 0)
    {
      goto LABEL_18;
    }
  }

  else if (!v15)
  {
    goto LABEL_18;
  }

  sub_10000C1E8(*(v10 + 648));
  v10 = qword_100B5F258;
  *(qword_100B5F258 + 648) = 0;
LABEL_18:
  if (*(v10 + 664))
  {
    sub_10000C1E8(*(v10 + 664));
    v10 = qword_100B5F258;
    *(qword_100B5F258 + 664) = 0;
  }

  if (*(v10 + 680))
  {
    sub_10000C1E8(*(v10 + 680));
    v10 = qword_100B5F258;
    *(qword_100B5F258 + 680) = 0;
  }

  sub_10000C1E8(v10);
  qword_100B5F258 = 0;
}

uint64_t sub_100229DB0()
{
  if (!sub_100226F1C(2))
  {
    return 408;
  }

  v0 = *(qword_100B5F258 + 592);
  if (!v0 || (result = sub_1002F8018(v0), !result))
  {
    result = sub_10020AA28(4111, 4373);
    if (!result)
    {
      sub_100229C84();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100229E08(unsigned int a1, uint64_t a2, uint64_t (*a3)(uint64_t (*)(uint64_t a1, unsigned int a2)), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = qword_100B5F258;
  v9 = *(qword_100B5F258 + 560);
  if (!*(qword_100B5F258 + 560))
  {
    return 122;
  }

  while (*(v8 + 4) != a1)
  {
    v8 += 80;
    if (!--v9)
    {
      return 122;
    }
  }

  if (a8)
  {
    *(v8 + 32) = a3;
    *(v8 + 40) = a4;
    *(v8 + 48) = a5;
    *(v8 + 56) = a6;
    *(v8 + 64) = a7;
    v14 = a3(sub_10022A688) == 0;
  }

  else
  {
    v14 = 0;
  }

  if (*v8 != 1)
  {
    return 408;
  }

  if (*(v8 + 72))
  {
    v15 = &unk_100AE7B28;
  }

  else
  {
    v15 = &unk_100AE7B58;
  }

  v16 = sub_10020B028(a1, sub_100229F30, (qword_100B5F258 + 600), v14, v15);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v14;
  }

  if (v17)
  {
    v12 = 0;
    *(v8 + 24) = a2;
  }

  else
  {
    v12 = v16;
    if (v14 && v16)
    {
      (*(v8 + 40))();
    }

    *v8 = 0;
    sub_10022A0AC(v8);
  }

  return v12;
}

void sub_100229F30(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = sub_10022A2F0(a2);
  if (v6 == -1 || !qword_100B5F258)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Connection %d not found for %:\n", v8, v9, v10, v11, v12, v13, v14, a1);
      v15 = sub_10000C050(0x1Bu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    v7 = qword_100B5F258 + 80 * v6;
    (*(v7 + 24))(a1, a2, a3);
    if ((*v7 - 1) >= 2)
    {
      sub_1000D660C();
    }

    if (a3)
    {
      *v7 = 0;
      (*(v7 + 40))();

      sub_10022A0AC(v7);
    }

    else
    {
      *(v7 + 4) = a1;
      *v7 = 3;
      *(v7 + 73) = 1;
      if (!*(qword_100B5F258 + 712) && *(v7 + 72) == 1)
      {
        v16 = (qword_100B5F258 + 712);

        sub_10002195C(sub_10022A914, 0, 1200, v16);
      }
    }
  }
}

uint64_t sub_10022A0AC(uint64_t result)
{
  v1 = qword_100B5F258;
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((result - qword_100B5F258) >> 4);
  if ((v2 + 1) <= 6)
  {
    v3 = (qword_100B5F258 + 80 * v2);
    v4 = v2 + 2;
    do
    {
      v5 = v3[8];
      v3[2] = v3[7];
      v3[3] = v5;
      v3[4] = v3[9];
      v6 = v3[6];
      *v3 = v3[5];
      v3[1] = v6;
      v3 += 5;
    }

    while (v4++ != 7);
  }

  --*(v1 + 560);
  return result;
}

uint64_t sub_10022A11C(__int16 a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t (*)(uint64_t a1, unsigned int a2)), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = sub_10022A2F0(a2);
  v18 = qword_100B5F258;
  if (v17 != -1)
  {
    if (qword_100B5F258)
    {
      v19 = qword_100B5F258 + 80 * v17;
      goto LABEL_6;
    }

    return 104;
  }

  v20 = *(qword_100B5F258 + 560);
  if (v20 > 6)
  {
    return 104;
  }

  *(qword_100B5F258 + 560) = v20 + 1;
  v19 = v18 + 80 * v20;
  v21 = *a2;
  *(v19 + 10) = *(a2 + 4);
  *(v19 + 6) = v21;
  *(v19 + 12) = 0;
  *(v19 + 16) = 0;
LABEL_6:
  if (*v19)
  {
    sub_10022A0AC(v19);
    return 408;
  }

  else
  {
    v27 = a4;
    *(v19 + 32) = a5;
    *(v19 + 40) = a6;
    *(v19 + 48) = a7;
    *(v19 + 56) = a8;
    *(v19 + 64) = a9;
    v22 = a5(sub_10022A688);
    if (!v22)
    {
      if (a3 == 15)
      {
        v23 = &unk_100AE7B58;
        v24 = (qword_100B5F258 + 600);
        v25 = 15;
      }

      else
      {
        v23 = &unk_100AE7B28;
        v24 = (qword_100B5F258 + 600);
        v25 = a3;
      }

      v22 = sub_10020AAE4(v25, sub_100229F30, v24, a2, 4373, a1, v23);
      if (v22)
      {
        (*(v19 + 40))();
        sub_10022A0AC(v19);
      }

      else
      {
        *(v19 + 24) = v27;
        *(v19 + 32) = a5;
        *(v19 + 40) = a6;
        *(v19 + 48) = a7;
        *(v19 + 56) = a8;
        *(v19 + 64) = a9;
        *(v19 + 72) = a3 != 15;
        *v19 = 2;
      }
    }
  }

  return v22;
}

uint64_t sub_10022A2F0(int *a1)
{
  if (!*(qword_100B5F258 + 560))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v3 = qword_100B5F258 + 6;
  v4 = *a1;
  v5 = *(a1 + 2);
  while (*v3 != v4 || *(v3 + 4) != v5)
  {
    ++result;
    v3 += 80;
    if (*(qword_100B5F258 + 560) == result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_10022A340(unsigned int a1, int a2)
{
  if (a2)
  {
    goto LABEL_2;
  }

  v3 = sub_100227630(qword_100B5F258 + 664, qword_100B5F258 + 632, *(qword_100B5F258 + 696));
  if (!v3)
  {
    a2 = 0;
LABEL_2:
    v3 = sub_10020B528(a1, a2);
  }

  v4 = *(qword_100B5F258 + 664);
  if (v4)
  {
    sub_10000C1E8(v4);
    *(qword_100B5F258 + 664) = 0;
  }

  return v3;
}

uint64_t sub_10022A3C0(unsigned int a1, int a2)
{
  if (a2)
  {
    goto LABEL_2;
  }

  v3 = sub_100227724(qword_100B5F258 + 680, qword_100B5F258 + 648, *(qword_100B5F258 + 704));
  if (!v3)
  {
    a2 = 0;
LABEL_2:
    v3 = sub_10020B590(a1, a2);
  }

  v4 = *(qword_100B5F258 + 680);
  if (v4)
  {
    sub_10000C1E8(v4);
    *(qword_100B5F258 + 680) = 0;
  }

  return v3;
}

uint64_t sub_10022A440(uint64_t result, uint64_t a2)
{
  v2 = qword_100B5F258;
  v3 = *(qword_100B5F258 + 560);
  if (*(qword_100B5F258 + 560))
  {
    v5 = result;
    while (*(v2 + 4) != result)
    {
      v2 += 80;
      if (!--v3)
      {
        return result;
      }
    }

    *v2 = 0;
    (*(v2 + 40))();
    v6 = *(v2 + 64);
    sub_10022A0AC(v2);
    v6(v5, a2);
    result = *(qword_100B5F258 + 712);
    if (result)
    {
      if (!*(qword_100B5F258 + 560))
      {
        result = sub_10002242C(result);
        *(qword_100B5F258 + 712) = 0;
      }
    }
  }

  return result;
}

void sub_10022A4E4(int a1, int *a2, int *a3, unsigned int a4, int a5, int a6, void *__src, size_t __len)
{
  v8 = qword_100B5F270;
  if (!qword_100B5F270)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pan/pan_user.c", 484, "PANU_RecvBuf");
  }

  v9 = __len;
  v12 = *a2;
  *(qword_100B5F270 + 4) = *(a2 + 2);
  *v8 = v12;
  v13 = *a3;
  *(v8 + 10) = *(a3 + 2);
  *(v8 + 6) = v13;
  *(v8 + 12) = __rev16(a4);
  if (__len >= 0x5DD)
  {
    sub_1000D660C();
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pan/pan_user.c", 497, "ByteStream_NumReadBytesAvail(bs) >= (dataLen)");
  }

  memmove((v8 + 14), __src, __len);
  v15 = *(qword_100B5F258 + 560);
  if (*(qword_100B5F258 + 560))
  {
    for (i = qword_100B5F258 + 48; *(i - 44) != a1; i += 80)
    {
      if (!--v15)
      {
        return;
      }
    }

    if (*(i - 36))
    {
      v17 = 0;
    }

    else
    {
      v17 = *(i - 32) == 0;
    }

    if (v17 || (v18 = *a2, (*a2 & 1) == 0))
    {
      v19 = *a3;
      *(i - 32) = *(a3 + 2);
      *(i - 36) = v19;
      v18 = *a2;
    }

    if ((v18 & 1) == 0)
    {
      *(i + 25) = 1;
    }

    v20 = (*i)(v8, (v9 + 14));
    if (v20)
    {
      v21 = v20;
      if (sub_10000C240())
      {
        sub_10000AF54("Forwarding packet to host failed - %!\n", v22, v23, v24, v25, v26, v27, v28, v21);
        v29 = sub_10000C050(0x1Bu);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }
  }
}

uint64_t sub_10022A688(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    v18 = "data";
    goto LABEL_37;
  }

  v2 = a2;
  if (!a2)
  {
    v18 = "(dataLen) > 0";
LABEL_37:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pan/pan_user.c", 424, v18);
  }

  if (a2 <= 5)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pan/pan_user.c", 428, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
  }

  v21 = *a1;
  v22 = *(a1 + 4);
  if (a2 <= 0xB)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pan/pan_user.c", 429, "ByteStream_NumReadBytesAvail(bs) >= OI_BD_ADDR_BYTE_SIZE");
  }

  v19 = *(a1 + 6);
  v20 = *(a1 + 10);
  if (a2 <= 0xD)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pan/pan_user.c", 430, "ByteStream_NumReadBytesAvail(bs) >= 2");
  }

  v4 = bswap32(*(a1 + 12)) >> 16;
  if (!sub_100227550(&v21, v4, (qword_100B5F258 + 632), (qword_100B5F258 + 648)))
  {
    return 2041;
  }

  v5 = qword_100B5F258;
  if (!*(qword_100B5F258 + 560))
  {
    return 122;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = v2 - 14;
  do
  {
    if (*(v5 + v6) == 3)
    {
      if ((v21 & 1) != 0 || (v21 == *(v5 + v6 + 12) ? (v10 = v22 == *(v5 + v6 + 16)) : (v10 = 0), v10))
      {
        v11 = v5 + v6;
        if (v19 != *(v5 + v6 + 12) || v20 != *(v5 + v6 + 16))
        {
          v13 = *(v11 + 12);
          v14 = *(v11 + 16);
          if (v21 == v13 && v22 == v14)
          {
            *(v5 + v6 + 73) = 1;
          }

          v16 = sub_10020B3E0(sub_10022A8C4, *(v5 + v6 + 4), &v21, &v19, v4, 0, 0, (a1 + 14), v9);
          v5 = qword_100B5F258;
          if (!v16)
          {
            ++*(qword_100B5F258 + 562);
            v8 = 1;
          }
        }
      }
    }

    ++v7;
    v6 += 80;
  }

  while (v7 < *(v5 + 560));
  if (v8)
  {
    return 0;
  }

  else
  {
    return 122;
  }
}

uint64_t sub_10022A8C4(uint64_t result)
{
  v1 = qword_100B5F258;
  v2 = *(qword_100B5F258 + 562) - 1;
  *(qword_100B5F258 + 562) = v2;
  v3 = *(v1 + 560);
  if (*(v1 + 560))
  {
    for (i = (v1 + 56); *(i - 26) != result; i += 10)
    {
      if (!--v3)
      {
        return result;
      }
    }

    if (!v2)
    {
      return (*i)();
    }
  }

  return result;
}

void sub_10022A914()
{
  v0 = qword_100B5F258;
  if (!*(qword_100B5F258 + 560))
  {
    goto LABEL_14;
  }

  v1 = 0;
  v2 = 0;
  v3 = 0;
  do
  {
    if (*(v0 + v1 + 72) == 1)
    {
      if (*(v0 + v1 + 73))
      {
        v3 = 1;
      }

      else
      {
        v4 = sub_10020B368(*(v0 + v1 + 4));
        v0 = qword_100B5F258;
        if (!v4)
        {
          *(qword_100B5F258 + v1) = 4;
        }
      }

      *(v0 + v1 + 73) = 0;
    }

    ++v2;
    v1 += 80;
  }

  while (v2 < *(v0 + 560));
  if (v3)
  {

    sub_10002195C(sub_10022A914, 0, 1200, (v0 + 712));
  }

  else
  {
LABEL_14:
    *(v0 + 712) = 0;
  }
}

void sub_10022A9FC(uint64_t a1)
{
  *(qword_100B5F278 + 128) = 4;
  v1 = *(a1 + 8);
  if (*(a1 + 8))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*a1 + v3);
      if (v5 == 152)
      {
        *(qword_100B5F278 + 128) = 2;
      }

      else if (v5 == 151)
      {
        sub_1000D660C();
        v1 = *(a1 + 8);
      }

      ++v4;
      v3 += 24;
    }

    while (v4 < v1);
  }
}

uint64_t sub_10022AA8C(unsigned int a1, uint64_t a2, int a3)
{
  if (a3 != 1752 && a3 != 1701)
  {
    v8 = 0;
    goto LABEL_102;
  }

  v6 = qword_100B5F278;
  if ((*(qword_100B5F278 + 201) & 1) == 0)
  {
    if (*qword_100B5F278 >= 2u)
    {
      if (*(qword_100B5F278 + 128))
      {
        sub_10022A9FC(a2);
        v6 = qword_100B5F278;
        v7 = *(qword_100B5F278 + 128);
      }

      else
      {
        v7 = 0;
      }

      if ((*(*(v6 + 16) + 32))(*(v6 + 8), *(v6 + 24), sub_10022B18C, v7, *(v6 + 26)))
      {
        v8 = sub_1001C25BC(a1, 0, 1701);
        if (v8)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Failed to inform client of read failure", v36, v37, v38, v39, v40, v41, v42, v76);
            v43 = sub_10000C050(0x1Du);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_102;
      }

      return 0;
    }

    *(qword_100B5F278 + 124) = 1;
    *(v6 + 120) = 0;
    *(v6 + 128) = 0;
    *(v6 + 140) = 0;
    *(v6 + 148) = 0;
    *(v6 + 161) = 0;
    *(v6 + 164) = 0;
    *(v6 + 168) = 0;
    *(v6 + 180) = 0;
    *(v6 + 188) = 0;
    *(v6 + 196) = 0;
    *(v6 + 136) = 0;
    v9 = *(v6 + 152);
    if (v9)
    {
      sub_10000C1E8(v9);
      v6 = qword_100B5F278;
      *(qword_100B5F278 + 152) = 0;
    }

    *(v6 + 160) = 0;
    *(v6 + 144) = 0;
    *(v6 + 162) = -1;
    *(v6 + 166) = 0;
    *(v6 + 172) = 0;
    *(v6 + 176) = 0;
    *(v6 + 184) = 0;
  }

  if (*(a2 + 8))
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *a2;
      v13 = *(*a2 + v10);
      if (v13 <= 0x4B)
      {
        if (v13 == 1)
        {
          v21 = (qword_100B5F278 + 112);
          if (!*(qword_100B5F278 + 112))
          {
            v22 = v12 + v10;
            if (*(v22 + 16))
            {
              v20 = sub_10022C90C((v22 + 8), (qword_100B5F278 + 80), v21);
              if (v20)
              {
                goto LABEL_75;
              }
            }

            else
            {
              *v21 = 0;
            }
          }
        }

        else if (v13 == 66)
        {
          v16 = v12 + v10;
          if (!*(v12 + v10 + 8) || (v17 = *(v16 + 16)) == 0)
          {
LABEL_56:
            v8 = 1735;
            goto LABEL_76;
          }

          if (sub_100307234(v17, "x-bt/vcard-listing", 18))
          {
            if (sub_100307234(*(v16 + 16), "x-bt/vcard", 10))
            {
              if (sub_100307234(*(v16 + 16), "x-bt/phonebook", 14))
              {
                goto LABEL_56;
              }

              v18 = qword_100B5F278;
              v19 = 2;
            }

            else
            {
              v18 = qword_100B5F278;
              v19 = 1;
            }

            *(v18 + 124) = v19;
          }

          else
          {
            *(qword_100B5F278 + 124) = 0;
          }
        }
      }

      else if (v13 == 76)
      {
        if (*(v12 + v10 + 8))
        {
          v20 = sub_10022CA08((v12 + v10 + 8));
          if (v20)
          {
LABEL_75:
            v8 = v20;
LABEL_76:
            if (sub_10000C240())
            {
              sub_10000AF54("Failed to parse OBEX header", v51, v52, v53, v54, v55, v56, v57, v76);
              v58 = sub_10000C050(0x1Du);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
LABEL_78:
                sub_100812934();
              }
            }

LABEL_102:
            v69 = qword_100B5F278;
            if ((*(qword_100B5F278 + 201) & 1) == 0 && *qword_100B5F278 >= 2u)
            {
              v70 = *(qword_100B5F278 + 8);
              if (v70)
              {
                *(qword_100B5F278 + 8) = 0;
                sub_10022B448(v70, *(v69 + 26), a3);
                v69 = qword_100B5F278;
              }
            }

            v71 = *(v69 + 80);
            if (v71)
            {
              sub_10000C1E8(v71);
              v69 = qword_100B5F278;
              *(qword_100B5F278 + 80) = 0;
            }

            *(v69 + 112) = 0;
            v72 = *(v69 + 152);
            if (v72)
            {
              sub_10000C1E8(v72);
              v69 = qword_100B5F278;
              *(qword_100B5F278 + 152) = 0;
            }

            *(v69 + 201) = 0;
            *v69 = 1;
            *(v69 + 128) = 0;
            return v8;
          }
        }
      }

      else
      {
        if (v13 != 151)
        {
          if (v13 != 152 || *(v12 + v10 + 8) != 1)
          {
            goto LABEL_40;
          }

          v14 = qword_100B5F278;
          v15 = *(qword_100B5F278 + 128) | 2;
          goto LABEL_32;
        }

        if (*(v12 + v10 + 8) == 1)
        {
          v14 = qword_100B5F278;
          v15 = *(qword_100B5F278 + 128) | 1;
LABEL_32:
          *(v14 + 128) = v15;
        }
      }

LABEL_40:
      ++v11;
      v10 += 24;
      if (v11 >= *(a2 + 8))
      {
        v6 = qword_100B5F278;
        break;
      }
    }
  }

  *(v6 + 201) = a3 == 1752;
  if (a3 != 1752)
  {
    if (*(v6 + 164) == 1 && !*(v6 + 162))
    {
      v8 = sub_10022B3B8();
LABEL_101:
      if (v8)
      {
        goto LABEL_102;
      }

      v74 = qword_100B5F278;
      v75 = *(qword_100B5F278 + 80);
      if (v75)
      {
        sub_10000C1E8(v75);
        v74 = qword_100B5F278;
        *(qword_100B5F278 + 80) = 0;
      }

      v8 = 0;
      *(v74 + 112) = 0;
      return v8;
    }

    v77 = 0;
    v31 = *(v6 + 124);
    if (v31 != 1)
    {
      v32 = (v6 + 68);
      if (!v31)
      {
        v33 = sub_10022D3F0(&v77, v32);
        if (!v33)
        {
          v34 = qword_100B5F278;
          if (*(qword_100B5F278 + 68) == 3)
          {
            *(qword_100B5F278 + 120) = 1;
          }

          *v34 = 4;
          v35 = (**(v34 + 16))(v77);
          goto LABEL_82;
        }

        goto LABEL_73;
      }

      v33 = sub_10022D4CC(&v77, v32);
      if (v33)
      {
LABEL_73:
        v8 = v33;
        goto LABEL_100;
      }

      v59 = qword_100B5F278;
      if (*(qword_100B5F278 + 68) == 3)
      {
        *(qword_100B5F278 + 120) = 1;
      }

      *v59 = 2;
      v35 = (*(*(v59 + 16) + 8))(v77);
LABEL_82:
      v8 = v35;
      if (!v35)
      {
        goto LABEL_101;
      }

      goto LABEL_100;
    }

    v44 = sub_100306FE4(".");
    v45 = sub_10022D5A0((qword_100B5F278 + 80), *(qword_100B5F278 + 112), &v77);
    v46 = qword_100B5F278;
    v47 = *(qword_100B5F278 + 112);
    v48 = v77;
    if (v47 != 4 || v77 != 0)
    {
      v8 = v45;
      if (v45)
      {
LABEL_100:
        *qword_100B5F278 = 1;
        goto LABEL_101;
      }

      if (*(qword_100B5F278 + 73) == 1)
      {
        if (v47 == 1)
        {
          v50 = 0;
          *(v6 + 68) = *(qword_100B5F278 + 68);
LABEL_87:
          v60 = *(v46 + 8 * v50 + 80);
          v61 = sub_100306FE4(v60);
          v62 = v61 - v44;
          v63 = sub_10030701C(&v60[v62], ".");
          v8 = 1724;
          if (v61 > 0xF || v63)
          {
            goto LABEL_100;
          }

          if (v61 == v44)
          {
            v64 = 0;
          }

          else
          {
            LODWORD(v64) = 0;
            do
            {
              v66 = *v60++;
              v65 = v66;
              v67 = v66 - 48;
              if ((v66 - 48) >= 0xA)
              {
                if ((v65 - 71) > 0xFFFFFFF9)
                {
                  v67 = v65 - 55;
                }

                else
                {
                  if ((v65 - 103) < 0xFFFFFFFA)
                  {
                    goto LABEL_99;
                  }

                  v67 = v65 - 87;
                }
              }

              v64 = (v67 + 16 * v64);
              --v62;
            }

            while (v62);
          }

          v68 = qword_100B5F278;
          *qword_100B5F278 = 5;
          v35 = (*(*(v68 + 16) + 16))(v48, *(v68 + 68), v64, v68 + 172, *(v68 + 184), sub_10022D6C0, *(v68 + 26));
          goto LABEL_82;
        }
      }

      else if (v47 >= 2)
      {
        v33 = sub_10022D644(*(qword_100B5F278 + 8 * (v47 - 2) + 80), (v6 + 68));
        if (v33)
        {
          goto LABEL_73;
        }

        v46 = qword_100B5F278;
        v50 = *(qword_100B5F278 + 112) - 1;
        goto LABEL_87;
      }
    }

LABEL_99:
    v8 = 1724;
    goto LABEL_100;
  }

  v8 = sub_1001C25BC(a1, 0, 1701);
  if (v8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send OBEX GET repsonse", v23, v24, v25, v26, v27, v28, v29, v76);
      v30 = sub_10000C050(0x1Du);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }
    }

    goto LABEL_102;
  }

  return v8;
}

void sub_10022B18C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v4 = qword_100B5F278;
  if (*qword_100B5F278 > 5u || ((1 << *qword_100B5F278) & 0x34) == 0)
  {
    return;
  }

  v6 = *(qword_100B5F278 + 8);
  if (v6 != a1)
  {
    return;
  }

  if (!a4)
  {
    LOBYTE(v43) = 72;
    v8 = 1701;
    goto LABEL_11;
  }

  if (a4 == 135)
  {
    v8 = 0;
    LOBYTE(v43) = 73;
    *(qword_100B5F278 + 128) = 0;
LABEL_11:
    v45 = a2;
    LOWORD(v44) = a3;
    v41 = &v43;
    LOBYTE(v42) = 1;
    v9 = sub_1001C25BC(*(v4 + 26), &v41, v8);
    if (v9)
    {
      v10 = v9;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_OBEXSRV_GetResponse failed with error %!", v11, v12, v13, v14, v15, v16, v17, v10);
        v18 = sub_10000C050(0x1Du);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1008140F0();
        }
      }

      v19 = qword_100B5F278;
      v20 = *(qword_100B5F278 + 8);
      *(qword_100B5F278 + 8) = 0;
      sub_10022B448(v20, *(v19 + 26), v10);
      v21 = qword_100B5F278;
      *qword_100B5F278 = 1;
    }

    else
    {
      v21 = qword_100B5F278;
    }

    if (*(v21 + 128) == 4)
    {
      v40[0] = 0;
      v40[1] = 0;
      sub_10022AA8C(*(v21 + 26), v40, 1701);
    }

    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("File read error", v22, v23, v24, v25, v26, v27, v28, v39);
    v29 = sub_10000C050(0x1Du);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  v30 = qword_100B5F278;
  *(qword_100B5F278 + 8) = 0;
  sub_10022B448(v6, *(v30 + 26), a4);
  if (sub_1001C25BC(*(qword_100B5F278 + 26), 0, a4))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to inform client of Read Failure (%!)", v31, v32, v33, v34, v35, v36, v37, a4);
      v38 = sub_10000C050(0x1Du);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }
  }

  *qword_100B5F278 = 1;
}

uint64_t sub_10022B3B8()
{
  v3 = 0;
  v0 = qword_100B5F278;
  *qword_100B5F278 = 3;
  if (*(v0 + 124))
  {
    result = sub_10022D4CC(&v3, (v0 + 68));
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = sub_10022D3F0(&v3, (v0 + 68));
    if (result)
    {
      return result;
    }
  }

  v2 = qword_100B5F278;
  if (*(qword_100B5F278 + 68) == 3)
  {
    *(qword_100B5F278 + 120) = 1;
  }

  (*(v2 + 48))(*(v2 + 26), v3);
  return 0;
}

void sub_10022B448(uint64_t a1, unsigned __int16 a2, int a3)
{
  v12 = a1;
  v13 = a3;
  v14 = a2;
  v11[1] = &v12;
  v11[0] = 16;
  if (sub_1000228C0(sub_10022DA3C, v11, 0) && sub_10000C240())
  {
    sub_10000AF54("Failed to register deferred close", v3, v4, v5, v6, v7, v8, v9, v11[0]);
    v10 = sub_10000C050(0x1Du);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }
}

uint64_t sub_10022B4F0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, int a8, int a9)
{
  v54 = unk_100AE7C08;
  if (!a6 || !a3 || !a2 || !a5)
  {
    sub_1000D660C();
    return 101;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  if (dword_100BCE2A4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_PBAPServer_Register is already registered.", v12, v13, v14, v15, v16, v17, v18, v49);
      v19 = sub_10000C050(0x1Du);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1008140F0();
      }
    }

    return 119;
  }

  v27 = sub_1001BBBD8(0xD0uLL, 0x10F0040065A2C0CuLL);
  qword_100B5F278 = v27;
  v27[4] = a2;
  v27[5] = a3;
  v27[6] = a4;
  v27[1] = 0;
  v27[2] = a5;
  v28 = sub_1003045A0(0x1Du);
  v29 = qword_100B5F278;
  *(qword_100B5F278 + 60) = *v28;
  v30 = sub_1002265FC(&v54, off_100B52178, a1, (v29 + 60), &unk_1008A3E80);
  if (v30 || (v30 = sub_100307CB0(&v54, off_100B52178, a1, (qword_100B5F278 + 62), &unk_1008A3E80, 1), v30))
  {
    v20 = v30;
LABEL_15:
    if (sub_10000C240())
    {
      sub_10000AF54("OI_PBAPServer_Register failed", v31, v32, v33, v34, v35, v36, v37, v49);
      v38 = sub_10000C050(0x1Du);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    if (qword_100B5F278)
    {
      sub_1002448C8(0x100000);
      v39 = qword_100B5F278;
      if (*(qword_100B5F278 + 60))
      {
        sub_100226A9C(*(qword_100B5F278 + 60));
        v39 = qword_100B5F278;
      }

      if (v39[14])
      {
        sub_1002F8018(v39[14]);
        v39 = qword_100B5F278;
      }

      sub_10000C1E8(v39);
    }

    return v20;
  }

  byte_100B5F280 = 1;
  word_100B5F282 = 1;
  dword_100B5F288 = *(qword_100B5F278 + 60);
  byte_100B5F290 = 1;
  word_100B5F292 = 1;
  dword_100B5F298 = a8;
  byte_100B5F2A0 = 1;
  word_100B5F2A2 = 4;
  dword_100B5F2A8 = a9;
  byte_100B5F2B0 = 1;
  word_100B5F2B2 = 2;
  dword_100B5F2B8 = *(qword_100B5F278 + 62);
  byte_100B5F2C0 = 1;
  word_100B5F2C2 = 1;
  dword_100B5F2C8 = 1;
  *&v52 = &unk_100AE7C18;
  WORD4(v52) = 6;
  *&v53 = *a6;
  WORD4(v53) = *(a6 + 8);
  *&v50 = &unk_100AE7CA8;
  WORD4(v50) = 4;
  *&v51 = v53;
  WORD4(v51) = WORD4(v53);
  v40 = sub_1002F7E1C(&v52, (qword_100B5F278 + 56));
  if (v40)
  {
    v20 = v40;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_SDPDB_AddServiceRecord failed: %!", v41, v42, v43, v44, v45, v46, v47, v20);
      v48 = sub_10000C050(0x1Du);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        sub_1008140F0();
      }
    }

    goto LABEL_15;
  }

  sub_1002F8134(*(qword_100B5F278 + 56), &v50);
  sub_100244814(0x100000);
  ++dword_100BCE2A4;
  v20 = 0;
  if (a7)
  {
    *a7 = *(qword_100B5F278 + 56);
  }

  return v20;
}

void sub_10022B84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_10022CA08((a5 + 8));
    v9 = qword_100B5F278;
  }

  else
  {
    v9 = qword_100B5F278;
    *(qword_100B5F278 + 192) = 0;
  }

  v44 = 0;
  v43 = 0;
  if (*v9)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("PBAP server already in use", v10, v11, v12, v13, v14, v15, v16, v42);
      v17 = sub_10000C050(0x1Du);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1008140F0();
      }
    }

    if (sub_1001C2ABC(a1, 0, 104) && sub_10000C240())
    {
      sub_10000AF54("Failed to inform client of connection failure", v18, v19, v20, v21, v22, v23, v24, v42);
      v25 = sub_10000C050(0x1Du);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }
  }

  else
  {
    *(v9 + 200) = a2;
    *(v9 + 26) = a1;
    if (sub_1001C32B4(a1, &v43))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to get client address", v26, v27, v28, v29, v30, v31, v32, v42);
        v33 = sub_10000C050(0x1Du);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_100812934();
        }
      }

      if (sub_1001C2ABC(a1, 0, 3005))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to inform client of connection failure", v34, v35, v36, v37, v38, v39, v40, v42);
          v41 = sub_10000C050(0x1Du);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            sub_100812934();
          }
        }
      }
    }

    else
    {
      (*(qword_100B5F278 + 32))(&v43, a2, a3, a4, a1);
    }
  }
}

void sub_10022BA40(uint64_t a1)
{
  v2 = qword_100B5F278;
  if (*(qword_100B5F278 + 26) == a1)
  {
    *qword_100B5F278 = 0;
    v3 = *(v2 + 40);

    v3();
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Received disconnect indication from invalid connectionId %d", v4, v5, v6, v7, v8, v9, v10, a1);
    v11 = sub_10000C050(0x1Du);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1008140F0();
    }
  }
}

uint64_t sub_10022BAF0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 1701)
  {
    v3 = 1721;
  }

  else
  {
    v3 = a3;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 1721;
  }
}

uint64_t sub_10022BB08(uint64_t a1, uint64_t a2, int a3, char a4)
{
  if (a4)
  {
    v4 = 1735;
    goto LABEL_18;
  }

  if (!a2 || (v5 = *(a2 + 8)) == 0 || !*v5)
  {
    v8 = qword_100B5F278;
    if (!a3)
    {
      v4 = 0;
      *(qword_100B5F278 + 72) = 0;
      *(v8 + 64) = 0;
      *(v8 + 74) = 0;
      goto LABEL_18;
    }

    if (*(qword_100B5F278 + 74))
    {
      v9 = *(qword_100B5F278 + 74) - 1;
      *(qword_100B5F278 + 74) = v9;
      if (*(v8 + 73) == 1)
      {
        v4 = 0;
        *(v8 + 73) = 0;
      }

      else if (v9)
      {
        v4 = 0;
        if (v9 == 1 && *(v8 + 64) == 1)
        {
          *(v8 + 72) = 0;
        }
      }

      else
      {
        v4 = 0;
        *(v8 + 72) = 0;
        *(v8 + 64) = 0;
      }

      goto LABEL_18;
    }

LABEL_17:
    v4 = 1724;
    goto LABEL_18;
  }

  ptr[1] = 0;
  ptr[2] = 0;
  v29 = 3;
  if (!*a2 || (*(qword_100B5F278 + 73) & 1) != 0)
  {
    goto LABEL_17;
  }

  ptr[0] = 0;
  v6 = sub_10022C90C(a2, ptr, &v29);
  if (v6)
  {
LABEL_9:
    v4 = v6;
    goto LABEL_10;
  }

  v20 = v29;
  if (v29 + *(qword_100B5F278 + 74) > 3)
  {
    v7 = ptr[0];
    v4 = 1724;
    if (ptr[0])
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  if (!v29)
  {
LABEL_52:
    v4 = 0;
    goto LABEL_10;
  }

  v21 = 0;
  while (1)
  {
    v22 = qword_100B5F278;
    v23 = *(qword_100B5F278 + 74);
    if (v23 == 2)
    {
      break;
    }

    if (v23 == 1)
    {
      v25 = ptr[v21];
      if (*(qword_100B5F278 + 64) != 1 || (v26 = sub_10030701C(ptr[v21], "t"), v22 = qword_100B5F278, v26))
      {
        v27 = (v22 + 68);
        v28 = v25;
LABEL_47:
        v6 = sub_10022D644(v28, v27);
        if (v6)
        {
          goto LABEL_9;
        }

        v22 = qword_100B5F278;
        *(qword_100B5F278 + 73) = 1;
        goto LABEL_51;
      }
    }

    else
    {
      if (*(qword_100B5F278 + 74))
      {
        goto LABEL_53;
      }

      v24 = ptr[v21];
      if (!sub_10030701C(v24, L"SIM1"))
      {
        v22 = qword_100B5F278;
        *(qword_100B5F278 + 64) = 1;
        goto LABEL_51;
      }

      if (sub_10030701C(v24, "t"))
      {
        goto LABEL_53;
      }

      v22 = qword_100B5F278;
      *(qword_100B5F278 + 64) = 0;
    }

    *(v22 + 72) = 1;
LABEL_51:
    ++*(v22 + 74);
    if (++v21 >= v20)
    {
      goto LABEL_52;
    }
  }

  if (*(qword_100B5F278 + 64))
  {
    v28 = ptr[v21];
    v27 = (qword_100B5F278 + 68);
    goto LABEL_47;
  }

LABEL_53:
  v4 = 1724;
LABEL_10:
  v7 = ptr[0];
  if (ptr[0])
  {
LABEL_11:
    sub_10000C1E8(v7);
  }

LABEL_18:
  if (sub_1001C31BC(*(qword_100B5F278 + 26), v4))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to confirm (%!) the set path operation with the client", v10, v11, v12, v13, v14, v15, v16, v4);
      v17 = sub_10000C050(0x1Du);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }
  }

  return v4;
}

uint64_t sub_10022BDE4()
{
  if (!dword_100BCE2A4)
  {
    return 121;
  }

  v0 = sub_100226A9C(*(qword_100B5F278 + 60));
  if (v0)
  {
    v1 = v0;
    if (sub_10000C240())
    {
      sub_10000AF54("Error deregistering RFCOMM server", v2, v3, v4, v5, v6, v7, v8, v38);
      v9 = sub_10000C050(0x1Du);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        sub_100812934();
      }
    }
  }

  else
  {
    v11 = sub_100308060(*(qword_100B5F278 + 62));
    if (v11)
    {
      v1 = v11;
      if (sub_10000C240())
      {
        sub_10000AF54("Error deregistering L2CAP server", v12, v13, v14, v15, v16, v17, v18, v38);
        v19 = sub_10000C050(0x1Du);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v20 = sub_1002448C8(0x100000);
      if (v20)
      {
        v1 = v20;
        if (sub_10000C240())
        {
          sub_10000AF54("Error deregistering service class", v21, v22, v23, v24, v25, v26, v27, v38);
          v28 = sub_10000C050(0x1Du);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        v29 = sub_1002F8018(*(qword_100B5F278 + 56));
        if (v29)
        {
          v1 = v29;
          if (sub_10000C240())
          {
            sub_10000AF54("Error removing service record", v30, v31, v32, v33, v34, v35, v36, v38);
            v37 = sub_10000C050(0x1Du);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          if (qword_100B5F278)
          {
            sub_10000C1E8(qword_100B5F278);
          }

          v1 = 0;
          qword_100B5F278 = 0;
          --dword_100BCE2A4;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_10022BFA4(unsigned int a1, char a2, int a3, int a4)
{
  if (!dword_100BCE2A4)
  {
    return 103;
  }

  v4 = qword_100B5F278;
  if (*qword_100B5F278 || *(qword_100B5F278 + 26) != a1)
  {
    return 1745;
  }

  if (!a3 || (*(qword_100B5F278 + 200) & 1) != 0)
  {
    v7 = sub_1001C2ABC(a1, 0, a4);
    if (v7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to inform client of connection rejection", v17, v18, v19, v20, v21, v22, v23, v27);
        v24 = sub_10000C050(0x1Du);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    *(qword_100B5F278 + 74) = 0;
    *(v4 + 72) = 0;
    *(v4 + 64) = 0;
    *(v4 + 121) = a2;
    v6 = sub_1001C2ABC(a1, 1, 0);
    if (v6)
    {
      v7 = v6;
      if (sub_10000C240())
      {
        sub_10000AF54("PBAP: Failed to accept connection", v8, v9, v10, v11, v12, v13, v14, v27);
        v15 = sub_10000C050(0x1Du);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
LABEL_9:
          sub_100812934();
        }
      }
    }

    else
    {
      v25 = qword_100B5F278;
      *qword_100B5F278 = 1;
      *(qword_100B5F278 + 24) = sub_1001C3258(*(v25 + 26));
      v28 = 0;
      sub_1001C3310(a1, &v28);
      if (*(qword_100B5F278 + 24) > 0x1000u && v28 == 0)
      {
        *(qword_100B5F278 + 24) = 4096;
      }

      return 0;
    }
  }

  return v7;
}

uint64_t sub_10022C138(unsigned int a1, const void *a2, unsigned int a3, char *a4)
{
  if (!dword_100BCE2A4)
  {
    return 103;
  }

  if (*qword_100B5F278 || *(qword_100B5F278 + 200) != 1)
  {
    return 1745;
  }

  result = sub_1001C2F44(*(qword_100B5F278 + 26), a2, a3, a4, 1);
  if (!result)
  {
    *(qword_100B5F278 + 24) = sub_1001C3258(*(qword_100B5F278 + 26));
    v7 = 0;
    sub_1001C3310(a1, &v7);
    if (*(qword_100B5F278 + 24) > 0x1000u && v7 == 0)
    {
      *(qword_100B5F278 + 24) = 4096;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10022C1F8(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v37[0] = a3;
  v37[1] = a4;
  v36[0] = a5;
  v36[1] = a6;
  v35[0] = a7;
  v35[1] = a8;
  memset(v38, 0, sizeof(v38));
  v33 = v38;
  v34 = 0;
  v9 = qword_100B5F278;
  if (*qword_100B5F278 == 3)
  {
    v10 = a9;
    if (a9)
    {
      *qword_100B5F278 = 1;
      v11 = *(v9 + 26);
      v12 = 0;
    }

    else
    {
      v22 = *(qword_100B5F278 + 128);
      if (v22)
      {
        LOBYTE(v38[0]) = -105;
        v23 = 1;
        BYTE8(v38[0]) = 1;
        LOBYTE(v34) = 1;
        *(qword_100B5F278 + 128) = v22 & 0xFA | 4;
      }

      else
      {
        v23 = 0;
      }

      qword_100B5F2D0 = &word_100B5F2E0;
      word_100B5F2D8 = 61;
      word_100B5F2DE = 2;
      *&word_100B5F2DA = 262205;
      word_100B5F2E0 = 520;
      byte_100B5F2E2 = HIBYTE(a2);
      byte_100B5F2E3 = a2;
      if (*(v9 + 120) == 1)
      {
        word_100B5F2E4 = 265;
        v26 = *(v9 + 121);
        v27 = 7;
        word_100B5F2DC = 7;
        byte_100B5F2E6 = v26;
      }

      else
      {
        v27 = 4;
      }

      if ((*(v9 + 192) & 8) != 0)
      {
        sub_10022C4B8(&qword_100B5F2D0, 10, v37);
        v9 = qword_100B5F278;
        v28 = *(qword_100B5F278 + 68);
        if (v28 != 5 && v28)
        {
          v27 += 18;
        }

        else
        {
          sub_10022C4B8(&qword_100B5F2D0, 11, v36);
          v27 += 36;
          v9 = qword_100B5F278;
        }
      }

      if ((*(v9 + 192) & 4) != 0)
      {
        v29 = *(v9 + 68);
        v30 = v35;
        if (v29 && v29 != 5)
        {
          v30 = &unk_100BC9C58;
        }

        sub_10022C4B8(&qword_100B5F2D0, 13, v30);
        v27 += 18;
      }

      v31 = v38 + 24 * v23;
      *v31 = 76;
      *(v31 + 4) = v27;
      *(v31 + 2) = qword_100B5F2D0;
      LOBYTE(v34) = v23 + 1;
      if (word_100B5F2DE == 2)
      {
        word_100B5F2DA = word_100B5F2DC;
      }

      LOBYTE(word_100B5F2DE) = 15;
      v32 = qword_100B5F278;
      *qword_100B5F278 = 1;
      v11 = *(v32 + 26);
      v12 = &v33;
      v10 = 0;
    }

    return sub_1001C25BC(v11, v12, v10);
  }

  else
  {
    if (sub_10000C240())
    {
      v20 = *qword_100B5F278;
      v21 = v20 > 5 ? "<unknown state>" : off_100AE7D78[v20];
      sub_10000AF54("Server state is %s, ignoring getsize response", v13, v14, v15, v16, v17, v18, v19, v21);
      v24 = sub_10000C050(0x1Du);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1008140F0();
      }
    }

    return 3004;
  }
}

uint64_t *sub_10022C4B8(uint64_t *result, char a2, uint64_t a3)
{
  if (*(result + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
    goto LABEL_21;
  }

  v3 = *(result + 6);
  if (*(result + 5) <= v3)
  {
LABEL_21:
    v11 = "ByteStream_NumReadBytesAvail(*byteStream) >= 1";
    goto LABEL_23;
  }

  if (*(result + 14) != 2)
  {
    v11 = "(*byteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c", 294, v11);
  }

  v4 = *result;
  *(result + 6) = v3 + 1;
  *(v4 + v3) = a2;
  if (*(result + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
    goto LABEL_25;
  }

  v5 = *(result + 6);
  if (*(result + 5) <= v5)
  {
LABEL_25:
    v12 = "ByteStream_NumReadBytesAvail(*byteStream) >= 1";
    goto LABEL_27;
  }

  if (*(result + 14) != 2)
  {
    v12 = "(*byteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c", 295, v12);
  }

  v6 = *result;
  *(result + 6) = v5 + 1;
  *(v6 + v5) = 16;
  if (*(result + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
    goto LABEL_29;
  }

  v7 = *(result + 6);
  if (*(result + 5) - v7 <= 3)
  {
LABEL_29:
    v13 = "ByteStream_NumReadBytesAvail(*byteStream) >= 4";
    goto LABEL_31;
  }

  if (*(result + 14) != 2)
  {
    v13 = "(*byteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c", 296, v13);
  }

  *(*result + v7 + 3) = *a3;
  *(*result + *(result + 6) + 2) = BYTE1(*a3);
  *(*result + *(result + 6) + 1) = *(a3 + 2);
  *(*result + *(result + 6)) = *(a3 + 3);
  v8 = *(result + 6) + 4;
  *(result + 6) = v8;
  if (*(result + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
    goto LABEL_33;
  }

  if (*(result + 5) - v8 <= 3)
  {
LABEL_33:
    v14 = "ByteStream_NumReadBytesAvail(*byteStream) >= 4";
    goto LABEL_35;
  }

  if (*(result + 14) != 2)
  {
    v14 = "(*byteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_35:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c", 297, v14);
  }

  *(*result + v8 + 3) = *(a3 + 4);
  *(*result + *(result + 6) + 2) = BYTE1(*(a3 + 4));
  *(*result + *(result + 6) + 1) = *(a3 + 6);
  *(*result + *(result + 6)) = *(a3 + 7);
  v9 = *(result + 6) + 4;
  *(result + 6) = v9;
  if (*(result + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
    goto LABEL_37;
  }

  if (*(result + 5) - v9 <= 3)
  {
LABEL_37:
    v15 = "ByteStream_NumReadBytesAvail(*byteStream) >= 4";
    goto LABEL_39;
  }

  if (*(result + 14) != 2)
  {
    v15 = "(*byteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_39:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c", 298, v15);
  }

  *(*result + v9 + 3) = *(a3 + 8);
  *(*result + *(result + 6) + 2) = BYTE1(*(a3 + 8));
  *(*result + *(result + 6) + 1) = *(a3 + 10);
  *(*result + *(result + 6)) = *(a3 + 11);
  v10 = *(result + 6) + 4;
  *(result + 6) = v10;
  if (*(result + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
    goto LABEL_41;
  }

  if (*(result + 5) - v10 <= 3)
  {
LABEL_41:
    v16 = "ByteStream_NumReadBytesAvail(*byteStream) >= 4";
    goto LABEL_43;
  }

  if (*(result + 14) != 2)
  {
    v16 = "(*byteStream).__RWFlag == BYTESTREAM_WRITE";
LABEL_43:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c", 299, v16);
  }

  *(*result + v10 + 3) = *(a3 + 12);
  *(*result + *(result + 6) + 2) = BYTE1(*(a3 + 12));
  *(*result + *(result + 6) + 1) = *(a3 + 14);
  *(*result + *(result + 6)) = *(a3 + 15);
  *(result + 6) += 4;
  return result;
}

uint64_t sub_10022C8C4(unsigned int a1)
{
  if (!dword_100BCE2A4)
  {
    return 103;
  }

  if (*(qword_100B5F278 + 26) != a1)
  {
    return 101;
  }

  if (*qword_100B5F278)
  {
    return sub_1001C3364(a1);
  }

  return 1709;
}

uint64_t sub_10022C90C(unsigned __int16 *a1, void *a2, unsigned __int16 *a3)
{
  v4 = *a1;
  if (*a1 && ((v7 = *a3, v4 != 1) || **(a1 + 1)))
  {
    v8 = sub_100007618(2 * v4 + 2, 0x1000040BDFB0063uLL);
    if (v8)
    {
      v9 = v8;
      memmove(v8, *(a1 + 1), 2 * *a1);
      v9[*a1] = 0;
      if (*v9 == 47)
      {
        return 1724;
      }

      else
      {
        *a2 = v9;
        v11 = 1;
LABEL_10:
        *a3 = v11;
        while (1)
        {
          if (!*v9++)
          {
            return 0;
          }

          if (*(v9 - 1) == 47)
          {
            if (v7 == v11)
            {
              return 1724;
            }

            *(v9 - 1) = 0;
            v12 = *a3;
            a2[v12] = v9;
            v11 = v12 + 1;
            goto LABEL_10;
          }
        }
      }
    }

    else
    {
      return 106;
    }
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t sub_10022CA08(unsigned __int16 *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    v119 = "appParams->data";
    goto LABEL_167;
  }

  v2 = *a1;
  if (!*a1)
  {
    v119 = "(appParams->len) > 0";
LABEL_167:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c", 676, v119);
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 - 3;
  v6 = v2 - 1;
  v7 = v2 - 4;
  v122 = v2 - 8;
  v123 = v2 - 2;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (v2 <= v3)
          {
            return 0;
          }

          v8 = v3;
          v9 = v3 + 1;
          if (v2 <= (v3 + 1))
          {
            v10 = 1;
            v3 = v3 + 1;
          }

          else
          {
            v10 = 0;
            v3 += 2;
            v4 = *(v1 + v9);
          }

          v11 = *(v1 + v8);
          if (v11 <= 4)
          {
            break;
          }

          if (v11 > 6)
          {
            if (v11 == 7)
            {
              if (v4 != 1)
              {
                if (!sub_10000C240())
                {
                  return 1741;
                }

                sub_10000AF54("PBAP: Format has wrong length", v63, v64, v65, v66, v67, v68, v69, v120);
                v70 = sub_10000C050(0x1Du);
                if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                {
                  return 1741;
                }

                goto LABEL_132;
              }

              v21 = qword_100B5F278;
              if (*(qword_100B5F278 + 188) == 1)
              {
                if (v2 > v9)
                {
LABEL_49:
                  v22 = v2 > v3;
                  if (v2 <= v3)
                  {
                    v10 = 1;
                  }

                  goto LABEL_85;
                }

LABEL_84:
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
                v22 = 0;
                v10 = 1;
LABEL_85:
                v3 += v22;
                if (v10)
                {
                  goto LABEL_130;
                }
              }

              else
              {
                if (v2 <= v9)
                {
                  sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
                  v21 = qword_100B5F278;
LABEL_158:
                  *(v21 + 184) = 7;
LABEL_159:
                  if (!sub_10000C240())
                  {
                    return 1741;
                  }

                  sub_10000AF54("PBAP: client sent invalid Format: %d\n", v103, v104, v105, v106, v107, v108, v109, *(qword_100B5F278 + 184));
                  v110 = sub_10000C050(0x1Du);
                  if (!os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                  {
                    return 1741;
                  }

LABEL_132:
                  sub_10081416C();
                  return 1741;
                }

                if (v2 <= v3)
                {
                  goto LABEL_158;
                }

                v31 = *(v1 + v3);
                *(qword_100B5F278 + 184) = v31;
                if (v31 >= 2)
                {
                  goto LABEL_159;
                }

                ++v3;
                *(v21 + 188) = 1;
              }
            }

            else
            {
              if (v11 != 16)
              {
                goto LABEL_123;
              }

              if (v4 != 4)
              {
                if (!sub_10000C240())
                {
                  return 1741;
                }

                sub_10000AF54("PBAP: Supported Features has wrong length", v87, v88, v89, v90, v91, v92, v93, v120);
                v94 = sub_10000C050(0x1Du);
                if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                {
                  return 1741;
                }

                goto LABEL_132;
              }

              v16 = qword_100B5F278;
              if (*(qword_100B5F278 + 196) == 1)
              {
                if (v2 > v9)
                {
                  v13 = v7 < v3;
                  v14 = v3 + 4;
                  if (v7 >= v3)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_98;
                }

                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
                v14 = v3 + 4;
                goto LABEL_97;
              }

              if (v2 <= v9)
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
                v16 = qword_100B5F278;
LABEL_115:
                v34 = 1;
                goto LABEL_116;
              }

              if (v5 <= v3)
              {
                goto LABEL_115;
              }

              v34 = 0;
              *(qword_100B5F278 + 192) = bswap32(*(v1 + v3));
              v3 += 4;
LABEL_116:
              *(v16 + 196) = 1;
              if (v34)
              {
                goto LABEL_130;
              }
            }
          }

          else if (v11 == 5)
          {
            if (v4 != 2)
            {
              if (!sub_10000C240())
              {
                return 1741;
              }

              sub_10000AF54("PBAP: ListStartOffset value has wrong length", v47, v48, v49, v50, v51, v52, v53, v120);
              v54 = sub_10000C050(0x1Du);
              if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                return 1741;
              }

              goto LABEL_132;
            }

            v18 = qword_100B5F278;
            if (*(qword_100B5F278 + 168) == 1)
            {
              if (v2 > v9)
              {
LABEL_41:
                v13 = v123 < v3;
                v14 = v3 + 2;
                if (v123 >= v3)
                {
                  goto LABEL_99;
                }

                goto LABEL_98;
              }

              goto LABEL_83;
            }

            if (v2 <= v9)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
              v18 = qword_100B5F278;
LABEL_92:
              v30 = 1;
              goto LABEL_93;
            }

            if (v6 <= v3)
            {
              goto LABEL_92;
            }

            v30 = 0;
            *(qword_100B5F278 + 166) = bswap32(*(v1 + v3)) >> 16;
            v3 += 2;
LABEL_93:
            *(v18 + 168) = 1;
            if (v30)
            {
              goto LABEL_130;
            }
          }

          else
          {
            if (v4 != 8)
            {
              if (!sub_10000C240())
              {
                return 1741;
              }

              sub_10000AF54("PBAP: Filter value has wrong length", v71, v72, v73, v74, v75, v76, v77, v120);
              v78 = sub_10000C050(0x1Du);
              if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
              {
                return 1741;
              }

              goto LABEL_132;
            }

            v12 = qword_100B5F278;
            if (*(qword_100B5F278 + 180) == 1)
            {
              if (v2 > v9)
              {
                v13 = v122 < v3;
                v14 = v3 + 8;
                if (v122 >= v3)
                {
                  goto LABEL_99;
                }

                goto LABEL_98;
              }

              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
              v14 = v3 + 8;
              goto LABEL_97;
            }

            if (v2 <= v9)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
            }

            else if (v5 > v3)
            {
              *(qword_100B5F278 + 172) = bswap32(*(v1 + v3));
              if (v5 <= (v3 + 4))
              {
                v32 = 1;
                v3 += 4;
              }

              else
              {
                v32 = 0;
                *(v12 + 176) = bswap32(*(v1 + (v3 + 4)));
                v3 += 8;
              }

              goto LABEL_108;
            }

            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
            v12 = qword_100B5F278;
            v32 = 1;
LABEL_108:
            *(v12 + 180) = 1;
            if (v32)
            {
              goto LABEL_130;
            }
          }
        }

        if (v11 <= 2)
        {
          break;
        }

        if (v11 == 3)
        {
          v19 = qword_100B5F278;
          if (*(qword_100B5F278 + 148) == 1)
          {
            if (v2 > v9)
            {
LABEL_45:
              v20 = v2 - v3;
              goto LABEL_79;
            }

LABEL_78:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
            v20 = 0;
LABEL_79:
            if (v20 < v4)
            {
              goto LABEL_130;
            }

            v3 += v4;
            if (v10)
            {
              goto LABEL_130;
            }
          }

          else
          {
            if (v2 <= v9)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
              v24 = 0;
              v19 = qword_100B5F278;
LABEL_126:
              v23 = 1;
              goto LABEL_127;
            }

            if (v2 <= v3)
            {
              v24 = 0;
              goto LABEL_126;
            }

            v23 = 0;
            v24 = *(v1 + v3++);
LABEL_127:
            *(v19 + 144) = v24;
            *(v19 + 148) = 1;
            if (v23)
            {
              goto LABEL_130;
            }
          }
        }

        else
        {
          if (v4 != 2)
          {
            if (!sub_10000C240())
            {
              return 1741;
            }

            sub_10000AF54("PBAP: MaxListCount value has wrong length", v79, v80, v81, v82, v83, v84, v85, v120);
            v86 = sub_10000C050(0x1Du);
            if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              return 1741;
            }

            goto LABEL_132;
          }

          v15 = qword_100B5F278;
          if (*(qword_100B5F278 + 164) == 1)
          {
            if (v2 > v9)
            {
              goto LABEL_41;
            }

LABEL_83:
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
            v14 = v3 + 2;
LABEL_97:
            v13 = 1;
LABEL_98:
            v10 = 1;
LABEL_99:
            if (!v13)
            {
              v3 = v14;
            }

            if (v10)
            {
LABEL_130:
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
              if (sub_10000C240())
              {
                sub_10000AF54("PBAP: Application parameters are corrupted", v38, v39, v40, v41, v42, v43, v44, v120);
                v45 = sub_10000C050(0x1Du);
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_132;
                }
              }

              return 1741;
            }
          }

          else
          {
            if (v2 <= v9)
            {
              sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
              v15 = qword_100B5F278;
LABEL_111:
              v33 = 1;
              goto LABEL_112;
            }

            if (v6 <= v3)
            {
              goto LABEL_111;
            }

            v33 = 0;
            *(qword_100B5F278 + 162) = bswap32(*(v1 + v3)) >> 16;
            v3 += 2;
LABEL_112:
            *(v15 + 164) = 1;
            if (v33)
            {
              goto LABEL_130;
            }
          }
        }
      }

      if (v11 != 1)
      {
        break;
      }

      if (v4 != 1)
      {
        if (!sub_10000C240())
        {
          return 1741;
        }

        sub_10000AF54("PBAP: Order value has wrong length", v55, v56, v57, v58, v59, v60, v61, v120);
        v62 = sub_10000C050(0x1Du);
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          return 1741;
        }

        goto LABEL_132;
      }

      v17 = qword_100B5F278;
      if (*(qword_100B5F278 + 140) == 1)
      {
        if (v2 > v9)
        {
          goto LABEL_49;
        }

        goto LABEL_84;
      }

      if (v2 <= v9)
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
        v17 = qword_100B5F278;
LABEL_88:
        v29 = 1;
        *(v17 + 136) = 1;
        goto LABEL_89;
      }

      if (v2 <= v3)
      {
        goto LABEL_88;
      }

      v28 = *(v1 + v3);
      *(qword_100B5F278 + 136) = v28;
      if (v28 >= 3)
      {
        if (!sub_10000C240())
        {
          return 1741;
        }

        sub_10000AF54("PBAP: client sent invalid order value: %d\n", v111, v112, v113, v114, v115, v116, v117, *(qword_100B5F278 + 136));
        v118 = sub_10000C050(0x1Du);
        if (!os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          return 1741;
        }

        goto LABEL_132;
      }

      v29 = 0;
      ++v3;
LABEL_89:
      *(v17 + 140) = 1;
      if (v29)
      {
        goto LABEL_130;
      }
    }

    if (v11 == 2)
    {
      break;
    }

LABEL_123:
    if (v10)
    {
      goto LABEL_130;
    }
  }

  if (*(qword_100B5F278 + 161) == 1)
  {
    if (v2 > v9)
    {
      goto LABEL_45;
    }

    goto LABEL_78;
  }

  v121 = v5;
  *(qword_100B5F278 + 160) = v4;
  v25 = sub_100007618(v4, 0xCA2F805BuLL);
  *(qword_100B5F278 + 152) = v25;
  if (v25)
  {
    v26 = v25;
    if (v2 <= v9)
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/profiles/pbap/pbap_server.c");
      v27 = 0;
    }

    else
    {
      v27 = v2 - v3;
    }

    if (v27 >= v4)
    {
      if (v4)
      {
        v35 = (v1 + v3);
        v36 = &v26[v4];
        do
        {
          v37 = *v35++;
          *v26++ = v37;
        }

        while (v26 < v36);
      }

      v3 += v4;
    }

    else
    {
      v10 = 1;
    }

    *(qword_100B5F278 + 161) = 1;
    v5 = v121;
    goto LABEL_123;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Failed to allocate memory for SearchValue", v95, v96, v97, v98, v99, v100, v101, v120);
    v102 = sub_10000C050(0x1Du);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      sub_100813FF0();
    }
  }

  return 106;
}

uint64_t sub_10022D3F0(int *a1, unsigned int *a2)
{
  v4 = qword_100B5F278;
  if (*(qword_100B5F278 + 73) == 1)
  {
    if (!*(qword_100B5F278 + 112))
    {
      result = 0;
      *a1 = *(qword_100B5F278 + 64);
      *a2 = *(v4 + 68);
      return result;
    }

    return 1724;
  }

  result = sub_10022D5A0((qword_100B5F278 + 80), *(qword_100B5F278 + 112), a1);
  v6 = *(qword_100B5F278 + 112);
  if (v6 == 3 && !*a1)
  {
    return 1724;
  }

  if (!result)
  {
    result = sub_10022D644(*(qword_100B5F278 + 8 * v6 + 72), a2);
    if (!result)
    {
      if (sub_100306FE4(*(qword_100B5F278 + 8 * *(qword_100B5F278 + 112) + 72)) == word_1008A3E6E[*a2] - 1)
      {
        return 0;
      }

      else
      {
        return 1724;
      }
    }
  }

  return result;
}

uint64_t sub_10022D4CC(int *a1, _DWORD *a2)
{
  v3 = *(qword_100B5F278 + 112);
  if (*(qword_100B5F278 + 73) == 1 && v3 < 2)
  {
    return 1724;
  }

  result = sub_10022D5A0((qword_100B5F278 + 80), v3, a1);
  v7 = *(qword_100B5F278 + 112);
  if (v7 == 3 && !*a1)
  {
    return 1724;
  }

  if (!result)
  {
    result = sub_10022D644(*(qword_100B5F278 + 8 * v7 + 72), a2);
    if (!result)
    {
      v8 = sub_100306FE4(*(qword_100B5F278 + 8 * *(qword_100B5F278 + 112) + 72));
      v9 = word_1008A3E6E[*a2];
      if (v8 == v9 + sub_100306FE4(".") - 1)
      {
        return 0;
      }

      else
      {
        return 1724;
      }
    }
  }

  return result;
}

uint64_t sub_10022D5A0(unsigned __int16 **a1, unsigned int a2, int *a3)
{
  v4 = qword_100B5F278;
  if (*(qword_100B5F278 + 72))
  {
    goto LABEL_2;
  }

  if (a2 >= 2)
  {
    if (!sub_10030701C(*a1, L"SIM1") && !sub_10030701C(a1[1], "t"))
    {
      v5 = 1;
      goto LABEL_3;
    }

    if (!sub_10030701C(*a1, "t"))
    {
      v4 = qword_100B5F278;
LABEL_2:
      v5 = *(v4 + 64);
LABEL_3:
      result = 0;
      *a3 = v5;
      return result;
    }
  }

  return 1724;
}

uint64_t sub_10022D644(unsigned __int16 *a1, _DWORD *a2)
{
  v4 = 0;
  while (1)
  {
    result = sub_1003070A0(a1, (&off_100B52148)[v4], (word_1008A3E6E[v4] - 1));
    if (!result)
    {
      break;
    }

    if (++v4 == 6)
    {
      return 1724;
    }
  }

  *a2 = v4;
  return result;
}

void sub_10022D6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49[0] = a2;
  v49[1] = a3;
  v48[0] = a4;
  v48[1] = a5;
  v47[0] = a6;
  v47[1] = a7;
  memset(v50, 0, sizeof(v50));
  v45 = v50;
  v46 = 0;
  v8 = qword_100B5F278;
  v9 = *qword_100B5F278;
  if (*qword_100B5F278 > 5u || ((1 << *qword_100B5F278) & 0x34) == 0)
  {
    return;
  }

  v12 = a8;
  if (a8)
  {
    goto LABEL_6;
  }

  if (!a1)
  {
    sub_1000D660C();
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid handle", v26, v27, v28, v29, v30, v31, v32, v43);
      v33 = sub_10000C050(0x1Du);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1008141E8();
      }
    }

    v12 = 101;
LABEL_6:
    v13 = qword_100B5F278;
    *qword_100B5F278 = 1;
    if (sub_1001C25BC(*(v13 + 26), 0, v12))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to inform the client of the open failure (%!)", v14, v15, v16, v17, v18, v19, v20, a8);
        v21 = sub_10000C050(0x1Du);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_100812934();
        }
      }
    }

    v22 = qword_100B5F278;
    if (*(qword_100B5F278 + 161) == 1)
    {
      *(qword_100B5F278 + 161) = 0;
      v23 = *(v22 + 152);
      if (v23)
      {
        sub_10000C1E8(v23);
        *(qword_100B5F278 + 152) = 0;
      }
    }

    return;
  }

  *(qword_100B5F278 + 8) = a1;
  v24 = *(v8 + 128);
  if (v24)
  {
    LOBYTE(v50[0]) = -105;
    v25 = 1;
    BYTE8(v50[0]) = 1;
    LOBYTE(v46) = 1;
    *(v8 + 128) = v24 & 0xFA | 4;
    v9 = *v8;
  }

  else
  {
    v25 = 0;
  }

  qword_100B5F320 = &word_100B5F330;
  unk_100B5F328 = 0x2000000390039;
  if (v9 == 4 || v9 == 2)
  {
    if (*(v8 + 120) == 1)
    {
      word_100B5F330 = 265;
      v35 = *(v8 + 121);
      v36 = 3;
      word_100B5F32C = 3;
      byte_100B5F332 = v35;
    }

    else
    {
      v36 = 0;
    }

    if ((*(v8 + 192) & 8) != 0)
    {
      sub_10022C4B8(&qword_100B5F320, 10, v49);
      v8 = qword_100B5F278;
      v37 = *(qword_100B5F278 + 68);
      if (v37 != 5 && v37)
      {
        v36 += 18;
      }

      else
      {
        sub_10022C4B8(&qword_100B5F320, 11, v48);
        v36 |= 0x24u;
        v8 = qword_100B5F278;
      }
    }

    if ((*(v8 + 192) & 4) == 0)
    {
      if (!v36)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

LABEL_39:
    v38 = *(v8 + 68);
    v39 = v47;
    if (v38 && v38 != 5)
    {
      v39 = &unk_100BC9C58;
    }

    sub_10022C4B8(&qword_100B5F320, 13, v39);
    LOWORD(v36) = v36 + 18;
LABEL_43:
    v40 = v50 + 24 * v25;
    *v40 = 76;
    *(v40 + 4) = v36;
    *(v40 + 2) = qword_100B5F320;
    LOBYTE(v46) = v25 + 1;
    goto LABEL_44;
  }

  if ((*(v8 + 192) & 4) != 0)
  {
    LOWORD(v36) = 0;
    goto LABEL_39;
  }

LABEL_44:
  if (byte_100B5F32E == 2)
  {
    word_100B5F32A = word_100B5F32C;
  }

  byte_100B5F32E = 15;
  v41 = sub_1001C25BC(*(qword_100B5F278 + 26), &v45, 1701);
  v42 = qword_100B5F278;
  if (v41)
  {
    sub_10022B448(*(qword_100B5F278 + 8), *(qword_100B5F278 + 26), v41);
    v42 = qword_100B5F278;
    *(qword_100B5F278 + 8) = 0;
    *v42 = 1;
  }

  if (*(v42 + 128) == 4)
  {
    v44[0] = 0;
    v44[1] = 0;
    sub_10022AA8C(*(v42 + 26), v44, 1701);
  }
}

void sub_10022DA3C(uint64_t a1)
{
  if (qword_100B5F278)
  {
    (*(*(qword_100B5F278 + 16) + 24))(**(a1 + 8), *(*(a1 + 8) + 12), *(*(a1 + 8) + 8));
    if (*(qword_100B5F278 + 161) == 1)
    {
      v1 = *(qword_100B5F278 + 152);
      if (v1)
      {
        sub_10000C1E8(v1);
        *(qword_100B5F278 + 152) = 0;
      }
    }
  }
}

uint64_t sub_10022DB08()
{
  v0 = (*(off_100B522D0 + 3))(*(off_100B522D0 + 2));
  if (v0)
  {
    sub_100304AF8("Failed to initialize driver %s\n", *(off_100B522D0 + 1));
  }

  return v0;
}

uint64_t sub_10022DB60()
{
  v0 = (*(off_100B522D0 + 4))();
  if (v0)
  {
    sub_100304AF8("Failed to initialize driver %s\n", *(off_100B522D0 + 1));
  }

  return v0;
}

uint64_t sub_10022DBFC()
{
  v0 = (*(off_100B522D0 + 5))(*(off_100B522D0 + 2));
  if (v0)
  {
    sub_100304AF8("Failed to initialize driver %s\n", *(off_100B522D0 + 1));
  }

  return v0;
}

uint64_t sub_10022DC58()
{
  result = sub_1002972C0(&off_100B522D0, &off_100B522D8);
  if (result)
  {
    sub_100304AF8("FATAL ERROR - no hci driver was found\n");
    return 102;
  }

  return result;
}

uint64_t sub_10022DC98()
{
  if (sub_1002972C0(&off_100B522D0, &off_100B522D8))
  {
    sub_100304AF8("FATAL ERROR - no hci driver was found\n");
    return 102;
  }

  else
  {
    v2 = off_100B522D8;
    if (!*off_100B522D8)
    {
      sub_10022DB08();
      v2 = off_100B522D8;
    }

    v3 = (*(v2 + 2))();
    v0 = v3;
    if (v3 && v3 != 109)
    {
      sub_100304AF8("Failed to initialize transport %s\n", *(off_100B522D8 + 1));
    }
  }

  return v0;
}

uint64_t sub_10022DD58()
{
  if (*off_100B522D8)
  {
    v0 = *off_100B522D8 == 11;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    return (*(off_100B522D8 + 12))();
  }

  return result;
}

uint64_t sub_10022DD7C()
{
  if (sub_1002972C0(&off_100B522D0, &off_100B522D8))
  {
    sub_100304AF8("FATAL ERROR - no hci driver was found\n");
    return 102;
  }

  v1 = *(off_100B522D8 + 13);
  if (!v1)
  {
    sub_100304AF8("FATAL ERROR - can't find sniffLogONly function\n");
    return 102;
  }

  v1();
  v2 = *(off_100B522D8 + 2);

  return v2();
}

uint64_t (*sub_10022DE08())(void)
{
  result = *(off_100B522D8 + 14);
  if (result)
  {
    return result();
  }

  return result;
}

uint64_t sub_10022DE20()
{
  v0 = *(off_100B522D8 + 18);
  if (v0)
  {
    return v0();
  }

  else
  {
    return 0;
  }
}

uint64_t (*sub_10022DE3C())(void)
{
  result = *(off_100B522D8 + 19);
  if (result)
  {
    return result();
  }

  return result;
}

uint64_t (__cdecl *sub_10022DE74())()
{
  result = *(off_100B522D8 + 10);
  if (result)
  {
    return result();
  }

  return result;
}

uint64_t (*sub_10022DE8C())(void)
{
  result = *(off_100B522D8 + 15);
  if (result)
  {
    return result();
  }

  return result;
}

uint64_t sub_10022DEA4()
{
  v0 = *(off_100B522D8 + 16);
  if (v0)
  {
    return v0();
  }

  else
  {
    return 0;
  }
}

uint64_t (*sub_10022DEC0())(void)
{
  result = *(off_100B522D8 + 17);
  if (result)
  {
    return result();
  }

  return result;
}

void **sub_10022DED8(void **result, uint64_t a2)
{
  off_100B5F370 = *result;
  qword_100B5F378 = a2;
  return result;
}

uint64_t sub_10022DEF0(void *a1)
{
  if (!a1)
  {
    sub_1000D660C();
    return 101;
  }

  v2 = off_100B5F370;
  if (!off_100B5F370)
  {
    v7 = 0;
    v6 = 0;
    v5 = sub_100243324(&v6);
    if (v5)
    {
      v4 = v5;
      sub_100304AF8("OI_DEVMGR_GetCachedLocalBdAddr failed %!\n", v5);
    }

    else
    {
      sub_100304AF8("Local device address is: %:\n", &v6);
      off_100B5F380 = a1;
      return sub_10030423C(off_100AE7DA8);
    }

    return v4;
  }

  return v2();
}

uint64_t sub_10022DFC8(uint64_t a1)
{
  v2 = off_100B5F380;
  if (!off_100B5F380)
  {
    sub_1000D660C();
    v2 = off_100B5F380;
  }

  return v2(a1);
}

void sub_10022E010()
{
  if (byte_100B52303 >= 2u && sub_100243344() <= 3)
  {
    byte_100B52303 = 1;
  }

  v0 = sub_100243354(sub_10022E2F0, &unk_100B522F0);
  if (v0)
  {
    v1 = v0;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_DEVMGR_WriteStaticSettings", v2, v3, v4, v5, v6, v7, v8, v10);
      v9 = sub_10000C050(0x4Eu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    sub_1003044D0(off_100AE7DA8, v1);
  }
}

void sub_10022E0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_10024DE00(sub_10022E3B8, a2, a3, a4, a5, a6, a7, a8, v18);
  if (v8)
  {
    v9 = v8;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCI_ReadLocalName", v10, v11, v12, v13, v14, v15, v16, v19);
      v17 = sub_10000C050(0x4Eu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    sub_1003044D0(off_100AE7DA8, v9);
  }
}