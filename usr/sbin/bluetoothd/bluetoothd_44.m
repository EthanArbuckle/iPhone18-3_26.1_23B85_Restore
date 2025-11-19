uint64_t sub_1002DD500(__int128 *a1, char a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7)
{
  v37[0] = 21;
  v37[1] = a2;
  v38 = 10;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a7;
  if (sub_1000ABD24(a1))
  {
    v8 = sub_1003053B4(v37, 0xEuLL, 0);
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000B7EDC(0, 5, a1, v8, 0);
      if (v10)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", v11, v12, v13, v14, v15, v16, v17, a1);
          v18 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v9);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.", v27, v28, v29, v30, v31, v32, v33, v36);
        v34 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
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
      sub_10000AF54("This command is only available to LE devices.", v19, v20, v21, v22, v23, v24, v25, v36);
      v26 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4122;
  }

  return v10;
}

uint64_t sub_1002DD6CC(__int128 *a1, char a2, unsigned int a3, uint64_t a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8)
{
  v50 = 0;
  v49 = 0;
  if (a3 > 5)
  {
    return 101;
  }

  if (sub_1000ABD24(a1))
  {
    v44[0] = 24;
    v44[1] = a2;
    v45 = a5;
    v46 = a6;
    v47 = a7;
    v48 = a8;
    v44[2] = 2 * a3 + 8;
    v44[3] = 0;
    __memmove_chk();
    v16 = sub_1003053B4(v44, 2 * a3 + 12, 0);
    if (v16)
    {
      v17 = v16;
      v8 = sub_1000B7EDC(0, 5, a1, v16, 0);
      if (v8)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", v18, v19, v20, v21, v22, v23, v24, a1);
          v25 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v17);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.", v34, v35, v36, v37, v38, v39, v40, v43);
        v41 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
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
      sub_10000AF54("This command is only available to LE devices.", v26, v27, v28, v29, v30, v31, v32, v43);
      v33 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4122;
  }

  return v8;
}

uint64_t sub_1002DD8F8(__int128 *a1, char a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7)
{
  v37[0] = 20;
  v37[1] = a2;
  v38 = 10;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a7;
  if (sub_1000ABD24(a1))
  {
    v8 = sub_1003053B4(v37, 0xEuLL, 0);
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000B7EDC(0, 5, a1, v8, 0);
      if (v10)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", v11, v12, v13, v14, v15, v16, v17, a1);
          v18 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v9);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.", v27, v28, v29, v30, v31, v32, v33, v36);
        v34 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
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
      sub_10000AF54("This command is only available to LE devices.", v19, v20, v21, v22, v23, v24, v25, v36);
      v26 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4123;
  }

  return v10;
}

uint64_t sub_1002DDAC4(__int128 *a1, char a2, __int16 a3, unsigned int a4, uint64_t a5, __int16 a6, __int16 a7, __int16 a8)
{
  v50 = 0;
  v49 = 0;
  if (a4 > 5)
  {
    return 101;
  }

  if (sub_1000ABD24(a1))
  {
    v44[0] = 23;
    v44[1] = a2;
    v45 = a3;
    v46 = a6;
    v47 = a7;
    v48 = a8;
    v44[2] = 2 * a4 + 8;
    v44[3] = 0;
    __memmove_chk();
    v16 = sub_1003053B4(v44, 2 * a4 + 12, 0);
    if (v16)
    {
      v17 = v16;
      v8 = sub_1000B7EDC(0, 5, a1, v16, 0);
      if (v8)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", v18, v19, v20, v21, v22, v23, v24, a1);
          v25 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v17);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.", v34, v35, v36, v37, v38, v39, v40, v43);
        v41 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
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
      sub_10000AF54("This command is only available to LE devices.", v26, v27, v28, v29, v30, v31, v32, v43);
      v33 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4123;
  }

  return v8;
}

uint64_t sub_1002DDCF0(__int128 *a1, char a2, __int16 a3)
{
  if (sub_1000ABD24(a1))
  {
    v35[0] = 26;
    v35[1] = a2;
    v36 = 2;
    v37 = a3;
    v6 = sub_1003053B4(v35, 6uLL, 0);
    if (v6)
    {
      v7 = v6;
      v8 = sub_1000B7EDC(0, 5, a1, v6, 0);
      if (v8)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", v9, v10, v11, v12, v13, v14, v15, a1);
          v16 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v7);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.", v25, v26, v27, v28, v29, v30, v31, v34);
        v32 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
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
      sub_10000AF54("This command is only available to LE devices.", v17, v18, v19, v20, v21, v22, v23, v34);
      v24 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4123;
  }

  return v8;
}

uint64_t sub_1002DDE68(__int128 *a1, char a2, __int16 a3, __int16 a4)
{
  v34 = 262166;
  BYTE1(v34) = a2;
  v35 = a3;
  v36 = a4;
  if (sub_1000ABD24(a1))
  {
    v5 = sub_1003053B4(&v34, 8uLL, 0);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1000B7EDC(0, 5, a1, v5, 0);
      if (v7)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", v8, v9, v10, v11, v12, v13, v14, a1);
          v15 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v6);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.", v24, v25, v26, v27, v28, v29, v30, v33);
        v31 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
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
      sub_10000AF54("This command is only available to LE devices.", v16, v17, v18, v19, v20, v21, v22, v33);
      v23 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4124;
  }

  return v7;
}

uint64_t sub_1002DE00C(__int128 *a1, int a2, unsigned int a3, __int16 a4, unsigned int a5, char a6)
{
  v40[0] = 1;
  v40[1] = a6;
  v40[3] = 0;
  v41 = a2;
  v42 = 0;
  if (a2 == 1)
  {
    v9 = &v42;
    v8 = &v42 + 1;
    v10 = a3 >> 8;
    v7 = 2;
  }

  else
  {
    v7 = 0;
    if (a2 != 2)
    {
      goto LABEL_6;
    }

    v8 = &v42 + 3;
    v9 = (&v42 + 2);
    LOWORD(v42) = a4;
    v10 = a5 >> 8;
    v7 = 4;
    LOBYTE(a3) = a5;
  }

  *v9 = a3;
  *v8 = v10;
LABEL_6:
  v40[2] = v7 + 2;
  if (sub_1000ABD24(a1))
  {
    v11 = sub_1003053B4(v40, (v7 + 6), 0);
    if (v11)
    {
      v12 = v11;
      v13 = sub_1000B7EDC(0, 5, a1, v11, 0);
      if (v13)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", v14, v15, v16, v17, v18, v19, v20, a1);
          v21 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v12);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.", v30, v31, v32, v33, v34, v35, v36, v39);
        v37 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
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
      sub_10000AF54("This command is only available to LE devices.", v22, v23, v24, v25, v26, v27, v28, v39);
      v29 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4125;
  }

  return v13;
}

uint64_t sub_1002DE204(__int128 *a1, char a2, __int16 a3, __int16 a4)
{
  v34 = 262150;
  BYTE1(v34) = a2;
  v35 = a4;
  v36 = a3;
  if (sub_1000ABD24(a1))
  {
    v5 = sub_1003053B4(&v34, 8uLL, 0);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1000B7EDC(0, 5, a1, v5, 0);
      if (v7)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", v8, v9, v10, v11, v12, v13, v14, a1);
          v15 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v6);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.", v24, v25, v26, v27, v28, v29, v30, v33);
        v31 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
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
      sub_10000AF54("This command is only available to LE devices.", v16, v17, v18, v19, v20, v21, v22, v33);
      v23 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4126;
  }

  return v7;
}

uint64_t sub_1002DE3A8(__int128 *a1, char a2, __int16 a3, __int16 a4)
{
  v34 = 262151;
  BYTE1(v34) = a2;
  v35 = a3;
  v36 = a4;
  if (sub_1000ABD24(a1))
  {
    v5 = sub_1003053B4(&v34, 8uLL, 0);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1000B7EDC(0, 5, a1, v5, 0);
      if (v7)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write the to LE signal channel for handle 0x%x", v8, v9, v10, v11, v12, v13, v14, a1);
          v15 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }
      }

      sub_1000BB9CC(v6);
    }

    else
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Unable to allocate buffer for LE Signal transmit.", v24, v25, v26, v27, v28, v29, v30, v33);
        v31 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
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
      sub_10000AF54("This command is only available to LE devices.", v16, v17, v18, v19, v20, v21, v22, v33);
      v23 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4127;
  }

  return v7;
}

uint64_t sub_1002DE54C(uint64_t (*a1)(void, void, void, void, void, void, void, void))
{
  qword_100B6B400 = 0;
  off_100B6B408 = a1;
  v1 = sub_10028E64C(5, 2, 6, 3u, &qword_100B6B400, sub_1002DE628);
  if (v1 || !qword_100B6B400)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not register the LE signal channel : %!", v2, v3, v4, v5, v6, v7, v8, v1);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    *sub_1000CD958(qword_100B6B400) = 23;
    *(sub_1000CD958(qword_100B6B400) + 2) = -1;
  }

  return v1;
}

void sub_1002DE628(__int128 *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  if (sub_1000ABD24(a1))
  {
    if (a2)
    {
      if (a3 > 3)
      {
        v32 = *(a2 + 1);
        if (a3 - 4 == v32)
        {
          v33 = a2[1];
          v34 = *a2;
          if (*a2 > 0x14u)
          {
            if (*a2 > 0x17u)
            {
              switch(v34)
              {
                case 0x18:
                  v51 = a2[1];

                  sub_1002DF2AC(a1, v51, a2 + 2, v32);
                  return;
                case 0x19:
                  v54 = a2[1];

                  sub_1002DF398(a1, v54, a2 + 2, v32);
                  return;
                case 0x1A:
                  v46 = a2[1];

                  sub_1002DF448(a1, v46, a2 + 2, v32);
                  return;
              }
            }

            else
            {
              switch(v34)
              {
                case 0x15:
                  v49 = a2[1];

                  sub_1002DF118(a1, v49, (a2 + 4), v32);
                  return;
                case 0x16:
                  v53 = *(a2 + 1);

                  sub_1002DF4D8(a1, a2 + 2, v53);
                  return;
                case 0x17:
                  v44 = a2[1];

                  sub_1002DF1B8(a1, v44, a2 + 2, v32, a4);
                  return;
              }
            }
          }

          else if (*a2 > 0x11u)
          {
            switch(v34)
            {
              case 0x12:
                v50 = a2[1];

                sub_1002DEB3C(a1, v50, a2 + 2, v32, a4);
                return;
              case 0x13:
                return;
              case 0x14:
                v45 = a2[1];

                sub_1002DF074(a1, v45, a2 + 2, v32, a4);
                return;
            }
          }

          else
          {
            switch(v34)
            {
              case 1:
                v47 = *(a2 + 2);
                v48 = a2[1];

                sub_100295800(a1, v47, v48);
                return;
              case 6:
                v52 = a2[1];

                sub_1002DF5C0(a1, v52, a2 + 2, v32);
                return;
              case 7:
                v35 = a2[1];

                sub_1002DF660(a1, v35, a2 + 2, v32);
                return;
            }
          }

          if (sub_10000C240())
          {
            sub_10000AF54("LE Signaling channel error : invalid opcode %d", v55, v56, v57, v58, v59, v60, v61, v34);
            v62 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }

          sub_1002DCBE8(a1, v33, 0);
          return;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("LE Signaling channel error : corrupted packet size", v36, v37, v38, v39, v40, v41, v42, v63);
          v43 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }
        }
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("LE Signaling channel error : invalid packet size", v8, v9, v10, v11, v12, v13, v14, v63);
        v15 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
LABEL_24:
          sub_10080F7A0();
        }
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("LE Signaling channel error : invalid data on", v24, v25, v26, v27, v28, v29, v30, v63);
      v31 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("LE Signaling channel error : not a LE handle.", v16, v17, v18, v19, v20, v21, v22, v63);
    v23 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_1002DEAB0()
{
  v0 = sub_10028E908(qword_100B6B400);
  if (v0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not de-register the LE signal channel : %!", v1, v2, v3, v4, v5, v6, v7, v0);
      v8 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  qword_100B6B400 = 0;
  return v0;
}

void sub_1002DEB3C(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (*(a1 + 70) == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command should only be received if we are central.", v7, v8, v9, v10, v11, v12, v13, v118);
      v14 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1002DCBE8(a1, v5, 0);
    return;
  }

  if (a4 == 8)
  {
    v16 = *a3;
    v17 = a3[1];
    v18 = a3[2];
    v19 = a3[3];
    if (off_100B6B408)
    {
      v20 = off_100B6B408(a1, a2, *a3, v17, v18, v19, 0, a5);
      if (!v20)
      {
        return;
      }

      if (v20 != 121)
      {
        goto LABEL_57;
      }
    }

    if ((v16 - 3201) > 0xF384u)
    {
      if ((v17 - 3201) > 0xF384u)
      {
        if (v16 <= v17)
        {
          if (v18 < 0x1F5)
          {
            if ((v19 - 3201) > 0xF388u)
            {
              v69 = v17 * 1.25;
              if (v69 * (v18 + 1) <= 2000.0)
              {
                if (v16 * 1.25 >= 10.0)
                {
                  if ((v17 - v16) * 1.25 >= 10.0)
                  {
                    if (v18 < 5)
                    {
                      if (v19 < 0x259)
                      {
                        if (v69 * (3 * (v18 + 1)) <= (10 * v19))
                        {
                          sub_1002DCD54(a1, v5, 0, v16, v17, v18, v19, 0, 0);
                          return;
                        }

                        if (!sub_10000C240())
                        {
                          goto LABEL_57;
                        }

                        sub_10000AF54("Remote sides asks for a timeout(%dms) / latency(%d) / maxInterval(%dms) that would cause link timeouts under bad conditions. - refusing.", v110, v111, v112, v113, v114, v115, v116, (10 * v19));
                        v117 = sub_10000C050(0x42u);
                        if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_57;
                        }
                      }

                      else
                      {
                        if (!sub_10000C240())
                        {
                          goto LABEL_57;
                        }

                        sub_10000AF54("Remote sides asks for a timeout of more than 6 seconds, this is not very user friendly - refusing.", v102, v103, v104, v105, v106, v107, v108, v118);
                        v109 = sub_10000C050(0x42u);
                        if (!os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_57;
                        }
                      }
                    }

                    else
                    {
                      if (!sub_10000C240())
                      {
                        goto LABEL_57;
                      }

                      sub_10000AF54("Remote side wants a peripheral latency more than 4 so we drain our battery and they don't - refusing.", v94, v95, v96, v97, v98, v99, v100, v118);
                      v101 = sub_10000C050(0x42u);
                      if (!os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_57;
                      }
                    }
                  }

                  else
                  {
                    if (!sub_10000C240())
                    {
                      goto LABEL_57;
                    }

                    sub_10000AF54("Intervals should be %d ms apart - refusing.", v86, v87, v88, v89, v90, v91, v92, 10);
                    v93 = sub_10000C050(0x42u);
                    if (!os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_57;
                    }
                  }
                }

                else
                {
                  if (!sub_10000C240())
                  {
                    goto LABEL_57;
                  }

                  sub_10000AF54("Remote side wants a min interval smaller than 20 ms. Let's refuse and not drain the battery...", v78, v79, v80, v81, v82, v83, v84, v118);
                  v85 = sub_10000C050(0x42u);
                  if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_57;
                  }
                }
              }

              else
              {
                if (!sub_10000C240())
                {
                  goto LABEL_57;
                }

                sub_10000AF54("Remote side wants an interval / latency combination that would provide a poor user experience (more than 2seconds syncups.)", v70, v71, v72, v73, v74, v75, v76, v118);
                v77 = sub_10000C050(0x42u);
                if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_57;
                }
              }
            }

            else
            {
              if (!sub_10000C240())
              {
                goto LABEL_57;
              }

              sub_10000AF54("Invalid timeout multiplier %d.", v61, v62, v63, v64, v65, v66, v67, v19);
              v68 = sub_10000C050(0x42u);
              if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_57;
              }
            }
          }

          else
          {
            if (!sub_10000C240())
            {
              goto LABEL_57;
            }

            sub_10000AF54("Invalid peripheral latency %d.", v53, v54, v55, v56, v57, v58, v59, v18);
            v60 = sub_10000C050(0x42u);
            if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_57;
            }
          }
        }

        else
        {
          if (!sub_10000C240())
          {
            goto LABEL_57;
          }

          sub_10000AF54("Maximum interval is smaller than minimum interval : %d > %d.", v45, v46, v47, v48, v49, v50, v51, v16);
          v52 = sub_10000C050(0x42u);
          if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (!sub_10000C240())
        {
          goto LABEL_57;
        }

        sub_10000AF54("Invalid maximum interval %d.", v37, v38, v39, v40, v41, v42, v43, v17);
        v44 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        goto LABEL_57;
      }

      sub_10000AF54("Invalid minimum interval %d.", v21, v22, v23, v24, v25, v26, v27, v16);
      v28 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_57;
      }
    }

    sub_10080F7A0();
LABEL_57:
    sub_1002DCD54(a1, v5, 1, 0, 0, 0, 0, 0, 0);
    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Invalid size in parameter update request : %d", v29, v30, v31, v32, v33, v34, v35, a4);
    v36 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002DF074(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5)
{
  if (a4 == 10)
  {
    v8 = *a3;
    v9 = a3[2];
    v10 = a3[3];
    v11 = a3[4];
    v12 = a3[1];

    sub_100293FE0(a1, v8, v12, v9, v10, v11, a2, a5);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid size in LE Connection Oriented L2CAP Channel connection request : %d", v14, v15, v16, v17, v18, v19, v20, a4);
    v21 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002DF118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 10)
  {
    v6 = *a3;
    v7 = *(a3 + 4);
    v8 = *(a3 + 6);
    v9 = *(a3 + 8);
    v10 = *(a3 + 2);

    sub_1002949D4(a1, v6, v10, v7, v8, v9, a2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid size in LE Connection Oriented L2CAP Channel connection response : %d", v12, v13, v14, v15, v16, v17, v18, a4);
    v19 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1002DF1B8(__int128 *a1, uint64_t a2, _WORD *a3, int a4, unsigned __int8 a5)
{
  v6 = ((a4 + 504) >> 1);
  if (v6 <= 5)
  {
    v8 = *a3;
    v9 = a3[1];
    v10 = a3[2];
    v11 = a3[3];
    v16 = 0;
    v15 = 0;
    if (((a4 + 504) >> 1))
    {
      v12 = a3 + 9;
      v13 = &v15;
      v14 = ((a4 + 504) >> 1);
      do
      {
        *v13 = *(v12 - 1);
        v13 = (v13 + 2);
        v12 += 2;
        --v14;
      }

      while (v14);
    }

    return sub_100294430(a1, v8, v6, &v15, v9, v10, v11, a2, a5);
  }

  else
  {

    return sub_1002DCBE8(a1, a2, 11);
  }
}

void sub_1002DF2AC(__int128 *a1, uint64_t a2, _WORD *a3, int a4)
{
  v5 = ((a4 + 504) >> 1);
  if (v5 <= 5)
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    v14 = 0;
    v13 = 0;
    if (((a4 + 504) >> 1))
    {
      v10 = a3 + 9;
      v11 = &v13;
      v12 = ((a4 + 504) >> 1);
      do
      {
        *v11 = *(v10 - 1);
        v11 = (v11 + 2);
        v10 += 2;
        --v12;
      }

      while (v12);
    }

    sub_100294ED4(a1, v5, &v13, v6, v7, v8, v9, a2);
  }

  else
  {

    sub_1002DCBE8(a1, a2, 11);
  }
}

uint64_t sub_1002DF398(__int128 *a1, char a2, unsigned __int16 *a3, int a4)
{
  v11 = 0;
  v10 = 0;
  v6 = *a3;
  v7 = a3[1];
  v8 = a4 + 508;
  __memmove_chk();
  return sub_100295548(a1, (v8 >> 1), &v10, v6, v7, a2);
}

void sub_1002DF448(uint64_t a1, int a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a4 == 2)
  {
    v6 = *a3;

    sub_1002956B0(a1, v6, a2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid size in ENHANCED LE Connection Oriented L2CAP Channel Reconfig Response : %d", v8, v9, v10, v11, v12, v13, v14, a4);
    v15 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002DF4D8(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v23 = 0;
  if (a3 == 4)
  {
    v3 = *(a2 + 2);
    v4 = *(a2 + 3);
    sub_10028D9A0(*a2, a1, &v23);
    if (v23)
    {
      sub_10028A344(v23, v3 | (v4 << 8));
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Credits for an invalid channel CID", v14, v15, v16, v17, v18, v19, v20, v22);
      v21 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid size in LEConnection Oriented L2CAP Channel connection Flow Credit : %d", v6, v7, v8, v9, v10, v11, v12, a3);
    v13 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002DF5C0(__int128 *a1, char a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a4 == 4)
  {
    v6 = *a3;
    v7 = a3[1];

    sub_100293B60(a1, v6, v7, a2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid size in Disconnect request : %d", v8, v9, v10, v11, v12, v13, v14, a4);
    v15 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_1002DF660(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a4 == 4)
  {
    v5 = a3[1];
    v6 = *a3;

    sub_100293EB0(a1, v5, v6);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Invalid size in Disconnect response : %d", v7, v8, v9, v10, v11, v12, v13, a4);
    v14 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_1002DF704(_DWORD *a1)
{
  v1 = sub_1000E5EA8(a1);
  if (!v1)
  {
    return 122;
  }

  v2 = v1;
  if (!sub_1000ABD24(v1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This command is only available to LE devices.", v7, v8, v9, v10, v11, v12, v13, v23);
      v14 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 122;
  }

  v3 = sub_10029BE74(v2);
  if (v3)
  {
    v4 = *(v3 + 52);
    if (v4 >= 6)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0x20C01010108uLL >> (8 * v4);
    }

    return sub_1002DF818(v2, v5 & 0xF, v3);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This device is not in a pairing state.", v15, v16, v17, v18, v19, v20, v21, v23);
      v22 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4806;
  }
}

uint64_t sub_1002DF818(__int128 *a1, int a2, char *a3)
{
  v4 = a2;
  v9 = 5;
  if (a2 == 240)
  {
    v5 = 8;
  }

  else
  {
    v5 = a2;
  }

  HIBYTE(v9) = v5;
  v6 = sub_10029BEC0(a1, &v9, 2uLL, 0);
  if (a3)
  {
    v7 = sub_10029C388(v4);
    sub_10029BA98(a3, v7, 1);
  }

  return v6;
}

uint64_t sub_1002DF898(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (sub_1000ABD24(result))
    {
      result = sub_10029BE74(v1);
      if (result)
      {
        return *(result + 8) != 0;
      }
    }

    else
    {
      result = sub_10000C240();
      if (result)
      {
        sub_10000AF54("This command is only available to LE devices.", v2, v3, v4, v5, v6, v7, v8, v10);
        v9 = sub_10000C050(0x43u);
        result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
        if (result)
        {
          sub_1000E09C0();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002DF928(_DWORD *a1)
{
  v1 = sub_1000E5EA8(a1);

  return sub_1002DF898(v1);
}

uint64_t sub_1002DF950(_DWORD *a1, unsigned int a2)
{
  HIDWORD(v3) = 0;
  *(&v3 + 4) = 0;
  if (a2 > 0xF423F)
  {
    return 101;
  }

  LOWORD(v3) = a2;
  WORD1(v3) = BYTE2(a2);
  return sub_1002DF9D8(a1, &v3);
}

uint64_t sub_1002DF9D8(_DWORD *a1, _OWORD *a2)
{
  v3 = sub_1000E5EA8(a1);
  if (!v3)
  {
    return 122;
  }

  v4 = v3;
  v5 = sub_10029BE74(v3);
  if (!v5)
  {
    return 4806;
  }

  v6 = v5;
  *(v5 + 490) = 1;
  v7 = *(v5 + 16);
  if ((*(v5 + 72) & *(v5 + 80) & 8) == 0)
  {
    if (v7 != 1 && *(v5 + 17) == 0)
    {
      *(v5 + 17) = *a2;
    }

    v17 = sub_1002E0650(v5, 0, (v5 + 88));
    if (v17)
    {
      v8 = v17;
      if (!sub_10000C240())
      {
        goto LABEL_47;
      }

      sub_10000AF54("Could not generate confirmation value with status %!", v18, v19, v20, v21, v22, v23, v24, v8);
      v25 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (*(v4 + 70) && *(v6 + 84) != 1)
      {
        v8 = 0;
        *(v6 + 84) = 2;
        return v8;
      }

      v8 = sub_1002E07E4(v4, (v6 + 88));
      if (!v8)
      {
        return v8;
      }

      if (!sub_10000C240())
      {
        goto LABEL_47;
      }

      sub_10000AF54("Could not send pairing confirmation to handle 0x%x with status %!", v34, v35, v36, v37, v38, v39, v40, v4);
      v41 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }
    }

    goto LABEL_54;
  }

  if (*(v5 + 16) > 4u)
  {
    if (v7 == 5)
    {
      if (!sub_10000C240())
      {
        goto LABEL_46;
      }

      sub_10000AF54("Wrong API for OOB", v59, v60, v61, v62, v63, v64, v65, v78);
      v66 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

LABEL_45:
      sub_1000E09C0();
LABEL_46:
      v8 = 4800;
LABEL_47:
      sub_1002DF818(v4, 8, v6);
      return v8;
    }

    if (v7 != 6)
    {
LABEL_40:
      if (!sub_10000C240())
      {
        goto LABEL_46;
      }

      sub_10000AF54("wrong API for STKGENMethod=%d", v51, v52, v53, v54, v55, v56, v57, *(v6 + 16));
      v58 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    if (*(*v5 + 70))
    {
      if (*(v5 + 491) != 1)
      {
        return 0;
      }

      v8 = sub_1002DFF7C(v4);
      if (!v8)
      {
        return v8;
      }

      if (!sub_10000C240())
      {
        goto LABEL_47;
      }

      sub_10000AF54("recvdSMPDeferredDHKeyCheck Failed %!", v26, v27, v28, v29, v30, v31, v32, v8);
      v33 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }
    }

    else
    {
      v8 = sub_1002DFEA0(v5);
      if (!v8)
      {
        return v8;
      }

      if (!sub_10000C240())
      {
        goto LABEL_47;
      }

      sub_10000AF54("Failed to send DHKey value with status %!", v68, v69, v70, v71, v72, v73, v74, v8);
      v75 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }
    }

LABEL_54:
    sub_10080F604();
    goto LABEL_47;
  }

  if ((v7 - 2) >= 3)
  {
    if (v7 == 1)
    {
      if (!*(*v5 + 70))
      {
        v76 = (v5 + 216);
        v77 = sub_100240E7C((v5 + 152), (v5 + 216));
        if (v77)
        {
          v8 = v77;
          *(v6 + 200) = 0u;
          *(v6 + 184) = 0u;
          *(v6 + 168) = 0u;
          *(v6 + 152) = 0u;
          *v76 = 0u;
          *(v6 + 232) = 0u;
          *(v6 + 248) = 0u;
          *(v6 + 264) = 0u;
          *(v6 + 280) = 0u;
          *(v6 + 296) = 0u;
        }

        else
        {
          sub_10029C3C0(v6, 33);
          __s1[0] = 12;
          *&__s1[1] = *(v6 + 152);
          *&__s1[17] = *(v6 + 168);
          *&__s1[33] = *(v6 + 184);
          *&__s1[49] = *(v6 + 200);
          return sub_10029BEC0(*v6, __s1, 0x41uLL, 1);
        }

        return v8;
      }

      memset(__s1, 0, 64);
      if (memcmp(__s1, (v5 + 312), 0x40uLL))
      {
        v42 = sub_1002E0178(v6);
        if (v42)
        {
          v8 = v42;
          if (sub_10000C240())
          {
            sub_10000AF54("recvdSMPDeferredJustWorksNumComparPublicKey failed %!", v43, v44, v45, v46, v47, v48, v49, v8);
            v50 = sub_10000C050(0x43u);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }

          goto LABEL_47;
        }
      }

      return 0;
    }

    goto LABEL_40;
  }

  *(v5 + 425) = *a2;
  *(v5 + 441) = *a2;
  v8 = sub_1002E03AC(v5);
  if (v8)
  {
    if (!sub_10000C240())
    {
      goto LABEL_47;
    }

    sub_10000AF54("smpDoOneLeSecuredConnectionPasskeyAuthItteration failed %!", v9, v10, v11, v12, v13, v14, v15, v8);
    v16 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    goto LABEL_54;
  }

  return v8;
}

uint64_t sub_1002DFEA0(__int128 **a1)
{
  v13 = 0uLL;
  v2 = sub_1002E85AC(a1, &v13, 1);
  if (v2)
  {
    v3 = v2;
    if (sub_10000C240())
    {
      sub_10000AF54("smpAuthenticationStage2 failed %!", v4, v5, v6, v7, v8, v9, v10, v3);
      v11 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    v14 = 13;
    v15 = v13;
    return sub_10029BEC0(*a1, &v14, 0x11uLL, 1);
  }

  return v3;
}

uint64_t sub_1002DFF7C(__int128 *a1)
{
  v37 = 0;
  v38 = 0;
  v2 = sub_10029BE74(a1);
  v3 = v2;
  if (!v2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not find associated pairing data.", v24, v25, v26, v27, v28, v29, v30, v35);
      v31 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v23 = 0;
    goto LABEL_27;
  }

  v4 = sub_1002E85AC(v2, &v37, 0);
  if (v4)
  {
    v5 = v4;
    if (sub_10000C240())
    {
      sub_10000AF54("smpAuthenticationStage2 failed %!", v6, v7, v8, v9, v10, v11, v12, v5);
      v13 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  if (v37 != *(v3 + 492) || v38 != *(v3 + 500))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("DHKey failed to match.", v15, v16, v17, v18, v19, v20, v21, v35);
      v22 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1002DF818(a1, 11, v3);
    return 0;
  }

  if (*(v3 + 424) == 1)
  {
    sub_10029C3C0(v3, 41);
  }

  if (*(*v3 + 70) == 1)
  {
    v32 = sub_1002DFEA0(v3);
  }

  else
  {
    v36 = 0;
    if (*(v3 + 16) == 1)
    {
      v33 = 2;
    }

    else
    {
      v33 = 3;
    }

    v32 = sub_1002DBAE0(a1, &v36, 0, v3 + 524, 16, v33);
  }

  v23 = v32;
  if (v32)
  {
LABEL_27:
    sub_1002DF818(a1, 8, v3);
  }

  return v23;
}

uint64_t sub_1002E0178(uint64_t a1)
{
  sub_10029C2C8(a1);
  v2 = *a1;
  if (*(*a1 + 70) == 1)
  {
    v36[0] = 12;
    *&v36[1] = *(a1 + 152);
    *&v36[17] = *(a1 + 168);
    v37 = *(a1 + 184);
    v38 = *(a1 + 200);
    v3 = sub_10029BEC0(v2, v36, 0x41uLL, 1);
    if (v3)
    {
      v4 = v3;
      if (sub_10000C240())
      {
        sub_10000AF54("smpSendPairingPublicKey failed %!", v5, v6, v7, v8, v9, v10, v11, v4);
        v12 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return v4;
    }

    sub_10029C3C0(a1, 34);
    v13 = (a1 + 473);
  }

  else
  {
    v13 = (a1 + 457);
  }

  arc4random_buf(v13, 0x10uLL);
  *(a1 + 433) = 0;
  *(a1 + 425) = 0;
  *(a1 + 449) = 0;
  *(a1 + 441) = 0;
  if (*(*a1 + 70))
  {
    v14 = *(a1 + 328);
    *v36 = *(a1 + 312);
    *&v36[16] = v14;
    v15 = *(a1 + 168);
    v35[0] = *(a1 + 152);
    v35[1] = v15;
    v16 = sub_100240458(v35, v36, (a1 + 473), 0, (a1 + 88));
    if (v16)
    {
      v17 = v16;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to generate confirmation value %!", v18, v19, v20, v21, v22, v23, v24, v17);
        v25 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return 4825;
    }

    else
    {
      sub_10029C2C8(a1);
      v4 = sub_1002E07E4(*a1, (a1 + 88));
      if (v4)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send confirmation value %!", v27, v28, v29, v30, v31, v32, v33, v4);
          v34 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }
    }
  }

  else
  {
    sub_10029C3C0(a1, 35);
    return 0;
  }

  return v4;
}

uint64_t sub_1002E03AC(uint64_t a1)
{
  v2 = (a1 + 88);
  v3 = (a1 + 312);
  if (*(*a1 + 70))
  {
    v4 = *(a1 + 441);
    arc4random_buf((a1 + 473), 0x10uLL);
    v5 = *(a1 + 489);
    v6 = v3[1];
    v54 = *v3;
    v55 = v6;
    v7 = *(a1 + 168);
    v52 = *(a1 + 152);
    v53 = v7;
    if ((v4 >> v5))
    {
      v8 = -127;
    }

    else
    {
      v8 = 0x80;
    }

    v9 = sub_100240458(&v52, &v54, (a1 + 473), v8, v2);
    if (v9)
    {
      v10 = v9;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to generate confirmation value C %!", v11, v12, v13, v14, v15, v16, v17, v10);
        v18 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
LABEL_29:
          sub_10080F604();
        }
      }
    }

    else
    {
      sub_10029C3C0(a1, 34);
      if (*(a1 + 490) == 1 && (!*(a1 + 104) ? (v33 = *(a1 + 112) == 0) : (v33 = 0), !v33 && (v34 = sub_1002E8364(a1), v34)))
      {
        v10 = v34;
        if (sub_10000C240())
        {
          sub_10000AF54("recvdSMPDoSecuredConnectionPasskeySendCai failed %!", v35, v36, v37, v38, v39, v40, v41, v10);
          v42 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v19 = *(a1 + 425);
    arc4random_buf((a1 + 457), 0x10uLL);
    v20 = *(a1 + 489);
    v21 = v3[1];
    v52 = *v3;
    v53 = v21;
    v22 = *(a1 + 168);
    v54 = *(a1 + 152);
    v55 = v22;
    if ((v19 >> v20))
    {
      v23 = -127;
    }

    else
    {
      v23 = 0x80;
    }

    v24 = sub_100240458(&v54, &v52, (a1 + 457), v23, v2);
    if (v24)
    {
      v10 = v24;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to generate confirmation value C %!", v25, v26, v27, v28, v29, v30, v31, v10);
        v32 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      sub_10029C3C0(a1, 35);
      v10 = sub_1002E07E4(*a1, v2);
      if (v10)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("smpSendPairingConfirmation failed %!", v43, v44, v45, v46, v47, v48, v49, v10);
          v50 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }
        }
      }
    }
  }

  return v10;
}

uint64_t sub_1002E0650(uint64_t *a1, int a2, void *a3)
{
  v25 = 0uLL;
  v24 = 0uLL;
  v6 = *a1;
  if (*(*a1 + 70))
  {
    v7 = (v6 + 63);
    v8 = 50;
    v9 = 51;
    v10 = 52;
    v25.i8[0] = *(v6 + 48);
    v11 = 53;
    v12 = 54;
    v13 = 49;
    v14 = 65;
    v15 = 66;
    v16 = 67;
    v17 = 68;
    v18 = 69;
    v19 = 64;
  }

  else
  {
    v7 = (v6 + 48);
    v8 = 65;
    v9 = 66;
    v10 = 67;
    v25.i8[0] = *(v6 + 63);
    v11 = 68;
    v12 = 69;
    v13 = 64;
    v14 = 50;
    v15 = 51;
    v16 = 52;
    v17 = 53;
    v18 = 54;
    v19 = 49;
  }

  v25.i8[1] = *v7;
  *(v25.i32 + 2) = *(a1 + 579);
  *(v25.i64 + 5) = *(a1 + 582);
  v25.i32[3] = *(a1 + 589);
  v24.i8[0] = *(v6 + v18);
  v24.i8[1] = *(v6 + v17);
  v24.i8[2] = *(v6 + v16);
  v24.i8[3] = *(v6 + v15);
  v24.i8[4] = *(v6 + v14);
  v24.i8[5] = *(v6 + v19);
  v24.i8[6] = *(v6 + v12);
  v24.i8[7] = *(v6 + v11);
  v20 = *(v6 + v13);
  v21 = *(v6 + v8);
  v22 = *(v6 + v9);
  v24.i8[8] = *(v6 + v10);
  v24.i8[9] = v22;
  v24.i8[10] = v21;
  v24.i8[11] = v20;
  return sub_10023FEC4((a1 + 17), &v25, &v24, (a1 + 17), (a1 + 15), a2, a3);
}

uint64_t sub_1002E07E4(uint64_t a1, void *a2)
{
  if (byte_100B6B461 == 1)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  v73 = 3;
  v74 = *a2;
  if (sub_1000ABD24(a1))
  {
    v3 = sub_10029BE74(a1);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 70);
      if ((*(v3 + 72) & *(v3 + 80) & 8) != 0)
      {
        if (v5 != 1)
        {
LABEL_9:
          if (!v5 && !sub_10029C4B0(v4, 35))
          {
            if (!sub_10000C240())
            {
              return 4823;
            }

            v6 = sub_10029C3B4();
            sub_10000AF54("Central connection should be in SMP_STATE_PAIRING_SCONFIRM to send this command, current state is %s.", v7, v8, v9, v10, v11, v12, v13, v6);
            v14 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              return 4823;
            }

            goto LABEL_44;
          }

LABEL_26:
          v32 = sub_10029BEC0(*v4, &v73, 0x11uLL, 1);
          if (v32)
          {
            v23 = v32;
            sub_10029BA98(v4, v32, 1);
            return v23;
          }

          if ((*(v4 + 72) & *(v4 + 80) & 8) != 0)
          {
            v33 = *(v4 + 16);
            switch(v33)
            {
              case 6:
                goto LABEL_32;
              case 5:
                if (sub_10000C240())
                {
                  sub_10000AF54("Should not be here !", v64, v65, v66, v67, v68, v69, v70, v72);
                  v71 = sub_10000C050(0x43u);
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000E09C0();
                  }
                }

                sub_10029BA98(v4, 408, 1);
                return 0;
              case 1:
LABEL_32:
                v34 = v4;
                v35 = 36;
LABEL_55:
                sub_10029C3C0(v34, v35);
                return 0;
            }

            if (*(*v4 + 70) == 1)
            {
              v35 = 36;
            }

            else
            {
              v35 = 35;
            }
          }

          else if (*(a1 + 70))
          {
            v35 = 35;
          }

          else
          {
            v35 = 34;
          }

          v34 = v4;
          goto LABEL_55;
        }

        if (sub_10029C4B0(v3, 34))
        {
          v5 = *(a1 + 70);
          goto LABEL_9;
        }

        if (!sub_10000C240())
        {
          return 4823;
        }

        v36 = sub_10029C3B4();
        sub_10000AF54("Peripheral connection should be in SMP_STATE_PAIRING_MPUBLICK to send this command, current state is %s.", v37, v38, v39, v40, v41, v42, v43, v36);
        v44 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          return 4823;
        }
      }

      else
      {
        if (!*(a1 + 70))
        {
          if (!sub_10029C4B0(v3, 18))
          {
            if (!sub_10000C240())
            {
              return 4823;
            }

            v54 = sub_10029C3B4();
            sub_10000AF54("Central connection should be in SMP_STATE_PAIRING_RESP to send this command, current state is %s.", v55, v56, v57, v58, v59, v60, v61, v54);
            v62 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              return 4823;
            }

            goto LABEL_44;
          }

          v5 = *(a1 + 70);
        }

        if (v5 != 1 || sub_10029C4B0(v4, 34))
        {
          goto LABEL_26;
        }

        if (!sub_10000C240())
        {
          return 4823;
        }

        v45 = sub_10029C3B4();
        sub_10000AF54("Peripheral connection should be in SMP_STATE_PAIRING_MCONFIRM to send this command, current state is %s.", v46, v47, v48, v49, v50, v51, v52, v45);
        v53 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          return 4823;
        }
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        return 4823;
      }

      sub_10000AF54("This device is not in a pairing state.", v24, v25, v26, v27, v28, v29, v30, v72);
      v31 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        return 4823;
      }
    }

LABEL_44:
    sub_1000E09C0();
    return 4823;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("This command is only available to LE devices.", v15, v16, v17, v18, v19, v20, v21, v72);
    v22 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 4820;
}

uint64_t sub_1002E0BA8(uint64_t a1, int a2, unsigned __int8 a3)
{
  v3 = byte_100B53E49;
  if (byte_100B53E49 == 255)
  {
    v3 = 11;
  }

  if (byte_100B53E4A == 255)
  {
    v4 = 11;
  }

  else
  {
    v4 = byte_100B53E4A;
  }

  v5 = v3 & 0xF7;
  v6 = v4 & 0xF7;
  if (byte_100B6B410)
  {
    v7 = v4 & 0xF7;
  }

  else
  {
    v7 = v4;
  }

  if (byte_100B6B410)
  {
    v8 = v3 & 0xF7;
  }

  else
  {
    v8 = v3;
  }

  if (!a1 || !sub_1000ABD24(a1))
  {
    if (!sub_10000C240())
    {
      return 4820;
    }

    sub_10000AF54("This handle is not a LE connection.", v25, v26, v27, v28, v29, v30, v31, v96);
    v32 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      return 4820;
    }

LABEL_34:
    sub_1000E09C0();
    return 4820;
  }

  v12 = sub_10029BE74(a1);
  if (!v12)
  {
    if (!sub_10000C240())
    {
      return 4820;
    }

    sub_10000AF54("There is no security request for this connection. Ignoring reply.", v34, v35, v36, v37, v38, v39, v40, v96);
    v41 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      return 4820;
    }

    goto LABEL_34;
  }

  v13 = v12;
  *(v12 + 72) = a3;
  if (!a2)
  {
LABEL_70:
    sub_1002DF818(a1, 8, v13);
    return 0;
  }

  if (*(a1 + 55))
  {
    v14 = (a1 + 56);
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1002DB2CC((a1 + 48), v14);
  v16 = v13[80];
  if ((v16 & 4) != 0 && byte_100B53E4B != 3)
  {
    v13[72] |= 4u;
  }

  if (v16 & 8) != 0 && (byte_100B6B411)
  {
    v13[72] |= 8u;
    if ((byte_100B6B412 & 1) == 0 && (v16 & 0x20) != 0 && (*(a1 + 264) & 1) == 0 && (v8 & 8) != 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Sending CT2=1", v17, v18, v19, v20, v21, v22, v23, v96);
        v24 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v98 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      a3 |= 0x20u;
    }
  }

  else
  {
    a3 &= ~0x20u;
    v7 = v6;
    v8 = v5;
  }

  if (*(a1 + 264))
  {
    v42 = a3 & 0xDF;
  }

  else
  {
    v6 = v7;
    v5 = v8;
    v42 = a3;
  }

  if (byte_100B6B413 == 1 && (v42 & 0x20) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Force sending CT2=1", v43, v44, v45, v46, v47, v48, v49, v96);
      v50 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = sub_10000C0FC();
        *buf = 136446210;
        v98 = v51;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v42 |= 0x20u;
  }

  v13[73] = v15;
  v13[76] &= v5;
  v13[74] &= v6;
  v13[72] |= byte_100B6B414 | v42;
  if (sub_10000C240())
  {
    sub_10000AF54("authReq=%x expectedKeys=%x requestedKeys=%x", v52, v53, v54, v55, v56, v57, v58, v42);
    v59 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = sub_10000C0FC();
      *buf = 136446210;
      v98 = v60;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v61 = v13[73];
  v62 = v13[72];
  v63 = v13[74];
  v64 = v13[76];
  buf[0] = 2;
  buf[1] = byte_100B53E4B;
  buf[2] = v61;
  buf[3] = v62;
  LOBYTE(v98) = 16;
  BYTE1(v98) = v63;
  BYTE2(v98) = v64;
  if (!sub_1000ABD24(a1))
  {
    if (!sub_10000C240())
    {
      goto LABEL_70;
    }

    sub_10000AF54("This command is only available to LE devices.", v68, v69, v70, v71, v72, v73, v74, v96);
    v75 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  if (*(a1 + 70) != 1)
  {
    if (!sub_10000C240())
    {
      goto LABEL_70;
    }

    sub_10000AF54("You cannot send this command when central.", v76, v77, v78, v79, v80, v81, v82, v96);
    v83 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  v65 = sub_10029BE74(a1);
  if (!v65)
  {
    if ((sub_10000C240() & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  v66 = v65;
  if (!sub_10029C4B0(v65, 17))
  {
    if (!sub_10000C240())
    {
      goto LABEL_70;
    }

    sub_10029C3B4();
LABEL_68:
    sub_10000AF54("Invalid pairing state for handle 0x%x : %s", v84, v85, v86, v87, v88, v89, v90, a1);
    v91 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_70;
    }

LABEL_69:
    sub_1000E09C0();
    goto LABEL_70;
  }

  v67 = sub_10029BEC0(*v66, buf, 7uLL, 1);
  if (v67)
  {
    sub_10029BA98(v66, v67, 1);
    goto LABEL_70;
  }

  sub_10029C3C0(v66, 18);
  *(v66 + 586) = *buf;
  *(v66 + 590) = v98;
  *(v66 + 592) = BYTE2(v98);
  v92 = v13[72];
  v93 = v13[80];
  v94 = v13[73];
  if ((v92 & v93 & 8) != 0)
  {
    if (v94 == 1)
    {
      goto LABEL_76;
    }
  }

  else if (v94 != 1)
  {
    goto LABEL_77;
  }

  if (v13[79] == 1)
  {
LABEL_76:
    v95 = 5;
    goto LABEL_80;
  }

LABEL_77:
  if (((v93 | v92) & 4) != 0)
  {
    v95 = sub_1002E1188(v13[78], byte_100B53E4B, (v92 & v93 & 8) != 0);
  }

  else
  {
    v95 = 1;
  }

LABEL_80:
  v13[16] = v95;
  result = sub_1002E12C0(v13, 0);
  if (result)
  {
    goto LABEL_70;
  }

  return result;
}

uint64_t sub_1002E1188(int a1, int a2, int a3)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      if (a2 < 5)
      {
        return (0x201020101uLL >> (8 * (a2 & 0x1Fu)));
      }

      goto LABEL_33;
    }

    if (a1 != 1)
    {
      goto LABEL_33;
    }

    LOBYTE(v3) = 1;
    if (a2 <= 1)
    {
      if (!a2)
      {
        return v3;
      }

      if (a2 == 1)
      {
        if (a3)
        {
          LOBYTE(v3) = 6;
        }

        else
        {
          LOBYTE(v3) = 1;
        }

        return v3;
      }

      goto LABEL_33;
    }

    if (a2 != 2)
    {
      if (a2 == 3)
      {
        return v3;
      }

LABEL_14:
      if (a2 == 4)
      {
        v4 = a3 == 0;
        LOBYTE(v3) = 2;
        goto LABEL_25;
      }

LABEL_33:
      sub_1000D660C();
      LOBYTE(v3) = 1;
      return v3;
    }

LABEL_35:
    LOBYTE(v3) = 2;
    return v3;
  }

  if (a1 == 2)
  {
    if (a2 < 5)
    {
      return (0x301040303uLL >> (8 * (a2 & 0x1Fu)));
    }

    goto LABEL_33;
  }

  if (a1 == 3)
  {
    if (a2 < 5)
    {
LABEL_19:
      LOBYTE(v3) = 1;
      return v3;
    }

    goto LABEL_33;
  }

  if (a1 != 4)
  {
    goto LABEL_33;
  }

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    LOBYTE(v3) = 3;
    return v3;
  }

  if (a2 != 1)
  {
    goto LABEL_33;
  }

  v4 = a3 == 0;
  LOBYTE(v3) = 3;
LABEL_25:
  if (!v4)
  {
    LOBYTE(v3) = 6;
  }

  return v3;
}

uint64_t sub_1002E12C0(uint64_t a1, int a2)
{
  v3 = *(a1 + 80) & *(a1 + 72);
  if ((v3 & 8) == 0)
  {
    *(a1 + 74) &= ~8u;
    *(a1 + 76) &= ~8u;
    arc4random_buf((a1 + 120), 0x10uLL);
    if (off_100BCE1D8)
    {
      v5 = *(a1 + 16);
      if (v5 != 1)
      {
        if (a2)
        {
          v6 = 2;
        }

        else
        {
          v6 = 3;
        }

        if (v5 == v6)
        {
          *__buf = 0;
          *(a1 + 52) = 1;
          arc4random_buf(__buf, 4uLL);
          v7 = *__buf % 0xF423Fu + 1;
          *(a1 + 33) = v7;
          *(a1 + 35) = BYTE2(v7);
LABEL_35:
          sub_1002E83F4(*a1);
          return 0;
        }

        if (v5 == 5)
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

LABEL_34:
        *(a1 + 52) = v18;
        goto LABEL_35;
      }

LABEL_23:
      *(a1 + 52) = 0;
      goto LABEL_35;
    }

    return 4824;
  }

  *(a1 + 77) |= 1u;
  *(a1 + 75) |= 1u;
  if ((*(a1 + 76) & 8) != 0)
  {
    v8 = *(a1 + 74);
    *(a1 + 594) = (v8 & 8) != 0;
    if ((v3 & 0x20) != 0 && (v8 & 8) != 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Both sides set CT2=1, will use H7", v9, v10, v11, v12, v13, v14, v15, v28);
        v16 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *__buf = 136446210;
          *&__buf[4] = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " %{public}s", __buf, 0xCu);
        }
      }

      *(a1 + 593) = 1;
    }
  }

  else
  {
    *(a1 + 594) = 0;
  }

  if (*(*a1 + 70) == 1)
  {
    sub_10029C3C0(a1, 32);
  }

  v17 = *(a1 + 16);
  if (v17 == 1)
  {
    goto LABEL_23;
  }

  if (v17 == 5)
  {
    if (off_100BCE1D8)
    {
      v18 = 5;
      goto LABEL_34;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Cannot do OOB if there is no PAIRING_DISPLAY callback registered", v20, v21, v22, v23, v24, v25, v26, v28);
      v27 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4824;
  }

  if (*(*a1 + 70) == 1)
  {
    return 0;
  }

  result = sub_100240E7C((a1 + 152), (a1 + 216));
  if (result)
  {
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 248) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 296) = 0u;
  }

  else
  {
    sub_10029C3C0(a1, 33);
    __buf[0] = 12;
    *&__buf[1] = *(a1 + 152);
    v30 = *(a1 + 168);
    v31 = *(a1 + 184);
    v32 = *(a1 + 200);
    return sub_10029BEC0(*a1, __buf, 0x41uLL, 1);
  }

  return result;
}

uint64_t sub_1002E15E0(const void *a1, unsigned int a2)
{
  if (a2 < 0x10)
  {
    return 1;
  }

  __s2 = xmmword_1008A5090;
  v13[0] = 0;
  v13[1] = 0;
  sub_1000075EC(v13, &__s2, 0x10uLL);
  if (memcmp(a1, &__s2, a2))
  {
    if (memcmp(a1, v13, a2))
    {
      return 1;
    }
  }

  result = sub_10000C240();
  if (result)
  {
    sub_10000AF54("Peer device is using a debug LTK, aborting pairing", v5, v6, v7, v8, v9, v10, v11, v13[0]);
    v12 = sub_10000C050(0x43u);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1000E09C0();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002E16D8(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid keys structure.", v22, v23, v24, v25, v26, v27, v28, v35);
      v29 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 101;
  }

  if (!a1 || !sub_1000ABD24(a1))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This handle is not a LE connection.", v14, v15, v16, v17, v18, v19, v20, v35);
      v21 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4820;
  }

  a1[296] = *(a2 + 82);
  if (a1[168] == 3)
  {
    v4 = 48;
    if (a1[55])
    {
      v4 = 56;
    }

    v5 = sub_1002DAEC4(&a1[v4], a2 + 28, *(a2 + 44), *(a2 + 45));
    if (v5 && sub_10000C240())
    {
      sub_10000AF54("LE_LongTermKeyReply failed %!", v6, v7, v8, v9, v10, v11, v12, v5);
      v13 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return v5;
  }

  v31 = *(a2 + 80);
  if ((v31 & 8) != 0 && (*(a2 + 45) & 0xFE) == 2)
  {
    v36 = 0;
    a1[240] = 1;
    return sub_1002DBAE0(a1, &v36, 0, a2 + 28, *(a2 + 44), *(a2 + 45));
  }

  if ((~v31 & 7) != 0)
  {
    return 101;
  }

  a1[240] = 1;
  v32 = *(a2 + 18);
  v33 = *(a2 + 16);
  v34 = *(a2 + 17);

  return sub_1002DBAE0(a1, a2 + 20, v32, a2, v33, v34);
}

uint64_t sub_1002E1908(uint64_t a1, int a2, uint64_t a3)
{
  v3 = byte_100B53E49;
  if (byte_100B53E49 == 255)
  {
    v3 = 11;
  }

  if (byte_100B53E4A == 255)
  {
    v4 = 11;
  }

  else
  {
    v4 = byte_100B53E4A;
  }

  v5 = v3 & 0xF7;
  v6 = v4 & 0xF7;
  if (byte_100B6B410)
  {
    v7 = v4 & 0xF7;
  }

  else
  {
    v7 = v4;
  }

  if (byte_100B6B410)
  {
    v8 = v3 & 0xF7;
  }

  else
  {
    v8 = v3;
  }

  if (!a1 || !sub_1000ABD24(a1))
  {
    if (!sub_10000C240())
    {
      return 4820;
    }

    sub_10000AF54("This handle is not a LE connection.", v29, v30, v31, v32, v33, v34, v35, v58);
    v36 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      return 4820;
    }

LABEL_33:
    sub_1000E09C0();
    return 4820;
  }

  v12 = sub_10029BE74(a1);
  if (!v12)
  {
    if (!sub_10000C240())
    {
      return 4820;
    }

    sub_10000AF54("There is no security request for this connection. Ignoring reply.", v37, v38, v39, v40, v41, v42, v43, v58);
    v44 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      return 4820;
    }

    goto LABEL_33;
  }

  v13 = v12;
  if (!a2)
  {
    goto LABEL_50;
  }

  if (!a3 || (result = sub_1002DBD34(a1, a3), result))
  {
    if (*(a1 + 55))
    {
      v15 = (a1 + 56);
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_1002DB2CC((a1 + 48), v15);
    v17 = v13[80] & 4;
    v18 = byte_100B6B414;
    v19 = v17 | v18 | sub_1002D20F4();
    if ((v13[80] & 8) != 0 && byte_100B6B411 == 1)
    {
      v20 = v19 | 8;
      if ((byte_100B6B412 & 1) == 0 && (v13[80] & 0x20) != 0 && (*(a1 + 264) & 1) == 0 && (v8 & 8) != 0)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Sending CT2=1", v21, v22, v23, v24, v25, v26, v27, v58);
          v28 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v60 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v20 = v19 | 0x28;
      }
    }

    else
    {
      v20 = v19 & 0xDF;
      v7 = v6;
      v8 = v5;
    }

    if (*(a1 + 264))
    {
      v45 = v20 & 0xDF;
    }

    else
    {
      v6 = v7;
      v5 = v8;
      v45 = v20;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("authReq=%x expectedKeys=%x requestedKeys=%x", v46, v47, v48, v49, v50, v51, v52, v45);
      v53 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = sub_10000C0FC();
        *buf = 136446210;
        v60 = v54;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (byte_100B6B415 == 1)
    {
      v55 = a1;
      v56 = 3;
LABEL_51:
      sub_1002DF818(v55, v56, v13);
      return 0;
    }

    v57 = sub_1002E1C74(a1, byte_100B53E4B, v16, v45, v5, v6);
    result = 0;
    if (v57)
    {
      if (v57 != 4804)
      {
LABEL_50:
        v55 = a1;
        v56 = 8;
        goto LABEL_51;
      }
    }
  }

  return result;
}

uint64_t sub_1002E1C74(uint64_t a1, char a2, char a3, char a4, char a5, char a6)
{
  LOBYTE(v47) = 1;
  BYTE1(v47) = a2;
  BYTE2(v47) = a3;
  HIBYTE(v47) = a4;
  LOBYTE(v48) = 16;
  HIBYTE(v48) = a5;
  v49 = a6;
  if (sub_1000ABD24(a1))
  {
    if (*(a1 + 70))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("You cannot send this command when peripheral.", v9, v10, v11, v12, v13, v14, v15, v46);
        v16 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 4821;
    }

    v27 = sub_10029BE74(a1);
    if (v27)
    {
      v28 = v27;
      if (*(v27 + 8) >= 0x11u)
      {
        if (sub_10000C240())
        {
          v29 = sub_10029C3B4();
          sub_10000AF54("Cannot ask for pairing, device is already in state %s.", v30, v31, v32, v33, v34, v35, v36, v29);
          v37 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        return 4804;
      }

LABEL_19:
      v28[72] = a4;
      v28[73] = a3;
      v17 = sub_10029BEC0(*v28, &v47, 7uLL, 1);
      if (v17)
      {
        sub_10029BA98(v28, v17, 1);
      }

      else
      {
        sub_10029C3C0(v28, 17);
        *(v28 + 579) = v47;
        *(v28 + 583) = v48;
        v28[585] = v49;
      }

      return v17;
    }

    v28 = sub_10029C1A0(a1);
    if (v28)
    {
      goto LABEL_19;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Could not allocate a pairing record for handle 0x%x", v38, v39, v40, v41, v42, v43, v44, a1);
      v45 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 104;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid connection handle.", v18, v19, v20, v21, v22, v23, v24, v46);
      v25 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4820;
  }
}

void sub_1002E1EA0(uint64_t a1, int *a2, uint64_t a3)
{
  v110 = a1;
  v6 = byte_100B53E49;
  if (byte_100B53E49 == 255)
  {
    v6 = 11;
  }

  if (byte_100B53E4A == 255)
  {
    v7 = 11;
  }

  else
  {
    v7 = byte_100B53E4A;
  }

  if (byte_100B6B410)
  {
    v8 = v7 & 7;
  }

  else
  {
    v8 = v7;
  }

  if (byte_100B6B410)
  {
    v9 = v6 & 0xF7;
  }

  else
  {
    v9 = v6;
  }

  v10 = sub_10029BE74(a1);
  v11 = v10;
  v12 = byte_100B6B460;
  if (byte_100B6B460)
  {
    goto LABEL_51;
  }

  if (a3 != 6)
  {
    if (!sub_10000C240())
    {
      goto LABEL_50;
    }

    sub_10000AF54("Invalid Pairing Request size %d.", v22, v23, v24, v25, v26, v27, v28, a3);
    v29 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

LABEL_69:
    sub_1000E09C0();
LABEL_50:
    v12 = 8;
    goto LABEL_51;
  }

  if (!*(a1 + 70))
  {
    if (!sub_10000C240())
    {
      goto LABEL_50;
    }

    sub_10000AF54("This command should only be received if we are peripheral.", v30, v31, v32, v33, v34, v35, v36, v109);
    v37 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    goto LABEL_69;
  }

  if (v10)
  {
    sub_10029C2C8(v10);
    if (!sub_10029C4B0(v11, 16) && (v11[9] & 1) == 0)
    {
      if (!sub_10000C240())
      {
        goto LABEL_50;
      }

      v13 = sub_10029C3B4();
      sub_10000AF54("Received pairing request from central, but we had already a previous non-encrypted entry in state %s.", v14, v15, v16, v17, v18, v19, v20, v13);
      v21 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      goto LABEL_69;
    }
  }

  else
  {
    v11 = sub_10029C1A0(a1);
    if (!v11)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not allocate new device...", v70, v71, v72, v73, v74, v75, v76, v109);
        v77 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v11 = 0;
      goto LABEL_50;
    }
  }

  sub_10029C250(v11, *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 4), *(a2 + 5));
  if (v11[78] >= 5u)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid remote IOCaps %d.", v38, v39, v40, v41, v42, v43, v44, v11[78]);
      v45 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_32;
  }

  if (v11[79] >= 2u)
  {
    if (!sub_10000C240())
    {
      goto LABEL_50;
    }

    sub_10000AF54("Invalid OOB flags %d.", v46, v47, v48, v49, v50, v51, v52, v11[79]);
    v53 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    goto LABEL_69;
  }

  if ((v11[80] & 0xC2) != 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid authentication requirements 0x%x.", v54, v55, v56, v57, v58, v59, v60, v11[80]);
      v61 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  if (v11[81] - 17 <= 0xFFFFFFF5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid maximum encryption size %d", v62, v63, v64, v65, v66, v67, v68, v11[81]);
      v69 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v12 = 6;
    goto LABEL_51;
  }

  v78 = v11[82];
  if (v78 > 0xF || (v79 = v11[83], v79 >= 0x10))
  {
    if (!sub_10000C240())
    {
      goto LABEL_50;
    }

    sub_10000AF54("Invalid key distribution parameters initiator:0x%x, responder:0xx", v93, v94, v95, v96, v97, v98, v99, v11[82]);
    v100 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    goto LABEL_69;
  }

  if (byte_100B6B415 == 1 && (v11[80] & 8) == 0)
  {
LABEL_32:
    v12 = 3;
LABEL_51:
    sub_1002DF818(a1, v12, v11);
    return;
  }

  v80 = v78 & v8;
  if (byte_100B53E49 != -1)
  {
    v80 = byte_100B53E49;
  }

  v11[74] = v80;
  v11[75] = 0;
  v81 = v79 & v9;
  if (byte_100B53E4A != 255)
  {
    v81 = byte_100B53E4A;
  }

  v11[76] = v81;
  v11[77] = 0;
  sub_10029C3C0(v11, 17);
  v11[579] = 1;
  v82 = *a2;
  *(v11 + 292) = *(a2 + 2);
  *(v11 + 145) = v82;
  if (off_100BCE1D0)
  {
    if (*(v110 + 132) == 7)
    {
      *(&buf + 1) = &v110;
      *&buf = 8;
      v83 = sub_10002195C(sub_1002E6CEC, &buf, 0, 0);
      if (v83)
      {
        v84 = v83;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not dispatch pairing request with status %!.", v85, v86, v87, v88, v89, v90, v91, v84);
          v92 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Got Pairing Request before link is ready for handle %p, lets handle this when the link is actually ready. Link state is %d", v101, v102, v103, v104, v105, v106, v107, v110);
      v108 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136446210;
        *(&buf + 4) = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
      }
    }
  }
}

uint64_t sub_1002E2444(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = sub_10029BE74(a1);
  v7 = v6;
  if (!v6)
  {
    if (!sub_10000C240())
    {
      goto LABEL_46;
    }

    sub_10000AF54("Pairing response with no pairing request for handle %d.", v17, v18, v19, v20, v21, v22, v23, a1);
    v24 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

LABEL_45:
    sub_1000E09C0();
LABEL_46:
    v8 = 8;
    return sub_1002DF818(a1, v8, v7);
  }

  v8 = byte_100B6B460;
  if (byte_100B6B460)
  {
    return sub_1002DF818(a1, v8, v7);
  }

  if (a3 != 6)
  {
    if (!sub_10000C240())
    {
      goto LABEL_46;
    }

    sub_10000AF54("Invalid Pairing Response size %d.", v25, v26, v27, v28, v29, v30, v31, a3);
    v32 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  sub_10029C2C8(v6);
  if (*(a1 + 70) == 1)
  {
    if (!sub_10000C240())
    {
      goto LABEL_46;
    }

    sub_10000AF54("This command should only be received if we are central.", v9, v10, v11, v12, v13, v14, v15, v89);
    v16 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (!sub_10029C4B0(v7, 17))
  {
    if (!sub_10000C240())
    {
      goto LABEL_46;
    }

    sub_10000AF54("Pairing response was received without a pairing request for handle %d.", v41, v42, v43, v44, v45, v46, v47, a1);
    v48 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  sub_10029C250(v7, *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 4), *(a2 + 5));
  if (*(v7 + 78) >= 5u)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid remote IOCaps %d.", v33, v34, v35, v36, v37, v38, v39, *(v7 + 78));
      v40 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_19;
  }

  if (*(v7 + 79) >= 2u)
  {
    if (!sub_10000C240())
    {
      goto LABEL_46;
    }

    sub_10000AF54("Invalid OOB flags %d.", v49, v50, v51, v52, v53, v54, v55, *(v7 + 79));
    v56 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if ((*(v7 + 80) & 0xC2) != 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid authentication requirements 0x%x.", v57, v58, v59, v60, v61, v62, v63, *(v7 + 80));
      v64 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  if (*(v7 + 81) - 17 <= 0xFFFFFFF5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid maximum encryption size %d", v65, v66, v67, v68, v69, v70, v71, *(v7 + 81));
      v72 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v8 = 6;
    return sub_1002DF818(a1, v8, v7);
  }

  v73 = *(v7 + 82);
  if (v73 > 0xF || (v74 = *(v7 + 83), v74 >= 0x10))
  {
    if (!sub_10000C240())
    {
      goto LABEL_46;
    }

    sub_10000AF54("Invalid key distribution parameters initiator:0x%x, responder:0xx", v78, v79, v80, v81, v82, v83, v84, *(v7 + 82));
    v85 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  *(v7 + 76) = v73 & 0xB;
  *(v7 + 75) = 0;
  *(v7 + 74) = v74 & 0xB;
  *(v7 + 77) = 0;
  sub_10029C3C0(v7, 18);
  v75 = *(v7 + 72);
  v76 = *(v7 + 80);
  if (byte_100B6B415 == 1 && (v75 & v76 & 8) == 0)
  {
LABEL_19:
    v8 = 3;
    return sub_1002DF818(a1, v8, v7);
  }

  v77 = *(v7 + 73);
  if ((v75 & v76 & 8) != 0)
  {
    if (v77 == 1)
    {
      goto LABEL_50;
    }
  }

  else if (v77 != 1)
  {
    goto LABEL_51;
  }

  if (*(v7 + 79) == 1)
  {
LABEL_50:
    v87 = 5;
    goto LABEL_54;
  }

LABEL_51:
  if (((v76 | v75) & 4) != 0)
  {
    v87 = sub_1002E1188(byte_100B53E4B, *(v7 + 78), (v75 & v76 & 8) != 0);
  }

  else
  {
    v87 = 1;
  }

LABEL_54:
  *(v7 + 16) = v87;
  *(v7 + 586) = 2;
  v88 = *a2;
  *(v7 + 591) = *(a2 + 2);
  *(v7 + 587) = v88;
  result = sub_1002E12C0(v7, 1);
  if (result)
  {
    goto LABEL_46;
  }

  return result;
}

void sub_1002E289C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = sub_10029BE74(a1);
  v7 = v6;
  if (!v6)
  {
    if (!sub_10000C240())
    {
      goto LABEL_23;
    }

    sub_10000AF54("Could not find associated pairing data.", v20, v21, v22, v23, v24, v25, v26, v128);
    v27 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (a3 != 16)
  {
    if (!sub_10000C240())
    {
      goto LABEL_23;
    }

    sub_10000AF54("Invalid Pairing Confirmation size %d", v28, v29, v30, v31, v32, v33, v34, a3);
    v35 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v8 = *(v6 + 72) & *(v6 + 80);
  v9 = sub_10029BE74(a1);
  v7 = v9;
  if ((v8 & 8) != 0)
  {
    if (v9)
    {
      sub_10029C2C8(v9);
      v10 = *(a1 + 70);
      if (v10 == 1)
      {
        if (!sub_10029C4B0(v7, 34))
        {
          if (!sub_10000C240())
          {
            goto LABEL_23;
          }

          v53 = sub_10029C3B4();
          sub_10000AF54("Device was not in the proper state. State is %s.", v54, v55, v56, v57, v58, v59, v60, v53);
          v61 = sub_10000C050(0x43u);
          if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        v10 = *(a1 + 70);
      }

      if (v10 || sub_10029C4B0(v7, 35))
      {
        *(v7 + 104) = *a2;
        v11 = *(v7 + 16);
        if (v11 == 6)
        {
          goto LABEL_13;
        }

        if (v11 != 5)
        {
          if (v11 != 1)
          {
            *(v7 + 104) = *a2;
            if (*(a1 + 70))
            {
              if (*(v7 + 490) != 1)
              {
                return;
              }

              if (!*(v7 + 104) && *(v7 + 112) == 0)
              {
                return;
              }

              v71 = sub_1002E8364(v7);
              if (!v71)
              {
                return;
              }

              v72 = v71;
              if (!sub_10000C240())
              {
                goto LABEL_23;
              }

              sub_10000AF54("recvdSMPDoSecuredConnectionPasskeySendCai failed %!", v73, v74, v75, v76, v77, v78, v79, v72);
              v80 = sub_10000C050(0x43u);
              if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_23;
              }
            }

            else
            {
              v118 = sub_1002E86E4(*v7, (v7 + 457));
              if (!v118)
              {
LABEL_77:

                sub_10029C3C0(v7, 37);
                return;
              }

              v119 = v118;
              if (!sub_10000C240())
              {
                goto LABEL_23;
              }

              sub_10000AF54("smpSendPairingRandom failed %!", v120, v121, v122, v123, v124, v125, v126, v119);
              v127 = sub_10000C050(0x43u);
              if (!os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_23;
              }
            }

LABEL_76:
            sub_10080F604();
            goto LABEL_23;
          }

LABEL_13:
          if (*(a1 + 70))
          {
            if (!sub_10000C240())
            {
              goto LABEL_23;
            }

            sub_10000AF54("At this point, peripheral should not get a confirmation value", v12, v13, v14, v15, v16, v17, v18, v128);
            v19 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }

          v99 = sub_1002E86E4(a1, (v7 + 457));
          if (v99)
          {
            v100 = v99;
            if (!sub_10000C240())
            {
              goto LABEL_23;
            }

            sub_10000AF54("Failed to send pairing random to peripheral %!", v101, v102, v103, v104, v105, v106, v107, v100);
            v108 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_23;
            }

            goto LABEL_76;
          }

          goto LABEL_77;
        }

        if (!sub_10000C240())
        {
          goto LABEL_23;
        }

        sub_10000AF54("Should not be here !", v62, v63, v64, v65, v66, v67, v68, v128);
        v69 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (!sub_10000C240())
        {
          goto LABEL_23;
        }

        v90 = sub_10029C3B4();
        sub_10000AF54("Device was not in the proper state. State is %s.", v91, v92, v93, v94, v95, v96, v97, v90);
        v98 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        goto LABEL_23;
      }

      sub_10000AF54("Could not find associated pairing data.", v37, v38, v39, v40, v41, v42, v43, v128);
      v44 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }
    }

LABEL_22:
    sub_1000E09C0();
LABEL_23:
    sub_1002DF818(a1, 8, v7);
    return;
  }

  if (!v9)
  {
    if (!sub_10000C240())
    {
      goto LABEL_23;
    }

    sub_10000AF54("Could not find associated pairing data.", v45, v46, v47, v48, v49, v50, v51, v128);
    v52 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  sub_10029C2C8(v9);
  v36 = *(a1 + 70);
  if (v36 == 1)
  {
    if (!sub_10029C4B0(v7, 18))
    {
      if (!sub_10000C240())
      {
        goto LABEL_23;
      }

      v81 = sub_10029C3B4();
      sub_10000AF54("Device was not in the proper state. State is %s.", v82, v83, v84, v85, v86, v87, v88, v81);
      v89 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v36 = *(a1 + 70);
  }

  if (!v36 && !sub_10029C4B0(v7, 34))
  {
    if (!sub_10000C240())
    {
      goto LABEL_23;
    }

    v109 = sub_10029C3B4();
    sub_10000AF54("Device was not in the proper state. State is %s.", v110, v111, v112, v113, v114, v115, v116, v109);
    v117 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  *(v7 + 104) = *a2;
  if (*(a1 + 70) == 1)
  {
    sub_10029C3C0(v7, 34);
    if (*(v7 + 84) != 2)
    {
      *(v7 + 84) = 1;
      return;
    }

    if (sub_1002E07E4(a1, (v7 + 88)))
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_10029C3C0(v7, 35);
    if (sub_1002E86E4(a1, (v7 + 120)))
    {
      goto LABEL_23;
    }
  }
}

void sub_1002E2E84(__int128 *a1, _OWORD *a2, uint64_t a3)
{
  v6 = sub_10029BE74(a1);
  v7 = v6;
  if (!v6)
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("Could not find associated pairing data.", v14, v15, v16, v17, v18, v19, v20, v297);
    v21 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (a3 != 16)
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("Invalid Pairing Random size %d", v22, v23, v24, v25, v26, v27, v28, a3);
    v29 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((*(v6 + 72) & *(v6 + 80) & 8) == 0)
  {
    v303 = 0uLL;
    *&v301 = 0;
    v32 = sub_10029BE74(a1);
    v7 = v32;
    if (v32)
    {
      sub_10029C2C8(v32);
      v33 = *(a1 + 70);
      if (v33 == 1)
      {
        if (!sub_10029C4B0(v7, 35))
        {
          if (!sub_10000C240())
          {
            goto LABEL_21;
          }

          v99 = sub_10029C3B4();
          sub_10000AF54("Initiator device was not in the proper state. State is %s.", v100, v101, v102, v103, v104, v105, v106, v99);
          v107 = sub_10000C050(0x43u);
          if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        v33 = *(a1 + 70);
      }

      if (v33 || sub_10029C4B0(v7, 36))
      {
        *(v7 + 136) = *a2;
        if (*(a1 + 70) == 1)
        {
          v34 = 36;
        }

        else
        {
          v34 = 37;
        }

        sub_10029C3C0(v7, v34);
        if (sub_1002E0650(v7, 1, &v303))
        {
          goto LABEL_21;
        }

        v35 = v303 == *(v7 + 104) && *(&v303 + 1) == *(v7 + 112);
        if (v35)
        {
          if (*(a1 + 70) == 1 && sub_1002E86E4(a1, (v7 + 120)))
          {
            goto LABEL_21;
          }

          sub_10029C3C0(v7, 40);
          if (*(a1 + 70))
          {
            v163 = (v7 + 120);
            v164 = (v7 + 136);
          }

          else
          {
            v163 = (v7 + 136);
            v164 = (v7 + 120);
          }

          if (sub_100240170((v7 + 17), v163, v164, (v7 + 56)))
          {
            goto LABEL_21;
          }

          v220 = *(v7 + 81);
          if (v220 != 16)
          {
            bzero((v7 + 56 + v220), 16 - v220);
          }

          sub_10029C3C0(v7, 41);
          if (!*(a1 + 70))
          {
            if (sub_1002DBAE0(a1, &v301, 0, v7 + 56, 16, *(v7 + 16) != 1))
            {
              goto LABEL_21;
            }
          }

          return;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("The confirmation value does not match.", v36, v37, v38, v39, v40, v41, v42, v297);
          v43 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

LABEL_41:
        v30 = a1;
        v31 = 4;
        goto LABEL_22;
      }

      if (!sub_10000C240())
      {
        goto LABEL_21;
      }

      v117 = sub_10029C3B4();
      sub_10000AF54("Responder device was not in the proper state. State is %s.", v118, v119, v120, v121, v122, v123, v124, v117);
      v125 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        goto LABEL_21;
      }

      sub_10000AF54("Could not find associated pairing data.", v52, v53, v54, v55, v56, v57, v58, v297);
      v59 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }
    }

LABEL_20:
    sub_1000E09C0();
LABEL_21:
    v30 = a1;
    v31 = 8;
LABEL_22:
    sub_1002DF818(v30, v31, v7);
    return;
  }

  v301 = 0u;
  v302 = 0u;
  v299 = 0u;
  v300 = 0u;
  v8 = sub_10029BE74(a1);
  v7 = v8;
  if (!v8)
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("Could not find associated pairing data.", v44, v45, v46, v47, v48, v49, v50, v297);
    v51 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  sub_10029C2C8(v8);
  v9 = *(a1 + 70);
  if (v9 != 1)
  {
    goto LABEL_8;
  }

  if (!sub_10029C4B0(v7, 36))
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    v60 = sub_10029C3B4();
    sub_10000AF54("Initiator device was not in the proper state. State is %s.", v61, v62, v63, v64, v65, v66, v67, v60);
    v68 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v9 = *(a1 + 70);
LABEL_8:
  if (v9)
  {
    goto LABEL_11;
  }

  if (!sub_10029C4B0(v7, 37))
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    v108 = sub_10029C3B4();
    sub_10000AF54("Initiator device was not in the proper state. State is %s.", v109, v110, v111, v112, v113, v114, v115, v108);
    v116 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v9 = *(a1 + 70);
LABEL_11:
  v35 = v9 == 1;
  v10 = 473;
  if (v35)
  {
    v10 = 457;
  }

  *(v7 + v10) = *a2;
  v303 = 0u;
  v304 = 0u;
  v11 = *v7;
  if (*(*v7 + 70))
  {
    v12 = v11 + 48;
    v13 = v11 + 63;
  }

  else
  {
    v12 = v11 + 63;
    v13 = v11 + 48;
  }

  v69 = sub_1002405B8((v7 + 376), (v7 + 457), (v7 + 473), 1651797093, v12, v13, &v303, 32);
  if (v69)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to generate LTK %!", v70, v71, v72, v73, v74, v75, v76, v69);
      v77 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("smpCalculateLtkAndMacKey Failed %!", v78, v79, v80, v81, v82, v83, v84, v69);
    v85 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

LABEL_102:
    sub_10080F604();
    goto LABEL_21;
  }

  v86 = v304;
  *(v7 + 408) = v303;
  *(v7 + 524) = v86;
  v87 = *(v7 + 81);
  if (v87 != 16)
  {
    bzero((v7 + 524 + v87), 16 - v87);
  }

  *(v7 + 424) = 1;
  v88 = *(v7 + 16);
  if (v88 != 6)
  {
    if (v88 == 5)
    {
      if (*(a1 + 70) != 1)
      {
        sub_10029C3C0(v7, 39);
        v165 = sub_1002DFEA0(v7);
        if (v165)
        {
          v166 = v165;
          if (!sub_10000C240())
          {
            goto LABEL_21;
          }

          sub_10000AF54("Failed to send DHKey value with status %!", v167, v168, v169, v170, v171, v172, v173, v166);
          v174 = sub_10000C050(0x43u);
          if (!os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          goto LABEL_102;
        }

        return;
      }

      v126 = sub_1002E86E4(a1, (v7 + 473));
      if (v126)
      {
        v127 = v126;
        if (!sub_10000C240())
        {
          goto LABEL_21;
        }

        sub_10000AF54("Failed to send Nb to central with status %!", v128, v129, v130, v131, v132, v133, v134, v127);
        v135 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        goto LABEL_102;
      }
    }

    else
    {
      if (v88 == 1)
      {
        goto LABEL_64;
      }

      if (!*(a1 + 70))
      {
        v303 = 0uLL;
        v196 = *(v7 + 441) | (*(v7 + 426) << 8) | (*(v7 + 427) << 16) | (*(v7 + 428) << 24);
        v197 = *(v7 + 489);
        v198 = *(v7 + 328);
        v299 = *(v7 + 312);
        v300 = v198;
        v199 = *(v7 + 168);
        v301 = *(v7 + 152);
        v302 = v199;
        if ((v196 >> v197))
        {
          v200 = -127;
        }

        else
        {
          v200 = 0x80;
        }

        v201 = sub_100240458(&v299, &v301, (v7 + 473), v200, &v303);
        if (v201)
        {
          v202 = v201;
          if (!sub_10000C240())
          {
            goto LABEL_21;
          }

          sub_10000AF54("Failed to generate confirmation value %!", v203, v204, v205, v206, v207, v208, v209, v202);
          v210 = sub_10000C050(0x43u);
          if (!os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v303 != *(v7 + 104) || *(&v303 + 1) != *(v7 + 112))
          {
            if (!sub_10000C240())
            {
              goto LABEL_41;
            }

            sub_10000AF54("pairing confirmation does not match %!", v234, v235, v236, v237, v238, v239, v240, 0);
            v241 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_41;
            }

LABEL_147:
            sub_1000E09C0();
            goto LABEL_41;
          }

          *(v7 + 104) = 0;
          *(v7 + 112) = 0;
          v263 = ++*(v7 + 489);
          if (v263 > 0x13)
          {
            sub_10029C3C0(v7, 39);
            v287 = sub_1002DFEA0(v7);
            if (!v287)
            {
              return;
            }

            v288 = v287;
            if (!sub_10000C240())
            {
              goto LABEL_21;
            }

            sub_10000AF54("Failed to send DHKey value with status %!", v289, v290, v291, v292, v293, v294, v295, v288);
            v296 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v296, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }
          }

          else
          {
            v264 = sub_1002E03AC(v7);
            if (!v264)
            {
              v285 = v7;
              v286 = 35;
              goto LABEL_169;
            }

            v265 = v264;
            if (!sub_10000C240())
            {
              goto LABEL_21;
            }

            sub_10000AF54("smpDoOneLeSecuredConnectionPasskeyAuthItteration returned %!", v266, v267, v268, v269, v270, v271, v272, v265);
            v273 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }
          }
        }

LABEL_177:
        sub_10080F604();
        goto LABEL_21;
      }

      v303 = 0uLL;
      v148 = *(v7 + 441);
      v149 = *(v7 + 489);
      v150 = *(v7 + 328);
      v301 = *(v7 + 312);
      v302 = v150;
      v151 = *(v7 + 168);
      v299 = *(v7 + 152);
      v300 = v151;
      if ((v148 >> v149))
      {
        v152 = -127;
      }

      else
      {
        v152 = 0x80;
      }

      v153 = sub_100240458(&v301, &v299, (v7 + 457), v152, &v303);
      if (v153)
      {
        v154 = v153;
        if (!sub_10000C240())
        {
          goto LABEL_21;
        }

        sub_10000AF54("Failed to generate confirmation value %!", v155, v156, v157, v158, v159, v160, v161, v154);
        v162 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        goto LABEL_177;
      }

      if (v303 != *(v7 + 104) || *(&v303 + 1) != *(v7 + 112))
      {
        if (!sub_10000C240())
        {
          goto LABEL_41;
        }

        sub_10000AF54("pairing confirmation does not match %!", v212, v213, v214, v215, v216, v217, v218, 0);
        v219 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        goto LABEL_147;
      }

      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      v242 = sub_1002E86E4(*v7, (v7 + 473));
      if (v242)
      {
        v243 = v242;
        if (!sub_10000C240())
        {
          goto LABEL_21;
        }

        sub_10000AF54("smpSendPairingRandom failed %!", v244, v245, v246, v247, v248, v249, v250, v243);
        v251 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v251, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        goto LABEL_177;
      }

      v274 = ++*(v7 + 489);
      if (v274 <= 0x13)
      {
        v275 = sub_1002E03AC(v7);
        if (v275)
        {
          v276 = v275;
          if (!sub_10000C240())
          {
            goto LABEL_21;
          }

          sub_10000AF54("smpDoOneLeSecuredConnectionPasskeyAuthItteration returned %!", v277, v278, v279, v280, v281, v282, v283, v276);
          v284 = sub_10000C050(0x43u);
          if (!os_log_type_enabled(v284, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          goto LABEL_177;
        }

        v285 = v7;
        v286 = 34;
LABEL_169:
        sub_10029C3C0(v285, v286);
        return;
      }
    }

    v285 = v7;
    v286 = 38;
    goto LABEL_169;
  }

LABEL_64:
  if (*(a1 + 70) == 1)
  {
    v89 = sub_1002E86E4(a1, (v7 + 473));
    if (v89)
    {
      v90 = v89;
      if (!sub_10000C240())
      {
        goto LABEL_21;
      }

      sub_10000AF54("Failed to send Nb to central with status %!", v91, v92, v93, v94, v95, v96, v97, v90);
      v98 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_102;
    }

    sub_10029C3C0(v7, 38);
    if (*(v7 + 16) == 6)
    {
      LODWORD(v303) = 0;
      v175 = *(v7 + 328);
      v301 = *(v7 + 312);
      v302 = v175;
      v176 = *(v7 + 168);
      v299 = *(v7 + 152);
      v300 = v176;
      sub_100240A4C(&v301, &v299, (v7 + 457), (v7 + 473), &v303);
      if (v177)
      {
        v178 = v177;
        if (!sub_10000C240())
        {
          goto LABEL_21;
        }

        sub_10000AF54("Failed to generate vb with status %!", v179, v180, v181, v182, v183, v184, v185, v178);
        v186 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        goto LABEL_177;
      }

      if (!off_100BCE1D8)
      {
        v30 = a1;
        v31 = 12;
        goto LABEL_22;
      }

      v252 = v303 % 0xF4240;
      LODWORD(v303) = v303 % 0xF4240;
LABEL_172:
      *(v7 + 33) = v252;
      *(v7 + 35) = BYTE2(v252);
      *(v7 + 36) = 0;
      *(v7 + 52) = 4;
      sub_1002E83F4(*v7);
      return;
    }

    return;
  }

  v303 = 0uLL;
  v136 = *(v7 + 168);
  v301 = *(v7 + 152);
  v302 = v136;
  v137 = *(v7 + 328);
  v299 = *(v7 + 312);
  v300 = v137;
  v138 = sub_100240458(&v299, &v301, (v7 + 473), 0, &v303);
  if (v138)
  {
    v139 = v138;
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("Failed to generate confirmation value Cb with status %!", v140, v141, v142, v143, v144, v145, v146, v139);
    v147 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_177;
  }

  if (v303 != *(v7 + 104) || *(&v303 + 1) != *(v7 + 112))
  {
    if (!sub_10000C240())
    {
      goto LABEL_41;
    }

    sub_10000AF54("Mismatch in Confirm calculations", v188, v189, v190, v191, v192, v193, v194, v297);
    v195 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    goto LABEL_147;
  }

  sub_10029C3C0(v7, 39);
  if (*(v7 + 16) == 6)
  {
    v298 = 0;
    v221 = *(v7 + 168);
    v301 = *(v7 + 152);
    v302 = v221;
    v222 = *(v7 + 328);
    v299 = *(v7 + 312);
    v300 = v222;
    sub_100240A4C(&v301, &v299, (v7 + 457), (v7 + 473), &v298);
    if (v223)
    {
      v224 = v223;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to generate vb with status %!", v225, v226, v227, v228, v229, v230, v231, v224);
        v232 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      goto LABEL_21;
    }

    if (!off_100BCE1D8)
    {
      v30 = a1;
      v31 = 5;
      goto LABEL_22;
    }

    v252 = v298 % 0xF4240;
    v298 %= 0xF4240u;
    goto LABEL_172;
  }

  v253 = sub_1002DFEA0(v7);
  if (v253)
  {
    v254 = v253;
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("Failed to send DHKey value with status %!", v255, v256, v257, v258, v259, v260, v261, v254);
    v262 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_177;
  }
}

void sub_1002E3C84(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
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

__n128 sub_1002E3DBC(uint64_t a1, __n128 *a2, uint64_t a3)
{
  if (a3 != 16)
  {
    if (!sub_10000C240())
    {
      goto LABEL_14;
    }

    sub_10000AF54("Invalid Encrypt Information size %d", v10, v11, v12, v13, v14, v15, v16, a3);
    v17 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_1000E09C0();
LABEL_14:
    v6 = 0;
LABEL_15:
    sub_1002DF818(a1, 8, v6);
    return result;
  }

  v5 = sub_10029BE74(a1);
  if (!v5)
  {
    if (!sub_10000C240())
    {
      goto LABEL_14;
    }

    sub_10000AF54("Could not find associated pairing data.", v18, v19, v20, v21, v22, v23, v24, v60);
    v25 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v6 = v5;
  sub_10029C2C8(v5);
  if ((*(v6 + 9) & 1) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_15;
    }

    sub_10000AF54("The link is not encrypted, dumping LTK", v27, v28, v29, v30, v31, v32, v33, v60);
    v34 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

LABEL_19:
    sub_1000E09C0();
    goto LABEL_15;
  }

  if ((*(v6 + 75) | 8) != 8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("We got LTK after some other keys.", v35, v36, v37, v38, v39, v40, v41, v60);
      v42 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_25;
  }

  if (!*(a1 + 70))
  {
    v7 = v6;
    v8 = 66;
    goto LABEL_24;
  }

  if (!sub_10029C4B0(v6, 67))
  {
    if (!sub_10000C240())
    {
      goto LABEL_15;
    }

    v51 = sub_10029C3B4();
    sub_10000AF54("Central is sending keys before we are (state is %s).", v52, v53, v54, v55, v56, v57, v58, v51);
    v59 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v7 = v6;
  v8 = 64;
LABEL_24:
  sub_10029C3C0(v7, v8);
LABEL_25:
  if (*(v6 + 74))
  {
    if ((sub_1002E15E0(a2, *(v6 + 81)) & 1) == 0)
    {
      *(v6 + 612) = 1;
    }

    result = *a2;
    *(v6 + 508) = *a2;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("We were not expecting LTK...", v43, v44, v45, v46, v47, v48, v49, v60);
    v50 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return result;
}

void sub_1002E402C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 10)
  {
    if (!sub_10000C240())
    {
      goto LABEL_19;
    }

    sub_10000AF54("Invalid Central Identification size %d", v17, v18, v19, v20, v21, v22, v23, a3);
    v24 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

LABEL_18:
    sub_1000E09C0();
LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  v5 = sub_10029BE74(a1);
  if (!v5)
  {
    if (!sub_10000C240())
    {
      goto LABEL_19;
    }

    sub_10000AF54("Could not find associated pairing data.", v25, v26, v27, v28, v29, v30, v31, v65);
    v32 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v6 = v5;
  sub_10029C2C8(v5);
  if ((*(v6 + 9) & 1) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_20;
    }

    sub_10000AF54("The link is not encrypted, dumping EDIV/Rand", v33, v34, v35, v36, v37, v38, v39, v65);
    v40 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

LABEL_12:
    sub_1000E09C0();
LABEL_20:
    sub_1002DF818(a1, 8, v6);
    return;
  }

  if ((*(v6 + 75) | 8) == 8)
  {
    v7 = *(a1 + 70);
    if (v7 == 1)
    {
      if (!sub_10029C4B0(v6, 64))
      {
        goto LABEL_10;
      }

      v7 = *(a1 + 70);
    }

    if (!v7 && !sub_10029C4B0(v6, 66))
    {
LABEL_10:
      if (!sub_10000C240())
      {
        goto LABEL_20;
      }

      sub_10000AF54("We got a EDIV/RAND without a LTK.", v8, v9, v10, v11, v12, v13, v14, v65);
      v15 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("We got EDIV/RAND after some other keys.", v41, v42, v43, v44, v45, v46, v47, v65);
    v48 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  if ((*(v6 + 74) & 1) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_38;
    }

    sub_10000AF54("We were not expecting LTK...", v49, v50, v51, v52, v53, v54, v55, v65);
    v56 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  *(v6 + 75) |= 1u;
  *(v6 + 542) = *a2;
  *(v6 + 546) = *(a2 + 2);
  v66 = *(v6 + 16) != 1;
  if (*(v6 + 612) != 1)
  {
    if (unk_100BCE1C0 && (*(v6 + 80) & 1) != 0)
    {
      unk_100BCE1C0(a1 + 48, 0, v6 + 508, 16, 0);
      unk_100BCE1C0(a1 + 48, 1, v6 + 81, 1, 0);
      unk_100BCE1C0(a1 + 48, 2, &v66, 1, 0);
      unk_100BCE1C0(a1 + 48, 3, v6 + 542, 2, 0);
      unk_100BCE1C0(a1 + 48, 4, v6 + 546, 8, 0);
    }

    goto LABEL_38;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Compromised device, dropping keys", v57, v58, v59, v60, v61, v62, v63, v65);
    v64 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
LABEL_30:
      sub_1000E09C0();
    }
  }

LABEL_38:
  sub_1002E89E8(v6);
}

__n128 sub_1002E4394(uint64_t a1, __n128 *a2, uint64_t a3)
{
  if (a3 != 16)
  {
    if (!sub_10000C240())
    {
      goto LABEL_14;
    }

    sub_10000AF54("Invalid Identity Information size %d", v9, v10, v11, v12, v13, v14, v15, a3);
    v16 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_1000E09C0();
LABEL_14:
    v6 = 0;
LABEL_15:
    sub_1002DF818(a1, 8, v6);
    return result;
  }

  v5 = sub_10029BE74(a1);
  if (!v5)
  {
    if (!sub_10000C240())
    {
      goto LABEL_14;
    }

    sub_10000AF54("Could not find associated pairing data.", v17, v18, v19, v20, v21, v22, v23, v50);
    v24 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v6 = v5;
  sub_10029C2C8(v5);
  if ((*(v6 + 9) & 1) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_15;
    }

    sub_10000AF54("The link is not encrypted, dumping IRK", v26, v27, v28, v29, v30, v31, v32, v50);
    v33 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

LABEL_19:
    sub_1000E09C0();
    goto LABEL_15;
  }

  if (*(v6 + 75))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 70))
  {
    v7 = 66;
    goto LABEL_21;
  }

  if (!sub_10029C4B0(v6, 67))
  {
    if (!sub_10000C240())
    {
      goto LABEL_15;
    }

    sub_10000AF54("Central is sending keys before we are ...", v42, v43, v44, v45, v46, v47, v48, v50);
    v49 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v7 = 64;
LABEL_21:
  sub_10029C3C0(v6, v7);
LABEL_22:
  if ((*(v6 + 74) & 2) != 0)
  {
    result = *a2;
    *(v6 + 562) = *a2;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("We were not expecting IRK...", v34, v35, v36, v37, v38, v39, v40, v50);
    v41 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return result;
}

void sub_1002E4594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 7)
  {
    if (!sub_10000C240())
    {
      goto LABEL_20;
    }

    sub_10000AF54("Invalid Identity Address Information size %d", v17, v18, v19, v20, v21, v22, v23, a3);
    v24 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1000E09C0();
LABEL_20:
    v6 = 0;
    goto LABEL_21;
  }

  v5 = sub_10029BE74(a1);
  if (!v5)
  {
    if (!sub_10000C240())
    {
      goto LABEL_20;
    }

    sub_10000AF54("Could not find associated pairing data.", v25, v26, v27, v28, v29, v30, v31, v85);
    v32 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v6 = v5;
  sub_10029C2C8(v5);
  if ((*(v6 + 9) & 1) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("The link is not encrypted, dumping Remote address", v34, v35, v36, v37, v38, v39, v40, v85);
    v41 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

LABEL_25:
    sub_1000E09C0();
    goto LABEL_21;
  }

  if (*(v6 + 75))
  {
    goto LABEL_10;
  }

  v7 = *(a1 + 70);
  if (v7 == 1)
  {
    if (!sub_10029C4B0(v6, 64))
    {
      goto LABEL_33;
    }

    v7 = *(a1 + 70);
  }

  if (!v7 && !sub_10029C4B0(v6, 66))
  {
LABEL_33:
    if (!sub_10000C240())
    {
      goto LABEL_21;
    }

    sub_10000AF54("We got an address without IRK.", v50, v51, v52, v53, v54, v55, v56, v85);
    v57 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

LABEL_10:
  if ((*(v6 + 74) & 2) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_32;
    }

    sub_10000AF54("We were not expecting address info...", v8, v9, v10, v11, v12, v13, v14, v85);
    v15 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    goto LABEL_13;
  }

  *(v6 + 75) |= 2u;
  if (*(v6 + 612) != 1)
  {
    if (!unk_100BCE1C0 || (*(v6 + 80) & 1) == 0)
    {
      goto LABEL_32;
    }

    v86[0] = *a2;
    *&v86[1] = *(a2 + 1);
    *&v86[5] = *(a2 + 5);
    sub_10029B614(&v86[1], 6);
    if (v86[0] && (v86[0] != 1 || v86[1] <= 0xBFu))
    {
      if (!sub_10000C240())
      {
        goto LABEL_21;
      }

      sub_10000AF54("We got a remote address (%:) that is neither public nor static!", v69, v70, v71, v72, v73, v74, v75, &v86[1]);
      v76 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_54;
    }

    if (*v86)
    {
      v58 = 0;
    }

    else
    {
      v58 = *&v86[4] == 0;
    }

    if (!v58)
    {
      *(a1 + 55) = 1;
      *(a1 + 56) = *v86;
      *(a1 + 59) = *&v86[3];
      v59 = sub_1002DC300(v86);
      if (!v59 || (*v59 == *(v6 + 562) ? (v60 = v59[1] == *(v6 + 570)) : (v60 = 0), v60))
      {
        unk_100BCE1C0(a1 + 48, 10, v6 + 562, 16, 0);
        unk_100BCE1C0(a1 + 48, 11, v86, 7, 0);
        goto LABEL_32;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("device %: is already paired, with a different irk (old:%@ new %@). Unpair first and then restart pairing.", v61, v62, v63, v64, v65, v66, v67, a1 + 57);
        v68 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v33 = 240;
LABEL_22:
      sub_1002DF818(a1, v33, v6);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Identity address cannot be all 0.", v77, v78, v79, v80, v81, v82, v83, v85);
      v84 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
LABEL_54:
        sub_1000E09C0();
      }
    }

LABEL_21:
    v33 = 8;
    goto LABEL_22;
  }

  if (!sub_10000C240())
  {
    goto LABEL_32;
  }

  sub_10000AF54("Compromised device, dropping keys", v42, v43, v44, v45, v46, v47, v48, v85);
  v49 = sub_10000C050(0x43u);
  if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_32;
  }

LABEL_13:
  sub_1000E09C0();
LABEL_32:
  sub_1002E89E8(v6);
}

void sub_1002E49D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 16)
  {
    if (!sub_10000C240())
    {
      goto LABEL_14;
    }

    sub_10000AF54("Invalid Signing Information size %d", v8, v9, v10, v11, v12, v13, v14, a3);
    v15 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_1000E09C0();
LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  v4 = sub_10029BE74(a1);
  if (!v4)
  {
    if (!sub_10000C240())
    {
      goto LABEL_14;
    }

    sub_10000AF54("Could not find associated pairing data.", v16, v17, v18, v19, v20, v21, v22, v48);
    v23 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v5 = v4;
  sub_10029C2C8(v4);
  if ((v5[9] & 1) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_15;
    }

    sub_10000AF54("The link is not encrypted.", v24, v25, v26, v27, v28, v29, v30, v48);
    v31 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (!v5[75])
  {
    if (!*(a1 + 70))
    {
      v6 = 66;
      goto LABEL_20;
    }

    if (sub_10029C4B0(v5, 67))
    {
      v6 = 64;
LABEL_20:
      sub_10029C3C0(v5, v6);
      goto LABEL_21;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Central is sending keys before we are ...", v40, v41, v42, v43, v44, v45, v46, v48);
      v47 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
LABEL_18:
        sub_1000E09C0();
      }
    }

LABEL_15:
    sub_1002DF818(a1, 8, v5);
    return;
  }

LABEL_21:
  if ((v5[74] & 4) != 0)
  {
    v5[75] |= 4u;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("We were not expecting CSRK...", v32, v33, v34, v35, v36, v37, v38, v48);
    v39 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  sub_1002E89E8(v5);
}

void sub_1002E4BDC(uint64_t a1, char *a2, uint64_t a3)
{
  if (xmmword_100B6B426 == 0 || xmmword_100B6B446 == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_10;
    }

    sub_10000AF54("Root keys are not set, can't pair.", v14, v15, v16, v17, v18, v19, v20, v59);
    v21 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!sub_10029BE74(a1))
  {
    if (a3 == 1)
    {
      if (*(a1 + 168) == 2)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("There is already an encryption in progress on this link, ignoring this request", v22, v23, v24, v25, v26, v27, v28, v59);
          v29 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        v38 = *a2;
        v39 = sub_10029C1A0(a1);
        v40 = v39;
        if (v39)
        {
          v39[80] = v38;
          sub_10029C3C0(v39, 16);
        }

        if (*(a1 + 132) == 7)
        {
          *(&buf + 1) = v40;
          *&buf = 8;
          v41 = sub_10002195C(sub_1002E6BE0, &buf, 0, 0);
          if (v41)
          {
            v42 = v41;
            if (sub_10000C240())
            {
              sub_10000AF54("Could not dispatch SecurityRequest CB with status %!.", v43, v44, v45, v46, v47, v48, v49, v42);
              v50 = sub_10000C050(0x43u);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                sub_10080F604();
              }
            }
          }
        }

        else if (sub_10000C240())
        {
          sub_10000AF54("Got Security request before link is ready for handle %p, lets handle this when the link is actually ready. Link state is %d", v51, v52, v53, v54, v55, v56, v57, a1);
          v58 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136446210;
            *(&buf + 4) = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
          }
        }
      }

      return;
    }

    if (!sub_10000C240() || (sub_10000AF54("Invalid Security Request size %d", v30, v31, v32, v33, v34, v35, v36, a3), v37 = sub_10000C050(0x43u), !os_log_type_enabled(v37, OS_LOG_TYPE_ERROR)))
    {
LABEL_10:
      LOWORD(buf) = 2053;
      sub_10029BEC0(a1, &buf, 2uLL, 0);
      return;
    }

LABEL_9:
    sub_1000E09C0();
    goto LABEL_10;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("There is already a pairing request for this connection. Ignoring request.", v6, v7, v8, v9, v10, v11, v12, v59);
    v13 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      sub_1000E09C0();
    }
  }
}

void sub_1002E4EC8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  memset(__s2, 0, sizeof(__s2));
  v6 = sub_10029BE74(a1);
  v7 = v6;
  if (!v6)
  {
    if (!sub_10000C240())
    {
      goto LABEL_67;
    }

    sub_10000AF54("Could not find associated pairing data.", v22, v23, v24, v25, v26, v27, v28, v125);
    v29 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    goto LABEL_40;
  }

  if (a3 != 64)
  {
    if (!sub_10000C240())
    {
      goto LABEL_67;
    }

    sub_10000AF54("Invalid pairing public key size %d", v30, v31, v32, v33, v34, v35, v36, a3);
    v37 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    goto LABEL_40;
  }

  if ((*(v6 + 72) & *(v6 + 80) & 8) == 0)
  {
    if (!sub_10000C240())
    {
      goto LABEL_67;
    }

    sub_10000AF54("Both devices should be using secured connection to get this PDU.", v38, v39, v40, v41, v42, v43, v44, v125);
    v45 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    goto LABEL_40;
  }

  v8 = *(a1 + 70);
  if (!*(a1 + 70))
  {
    if (sub_10029C4B0(v6, 33))
    {
      v8 = *(a1 + 70);
      goto LABEL_7;
    }

    if (!sub_10000C240())
    {
      goto LABEL_67;
    }

    v66 = sub_10029C3B4();
    sub_10000AF54("Central connection should be in SMP_STATE_PAIRING_SPUBLICK to send this command, current state is %s.", v67, v68, v69, v70, v71, v72, v73, v66);
    v74 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

LABEL_40:
    sub_1000E09C0();
LABEL_67:
    sub_1002DF818(a1, 8, v7);
    return;
  }

LABEL_7:
  if (v8 == 1 && !sub_10029C4B0(v7, 32))
  {
    if (!sub_10000C240())
    {
      goto LABEL_67;
    }

    v57 = sub_10029C3B4();
    sub_10000AF54("Peripheral connection should be in SMP_STATE_PAIRING_MPUBLICK to send this command, current state is %s.", v58, v59, v60, v61, v62, v63, v64, v57);
    v65 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    goto LABEL_40;
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  *(v7 + 344) = a2[2];
  *(v7 + 360) = v11;
  *(v7 + 312) = v9;
  *(v7 + 328) = v10;
  if (*(*v7 + 70) == 1 && *(v7 + 16) != 5)
  {
    v75 = sub_100240E7C((v7 + 152), (v7 + 216));
    if (v75)
    {
      v76 = v75;
      if (sub_10000C240())
      {
        sub_10000AF54("LE_ReadLocalPublicKey failed %!", v77, v78, v79, v80, v81, v82, v83, v76);
        v84 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      goto LABEL_67;
    }

    v103 = *(v7 + 16);
    if (v103 != 1 && v103 != 6)
    {
      __buf[0] = 12;
      *&__buf[1] = *(v7 + 152);
      v128 = *(v7 + 168);
      v129 = *(v7 + 184);
      v130 = *(v7 + 200);
      v104 = sub_10029BEC0(*v7, __buf, 0x41uLL, 1);
      if (v104)
      {
        v105 = v104;
        if (sub_10000C240())
        {
          sub_10000AF54("smpSendPairingPublicKey failed %!", v106, v107, v108, v109, v110, v111, v112, v105);
          v113 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        goto LABEL_67;
      }
    }
  }

  if (!memcmp((v7 + 312), __s2, 0x40uLL) || !memcmp((v7 + 216), __s2, 0x60uLL))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid all zeros public key or all zeros private key", v46, v47, v48, v49, v50, v51, v52, v125);
      v53 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    v12 = sub_100241004((v7 + 312), 0x40u, (v7 + 216), 0x60u, (v7 + 376));
    if (v12)
    {
      v13 = v12;
      if (!sub_10000C240())
      {
        goto LABEL_67;
      }

      sub_10000AF54("DHKey generation failed %!", v14, v15, v16, v17, v18, v19, v20, v13);
      v21 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }
  }

  v54 = *(v7 + 16);
  if (v54 > 4)
  {
    if (v54 == 5)
    {
      v114 = sub_1002E7E18(v7);
      if (!v114)
      {
        return;
      }

      v115 = v114;
      if (!sub_10000C240())
      {
        goto LABEL_67;
      }

      sub_10000AF54("recvdSMPDeferredOOBPublicKey failed %!", v116, v117, v118, v119, v120, v121, v122, v115);
      v123 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

LABEL_66:
      sub_10080F604();
      goto LABEL_67;
    }

    if (v54 != 6)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (v54 - 2 < 3)
    {
      *__buf = 0;
      v55 = *v7;
      if (*(*v7 + 70))
      {
        if (*(*v7 + 70) == 1 && v54 == 3)
        {
          goto LABEL_34;
        }
      }

      else if (v54 == 2)
      {
LABEL_34:
        arc4random_buf(__buf, 4uLL);
        v56 = *__buf % 0xF423Fu + 1;
        *__buf = v56;
        *(v7 + 33) = v56;
        *(v7 + 35) = BYTE2(v56);
        *(v7 + 36) = 0;
        *(v7 + 52) = 1;
        v55 = *v7;
LABEL_71:
        if (*(v55 + 70))
        {
          v124 = 34;
        }

        else
        {
          v124 = 35;
        }

        sub_10029C3C0(v7, v124);
        sub_1002E83F4(*v7);
        return;
      }

      *(v7 + 52) = 2;
      goto LABEL_71;
    }

    if (v54 != 1)
    {
LABEL_54:
      if (sub_10000C240())
      {
        sub_10000AF54("Don't know what to do now", v95, v96, v97, v98, v99, v100, v101, v125);
        v102 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      goto LABEL_67;
    }
  }

  if (v54 == 6 || (*(v7 + 490) & 1) != 0)
  {
    v85 = sub_1002E0178(v7);
    if (v85)
    {
      v86 = v85;
      if (!sub_10000C240())
      {
        goto LABEL_67;
      }

      sub_10000AF54("recvdSMPDeferredJustWorksNumComparPublicKey failed %!", v87, v88, v89, v90, v91, v92, v93, v86);
      v94 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }
  }
}

uint64_t sub_1002E54D8(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = sub_10029BE74(a1);
  v7 = result;
  if (!result)
  {
    if (!sub_10000C240())
    {
      return sub_1002DF818(a1, 8, v7);
    }

    sub_10000AF54("Could not find associated pairing data.", v18, v19, v20, v21, v22, v23, v24, v52);
    v25 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      return sub_1002DF818(a1, 8, v7);
    }

    goto LABEL_20;
  }

  if (a3 != 16)
  {
    if (!sub_10000C240())
    {
      return sub_1002DF818(a1, 8, v7);
    }

    sub_10000AF54("Invalid pairing DHKey check size %d", v26, v27, v28, v29, v30, v31, v32, a3);
    v33 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      return sub_1002DF818(a1, 8, v7);
    }

    goto LABEL_20;
  }

  v8 = *(a1 + 70);
  if (!*(a1 + 70))
  {
    result = sub_10029C4B0(result, 39);
    if (result)
    {
      v8 = *(a1 + 70);
      goto LABEL_6;
    }

    if (!sub_10000C240())
    {
      return sub_1002DF818(a1, 8, v7);
    }

    v43 = sub_10029C3B4();
    sub_10000AF54("Central connection should be in SMP_STATE_PAIRING_SDHKEY to send this command, current state is %s.", v44, v45, v46, v47, v48, v49, v50, v43);
    v51 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      return sub_1002DF818(a1, 8, v7);
    }

LABEL_20:
    sub_1000E09C0();
    return sub_1002DF818(a1, 8, v7);
  }

LABEL_6:
  if (v8 == 1)
  {
    result = sub_10029C4B0(v7, 38);
    if ((result & 1) == 0)
    {
      if (!sub_10000C240())
      {
        return sub_1002DF818(a1, 8, v7);
      }

      v34 = sub_10029C3B4();
      sub_10000AF54("Peripheral connection should be in SMP_STATE_PAIRING_MDHKEY to send this command, current state is %s.", v35, v36, v37, v38, v39, v40, v41, v34);
      v42 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        return sub_1002DF818(a1, 8, v7);
      }

      goto LABEL_20;
    }
  }

  *(v7 + 492) = *a2;
  *(v7 + 491) = 1;
  if (*(*v7 + 70) != 1 || *(v7 + 16) != 6 || *(v7 + 490) == 1)
  {
    result = sub_1002DFF7C(a1);
    if (result)
    {
      v9 = result;
      if (sub_10000C240())
      {
        sub_10000AF54("recvdSMPDeferredDHKeyCheck Failed %! ", v10, v11, v12, v13, v14, v15, v16, v9);
        v17 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      return sub_1002DF818(a1, 8, v7);
    }
  }

  return result;
}

uint64_t sub_1002E5714(uint64_t a1, int a2, char a3)
{
  if (!sub_1000ABD24(a1))
  {
    sub_1000D660C();
  }

  v6 = sub_10029BE74(a1);
  result = sub_10029BE74(a1);
  if (!a2)
  {
    if (result)
    {
      *(v6 + 9) = a3;
    }
  }

  return result;
}

void sub_1002E5770(uint64_t a1, int a2, int a3)
{
  v6 = byte_100B53E49;
  if (byte_100B53E49 == 255)
  {
    v6 = 11;
  }

  if (byte_100B53E4A == 255)
  {
    v7 = 11;
  }

  else
  {
    v7 = byte_100B53E4A;
  }

  v8 = v6 & 0xF7;
  v9 = v7 & 0xF7;
  if (byte_100B6B410)
  {
    v10 = v7 & 0xF7;
  }

  else
  {
    v10 = v7;
  }

  if (byte_100B6B410)
  {
    v11 = v6 & 0xF7;
  }

  else
  {
    v11 = v6;
  }

  if (!sub_1000ABD24(a1))
  {
    sub_1000D660C();
  }

  v12 = sub_10029BE74(a1);
  if (v12)
  {
    v13 = v12;
    if (a2)
    {
      if (sub_10029C4B0(v12, 16) && !*(a1 + 70))
      {
        v23 = v13[80] & 4;
        v24 = byte_100B6B414;
        v25 = v23 | v24 | sub_1002D20F4();
        if ((v13[80] & 8) != 0)
        {
          if ((v11 & 8) != 0 && (v13[80] & 0x20) != 0 && (byte_100B6B412 & 1) == 0)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("Sending CT2=1", v41, v42, v43, v44, v45, v46, v47, v49);
              v48 = sub_10000C050(0x43u);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446210;
                v51 = sub_10000C0FC();
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
              }
            }
          }

          v26 = v25 | 0x28;
        }

        else
        {
          v26 = v25 & 0xDF;
          v10 = v9;
          v11 = v8;
        }

        if (*(a1 + 55))
        {
          v29 = (a1 + 56);
        }

        else
        {
          v29 = 0;
        }

        v30 = sub_1002DB2CC((a1 + 48), v29);
        if (sub_10000C240())
        {
          sub_10000AF54("authReq=%x expectedKeys=%x requestedKeys=%x", v31, v32, v33, v34, v35, v36, v37, v26);
          v38 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = sub_10000C0FC();
            *buf = 136446210;
            v51 = v39;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        sub_1002E1C74(a1, byte_100B53E4B, v30, v26, v11, v10);
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Could not encrypt the link.", v14, v15, v16, v17, v18, v19, v20, v49);
          v21 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_10029BA98(v13, 4802, 1);
      }
    }

    else
    {
      *(*v12 + 169) = v12[81];
      if (sub_10029C4B0(v12, 16) && !*(a1 + 70))
      {
        v27 = v13;
        v28 = 0;
      }

      else
      {
        if (!a3)
        {
          return;
        }

        sub_10029C3C0(v13, 42);
        if (*(a1 + 70))
        {
          if (*(a1 + 70) != 1)
          {
            return;
          }

          sub_1002E5B94(v13);
          sub_1002E5D18(v13);
          v22 = (v13[72] & v13[80] & 8) != 0 ? -10 : -9;
          if ((v22 & v13[74] & 0xF7) != (v22 & v13[75] & 0xF7) && (v22 & v13[74]) != 0)
          {
            return;
          }
        }

        else
        {
          if ((v13[72] & v13[80] & 8) != 0)
          {
            v40 = -10;
          }

          else
          {
            v40 = -9;
          }

          if ((v40 & v13[74] & 0xF7) != (v40 & v13[75] & 0xF7) && (v40 & v13[74]) != 0)
          {
            return;
          }

          sub_1002E5B94(v13);
          sub_1002E5D18(v13);
        }

        v27 = v13;
        v28 = 1;
      }

      sub_10029BA98(v27, 0, v28);
    }
  }
}

void sub_1002E5B94(uint64_t a1)
{
  if ((*(a1 + 72) & *(a1 + 80) & 8) != 0)
  {

    sub_10029C3C0(a1, 128);
    return;
  }

  v24 = 0;
  arc4random_buf((a1 + 540), 2uLL);
  arc4random_buf((a1 + 554), 8uLL);
  v2 = sub_10023FDC8(&xmmword_100B6B416, (a1 + 554), &v24);
  if (v2)
  {
    v3 = v2;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not generate DIV %!", v4, v5, v6, v7, v8, v9, v10, v3);
    v11 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_8;
  }

  v12 = *(a1 + 540);
  *(a1 + 544) = v12 ^ v24;
  v13 = sub_100240328(&xmmword_100B6B426, v12, 0, (a1 + 524));
  if (v13)
  {
    v14 = v13;
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Could not generate LTK %!", v15, v16, v17, v18, v19, v20, v21, v14);
    v22 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_8:
    sub_10080F604();
    return;
  }

  v23 = *(a1 + 81);
  if (v23 != 16)
  {
    bzero((a1 + 524 + v23), 16 - v23);
  }

  sub_10029C3C0(a1, 128);
}

void sub_1002E5D18(uint64_t a1)
{
  if (!sub_10029C4B0(a1, 128))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("SMP State is not GENERATED.", v2, v3, v4, v5, v6, v7, v8, v76);
      v9 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  if (*(*a1 + 70))
  {
    v10 = 66;
  }

  else
  {
    v10 = 64;
  }

  sub_10029C3C0(a1, v10);
  if ((*(a1 + 72) & *(a1 + 80) & 8) == 0)
  {
    if (*(a1 + 76) & 1) == 0 || (*(a1 + 77))
    {
      goto LABEL_31;
    }

    buf[0] = 6;
    *&buf[1] = *(a1 + 524);
    if (*(a1 + 9))
    {
      if (!sub_10029BEC0(*a1, buf, 0x11uLL, 1))
      {
        buf[0] = 7;
        *&buf[1] = *(a1 + 544);
        *&buf[3] = *(a1 + 554);
        if (*(a1 + 9))
        {
          v13 = sub_10029BEC0(*a1, buf, 0xBuLL, 1) == 0;
          goto LABEL_67;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("This link is not encrypted, cannot send EDIV/RAND.", v68, v69, v70, v71, v72, v73, v74, v76);
          v75 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("This link is not encrypted, cannot send LTK.", v52, v53, v54, v55, v56, v57, v58, v76);
      v59 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v13 = 0;
LABEL_67:
    if (*(a1 + 612) == 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Compromised device, dropping keys", v60, v61, v62, v63, v64, v65, v66, v76);
        v67 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    else if (v13 && (*(a1 + 80) & 1) != 0 && unk_100BCE1C0)
    {
      buf[0] = *(a1 + 16) != 1;
      unk_100BCE1C0(*a1 + 48, 6, a1 + 81, 1, 0);
      unk_100BCE1C0(*a1 + 48, 7, buf, 1, 0);
      unk_100BCE1C0(*a1 + 48, 8, a1 + 544, 2, 0);
      unk_100BCE1C0(*a1 + 48, 9, a1 + 554, 8, 0);
    }

    goto LABEL_30;
  }

  if ((*(a1 + 80) & 1) != 0 && unk_100BCE1C0)
  {
    if (*(a1 + 16) == 1)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    LOBYTE(v78[0]) = v11;
    unk_100BCE1C0(*a1 + 48, 5, a1 + 524, 16, 0);
    unk_100BCE1C0(*a1 + 48, 7, v78, 1, 0);
    unk_100BCE1C0(*a1 + 48, 6, a1 + 81, 1, 0);
    if (*(a1 + 594) == 1)
    {
      if (*(a1 + 593))
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 0;
    }

    v77 = v12;
    if (sub_10000C240())
    {
      sub_10000AF54("deriveLKLTK=%d useH7=%d", v14, v15, v16, v17, v18, v19, v20, v12);
      v21 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = sub_10000C0FC();
        *buf = 136446210;
        *&buf[4] = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (v12)
    {
      unk_100BCE1C0(*a1 + 48, 16, &v77, 1, 0);
    }

LABEL_30:
    *(a1 + 77) |= 1u;
  }

LABEL_31:
  if ((*(a1 + 76) & 2) == 0 || (*(a1 + 77) & 2) != 0)
  {
    goto LABEL_59;
  }

  buf[0] = 8;
  buf[1] = *sub_10029BA58();
  buf[2] = *(sub_10029BA58() + 1);
  buf[3] = *(sub_10029BA58() + 2);
  buf[4] = *(sub_10029BA58() + 3);
  buf[5] = *(sub_10029BA58() + 4);
  buf[6] = *(sub_10029BA58() + 5);
  buf[7] = *(sub_10029BA58() + 6);
  buf[8] = *(sub_10029BA58() + 7);
  buf[9] = *(sub_10029BA58() + 8);
  buf[10] = *(sub_10029BA58() + 9);
  buf[11] = *(sub_10029BA58() + 10);
  buf[12] = *(sub_10029BA58() + 11);
  buf[13] = *(sub_10029BA58() + 12);
  buf[14] = *(sub_10029BA58() + 13);
  buf[15] = *(sub_10029BA58() + 14);
  buf[16] = *(sub_10029BA58() + 15);
  if (*(a1 + 9))
  {
    sub_10029BEC0(*a1, buf, 0x11uLL, 1);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("This link is not encrypted, cannot send IRK.", v23, v24, v25, v26, v27, v28, v29, v76);
    v30 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  v31 = *(*a1 + 268);
  if (v31 == 1)
  {
    v32 = 0;
  }

  else if (v31 || (*(a1 + 76) & 8) != 0 && (*(a1 + 74) & 8) != 0)
  {
    v32 = 1;
  }

  else
  {
    v32 = sub_1001990A4(*a1);
  }

  memset(v78, 0, 7);
  sub_1000841FC(v78);
  if (!LOBYTE(v78[0]))
  {
    goto LABEL_51;
  }

  v33 = *(*a1 + 24);
  if (*(*a1 + 20) == 13)
  {
    if (v33 < 0xB)
    {
      goto LABEL_51;
    }

    v34 = 0;
  }

  else
  {
    v34 = v33 < 0xA;
  }

  if (((v34 | byte_100B53E4C | v32) & 1) == 0)
  {
    v40 = sub_1002DA3A4();
    v35 = sub_10009A66C(v40);
    v78[0] = v35;
    BYTE2(v78[1]) = BYTE6(v35);
    LOWORD(v78[1]) = WORD2(v35);
    v41.i64[0] = 0xFFFFFFFFFFFFFFLL;
    v41.i64[1] = 0xFFFFFFFFFFFFFFLL;
    v42 = vandq_s8(vdupq_n_s64(v35), v41);
    v37 = vmovn_s32(vuzp1q_s32(vshlq_u64(v42, xmmword_1008A5080), vshlq_u64(v42, xmmword_1008A5070)));
    v38 = v35 >> 16;
    v39 = v35 >> 8;
    goto LABEL_53;
  }

LABEL_51:
  sub_1002D2760(v78);
  LOBYTE(v35) = v78[0];
  v36.i32[0] = *(v78 + 3);
  v37 = vrev64_s16(*&vmovl_u8(v36));
  LOBYTE(v38) = BYTE2(v78[0]);
  LOBYTE(v39) = BYTE1(v78[0]);
LABEL_53:
  buf[0] = 9;
  buf[1] = v35;
  *&buf[2] = vuzp1_s8(v37, v37).u32[0];
  buf[6] = v38;
  buf[7] = v39;
  if (*(a1 + 9))
  {
    sub_10029BEC0(*a1, buf, 8uLL, 1);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("This link is not encrypted, cannot send address.", v43, v44, v45, v46, v47, v48, v49, v76);
    v50 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  *(a1 + 77) |= 2u;
LABEL_59:
  if (*(*a1 + 70))
  {
    v51 = 67;
  }

  else
  {
    v51 = 65;
  }

  sub_10029C3C0(a1, v51);
}

uint64_t sub_1002E6428(uint64_t a1, _OWORD *a2, _BYTE *a3)
{
  if (!sub_1000ABD24(a1))
  {
    sub_1000D660C();
  }

  v6 = sub_10029BE74(a1);
  if (v6)
  {
    v7 = v6;
    if (sub_10029C4B0(v6, 41))
    {
      v8 = *(v7 + 16);
      if ((*(v7 + 72) & *(v7 + 80) & 8) != 0)
      {
        if (v8 == 1)
        {
          v9 = 2;
        }

        else
        {
          v9 = 3;
        }

        *a3 = v9;
        if (!a2)
        {
          return 1;
        }

        v10 = *(v7 + 524);
      }

      else
      {
        *a3 = v8 != 1;
        if (!a2)
        {
          return 1;
        }

        v10 = *(v7 + 56);
      }

      *a2 = v10;
      return 1;
    }

    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("STK not generated for handle 0x%x", v20, v21, v22, v23, v24, v25, v26, a1);
      v27 = sub_10000C050(0x43u);
      result = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      if (result)
      {
LABEL_16:
        sub_1000E09C0();
        return 0;
      }
    }
  }

  else
  {
    result = sub_10000C240();
    if (result)
    {
      sub_10000AF54("There is no pairing data for this connection.", v12, v13, v14, v15, v16, v17, v18, v28);
      v19 = sub_10000C050(0x43u);
      result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (result)
      {
        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t sub_1002E655C(uint64_t *a1, __int16 a2, void *a3)
{
  v24 = 0;
  v5 = sub_10023FDC8(&xmmword_100B6B416, a1, &v24);
  if (v5)
  {
    v6 = v5;
    if (sub_10000C240())
    {
      sub_10000AF54("Could not generate DIV %!", v7, v8, v9, v10, v11, v12, v13, v6);
      v14 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_8:
        sub_10080F604();
      }
    }
  }

  else
  {
    v6 = sub_100240328(&xmmword_100B6B426, v24 ^ a2, 0, a3);
    if (v6)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Could not generate LTK %!", v15, v16, v17, v18, v19, v20, v21, v6);
        v22 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }
      }
    }
  }

  return v6;
}

uint64_t sub_1002E6664(__int16 *a1, int a2)
{
  if (*a1 | *(a1 + 2))
  {
    if (a2)
    {
      v4 = sub_10029BA64();
    }

    else
    {
      v4 = sub_10029BA58();
    }

    if (*v4 == 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Cannot generate local random address when the IRK is set to 0's", v23, v24, v25, v26, v27, v28, v29, v32);
        v30 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 103;
    }

    else
    {
      v13 = sub_1000457E4(v4, a1, a1 + 3);
      if (sub_10000EFCC() && sub_10000C240())
      {
        v21 = "Primary";
        if (a2)
        {
          v21 = "Secondary";
        }

        sub_10000AF54("******* GENERATING RANDOM ADDRESS WITH %s IRK:%@ address:%@ AH result:%d", v14, v15, v16, v17, v18, v19, v20, v21);
        v22 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v34 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot generate local random address when the address bytes are set to 0's", v5, v6, v7, v8, v9, v10, v11, v32);
      v12 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 101;
  }

  return v13;
}

void sub_1002E683C(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  if (a2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Link ready CB with status %!(%d).", v3, v4, v5, v6, v7, v8, v9, a2);
      v10 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_31:
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v12 = sub_10029BE74(a1);
    if (v12)
    {
      v13 = v12;
      if (*(a1 + 168) == 1)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Connection %p is already encrypted, lets drop this pairing data", v14, v15, v16, v17, v18, v19, v20, a1);
          v21 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136446210;
            *(&buf + 4) = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
          }
        }

        sub_10029BA98(v13, 0, 0);
      }

      else if (sub_10029C4B0(v12, 16))
      {
        if (sub_10000C240())
        {
          sub_10029C3B4();
          sub_10000AF54("continue deferred handling of incoming Security Request from device %: (%s)", v22, v23, v24, v25, v26, v27, v28, a1 + 49);
          v29 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136446210;
            *(&buf + 4) = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
          }
        }

        *(&buf + 1) = v13;
        *&buf = 8;
        v30 = sub_10002195C(sub_1002E6BE0, &buf, 5, 0);
        if (v30)
        {
          v31 = v30;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not dispatch SecurityRequest CB with status %!.", v32, v33, v34, v35, v36, v37, v38, v31);
            v39 = sub_10000C050(0x43u);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }
        }
      }

      else if (sub_10029C4B0(v13, 17))
      {
        if (sub_10000C240())
        {
          sub_10029C3B4();
          sub_10000AF54("continue deferred handling of incoming Pairing Request from device %: (%s)", v40, v41, v42, v43, v44, v45, v46, a1 + 49);
          v47 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136446210;
            *(&buf + 4) = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, " %{public}s", &buf, 0xCu);
          }
        }

        *(&buf + 1) = &v66;
        *&buf = 8;
        v48 = sub_10002195C(sub_1002E6CEC, &buf, 5, 0);
        if (v48)
        {
          v49 = v48;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not dispatch pairing request with status %!.", v50, v51, v52, v53, v54, v55, v56, v49);
            v57 = sub_10000C050(0x43u);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              sub_10080F604();
            }
          }
        }
      }

      else if (sub_1002DF898(a1))
      {
        if (sub_10000C240())
        {
          sub_10029C3B4();
          sub_10000AF54("Device %: is in state %s, but its not supposed to be in this state", v58, v59, v60, v61, v62, v63, v64, a1 + 49);
          v65 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }
        }
      }
    }
  }
}

void sub_1002E6BE0(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (!sub_1000ABD24(v1))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Handle is not valid anymore.", v6, v7, v8, v9, v10, v11, v12, v22);
    v13 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_14:
    sub_1000E09C0();
    return;
  }

  v2 = sub_10029BE74(v1);
  if (!v2)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("There is no pairing data for connection", v14, v15, v16, v17, v18, v19, v20, v22);
    v21 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_14;
  }

  v3 = off_100BCE1C8;
  if (off_100BCE1C8)
  {
    v4 = *(v2 + 80);
    v5 = 48;
    if (*(v1 + 55))
    {
      v5 = 56;
    }

    (v3)(v1 + v5, (v4 >> 2) & 1, 0);
  }
}

void sub_1002E6CEC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  if (!*v1 || !sub_1000ABD24(*v1))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("This handle is not a LE connection.", v4, v5, v6, v7, v8, v9, v10, v20);
    v11 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_10:
    sub_1000E09C0();
    return;
  }

  if (!sub_10029BE74(v2))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("There is no security request for this connection. Ignoring reply.", v12, v13, v14, v15, v16, v17, v18, v20);
    v19 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_10;
  }

  v3 = off_100BCE1D0;
  if (off_100BCE1D0)
  {

    v3(v2 + 48, 0);
  }
}

void sub_1002E6DE0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10029BE74(a1);
  if (v3)
  {

    sub_10029BA98(v3, a2, 1);
  }
}

uint64_t sub_1002E6E2C(uint64_t a1)
{
  if (!sub_1000ABD24(a1))
  {
    return 122;
  }

  v2 = *(a1 + 272);
  if (v2)
  {
    sub_10029BA98(v2, 122, 1);
  }

  result = *(a1 + 212);
  if (result)
  {
    sub_10002242C(result);
    result = 0;
    *(a1 + 212) = 0;
  }

  return result;
}

void sub_1002E6E84(__int128 *a1)
{
  v2 = sub_10000C240();
  if (a1)
  {
    if (v2)
    {
      sub_10000AF54("MUC - save IRK and update RSA adv instance", v3, v4, v5, v6, v7, v8, v9, *v12);
      v10 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 136446210;
        *&v12[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", v12, 0xCu);
      }
    }

    xmmword_100B6B436 = *a1;
  }

  else
  {
    if (v2)
    {
      sub_10000AF54("MUC - reset IRK", v3, v4, v5, v6, v7, v8, v9, *v12);
      v11 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 136446210;
        *&v12[4] = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", v12, 0xCu);
      }
    }

    xmmword_100B6B436 = 0uLL;
  }
}

uint64_t sub_1002E6FC8(__int128 *a1, __n128 *a2, __int128 *a3, __int128 *a4, __n128 *a5)
{
  xmmword_100B6B446 = *a1;
  sub_10029BA70(a2);
  sub_10029BA84(a5);
  xmmword_100B6B426 = *a3;
  xmmword_100B6B416 = *a4;
  return 0;
}

uint64_t sub_1002E703C(uint64_t (*a1)(void, void, void, void, void), uint64_t a2, uint64_t (*a3)(void, void, void, void, void), int a4, int a5, char a6, char a7)
{
  if (qword_100B6B458)
  {
    sub_1000D660C();
  }

  byte_100B53E4B = sub_1002E7198(a4, a5);
  unk_100BCE1C0 = a1;
  *&off_100BCE1C8 = *a2;
  off_100BCE1D8 = *(a2 + 16);
  unk_100BCE1E0 = a3;
  v14 = sub_10028E64C(6, 2, 8, 8u, &qword_100B6B458, sub_10029BCD4);
  if (v14 || !qword_100B6B458)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not register the LE SecurityManager : %!", v15, v16, v17, v18, v19, v20, v21, v14);
      v22 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    *sub_1000CD958(qword_100B6B458) = 65;
    byte_100B6B411 = a6;
    byte_100B6B415 = a7;
    *(sub_1000CD958(qword_100B6B458) + 2) = -1;
    sub_1002CE244(&unk_100AE9EA8);
  }

  return v14;
}

uint64_t sub_1002E7198(int a1, int a2)
{
  switch(a1)
  {
    case 3:
      if (a2 == 16)
      {
        return 2;
      }

      if (a2 == 32)
      {
        return 4;
      }

      goto LABEL_13;
    case 2:
      if (a2 != 16)
      {
        if (a2 == 32)
        {
          return 1;
        }

        goto LABEL_13;
      }

      break;
    case 1:
      if (a2 != 16)
      {
        if (a2 == 32)
        {
          return 0;
        }

        goto LABEL_13;
      }

      break;
    default:
LABEL_13:
      sub_1000D660C();
      return 3;
  }

  return 3;
}

uint64_t sub_1002E721C()
{
  sub_1002CE3E4(&unk_100AE9EA8);
  v0 = sub_10028E908(qword_100B6B458);
  if (v0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not de-register the LE SecurityManager : %!", v1, v2, v3, v4, v5, v6, v7, v0);
      v8 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    qword_100B6B458 = 0;
    *&unk_100BCE1C0 = 0u;
    *&off_100BCE1D0 = 0u;
    *&unk_100BCE1E0 = 0u;
    byte_100B53E4B = 3;
    sub_10029BA70(&xmmword_1008A50A2);
    sub_10029BA84(&xmmword_1008A50A2);
    xmmword_100B6B416 = 0uLL;
    xmmword_100B6B426 = 0uLL;
    xmmword_100B6B446 = 0uLL;
  }

  return v0;
}

uint64_t sub_1002E7308()
{
  if (xmmword_100B6B426 != 0 && xmmword_100B6B446 != 0)
  {
    return 0;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Root keys are not set, can't pair.", v2, v3, v4, v5, v6, v7, v8, v0);
    v9 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  sub_1000D660C();
  return 4826;
}

uint64_t sub_1002E73A0(uint64_t a1, int a2)
{
  v4 = byte_100B53E49;
  if (byte_100B53E49 == 255)
  {
    v4 = 11;
  }

  if (byte_100B53E4A == 255)
  {
    v5 = 11;
  }

  else
  {
    v5 = byte_100B53E4A;
  }

  v6 = v4 & 0xF7;
  v7 = v5 & 0xF7;
  if (byte_100B6B410)
  {
    v8 = v5 & 0xF7;
  }

  else
  {
    v8 = v5;
  }

  if (byte_100B6B410)
  {
    v9 = v4 & 0xF7;
  }

  else
  {
    v9 = v4;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("StartPairing was called", v10, v11, v12, v13, v14, v15, v16, v91);
    v17 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v93 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v18 = sub_1002E7308();
  if (v18)
  {
    return v18;
  }

  if (!sub_1000ABD24(a1))
  {
    if (!sub_10000C240())
    {
      return 4820;
    }

    sub_10000AF54("Connection handle is not a LE handle...", v19, v20, v21, v22, v23, v24, v25, v91);
    v26 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      return 4820;
    }

LABEL_21:
    sub_1000E09C0();
    return 4820;
  }

  if (*(a1 + 265))
  {
    return 4837;
  }

  v28 = v6;
  v29 = v7;
  if (a2)
  {
    v30 = 4;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30 | sub_1002D20F4();
  if (byte_100B6B411 == 1)
  {
    if (*(a1 + 24) > 7u || (v32 = *(a1 + 20), v32 != 2) && v32 != 90 && v32 != 13 || *(a1 + 70) == 1)
    {
      if ((byte_100B6B412 & 1) != 0 || (*(a1 + 264) & 1) != 0 || (v9 & 8) == 0)
      {
        v29 = v8;
        v28 = v9;
        v31 |= 8u;
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Sending CT2=1", v33, v34, v35, v36, v37, v38, v39, v91);
          v40 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = sub_10000C0FC();
            *buf = 136446210;
            v93 = v41;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        v31 |= 0x28u;
        v29 = v8;
        v28 = v9;
      }
    }
  }

  if (*(a1 + 264))
  {
    v42 = v6;
  }

  else
  {
    v7 = v29;
    v42 = v28;
  }

  if (*(a1 + 264))
  {
    v43 = v31 & 0x1F;
  }

  else
  {
    v43 = v31;
  }

  v44 = v43 | byte_100B6B414;
  if (*(a1 + 55))
  {
    v45 = (a1 + 56);
  }

  else
  {
    v45 = 0;
  }

  v46 = sub_1002DB2CC((a1 + 48), v45);
  if (sub_10000C240())
  {
    sub_10000AF54("authReq=%x localKeyDist=%x localKeyReq=%x", v47, v48, v49, v50, v51, v52, v53, v44);
    v54 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = sub_10000C0FC();
      *buf = 136446210;
      v93 = v55;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (*(a1 + 70) != 1)
  {
    return sub_1002E1C74(a1, byte_100B53E4B, v46, v44, v42, v7);
  }

  buf[0] = 11;
  buf[1] = v44;
  if (!sub_1000ABD24(a1))
  {
    if (!sub_10000C240())
    {
      return 4820;
    }

    sub_10000AF54("This command is only available to LE devices.", v67, v68, v69, v70, v71, v72, v73, v91);
    v74 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      return 4820;
    }

    goto LABEL_21;
  }

  if (*(a1 + 70))
  {
    v56 = sub_10029BE74(a1);
    if (v56)
    {
      v57 = v56;
      if (!sub_10029C4B0(v56, 0))
      {
        if (sub_10000C240())
        {
          v58 = sub_10029C3B4();
          sub_10000AF54("Cannot send a security request, device is in state %s.", v59, v60, v61, v62, v63, v64, v65, v58);
          v66 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }

        return 4804;
      }

LABEL_71:
      v57[72] = v44;
      v57[73] = v46;
      v18 = sub_10029BEC0(*v57, buf, 2uLL, 0);
      if (v18)
      {
        sub_10029BA98(v57, v18, 1);
      }

      else
      {
        sub_10029C3C0(v57, 16);
      }

      return v18;
    }

    v57 = sub_10029C1A0(a1);
    if (v57)
    {
      goto LABEL_71;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Could not allocate a pairing record for handle 0x%x", v83, v84, v85, v86, v87, v88, v89, a1);
      v90 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    return 104;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("You cannot send this command when central.", v75, v76, v77, v78, v79, v80, v81, v91);
      v82 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4822;
  }
}

uint64_t sub_1002E78E8(_OWORD *a1)
{
  if (a1)
  {
    v2 = sub_100240E7C(a1 + 2, a1 + 6);
    if (v2)
    {
      v3 = v2;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to generate public/private key %!", v4, v5, v6, v7, v8, v9, v10, v3);
        v11 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    else
    {
      arc4random_buf(a1, 0x10uLL);
      v21 = a1[3];
      v31[0] = a1[2];
      v31[1] = v21;
      v3 = sub_100240458(v31, v31, a1, 0, a1 + 1);
      if (v3)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to generate confirmation value C with status %!", v22, v23, v24, v25, v26, v27, v28, v3);
          v29 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
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
      sub_10000AF54("Must provide storage for OOB Bundle and private key", v12, v13, v14, v15, v16, v17, v18, v30);
      v19 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 101;
  }

  return v3;
}

uint64_t sub_1002E7A68(_DWORD *a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  v7 = sub_1000E5EA8(a1);
  if (!v7)
  {
    return 122;
  }

  v8 = v7;
  v9 = sub_10029BE74(v7);
  if (!v9)
  {
    return 4806;
  }

  v10 = v9;
  if ((*(v9 + 72) & *(v9 + 80) & 8) == 0 || *(v9 + 16) != 5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("This API can only be called on LE Secured Connection OOB Pairing.", v26, v27, v28, v29, v30, v31, v32, v66);
      v33 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v17 = 408;
    goto LABEL_25;
  }

  if (a4)
  {
    v11 = a4[2];
    v12 = a4[3];
    v13 = a4[4];
    *(v9 + 200) = a4[5];
    *(v9 + 184) = v13;
    *(v9 + 168) = v12;
    *(v9 + 152) = v11;
    memmove((v9 + 216), a4 + 6, 0x60uLL);
    v14 = 425;
    if (*(*v10 + 70) == 1)
    {
      v14 = 441;
    }

    *&v10[v14] = *a4;
    *(v10 + 88) = a4[1];
  }

  else
  {
    v35 = sub_100240E7C((v9 + 152), (v9 + 216));
    if (v35)
    {
      v17 = v35;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to generate public/private key %!", v36, v37, v38, v39, v40, v41, v42, v17);
        v43 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      goto LABEL_25;
    }

    if (*(*v10 + 70) == 1)
    {
      v52 = v10 + 441;
    }

    else
    {
      v52 = v10 + 425;
    }

    arc4random_buf(v52, 0x10uLL);
    v53 = *v10;
    if (*(*v10 + 70) == 1)
    {
      v54 = v10 + 425;
    }

    else
    {
      v54 = v10 + 441;
    }

    *v54 = 0;
    v54[1] = 0;
    v55 = *(v10 + 168);
    *v67 = *(v10 + 152);
    *&v67[16] = v55;
    if (*(v53 + 70) == 1)
    {
      v56 = (v10 + 441);
    }

    else
    {
      v56 = (v10 + 425);
    }

    v57 = sub_100240458(v67, v67, v56, 0, v10 + 88);
    if (v57)
    {
      v17 = v57;
      if (!sub_10000C240())
      {
        goto LABEL_25;
      }

      sub_10000AF54("Failed to generate confirmation value C with status %!", v58, v59, v60, v61, v62, v63, v64, v17);
      v65 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }
  }

  if (a2)
  {
    v15 = 441;
    if (*(*v10 + 70) == 1)
    {
      v15 = 425;
    }

    *&v10[v15] = *a2;
  }

  if (a3)
  {
    *(v10 + 104) = *a3;
  }

  v10[490] = 1;
  v16 = *v10;
  if (!*(*v10 + 70))
  {
    v67[0] = 12;
    *&v67[1] = *(v10 + 152);
    *&v67[17] = *(v10 + 168);
    v68 = *(v10 + 184);
    v69 = *(v10 + 200);
    v17 = sub_10029BEC0(v16, v67, 0x41uLL, 1);
    if (!v17)
    {
      sub_10029C3C0(v10, 33);
      return v17;
    }

    if (!sub_10000C240())
    {
      goto LABEL_25;
    }

    sub_10000AF54("Failed to send public keys %!", v44, v45, v46, v47, v48, v49, v50, v17);
    v51 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

LABEL_48:
    sub_10080F604();
LABEL_25:
    sub_1002DF818(v8, 8, v10);
    return v17;
  }

  sub_10029C3C0(v10, 32);
  v17 = sub_1002E7E18(v10);
  if (v17)
  {
    if (!sub_10000C240())
    {
      goto LABEL_25;
    }

    sub_10000AF54("recvdSMPDeferredOOBPublicKey failed %!", v18, v19, v20, v21, v22, v23, v24, v17);
    v25 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

  return v17;
}

uint64_t sub_1002E7E18(uint64_t a1)
{
  memset(__s2, 0, sizeof(__s2));
  sub_10029C2C8(a1);
  if (*(a1 + 490) != 1 || !memcmp((a1 + 312), __s2, 0x40uLL))
  {
    if (*(*a1 + 70) == 1)
    {
      v13 = 32;
    }

    else
    {
      v13 = 33;
    }

    sub_10029C3C0(a1, v13);
    return 0;
  }

  v2 = *a1;
  if (*(*a1 + 70) != 1)
  {
    goto LABEL_15;
  }

  if (!memcmp((a1 + 152), __s2, 0x40uLL))
  {
    v41 = sub_100240E7C((a1 + 152), (a1 + 216));
    if (v41)
    {
      v4 = v41;
      if (sub_10000C240())
      {
        sub_10000AF54("LE_ReadLocalPublicKey failed %!", v42, v43, v44, v45, v46, v47, v48, v4);
        v49 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }
      }

      return v4;
    }

    v2 = *a1;
  }

  v75[0] = 12;
  *&v75[1] = *(a1 + 152);
  *&v75[17] = *(a1 + 168);
  v76 = *(a1 + 184);
  v77 = *(a1 + 200);
  v3 = sub_10029BEC0(v2, v75, 0x41uLL, 1);
  if (!v3)
  {
LABEL_15:
    v15 = sub_100241004((a1 + 312), 0x40u, (a1 + 216), 0x60u, (a1 + 376));
    if (v15)
    {
      v4 = v15;
      if (sub_10000C240())
      {
        sub_10000AF54("DHKey generation failed %!", v16, v17, v18, v19, v20, v21, v22, v4);
        v23 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }
      }

      return v4;
    }

    sub_10029C2C8(a1);
    v24 = *(a1 + 104) == *&__s2[0] && *(a1 + 112) == *(&__s2[0] + 1);
    v25 = *a1;
    v26 = *(*a1 + 70);
    if (v24 || (*(*a1 + 70) ? (v27 = (a1 + 425)) : (v27 = (a1 + 441)), (v29 = *v27, v28 = v27[1], v29 == *&__s2[0]) ? (v30 = v28 == *(&__s2[0] + 1)) : (v30 = 0), v30))
    {
      v24 = v26 == 0;
      v50 = 425;
      if (v24)
      {
        v50 = 441;
      }

      v51 = (a1 + v50);
    }

    else
    {
      v72 = 0;
      v73 = 0;
      v31 = *(a1 + 328);
      *v75 = *(a1 + 312);
      *&v75[16] = v31;
      if (v26 == 1)
      {
        v32 = (a1 + 425);
      }

      else
      {
        v32 = (a1 + 441);
      }

      v4 = sub_100240458(v75, v75, v32, 0, &v72);
      if (v4)
      {
        if (!sub_10000C240())
        {
          return v4;
        }

        sub_10000AF54("Failed to calculate remote C value with status %!", v33, v34, v35, v36, v37, v38, v39, v4);
        v40 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          return v4;
        }

        goto LABEL_36;
      }

      if (*(a1 + 104) != v72 || *(a1 + 112) != v73)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Received and calculated remote C values do not match", v63, v64, v65, v66, v67, v68, v69, v71);
          v70 = sub_10000C050(0x43u);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_1002DF818(*a1, 4, a1);
        return v4;
      }

      v25 = *a1;
      if (*(a1 + 79))
      {
        goto LABEL_45;
      }

      if (*(v25 + 70) == 1)
      {
        v51 = (a1 + 441);
      }

      else
      {
        v51 = (a1 + 425);
      }
    }

    *v51 = 0;
    v51[1] = 0;
LABEL_45:
    v24 = *(v25 + 70) == 1;
    v52 = 457;
    if (v24)
    {
      v52 = 473;
    }

    arc4random_buf((a1 + v52), 0x10uLL);
    if (*(*a1 + 70))
    {
      v53 = 36;
    }

    else
    {
      v53 = 35;
    }

    sub_10029C3C0(a1, v53);
    if (!*(*a1 + 70))
    {
      v4 = sub_1002E86E4(*a1, (a1 + 457));
      if (!v4)
      {
        sub_10029C3C0(a1, 37);
        return v4;
      }

      if (!sub_10000C240())
      {
        return v4;
      }

      sub_10000AF54("Failed to send pairing random to peripheral %!", v54, v55, v56, v57, v58, v59, v60, v4);
      v61 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        return v4;
      }

LABEL_36:
      sub_10080F604();
      return v4;
    }

    return 0;
  }

  v4 = v3;
  if (sub_10000C240())
  {
    sub_10000AF54("smpSendPairingPublicKey failed %!", v5, v6, v7, v8, v9, v10, v11, v4);
    v12 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_40:
      sub_10080F604();
    }
  }

  return v4;
}

uint64_t sub_1002E8270(_DWORD *a1, _BYTE *a2)
{
  v3 = sub_1000E5EA8(a1);
  if (!v3)
  {
    return 122;
  }

  v4 = sub_10029BE74(v3);
  if (!v4)
  {
    return 4806;
  }

  v5 = v4;
  result = 0;
  *a2 = *(v5 + 80);
  return result;
}

BOOL sub_1002E832C(_BOOL8 result, char a2)
{
  if (result)
  {
    v3 = result;
    result = sub_1000ABD24(result);
    if (result)
    {
      *(v3 + 264) = a2;
    }
  }

  return result;
}

uint64_t sub_1002E8364(uint64_t *a1)
{
  v2 = sub_1002E07E4(*a1, a1 + 11);
  if (v2)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("smpSendPairingConfirmation failed %!", v3, v4, v5, v6, v7, v8, v9, v2);
      v10 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  else
  {
    sub_10029C3C0(a1, 36);
  }

  return v2;
}

void sub_1002E83F4(uint64_t a1)
{
  v11[1] = &v12;
  v12 = a1;
  v11[0] = 8;
  v1 = sub_10002195C(sub_1002E8498, v11, 0, 0);
  if (v1)
  {
    v2 = v1;
    if (sub_10000C240())
    {
      sub_10000AF54("Could not dispatch dispatchPairingDisplay CB with status %!.", v3, v4, v5, v6, v7, v8, v9, v2);
      v10 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }
}

void sub_1002E8498(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  if (!*v1 || !sub_1000ABD24(*v1))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("This handle is not a LE connection.", v7, v8, v9, v10, v11, v12, v13, v23);
    v14 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_12:
    sub_1000E09C0();
    return;
  }

  v3 = sub_10029BE74(v2);
  if (!v3)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("There is no security request for this connection. Ignoring reply.", v15, v16, v17, v18, v19, v20, v21, v23);
    v22 = sub_10000C050(0x43u);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_12;
  }

  v4 = off_100BCE1D8;
  if (off_100BCE1D8)
  {
    v5 = 48;
    if (*(v2 + 55))
    {
      v5 = 56;
    }

    v6 = *(v3 + 52);

    v4(v2 + v5, v6, v3 + 33, 0);
  }
}

uint64_t sub_1002E85AC(_BYTE *a1, void *a2, int a3)
{
  v3 = a1 + 78;
  v4 = 80;
  if (a3)
  {
    v4 = 72;
  }

  v5 = 79;
  if (a3)
  {
    v5 = 73;
    v3 = &byte_100B53E4B;
  }

  v6 = *v3;
  v7 = a1[v5];
  LOBYTE(v27) = a1[v4];
  HIBYTE(v27) = v7;
  v28 = v6;
  if (a1[424])
  {
    v10 = *a1;
    if (*(*a1 + 70))
    {
      v11 = (a1 + 408);
      if (a3)
      {
        v12 = (a1 + 473);
        v13 = (a1 + 457);
        v14 = (a1 + 425);
LABEL_15:
        v24 = (v10 + 63);
        v25 = (v10 + 48);
LABEL_19:
        sub_100240870(v11, v12, v13, v14, &v27, v24, v25, a2);
        return 0;
      }

      v12 = (a1 + 457);
      v13 = (a1 + 473);
      v14 = (a1 + 441);
    }

    else
    {
      v11 = (a1 + 408);
      if (a3)
      {
        v12 = (a1 + 457);
        v13 = (a1 + 473);
        v14 = (a1 + 441);
        goto LABEL_15;
      }

      v12 = (a1 + 473);
      v13 = (a1 + 457);
      v14 = (a1 + 425);
    }

    v24 = (v10 + 48);
    v25 = (v10 + 63);
    goto LABEL_19;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("LTK And MacKey are not generated, we have a problem.", v15, v16, v17, v18, v19, v20, v21, v26);
    v22 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 4824;
}

uint64_t sub_1002E86E4(uint64_t a1, __int128 *a2)
{
  v62 = 4;
  v63 = *a2;
  if (sub_1000ABD24(a1))
  {
    v3 = sub_10029BE74(a1);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 70);
      if ((*(v3 + 72) & *(v3 + 80) & 8) != 0)
      {
        if (v5 != 1)
        {
LABEL_7:
          if (!v5 && !sub_10029C4B0(v4, 35))
          {
            if (!sub_10000C240())
            {
              return 4823;
            }

            v6 = sub_10029C3B4();
            sub_10000AF54("Central connection should be in SMP_STATE_PAIRING_SCONFIRM to send this command, current state is %s.", v7, v8, v9, v10, v11, v12, v13, v6);
            v14 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              return 4823;
            }

            goto LABEL_38;
          }

          goto LABEL_24;
        }

        if (sub_10029C4B0(v3, 36))
        {
          v5 = *(a1 + 70);
          goto LABEL_7;
        }

        if (!sub_10000C240())
        {
          return 4823;
        }

        v33 = sub_10029C3B4();
        sub_10000AF54("Peripheral connection should be in SMP_STATE_PAIRING_MRAND to send this command, current state is %s.", v34, v35, v36, v37, v38, v39, v40, v33);
        v41 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          return 4823;
        }
      }

      else
      {
        if (!*(a1 + 70))
        {
          if (!sub_10029C4B0(v3, 35))
          {
            if (!sub_10000C240())
            {
              return 4823;
            }

            v51 = sub_10029C3B4();
            sub_10000AF54("Central connection should be in SMP_STATE_PAIRING_SCONFIRM to send this command, current state is %s.", v52, v53, v54, v55, v56, v57, v58, v51);
            v59 = sub_10000C050(0x43u);
            if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              return 4823;
            }

            goto LABEL_38;
          }

          v5 = *(a1 + 70);
        }

        if (v5 != 1 || sub_10029C4B0(v4, 36))
        {
LABEL_24:
          v23 = sub_10029BEC0(*v4, &v62, 0x11uLL, 1);
          if (v23)
          {
            sub_10029BA98(v4, v23, 1);
          }

          else
          {
            if (*(a1 + 70))
            {
              v32 = 37;
            }

            else
            {
              v32 = 36;
            }

            sub_10029C3C0(v4, v32);
          }

          return v23;
        }

        if (!sub_10000C240())
        {
          return 4823;
        }

        v42 = sub_10029C3B4();
        sub_10000AF54("Peripheral connection should be in SMP_STATE_PAIRING_MRAND to send this command, current state is %s.", v43, v44, v45, v46, v47, v48, v49, v42);
        v50 = sub_10000C050(0x43u);
        if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          return 4823;
        }
      }
    }

    else
    {
      if (!sub_10000C240())
      {
        return 4823;
      }

      sub_10000AF54("This device is not in a pairing state.", v24, v25, v26, v27, v28, v29, v30, v61);
      v31 = sub_10000C050(0x43u);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        return 4823;
      }
    }

LABEL_38:
    sub_1000E09C0();
    return 4823;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("This command is only available to LE devices.", v15, v16, v17, v18, v19, v20, v21, v61);
    v22 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 4820;
}

void sub_1002E89E8(char *a1)
{
  if ((a1[72] & a1[80] & 8) != 0)
  {
    v2 = -10;
  }

  else
  {
    v2 = -9;
  }

  if ((v2 & a1[74] & 0xF7) == (v2 & a1[75] & 0xF7) || (v2 & a1[74]) == 0)
  {
    if (*(*a1 + 70))
    {
      sub_10029C3C0(a1, 65);
    }

    else
    {
      sub_10029C3C0(a1, 67);
      sub_1002E5B94(a1);
      sub_1002E5D18(a1);
    }

    sub_10029BA98(a1, 0, 1);
  }
}

uint64_t sub_1002E8AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((qword_100B6B468 & 1) != 0 || (qword_100B6B468 & 0x100) != 0)
  {
    return 118;
  }

  if (a1 < 0x28)
  {
    v17 = sub_100018960(189, sub_1002E8BC4, a3, a4, a5, a6, a7, a8, a1);
    if (v17)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to start RX LE test %!", v19, v20, v21, v22, v23, v24, v25, v17);
        v26 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      BYTE2(qword_100B6B468) = a1;
      LOBYTE(qword_100B6B468) = 1;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid test frequency %d", v9, v10, v11, v12, v13, v14, v15, a1);
      v16 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 101;
  }

  return v17;
}

void sub_1002E8BC4(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not start RX test %!", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    BYTE1(qword_100B6B468) |= 1u;
  }

  LOBYTE(qword_100B6B468) = 0;
}

uint64_t sub_1002E8C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((qword_100B6B468 & 1) != 0 || (qword_100B6B468 & 0x200) != 0)
  {
    return 118;
  }

  if (a1 >= 0x28)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid test frequency %d", v9, v10, v11, v12, v13, v14, v15, a1);
    v16 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_15;
  }

  if (a2 >= 0x26)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid payload length %d", v19, v20, v21, v22, v23, v24, v25, a2);
    v26 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_15;
  }

  if (a3 >= 8)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid payload type %d", v28, v29, v30, v31, v32, v33, v34, a3);
    v35 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_15:
    sub_10080F7A0();
    return 101;
  }

  v17 = sub_100018960(190, sub_1002E8E30, a3, a4, a5, a6, a7, a8, a1);
  if (v17)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to start TX LE test %!", v37, v38, v39, v40, v41, v42, v43, v17);
      v44 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    BYTE3(qword_100B6B468) = a1;
    BYTE4(qword_100B6B468) = a2;
    BYTE5(qword_100B6B468) = a3;
    LOBYTE(qword_100B6B468) = 1;
  }

  return v17;
}

void sub_1002E8E30(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not start TX test %!", v2, v3, v4, v5, v6, v7, v8, a1);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    BYTE1(qword_100B6B468) |= 2u;
  }

  LOBYTE(qword_100B6B468) = 0;
}

uint64_t sub_1002E8EC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (BYTE1(qword_100B6B468))
  {
    v9 = sub_100018960(191, sub_1002E8FB8, a3, a4, a5, a6, a7, a8, v27);
    if (v9)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to stop LE test %!", v10, v11, v12, v13, v14, v15, v16, v9);
        v17 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      LOBYTE(qword_100B6B468) = 1;
      off_100B6B470 = a1;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No test started", v18, v19, v20, v21, v22, v23, v24, v27);
      v25 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 114;
  }

  return v9;
}

void sub_1002E8FB8(uint64_t a1, uint64_t a2)
{
  v4 = off_100B6B470;
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not stop the test %!", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    qword_100B6B468 = 0;
    off_100B6B470 = 0;
  }

  LOBYTE(qword_100B6B468) = 0;
  if (v4)
  {
    v4(a1, a2);
  }
}

uint64_t sub_1002E9070(uint64_t a1)
{
  v2 = word_100B6B478;
  v3 = word_100B6B478;
  if (word_100B6B478)
  {
    if (word_100B6B478 == 8)
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

      return 4150;
    }

    else
    {
      v13 = 0;
      while (qword_100B6B480[v13] != a1)
      {
        if (word_100B6B478 <= ++v13)
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
    qword_100B6B480[v3] = a1;
    word_100B6B478 = v2 + 1;
  }

  return v12;
}

uint64_t sub_1002E9140(unsigned __int8 *a1)
{
  if (!*(&xmmword_100B6B4C0 + 1))
  {
    return 118;
  }

  if (xmmword_100B6B4C0 <= BYTE2(xmmword_100B6B4C0))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("No room in filter accept list %d (+%d pending)/%d.", v3, v4, v5, v6, v7, v8, v9, BYTE2(xmmword_100B6B4C0));
      v10 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 104;
  }

  else if (sub_1002E92FC(a1))
  {
    return 4152;
  }

  else
  {
    v12 = sub_100007618(0x10uLL, 0x10200403D1E2031uLL);
    if (v12)
    {
      v19 = v12;
      v20 = sub_100018960(177, sub_1002E9380, v13, v14, v15, v16, v17, v18, *a1);
      if (v20)
      {
        v2 = v20;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not add device to filter accept list %!", v21, v22, v23, v24, v25, v26, v27, v2);
          v28 = sub_10000C050(0x42u);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        sub_10000C1E8(v19);
      }

      else
      {
        v29 = *a1;
        v30 = *(a1 + 2);
        *(v19 + 6) = a1[6];
        *(v19 + 2) = v30;
        *v19 = v29;
        *(v19 + 1) = 0;
        if (qword_100B6B4D8)
        {
          *(qword_100B6B4D8 + 8) = v19;
          qword_100B6B4D8 = v19;
        }

        v2 = 0;
        if (!qword_100B6B4D0)
        {
          qword_100B6B4D0 = v19;
          qword_100B6B4D8 = v19;
        }
      }
    }

    else
    {
      return 106;
    }
  }

  return v2;
}

BOOL sub_1002E92FC(_DWORD *a1)
{
  if (!BYTE2(xmmword_100B6B4C0))
  {
    return 0;
  }

  if (**(&xmmword_100B6B4C0 + 1) == *a1 && *(*(&xmmword_100B6B4C0 + 1) + 3) == *(a1 + 3))
  {
    return 1;
  }

  v2 = (*(&xmmword_100B6B4C0 + 1) + 7);
  v3 = 1;
  do
  {
    v4 = v3;
    if (BYTE2(xmmword_100B6B4C0) == v3)
    {
      break;
    }

    v5 = *v2 == *a1 && *(v2 + 3) == *(a1 + 3);
    ++v3;
    v2 = (v2 + 7);
  }

  while (!v5);
  return v4 < BYTE2(xmmword_100B6B4C0);
}

uint64_t sub_1002E9380(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error adding device to filter accept list %!", v19, v20, v21, v22, v23, v24, v25, a1);
      v26 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    sub_1001BAA68(a1, "Filter Accept List add error");
  }

  v1 = qword_100B6B4D0;
  if (qword_100B6B4D0 || (sub_1000D660C(), (v1 = qword_100B6B4D0) != 0))
  {
    v2 = BYTE2(xmmword_100B6B4C0);
    v3 = *(&xmmword_100B6B4C0 + 1) - BYTE2(xmmword_100B6B4C0) + 8 * BYTE2(xmmword_100B6B4C0);
    v4 = *v1;
    v5 = *(v1 + 4);
    *(v3 + 6) = *(v1 + 6);
    *(v3 + 4) = v5;
    *v3 = v4;
    BYTE2(xmmword_100B6B4C0) = v2 + 1;
  }

  v6 = word_100B6B478;
  if (word_100B6B478)
  {
    v7 = 0;
    v8 = qword_100B6B4D0;
    do
    {
      v9 = *qword_100B6B480[v7];
      if (v9)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v9(v8, 0);
        v8 = qword_100B6B4D0;
        v6 = word_100B6B478;
      }

      ++v7;
    }

    while (v7 < v6);
  }

  sub_1002E9A94();
  sub_1002BFDEC(1, v11, v12, v13, v14, v15, v16, v17);
  sub_1002B1E10(1);

  return sub_1002D9C80(1);
}

uint64_t sub_1002E94CC(unsigned __int8 *a1)
{
  if (!*(&xmmword_100B6B4C0 + 1))
  {
    return 118;
  }

  if (!sub_1002E92FC(a1))
  {
    return 4151;
  }

  v2 = sub_100007618(0x10uLL, 0x10200403D1E2031uLL);
  if (!v2)
  {
    return 106;
  }

  v9 = v2;
  v10 = sub_100018960(178, sub_1002E961C, v3, v4, v5, v6, v7, v8, *a1);
  if (v10)
  {
    v11 = v10;
    if (sub_10000C240())
    {
      sub_10000AF54("Could not remove device from filter accept list %!", v12, v13, v14, v15, v16, v17, v18, v11);
      v19 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_10000C1E8(v9);
  }

  else
  {
    v20 = *a1;
    v21 = *(a1 + 2);
    *(v9 + 6) = a1[6];
    *(v9 + 2) = v21;
    *v9 = v20;
    *(v9 + 1) = 0;
    if (qword_100B6B4D8)
    {
      *(qword_100B6B4D8 + 8) = v9;
      qword_100B6B4D8 = v9;
    }

    v11 = 0;
    if (!qword_100B6B4D0)
    {
      qword_100B6B4D0 = v9;
      qword_100B6B4D8 = v9;
    }
  }

  return v11;
}

uint64_t sub_1002E961C(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error removing device from filter accept list %!", v32, v33, v34, v35, v36, v37, v38, a1);
      v39 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    sub_1001BAA68(a1, "Filter Accept List remove error");
  }

  if (!qword_100B6B4D0)
  {
    sub_1000D660C();
  }

  if (BYTE2(xmmword_100B6B4C0))
  {
    v1 = *(&xmmword_100B6B4C0 + 1);
    v2 = (BYTE2(xmmword_100B6B4C0) - 1);
    v3 = *(&xmmword_100B6B4C0 + 1);
    v4 = BYTE2(xmmword_100B6B4C0);
    while (*v3 != *qword_100B6B4D0 || *(v3 + 3) != *(qword_100B6B4D0 + 3))
    {
      --v2;
      v3 += 7;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }

    --BYTE2(xmmword_100B6B4C0);
    v14 = BYTE2(xmmword_100B6B4C0);
    if (v2)
    {
      v15 = *(&xmmword_100B6B4C0 + 1) - BYTE2(xmmword_100B6B4C0) + 8 * BYTE2(xmmword_100B6B4C0);
      v16 = *v15;
      v17 = *(v15 + 4);
      *(v3 + 6) = *(v15 + 6);
      *(v3 + 4) = v17;
      *v3 = v16;
      v1 = *(&xmmword_100B6B4C0 + 1);
      v14 = BYTE2(xmmword_100B6B4C0);
    }

    v18 = (v1 - v14 + 8 * v14);
    *(v18 + 3) = 0;
    *v18 = 0;
  }

  else
  {
LABEL_11:
    if (sub_10000C240())
    {
      sub_10000AF54("Device is not in the list anymore", v6, v7, v8, v9, v10, v11, v12, v40);
      v13 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  v19 = word_100B6B478;
  if (word_100B6B478)
  {
    v20 = 0;
    v21 = qword_100B6B4D0;
    do
    {
      v22 = *(qword_100B6B480[v20] + 8);
      if (v22)
      {
        v23 = v21 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        v22(v21, 0);
        v21 = qword_100B6B4D0;
        v19 = word_100B6B478;
      }

      ++v20;
    }

    while (v20 < v19);
  }

  sub_1002E9A94();
  sub_1002BFDEC(1, v24, v25, v26, v27, v28, v29, v30);
  sub_1002B1E10(1);
  return sub_1002D9C80(1);
}

uint64_t sub_1002E9800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(&xmmword_100B6B4C0 + 1))
  {
    return 118;
  }

  v8 = sub_100018960(176, sub_1002E989C, a3, a4, a5, a6, a7, a8, v18);
  if (v8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not remove device from filter accept list %!", v9, v10, v11, v12, v13, v14, v15, v8);
      v16 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v8;
}

uint64_t sub_1002E989C(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Error clearing filter accept list %!", v9, v10, v11, v12, v13, v14, v15, a1);
      v16 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    sub_1001BAA68(a1, "Filter Accept List clear error");
  }

  bzero(*(&xmmword_100B6B4C0 + 1), 7 * xmmword_100B6B4C0);
  BYTE2(xmmword_100B6B4C0) = 0;
  sub_1002BFDEC(1, v1, v2, v3, v4, v5, v6, v7);
  sub_1002B1E10(1);

  return sub_1002D9C80(1);
}

uint64_t sub_1002E9984(int *a1)
{
  if (sub_1002E92FC(a1))
  {
    return 4152;
  }

  result = 0;
  v3 = BYTE2(xmmword_100B6B4C0);
  v4 = *(&xmmword_100B6B4C0 + 1) - BYTE2(xmmword_100B6B4C0) + 8 * BYTE2(xmmword_100B6B4C0);
  v5 = *a1;
  v6 = *(a1 + 2);
  *(v4 + 6) = *(a1 + 6);
  *(v4 + 4) = v6;
  *v4 = v5;
  BYTE2(xmmword_100B6B4C0) = v3 + 1;
  return result;
}

void *sub_1002E99F0(unsigned int a1)
{
  LOWORD(xmmword_100B6B4C0) = a1;
  if (*(&xmmword_100B6B4C0 + 1))
  {
    sub_10000C1E8(*(&xmmword_100B6B4C0 + 1));
  }

  result = sub_100007618(7 * a1, 0x1000040DEAB1946uLL);
  *(&xmmword_100B6B4C0 + 1) = result;
  BYTE2(xmmword_100B6B4C0) = 0;
  qword_100B6B4D8 = 0;
  qword_100B6B4D0 = 0;
  return result;
}

double sub_1002E9A5C()
{
  if (*(&xmmword_100B6B4C0 + 1))
  {
    sub_10000C1E8(*(&xmmword_100B6B4C0 + 1));
  }

  result = 0.0;
  xmmword_100B6B4C0 = 0u;
  *&qword_100B6B4D0 = 0u;
  return result;
}

void sub_1002E9A94()
{
  if (qword_100B6B4D0)
  {
    v0 = *(qword_100B6B4D0 + 8);
    sub_10000C1E8(qword_100B6B4D0);
    qword_100B6B4D0 = v0;
    if (!v0)
    {
      qword_100B6B4D8 = 0;
    }
  }

  else
  {

    sub_1000D660C();
  }
}

uint64_t sub_1002E9AF0(uint64_t a1)
{
  if (qword_100B6B4E0)
  {
    return 119;
  }

  v4 = sub_100007618(0x18uLL, 0x60040149E097CuLL);
  qword_100B6B4E0 = v4;
  if (!v4)
  {
    return 106;
  }

  v1 = sub_10028E64C(42, 2, 10, 0xAu, v4, sub_1002E9BF0);
  if (v1)
  {
    sub_10000C1E8(qword_100B6B4E0);
    qword_100B6B4E0 = 0;
    return v1;
  }

  if (!sub_10028E64C(43, 2, 10, 0xAu, (qword_100B6B4E0 + 8), sub_1002E9EC8))
  {
    v1 = 0;
    *(qword_100B6B4E0 + 16) = a1;
    return v1;
  }

  v5 = sub_10028E908(*qword_100B6B4E0);
  sub_10000C1E8(qword_100B6B4E0);
  qword_100B6B4E0 = 0;
  return v5;
}

void sub_1002E9BF0(__int128 *a1, _BYTE *a2, int a3)
{
  if (!a2)
  {
    v24 = "buf";
    goto LABEL_40;
  }

  if (!a3)
  {
    v24 = "(length) > 0";
LABEL_40:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/le/LEA.c", 425, v24);
  }

  v25 = a2;
  v26 = a3;
  v27 = a3;
  v28 = 65537;
  v4 = *a2;
  switch(*a2)
  {
    case 1:
      v5 = sub_1002EAC28(a1, &v25);
      goto LABEL_32;
    case 2:
      v5 = sub_1002EAF24(a1, &v25);
      goto LABEL_32;
    case 3:
      v5 = sub_1002EB148(a1, &v25);
      goto LABEL_32;
    case 4:
      v5 = sub_1002EB394(a1, &v25);
      goto LABEL_32;
    case 5:
      v5 = sub_1002EB49C(a1, &v25);
      goto LABEL_32;
    case 6:
      v15 = *(*(qword_100B6B4E0 + 16) + 40);
      if (v15)
      {
        goto LABEL_27;
      }

      v14 = 3;
      goto LABEL_33;
    case 7:
      v5 = sub_1002EB60C(a1, &v25);
      goto LABEL_32;
    case 8:
      sub_1002EB69C(a1, &v25);
      return;
    case 9:
      v15 = *(*(qword_100B6B4E0 + 16) + 64);
LABEL_27:
      v15(a1);
      return;
    case 0xA:
      v5 = sub_1002EB800(a1, &v25);
      goto LABEL_32;
    case 0xC:
      v5 = sub_1002EB8F8(a1, &v25);
      goto LABEL_32;
    case 0xD:
      (*(*(qword_100B6B4E0 + 16) + 88))(a1);
      return;
    case 0xE:
      v5 = sub_1002EBA54(a1, &v25);
      goto LABEL_32;
    case 0xF:
      v5 = sub_1002EBB50(a1, &v25);
      goto LABEL_32;
    case 0x10:
      v5 = sub_1002EBCB0(a1, &v25);
      goto LABEL_32;
    case 0x11:
      v5 = sub_1002EBE50(a1, &v25);
      goto LABEL_32;
    case 0x12:
      v5 = sub_1002EBF4C(a1, &v25);
      goto LABEL_32;
    case 0x13:
      v5 = sub_1002EC1AC(a1, &v25);
      goto LABEL_32;
    case 0x14:
      v5 = sub_1002EC3A8(a1, &v25);
      goto LABEL_32;
    case 0x15:
      v5 = sub_1002EC5A4(a1, &v25);
      goto LABEL_32;
    case 0x16:
      v5 = sub_1002EC754(a1, &v25);
LABEL_32:
      v14 = v5;
      if (v5)
      {
        goto LABEL_33;
      }

      return;
    default:
      if (sub_10000C240())
      {
        sub_10000AF54("Unhandled opcode: %u", v6, v7, v8, v9, v10, v11, v12, v4);
        v13 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v14 = 1;
LABEL_33:
      if (sub_10000C240())
      {
        sub_10000AF54("Sending error %u", v16, v17, v18, v19, v20, v21, v22, v14);
        v23 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      v29[0] = v4;
      v29[1] = v14;
      v29[2] = 0;
      sub_1002E9FD4(a1, 8u, v29, 3uLL);
      return;
  }
}

uint64_t sub_1002E9EC8()
{
  v0 = *(*(qword_100B6B4E0 + 16) + 96);
  if (v0)
  {
    return v0();
  }

  return result;
}

uint64_t sub_1002E9EE4()
{
  if (!qword_100B6B4E0)
  {
    return 121;
  }

  result = sub_10028E908(*(qword_100B6B4E0 + 8));
  if (!result)
  {
    result = sub_10028E908(*qword_100B6B4E0);
    if (!result)
    {
      sub_10000C1E8(qword_100B6B4E0);
      result = 0;
      qword_100B6B4E0 = 0;
    }
  }

  return result;
}

uint64_t sub_1002E9F40(__int128 *a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5)
{
  v6 = 1346454860;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  return sub_1002E9FD4(a1, 1u, &v6, 0xCuLL);
}

uint64_t sub_1002E9FD4(__int128 *a1, unsigned __int8 a2, char *a3, size_t a4)
{
  v21 = a2;
  if (!a1)
  {
    v9 = 1310;
    goto LABEL_10;
  }

  memset(&v20[1], 0, 96);
  if (a3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v20[0] = 0uLL;
  v8 = sub_10001FF10(v20, v7);
  if (v8)
  {
    v9 = v8;
LABEL_10:
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to send PDU %u: %!", v11, v12, v13, v14, v15, v16, v17, v21);
      v18 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return v9;
  }

  v10 = sub_10001F968(v20, &v21, 1uLL, 0);
  if (v10)
  {
    v9 = v10;
    sub_1000B7B40(v20);
    goto LABEL_10;
  }

  if (!a3 || (v9 = sub_10001F968(v20, a3, a4, 2u), !v9))
  {
    v9 = sub_1000B7EDC(0, 42, a1, v20, 1);
  }

  sub_1000B7B40(v20);
  result = 0;
  if (v9 && v9 != 412)
  {
    goto LABEL_10;
  }

  return result;
}