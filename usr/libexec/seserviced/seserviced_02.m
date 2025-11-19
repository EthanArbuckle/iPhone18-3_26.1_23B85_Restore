void sub_100044ED8(_Unwind_Exception *a1)
{
  v2 = SESDefaultLogObject();
  sub_1003ADA28(v2);

  _Unwind_Resume(a1);
}

uint64_t sub_100044F68(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  if (a3)
  {
    qword_10050CCB8 = 0;
  }

  else
  {
    v9 = qword_10050CCB8;
    if (qword_10050CCB8)
    {
      goto LABEL_27;
    }
  }

  v10 = sub_1003AF1FC(v7, v8);
  if (v10)
  {
    v11 = v10;
    v9 = 0;
    if (a4 && (a3 & 1) == 0)
    {
      v12 = v10;
      v9 = 0;
      *a4 = v11;
    }
  }

  else
  {
    v13 = sub_1003AEF50();
    v11 = 0;
    v14 = sub_1003B0934(v13);
    v15 = [v14 length];

    if (v15 > 1)
    {
      v18 = sub_1003B0934(v13);
      v19 = [v18 u16BE:0];

      if (v19 <= 0x203)
      {
        if (v19 == 515)
        {
          v9 = 5;
        }

        else if (v19 <= 0x200)
        {
          if (v19 <= 0x105)
          {
            if (v19 == 261)
            {
              v9 = 2;
            }

            else
            {
              v9 = 1;
            }
          }

          else
          {
            v9 = 3;
          }
        }

        else
        {
          v9 = 4;
        }
      }

      else
      {
        v9 = 6;
      }

      qword_10050CCB8 = v9;
      if (a4)
      {
        v20 = v11;
        *a4 = v11;
        v9 = qword_10050CCB8;
      }
    }

    else
    {
      if (a4)
      {
        v16 = SESDefaultLogObject();
        v17 = sub_1003B0934(v13);
        v22 = [v17 asHexString];
        *a4 = SESCreateAndLogError();
      }

      v9 = 0;
    }
  }

LABEL_27:
  return v9;
}

void *sub_100045184(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a7;
  if (v12 && v13)
  {
    v16 = sub_1003AF1FC(v12, v13);
    if (v16)
    {
      v17 = v16;
      if (a8)
      {
        v18 = SESDefaultLogObject();
LABEL_6:
        *a8 = SESCreateAndLogError();

LABEL_7:
        v19 = 0;
LABEL_8:
        a8 = 0;
LABEL_32:

        goto LABEL_33;
      }

LABEL_31:
      v19 = 0;
      goto LABEL_32;
    }

    v21 = [@"A000000909ACCE5501" hexStringAsData];
    v22 = [v13 isEqualToData:v21];

    if (v22)
    {
      if (v14 && v15)
      {
        if (a8)
        {
          v23 = SESDefaultLogObject();
          *a8 = SESCreateAndLogError();

          v17 = 0;
          goto LABEL_7;
        }

        v17 = 0;
        goto LABEL_31;
      }

      v42[1] = 0;
      v19 = sub_1003AF0E8();
      v17 = 0;
      if (!v17 && v19)
      {
        a8 = sub_1003B0934(v19);
        goto LABEL_32;
      }

LABEL_42:
      if (!a8)
      {
        goto LABEL_32;
      }

      v36 = SESDefaultLogObject();
      *a8 = SESCreateAndLogError();

      goto LABEL_8;
    }

    v42[0] = 0;
    v24 = sub_100044F68(v12, v13, 0, v42);
    v25 = v42[0];
    if (v25)
    {
      v17 = v25;
      if (!a8)
      {
        goto LABEL_31;
      }

LABEL_18:
      v18 = SESDefaultLogObject();
      goto LABEL_6;
    }

    if (v24 < 5)
    {
      if (!v14 || (sub_10004C5A0(v12, v14, 0xFAu), (v26 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v40 = 0;
        v27 = &v40;
        v28 = sub_1003AEF50();
        goto LABEL_37;
      }
    }

    else if (!v14 || (sub_10004C5A0(v12, v14, 0xE00u), (v26 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v41 = 0;
      v27 = &v41;
      v28 = sub_1003AF0E8();
LABEL_37:
      v19 = v28;
      v17 = *v27;
      if (!v17 && v19)
      {
        v30 = sub_1003B0934(v19);
        v31 = [v30 length];

        if (v31)
        {
          v32 = sub_1003B0934(v19);
          v33 = [v32 length];

          if (v33 == 2)
          {
            v34 = sub_1003B0934(v19);
            v35 = bswap32(*[v34 bytes]) >> 16;
            v39 = 0;
            a8 = sub_10004C734(v12, v35, &v39);
            v17 = v39;

            goto LABEL_32;
          }

          if (!a8)
          {
            v17 = 0;
            goto LABEL_32;
          }

          v37 = SESDefaultLogObject();
          v38 = sub_1003B0934(v19);
          *a8 = SESCreateAndLogError();
        }

        v17 = 0;
        goto LABEL_8;
      }

      goto LABEL_42;
    }

    v17 = v26;
    if (!a8)
    {
      goto LABEL_31;
    }

    goto LABEL_18;
  }

  if (a8)
  {
    v20 = SESDefaultLogObject();
    *a8 = SESCreateAndLogError();

    a8 = 0;
  }

LABEL_33:

  return a8;
}

id sub_100045670(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  if (v5 && v6 && v7)
  {
    v9 = sub_1003AF1FC(v5, v6);
    if (!v9)
    {
      v10 = sub_1003AEF50();
      v9 = 0;
    }

    v11 = v9;
    v12 = v11;
  }

  else
  {
    v12 = SESDefaultLogObject();
    v11 = SESCreateAndLogError();
  }

  v13 = v11;

  return v13;
}

id sub_100045800(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 asHexString];
    *buf = 138412290;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v10 = SESDefaultLogObject();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PTA_DELETE_ENDPOINT", "", buf, 2u);
  }

  if (v5 && v6 && v7)
  {
    v11 = [SESTLV TLVWithTag:146 value:v7];
    v12 = [v11 asData];
    v13 = sub_100045670(v5, v6, v12);

    v14 = [SESTLV TLVWithTag:80 value:v7];
    v15 = [v14 asData];
    v23 = 0;
    v16 = sub_100045184(v5, v6, 0, 116, 0, 0, v15, &v23);
    v17 = v23;

    if (v17)
    {
      v18 = SESDefaultLogObject();
      v22 = [v7 asHexString];
      v19 = SESCreateAndLogError();
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v11 = SESDefaultLogObject();
    v19 = SESCreateAndLogError();
  }

  v20 = SESDefaultLogObject();
  if (os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PTA_DELETE_ENDPOINT", "", buf, 2u);
  }

  return v19;
}

void sub_100045B14(_Unwind_Exception *a1)
{
  v2 = SESDefaultLogObject();
  sub_1003ADA78(v2);

  _Unwind_Resume(a1);
}

id sub_100045B50(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v20 = a3;
  v11 = a4;
  v12 = SESDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v22 = v10;
    v23 = 2112;
    v24 = v20;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ %@ %@", buf, 0x20u);
  }

  v13 = SESDefaultLogObject();
  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PTA_CREATE_ENDPOINTCA", "", buf, 2u);
  }

  if (!v9 || !v10 || !v11)
  {
    if (!a5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v15 = sub_1003AF3C4(v9, v14);
  v16 = [v15 seid];
  SSEGetSignedDeviceData();

  if (a5)
  {
LABEL_12:
    v17 = SESDefaultLogObject();
    *a5 = SESCreateAndLogError();
  }

LABEL_13:
  v18 = SESDefaultLogObject();
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PTA_CREATE_ENDPOINTCA", "", buf, 2u);
  }

  return 0;
}

void sub_100046004(_Unwind_Exception *a1)
{
  v2 = SESDefaultLogObject();
  sub_1003ADAC8(v2);

  _Unwind_Resume(a1);
}

id sub_100046048(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v9 = SESDefaultLogObject();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PTA_DELETE_ENDPOINTCA", "", buf, 2u);
  }

  v10 = [v7 asAsciiData];
  v11 = v10;
  if (v5 && v6 && v10)
  {
    v12 = [SESTLV TLVWithTag:24352 value:v10];
    v13 = [v12 asData];
    v20 = 0;
    v14 = sub_100045184(v5, v6, 0, 58, 0, 0, v13, &v20);
    v15 = v20;

    if (v15)
    {
      v16 = SESDefaultLogObject();
      v17 = SESCreateAndLogError();
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v15 = SESDefaultLogObject();
    v17 = SESCreateAndLogError();
  }

  v18 = SESDefaultLogObject();
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PTA_DELETE_ENDPOINTCA", "", buf, 2u);
  }

  return v17;
}

void sub_100046300(_Unwind_Exception *a1)
{
  v2 = SESDefaultLogObject();
  sub_1003ADB18(v2);

  _Unwind_Resume(a1);
}

void *sub_100046338(void *a1, void *a2, void *a3, int a4, int a5, void *a6)
{
  LODWORD(v7) = a5;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = v13;
  if (v11 && v12 && v13)
  {
    v15 = sub_1003AF1FC(v11, v12);
    if (v15)
    {
      v16 = v15;
      if (a6)
      {
        v17 = SESDefaultLogObject();
        *a6 = SESCreateAndLogError();

        a6 = 0;
      }
    }

    else
    {
      v19 = SESDefaultLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "", buf, 2u);
      }

      v31 = v14;
      v20 = [SESTLV TLVWithTag:80 value:v14];
      v21 = [v20 asData];

      v22 = objc_opt_new();
      if (v7)
      {
        while (1)
        {
          v23 = v7;
          v24 = sub_1003AEF50();
          v25 = 0;
          if (v25 || v24 == 0)
          {
            break;
          }

          v27 = sub_1003B0934(v24);
          [v22 appendData:v27];

          v7 = sub_1003B0934(v24);
          a4 += [v7 length];

          v28 = sub_1003B0934(v24);
          LOWORD(v7) = v23 - [v28 length];

          if (!v7)
          {
            goto LABEL_17;
          }
        }

        v16 = v25;
        if (a6)
        {
          v29 = SESDefaultLogObject();
          *a6 = SESCreateAndLogError();
        }

        a6 = 0;
      }

      else
      {
LABEL_17:
        a6 = v22;
        v16 = 0;
      }

      v14 = v31;
    }
  }

  else if (a6)
  {
    v18 = SESDefaultLogObject();
    *a6 = SESCreateAndLogError();

    a6 = 0;
  }

  return a6;
}

id sub_100046640(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = SESDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v11 asHexString];
    *buf = 138412546;
    v33 = v14;
    v34 = 1024;
    v35 = [v12 length];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ --> %u bytes", buf, 0x12u);
  }

  if (v9 && v10 && v11 && v12)
  {
    v15 = sub_1003AF1FC(v9, v10);
    if (v15)
    {
      v16 = SESDefaultLogObject();
      v17 = SESCreateAndLogError();
LABEL_9:

      goto LABEL_11;
    }

    if ([v12 length])
    {
      v31 = v10;
      v19 = 0;
      while (1)
      {
        v20 = [v12 length];
        v21 = (v20 - v19) >= 0xDB ? 219 : v20 - v19;
        v16 = [NSMutableData dataWithCapacity:256];
        v22 = [SESTLV TLVWithTag:80 value:v11];
        v23 = [v22 asData];
        [v16 appendData:v23];

        v24 = [v12 subdataWithRange:{v19, v21}];
        v25 = [SESTLV TLVWithTag:75 value:v24];
        v26 = [v25 asData];
        [v16 appendData:v26];

        v27 = sub_1003AEF50();
        v28 = 0;
        if (v28)
        {
          break;
        }

        v19 += v21;
        a5 += v21;

        if (v19 == [v12 length])
        {
          v17 = 0;
          v15 = 0;
          v10 = v31;
          goto LABEL_11;
        }
      }

      v29 = v28;
      v30 = SESDefaultLogObject();
      [v12 length];
      v17 = SESCreateAndLogError();

      v15 = 0;
      v10 = v31;
      goto LABEL_9;
    }

    v17 = 0;
  }

  else
  {
    v15 = SESDefaultLogObject();
    v17 = SESCreateAndLogError();
  }

LABEL_11:

  return v17;
}

id sub_1000469C0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15)
{
  v75 = a1;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v80 = a7;
  v79 = a8;
  v27 = a9;
  v78 = a10;
  v83 = a11;
  v82 = a12;
  v81 = a13;
  v77 = a14;
  v76 = a15;
  v28 = SESDefaultLogObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = [v23 asHexString];
    *buf = 138412290;
    *&buf[4] = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Configure Endpoint %@", buf, 0xCu);
  }

  v30 = v80;
  if (!v75 || !v22 || !v23)
  {
    v31 = SESDefaultLogObject();
    v48 = SESCreateAndLogError();
    goto LABEL_44;
  }

  v31 = [NSMutableArray arrayWithCapacity:8];
  v32 = [SESTLV TLVWithTag:80 value:v23];
  [v31 addObject:v32];

  if (v25)
  {
    v33 = [SESTLV TLVWithTag:74 value:v25];
    [v31 addObject:v33];
  }

  if (v24)
  {
    v34 = [SESTLV TLVWithTag:75 value:v24];
    [v31 addObject:v34];
  }

  if (v80)
  {
    v35 = +[SESTLV TLVWithTag:unsignedChar:](SESTLV, "TLVWithTag:unsignedChar:", 131, [v80 BOOLValue]);
    [v31 addObject:v35];
  }

  if (v26)
  {
    v36 = +[SESTLV TLVWithTag:unsignedChar:](SESTLV, "TLVWithTag:unsignedChar:", 130, [v26 BOOLValue]);
    [v31 addObject:v36];
  }

  if (v27)
  {
    v37 = +[SESTLV TLVWithTag:unsignedChar:](SESTLV, "TLVWithTag:unsignedChar:", 156, [v27 BOOLValue]);
    [v31 addObject:v37];
  }

  if (v79)
  {
    v38 = +[SESTLV TLVWithTag:unsignedChar:](SESTLV, "TLVWithTag:unsignedChar:", 155, [v79 BOOLValue]);
    [v31 addObject:v38];
  }

  if (v78)
  {
    v39 = [SESTLV TLVWithTag:78 value:?];
    [v31 addObject:v39];
  }

  v40 = v82;
  v41 = v81;
  v73 = v26;
  v74 = v25;
  if (v83)
  {
    *buf = 0;
    v42 = sub_100045184(v75, v22, 0, 118, 202, 0, v23, buf);
    v43 = *buf;
    v44 = v43;
    if (v43)
    {
      v45 = v43;
      v46 = 0;
      v47 = v44;
    }

    else if ([v42 length] == 1)
    {
      v47 = 0;
      v46 = *[v42 bytes] & 0xFE;
    }

    else
    {
      v49 = SESDefaultLogObject();
      [v42 asHexString];
      v50 = v72 = v24;
      v47 = SESCreateAndLogError();
      v51 = v47;

      v24 = v72;
      v46 = 0;
    }

    v52 = v47;
    if (v52)
    {
      v53 = v52;
      v54 = SESDefaultLogObject();
      v48 = SESCreateAndLogError();

      v26 = v73;
      v25 = v74;
      v30 = v80;
      goto LABEL_44;
    }

    v55 = +[SESTLV TLVWithTag:unsignedChar:](SESTLV, "TLVWithTag:unsignedChar:", 202, (v46 | [v83 BOOLValue]));
    [v31 addObject:v55];

    v41 = v81;
    v40 = v82;
  }

  if (v40)
  {
    v56 = +[SESTLV TLVWithTag:unsignedChar:](SESTLV, "TLVWithTag:unsignedChar:", 154, [v40 unsignedCharValue]);
    [v31 addObject:v56];
  }

  if (v41)
  {
    v57 = +[SESTLV TLVWithTag:unsignedShort:](SESTLV, "TLVWithTag:unsignedShort:", 94, bswap32([v41 shortValue]) >> 16);
    [v31 addObject:v57];
  }

  if (v77)
  {
    v58 = [SESTLV TLVWithTag:145 value:?];
    [v31 addObject:v58];
  }

  if (v76)
  {
    v59 = [SESTLV TLVWithTag:146 value:?];
    [v31 addObject:v59];
  }

  v60 = v24;
  v61 = SESDefaultLogObject();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
  {
    v62 = [SESTLV dataWithTLVs:v31];
    v63 = [v62 asHexString];
    *buf = 138412290;
    *&buf[4] = v63;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "Configure Endpoint %@", buf, 0xCu);
  }

  v64 = v75;
  v65 = v22;
  v66 = [SESTLV dataWithTLVs:v31];
  *buf = 0;
  v67 = sub_100045184(v64, v65, 0, 126, 0, 0, v66, buf);
  v68 = *buf;

  if (v68)
  {
    v69 = SESDefaultLogObject();
    v71 = [v23 asHexString];
    v48 = SESCreateAndLogError();
  }

  else
  {
    v48 = 0;
  }

  v24 = v60;
  v25 = v74;

  v26 = v73;
  v30 = v80;
LABEL_44:

  return v48;
}

id sub_100047188(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v9 asHexString];
    v16 = 138412290;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@", &v16, 0xCu);
  }

  if (v7 && v8 && v9)
  {
    v12 = [SESTLV TLVWithTag:80 value:v9];
    v13 = [v12 asData];
    v14 = sub_100045184(v7, v8, 0, 138, 0, 0, v13, a4);

LABEL_9:
    goto LABEL_10;
  }

  if (a4)
  {
    v12 = SESDefaultLogObject();
    SESCreateAndLogError();
    *a4 = v14 = 0;
    goto LABEL_9;
  }

  v14 = 0;
LABEL_10:

  return v14;
}

id sub_100047350(void *a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = SESDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v13 asHexString];
    *buf = 138412290;
    v33 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if (v11 && v12 && v13 && v14 && v15)
  {
    if ([v14 length] == 65)
    {
      v18 = +[NSMutableData data];
      v19 = [SESTLV TLVWithTag:151 value:v14];
      v20 = [v19 asData];
      [v18 appendData:v20];

      v21 = [SESTLV TLVWithTag:74 value:v15];
      v22 = [v21 asData];
      [v18 appendData:v22];

      v23 = [SESTLV TLVWithTag:80 value:v13];
      v24 = [v23 asData];
      v31 = 0;
      v25 = sub_100045184(v11, v12, v18, 124, a6 >> 8, a6, v24, &v31);
      v26 = v31;

      if (v26)
      {
        v27 = SESDefaultLogObject();
        v30 = [v13 asHexString];
        v28 = SESCreateAndLogError();
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_16;
    }

    v18 = SESDefaultLogObject();
    [v14 length];
  }

  else
  {
    v18 = SESDefaultLogObject();
  }

  v28 = SESCreateAndLogError();
LABEL_16:

  return v28;
}

id sub_100047684(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v9 asHexString];
    *buf = 138412290;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if (v7 && v8 && v9 && v10)
  {
    v13 = [SESTLV TLVWithTag:32555 value:v10];
    v14 = [v13 asData];
    v15 = [SESTLV TLVWithTag:80 value:v9];
    v16 = [v15 asData];
    v20 = 0;
    v17 = sub_100045184(v7, v8, v14, 50, 1, 0, v16, &v20);
    v18 = v20;
  }

  else
  {
    v13 = SESDefaultLogObject();
    v18 = SESCreateAndLogError();
  }

  return v18;
}

id sub_10004788C(void *a1, unsigned int a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, char a10, char a11, __int16 a12, void *a13, void *a14, void *a15)
{
  v21 = a1;
  v22 = a3;
  v23 = a4;
  v115 = a5;
  v24 = a6;
  v25 = a7;
  v117 = a8;
  v119 = a9;
  v118 = a13;
  v26 = a14;
  v27 = SESDefaultLogObject();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    [v23 asHexString];
    v29 = v28 = v24;
    *buf = 138412802;
    *&buf[4] = v29;
    v129 = 2112;
    v130 = v26;
    v131 = 1024;
    v132 = v119 != 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%@ %@ - have BA %d", buf, 0x1Cu);

    v24 = v28;
  }

  v116 = v26;

  v30 = v21;
  if (!v21 || !v22 || !v23 || !v25)
  {
    v31 = v115;
    if (a15)
    {
      v35 = SESDefaultLogObject();
      *a15 = SESCreateAndLogError();
    }

    goto LABEL_17;
  }

  v31 = v115;
  if (a2 >= 2)
  {
    v126 = 0;
    v32 = sub_100044F68(v21, v22, 0, &v126);
    v33 = v126;
    if (v33)
    {
      v34 = a15;
      if (a15)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if (v32 <= 3)
    {
      v34 = a15;
      if (a15)
      {
LABEL_15:
        v36 = v24;
        v37 = SESDefaultLogObject();
        *v34 = SESCreateAndLogError();

        v24 = v36;
      }

LABEL_16:

LABEL_17:
      v38 = 0;
      v39 = v117;
      goto LABEL_89;
    }
  }

  v40 = SecCertificateCreateWithData(0, v25);
  if (!v40)
  {
    v39 = v117;
    v65 = a15;
    if (!a15)
    {
      goto LABEL_46;
    }

LABEL_45:
    v66 = SESDefaultLogObject();
    *v65 = SESCreateAndLogError();

    goto LABEL_46;
  }

  v41 = v40;
  v125[4] = 0;
  v42 = SecCertificateCopyExtensionValue();
  v39 = v117;
  if (!v42)
  {
    CFRelease(v41);
    v65 = a15;
    if (!a15)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v103 = v24;
  CFRelease(v42);
  v43 = SecCertificateCopyKey(v41);
  CFRelease(v41);
  if (v43)
  {
    *buf = 0;
    SecKeyCopyPublicBytes();
    CFRelease(v43);
    v108 = *buf;
    if (*buf)
    {
      v44 = objc_opt_new();
      if (v115)
      {
        v45 = [SESTLV TLVWithTag:32544 value:v115];
        [v44 addObject:v45];
      }

      if (v103)
      {
        v46 = [SESTLV TLVWithTag:32546 value:v103];
        [v44 addObject:v46];
      }

      v47 = [SESTLV TLVWithTag:32548 value:v25];
      [v44 addObject:v47];

      if (v119)
      {
        v48 = [SESTLV TLVWithTag:32554 value:?];
        [v44 addObject:v48];
      }

      v100 = v44;
      v49 = [SESTLV TLVWithTag:0 children:v44];
      v50 = [v49 value];
      v51 = [v50 mutableCopy];

      if (v117)
      {
        [v51 appendData:v117];
      }

      v52 = objc_opt_new();
      v53 = [SESTLV TLVWithTag:80 value:v23];
      [v52 addObject:v53];

      if (a12)
      {
        v125[0] = a11;
        v125[1] = a10;
        v125[2] = HIBYTE(a12);
        v125[3] = a12;
        v54 = [NSData dataWithBytes:v125 length:4];
        v55 = [SESTLV TLVWithTag:74 value:v54];
        [v52 addObject:v55];
      }

      if (v118)
      {
        v56 = [SESTLV TLVWithTag:88 value:?];
        [v52 addObject:v56];
      }

      v102 = v51;
      if (v116)
      {
        v57 = [SESTLV TLVWithTag:89 value:?];
        [v52 addObject:v57];
      }

      if (a2 <= 1)
      {
        v58 = 0;
      }

      else
      {
        v58 = a2;
      }

      v99 = v52;
      v59 = [SESTLV TLVWithTag:0 children:v52];
      v60 = [v59 value];
      v124 = 0;
      v61 = sub_100045184(v30, v22, v51, 50, 0, v58, v60, &v124);
      v62 = v124;

      v101 = v62;
      v98 = v61;
      if (v62)
      {
        if (!a15)
        {
          v38 = 0;
          v24 = v103;
          v39 = v117;
LABEL_88:

          goto LABEL_89;
        }

        v63 = SESDefaultLogObject();
        v96 = [v23 asHexString];
        SESCreateAndLogError();
        *a15 = v38 = 0;
        v64 = v96;
        v24 = v103;
        v39 = v117;
LABEL_87:

        goto LABEL_88;
      }

      v68 = objc_opt_new();
      if (a2 < 2)
      {
        v69 = 1;
      }

      else
      {
        v69 = a2;
      }

      v70 = [SESTLV TLVWithTag:65 unsignedChar:v69];
      v107 = v68;
      [v68 addObject:v70];

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v71 = [SESTLV TLVsWithData:v61];
      v111 = [v71 countByEnumeratingWithState:&v120 objects:v127 count:16];
      if (v111)
      {
        v72 = 0;
        v64 = 0;
        v73 = 0;
        v110 = *v121;
        v104 = v71;
        while (2)
        {
          for (i = 0; i != v111; i = i + 1)
          {
            if (*v121 != v110)
            {
              objc_enumerationMutation(v71);
            }

            v75 = *(*(&v120 + 1) + 8 * i);
            v76 = [v75 tag];
            if (v76 > 150)
            {
              if (v76 == 151)
              {
                v83 = v75;
                v79 = v73;
                v73 = v83;
              }

              else
              {
                if (v76 != 158)
                {
LABEL_79:
                  v112 = v72;
                  if (a15)
                  {
                    v94 = SESDefaultLogObject();
                    [v75 tag];
                    *a15 = SESCreateAndLogError();
                  }

                  v38 = 0;
                  v31 = v115;
                  v24 = v103;
                  v93 = v104;
                  v39 = v117;
                  goto LABEL_85;
                }

                v81 = v75;
                v79 = v72;
                v72 = v81;
              }
            }

            else if (v76 == 74)
            {
              v82 = v75;
              v79 = v64;
              v64 = v82;
            }

            else
            {
              if (v76 != 146)
              {
                goto LABEL_79;
              }

              [v107 addObject:v75];
              v77 = v72;
              v78 = v64;
              v79 = [NSData dataWithData:v108];
              v80 = [SESTLV TLVWithTag:90 value:v79];
              [v107 addObject:v80];

              v64 = v78;
              v72 = v77;
              v71 = v104;
            }
          }

          v111 = [v71 countByEnumeratingWithState:&v120 objects:v127 count:16];
          if (v111)
          {
            continue;
          }

          break;
        }

        v39 = v117;
        v97 = v64;
        if (!v72)
        {
          v31 = v115;
          goto LABEL_83;
        }

        v112 = v72;
        v31 = v115;
        if (v118)
        {
          if (a2 >= 2)
          {
            v84 = 120;
          }

          else
          {
            v84 = 88;
          }

          v85 = [SESTLV TLVWithTag:v84 value:?];
          [v107 addObject:v85];
        }

        v86 = [@"91712C44" hexStringAsData];
        v87 = [SESTLV TLVWithTag:147 value:v86];
        [v107 addObject:v87];

        v88 = +[NSMutableData data];
        v89 = [SESTLV TLVWithTag:32549 children:v107];
        v90 = [v89 asData];
        v105 = v88;
        [v88 appendData:v90];

        v91 = [v112 asData];
        [v88 appendData:v91];

        v114 = [v73 value];
        v92 = [v97 value];
        v38 = [SEEndPointAuthorizeResponse responseWithEndPointAttestationData:v105 encryptionPublicKeyData:v114 encryptedData:v92];

        v93 = v105;
        v64 = v97;
        v24 = v103;
      }

      else
      {

        v73 = 0;
        v97 = 0;
        v39 = v117;
LABEL_83:
        v24 = v103;
        if (!a15)
        {
          v112 = 0;
          v38 = 0;
          v64 = v97;
          goto LABEL_86;
        }

        v106 = SESDefaultLogObject();
        SESCreateAndLogError();
        v112 = 0;
        *a15 = v38 = 0;
        v93 = v106;
        v64 = v97;
      }

LABEL_85:

LABEL_86:
      v63 = v112;
      goto LABEL_87;
    }

    v24 = v103;
    if (a15)
    {
      v109 = SESDefaultLogObject();
      SESCreateAndLogError();
      *a15 = v38 = 0;

      goto LABEL_89;
    }

LABEL_46:
    v38 = 0;
    goto LABEL_89;
  }

  if (a15)
  {
    v67 = SESDefaultLogObject();
    *a15 = SESCreateAndLogError();
  }

  v38 = 0;
  v24 = v103;
LABEL_89:

  return v38;
}

id sub_10004851C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = SESDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v13 asHexString];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@", &buf, 0xCu);
  }

  if (!v11 || !v12 || !v13 || !v14)
  {
    if (a6)
    {
      v20 = SESDefaultLogObject();
LABEL_15:
      SESCreateAndLogError();
      *a6 = v22 = 0;
      goto LABEL_23;
    }

LABEL_16:
    v22 = 0;
    goto LABEL_24;
  }

  if ([v14 length] != 32)
  {
    if (a6)
    {
      v20 = SESDefaultLogObject();
      [v14 length];
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v103 = 0;
  v18 = sub_1003AF230(v11, v12, 1, &v103);
  v19 = v103;
  if (v19)
  {
    v20 = v19;
    if (a6)
    {
      v21 = SESDefaultLogObject();
LABEL_20:
      SESCreateAndLogError();
      *a6 = v22 = 0;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v102 = 0;
  v23 = sub_100044F68(v11, v12, 0, &v102);
  v24 = v102;
  if (v24)
  {
    v20 = v24;
    if (a6)
    {
      v21 = SESDefaultLogObject();
      goto LABEL_20;
    }

LABEL_22:
    v22 = 0;
    goto LABEL_23;
  }

  v82 = objc_opt_new();
  if (v15 && v23 > 4)
  {
    goto LABEL_31;
  }

  v81 = v15;
  v26 = [SESTLV TLVWithTag:80 value:v13];
  v27 = [v26 asData];
  [v82 appendData:v27];

  v28 = [SESTLV TLVWithTag:88 value:v14];
  v29 = [v28 asData];
  [v82 appendData:v29];

  if (v15)
  {
    if (v23 >= 5)
    {
LABEL_31:
      v101 = 0;
      v30 = sub_1000490AC(v11, v15, v12, @"se,pta,sign", &v101);
      v31 = v101;
      v20 = v31;
      if (!v30 || v31)
      {
        v80 = v30;
        if (a6)
        {
          v36 = SESDefaultLogObject();
          v77 = [v13 asHexString];
          *a6 = SESCreateAndLogError();
          v37 = v36;

          v22 = 0;
          v21 = v82;
          goto LABEL_101;
        }

        v22 = 0;
        v21 = v82;
        goto LABEL_102;
      }

      v81 = v15;
      v21 = v82;
      [v82 appendData:v30];
      v32 = [SESTLV TLVWithTag:80 value:v13];
      v33 = [v32 asData];
      [v82 appendData:v33];

      v34 = [SESTLV TLVWithTag:88 value:v14];
      v35 = [v34 asData];
      [v82 appendData:v35];

      v20 = 0;
      goto LABEL_54;
    }

    v38 = [NSData dataWithBytes:&unk_100408AD0 length:1];
    v100 = 12416;
    v39 = [NSMutableData dataWithBytes:&v100 length:4];
    [v39 appendU8:{objc_msgSend(v82, "length")}];
    [v39 appendData:v82];
    v40 = [v39 ses_sha256];
    v87 = v38;
    *&buf = [v38 DERItem];
    *(&buf + 1) = v41;
    v107 = [v40 DERItem];
    v108 = v42;
    v43 = encodeSequence();
    if (v43)
    {
      v84 = v40;
      v44 = [v12 asHexString];
      v99 = 0;
      v45 = sub_100057B60(v11, v44, v43, v15, &v99);
      v20 = v99;

      v46 = v45;
      if (v45)
      {
        v47 = v20 == 0;
      }

      else
      {
        v47 = 0;
      }

      v48 = v47;
      if (a6 && (v48 & 1) == 0)
      {
        v49 = v46;
        v50 = SESDefaultLogObject();
        *a6 = SESCreateAndLogError();

        v46 = v49;
        v48 = 0;
      }

      v40 = v84;
    }

    else
    {
      if (!a6)
      {
        v20 = 0;
        v48 = 0;
LABEL_52:

        if (!v48)
        {
          v22 = 0;
          v15 = v81;
          v21 = v82;
          goto LABEL_21;
        }

        goto LABEL_53;
      }

      v85 = SESDefaultLogObject();
      SESCreateAndLogError();
      v20 = 0;
      *a6 = v48 = 0;
      v46 = v85;
    }

    goto LABEL_52;
  }

  v20 = 0;
LABEL_53:
  v21 = v82;
LABEL_54:
  v51 = v20;
  v20 = sub_1003AF1FC(v11, v12);

  if (v20)
  {
    v15 = v81;
    if (!a6)
    {
      v22 = 0;
      goto LABEL_21;
    }

    v52 = SESDefaultLogObject();
    v37 = [v13 asHexString];
    v80 = v52;
LABEL_89:
    SESCreateAndLogError();
    *a6 = v22 = 0;
    goto LABEL_101;
  }

  v15 = v81;
  v98 = 0;
  v53 = sub_1003AF0E8();
  v54 = 0;
  v20 = v54;
  v80 = v53;
  if (!v53 || v54)
  {
    if (!a6)
    {
      v22 = 0;
      goto LABEL_102;
    }

    v37 = SESDefaultLogObject();
    goto LABEL_89;
  }

  v55 = sub_1003B0934(v53);
  v56 = [SESTLV TLVsWithData:v55];

  v86 = objc_opt_new();
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v57 = v56;
  v88 = [v57 countByEnumeratingWithState:&v94 objects:v105 count:16];
  obj = v57;
  if (!v88)
  {

    goto LABEL_96;
  }

  v58 = 0;
  v59 = *v95;
  while (2)
  {
    for (i = 0; i != v88; i = i + 1)
    {
      if (*v95 != v59)
      {
        objc_enumerationMutation(obj);
      }

      v61 = *(*(&v94 + 1) + 8 * i);
      v62 = [v61 tag];
      if (v62 <= 92)
      {
        if (v62 != 65 && v62 != 87)
        {
LABEL_91:
          v79 = v58;
          if (a6)
          {
            v75 = SESDefaultLogObject();
            [v61 tag];
            *a6 = SESCreateAndLogError();
          }

          v37 = obj;

          v22 = 0;
          v15 = v81;
          v21 = v82;
          v74 = v79;
          goto LABEL_99;
        }

LABEL_71:
        [v86 addObject:v61];
        continue;
      }

      switch(v62)
      {
        case 93:
          [v86 addObject:v61];
          v64 = [SESTLV TLVWithTag:88 value:v14];
          v20 = 0;
          [v86 addObject:v64];

          break;
        case 146:
          goto LABEL_71;
        case 158:
          v63 = [v61 value];

          v58 = v63;
          break;
        default:
          goto LABEL_91;
      }
    }

    v88 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
    if (v88)
    {
      continue;
    }

    break;
  }

  v15 = v81;
  v78 = v58;
  if (v58)
  {
    v65 = objc_opt_new();
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v89 = v86;
    v66 = [v89 countByEnumeratingWithState:&v90 objects:v104 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v91;
      do
      {
        for (j = 0; j != v67; j = j + 1)
        {
          if (*v91 != v68)
          {
            objc_enumerationMutation(v89);
          }

          v70 = [*(*(&v90 + 1) + 8 * j) asData];
          [v65 appendData:v70];
        }

        v67 = [v89 countByEnumeratingWithState:&v90 objects:v104 count:16];
      }

      while (v67);
    }

    v71 = @"9304D074DA4F";
    v15 = v81;
    if (!v81)
    {
      v71 = @"9304FC6F4C17";
    }

    v72 = v71;
    v73 = [(__CFString *)v72 hexStringAsData];
    [v65 appendData:v73];

    v22 = [SEEndPointSignatureResponse responseWithSignedData:v65 signature:v78];

    v74 = v78;
    goto LABEL_98;
  }

LABEL_96:
  if (a6)
  {
    v76 = SESDefaultLogObject();
    SESCreateAndLogError();
    *a6 = v22 = 0;
    v74 = v76;
LABEL_98:
    v21 = v82;
    v37 = obj;
LABEL_99:
  }

  else
  {
    v22 = 0;
    v21 = v82;
    v37 = obj;
  }

LABEL_101:
LABEL_102:

LABEL_21:
LABEL_23:

LABEL_24:

  return v22;
}

id sub_1000490AC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = sub_1003AF1FC(v9, a3);
  if (v12)
  {
    v13 = v12;
    v14 = v12;
    v15 = 0;
  }

  else
  {
    *buf = 0;
    v16 = sub_1003AF0E8();
    v13 = 0;
    v17 = v13;
    v15 = sub_1003B0934(v16);
  }

  v18 = v13;
  v19 = v18;
  if (v15 && !v18)
  {
    v20 = SESDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = [v15 asHexString];
      *buf = 138412290;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "PTA ACL: %@", buf, 0xCu);
    }

    v32[1] = 0;
    v22 = sub_1003AEF50();
    v23 = 0;
    v19 = v23;
    if (!v22 || v23)
    {
      if (!a5)
      {
        v28 = 0;
        goto LABEL_18;
      }

      v24 = SESDefaultLogObject();
      v29 = SESCreateAndLogError();
      v28 = 0;
    }

    else
    {
      v24 = sub_1003B0934(v22);
      sub_1003AF3C4(v9, v25);
      v26 = v31 = a5;
      v27 = [v26 seid];
      v32[0] = 0;
      v28 = [SSEHelper performOperationApprovalV3:v10 seid:v27 acl:v15 operation:v11 nonce:v24 error:v32];
      v19 = v32[0];

      a5 = v31;
      if (!v31)
      {
LABEL_17:

        goto LABEL_18;
      }

      v29 = v19;
    }

    *a5 = v29;
    goto LABEL_17;
  }

  if (a5)
  {
    v22 = SESDefaultLogObject();
    SESCreateAndLogError();
    *a5 = v28 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v28 = 0;
LABEL_19:

  return v28;
}

id sub_1000493D0(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = SESDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v11 asHexString];
    *buf = 138412290;
    v51 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if (v9 && v10 && v11 && v12)
  {
    v42 = a5;
    v15 = objc_opt_new();
    v16 = [SESTLV TLVWithTag:80 value:v11];
    v17 = [v16 asData];
    [v15 appendData:v17];

    v43 = v12;
    v18 = [SESTLV TLVWithTag:88 value:v12];
    v19 = [v18 asData];
    [v15 appendData:v19];

    *buf = 12672;
    v20 = [NSMutableData dataWithBytes:buf length:4];
    [v20 appendU8:{objc_msgSend(v15, "length")}];
    [v20 appendData:v15];
    [v20 appendU8:0];
    v21 = sub_1003AF1FC(v9, v10);
    if (v21)
    {
      v22 = v21;
      if (!v42)
      {
        v25 = 0;
LABEL_39:

        v12 = v43;
        goto LABEL_40;
      }

      v41 = v10;
      v23 = SESDefaultLogObject();
      v24 = [v11 asHexString];
      SESCreateAndLogError();
      *v42 = v25 = 0;
      goto LABEL_37;
    }

    v48 = 0;
    v26 = sub_1003AEB5C(v9, v20, &v48);
    v27 = v48;
    v22 = v27;
    v40 = v26;
    if (!v26 || v27)
    {
      if (!v42)
      {
        v25 = 0;
        v23 = v26;
LABEL_38:

        goto LABEL_39;
      }

      v41 = v10;
      v24 = SESDefaultLogObject();
      SESCreateAndLogError();
      *v42 = v25 = 0;
    }

    else
    {
      v41 = v10;
      v28 = sub_1003B0934(v26);
      v29 = [SESTLV TLVsWithData:v28];

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v24 = v29;
      v30 = [v24 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v30)
      {
        v31 = v30;
        v39 = v9;
        v32 = 0;
        v33 = *v45;
        while (2)
        {
          v34 = 0;
          v35 = v32;
          do
          {
            if (*v45 != v33)
            {
              objc_enumerationMutation(v24);
            }

            v36 = *(*(&v44 + 1) + 8 * v34);
            if ([v36 tag] != 158)
            {
              if (v42)
              {
                v37 = SESDefaultLogObject();
                [v36 tag];
                *v42 = SESCreateAndLogError();
              }

              v25 = 0;
              v9 = v39;
              goto LABEL_36;
            }

            v32 = [v36 value];

            v34 = v34 + 1;
            v35 = v32;
          }

          while (v31 != v34);
          v31 = [v24 countByEnumeratingWithState:&v44 objects:v49 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }

        v9 = v39;
        if (v32)
        {
          v25 = [SEEndPointSignatureResponse signature:v32];
          v35 = v32;
          goto LABEL_36;
        }
      }

      else
      {
      }

      if (v42)
      {
        v35 = SESDefaultLogObject();
        SESCreateAndLogError();
        *v42 = v25 = 0;
LABEL_36:
        v23 = v40;

        goto LABEL_37;
      }

      v25 = 0;
    }

    v23 = v40;
LABEL_37:

    v10 = v41;
    goto LABEL_38;
  }

  if (!a5)
  {
    v25 = 0;
    goto LABEL_41;
  }

  v22 = SESDefaultLogObject();
  SESCreateAndLogError();
  *a5 = v25 = 0;
LABEL_40:

LABEL_41:

  return v25;
}

id sub_10004993C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = SESDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v13 asHexString];
    *buf = 138412290;
    v37 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if (v11 && v12 && v13 && v14)
  {
    if ([v14 length] != 16)
    {
      if (a6)
      {
        v18 = SESDefaultLogObject();
        [v14 length];
        goto LABEL_15;
      }

      goto LABEL_17;
    }

    if ([v15 length] >= 0x33)
    {
      if (a6)
      {
        v18 = SESDefaultLogObject();
        [v15 length];
LABEL_15:
        SESCreateAndLogError();
        *a6 = v19 = 0;
LABEL_16:

        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v18 = objc_opt_new();
    v21 = [SESTLV TLVWithTag:80 value:v13];
    [v18 addObject:v21];

    v22 = [SESTLV TLVWithTag:145 value:v14];
    [v18 addObject:v22];

    if (v15)
    {
      v23 = [SESTLV TLVWithTag:88 value:v15];
      [v18 addObject:v23];
    }

    v24 = sub_1003AF1FC(v11, v12);
    if (v24)
    {
      v25 = v24;
      if (!a6)
      {
        v19 = 0;
LABEL_34:

        goto LABEL_16;
      }

      v26 = SESDefaultLogObject();
      v32 = [v13 asHexString];
      *a6 = SESCreateAndLogError();
      v27 = v26;

      v19 = 0;
    }

    else
    {
      v34 = [SESTLV TLVWithTag:32558 children:v18];
      v28 = [v34 asData];
      v29 = sub_1003AEF50();
      v25 = 0;

      if (v25 || (sub_1003B0934(v29), v31 = objc_claimAutoreleasedReturnValue(), v31, !v31))
      {
        v35 = v29;
        if (a6)
        {
          v30 = SESDefaultLogObject();
          v33 = [v13 asHexString];
          *a6 = SESCreateAndLogError();
        }

        v19 = 0;
        v27 = v35;
      }

      else
      {
        sub_1003B0934(v29);
        v19 = v27 = v29;
      }
    }

    goto LABEL_34;
  }

  if (a6)
  {
    v18 = SESDefaultLogObject();
    goto LABEL_15;
  }

LABEL_17:
  v19 = 0;
LABEL_18:

  return v19;
}

id sub_100049DA8(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = SESDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "", buf, 2u);
  }

  if (v7 && v8)
  {
    if (a3)
    {
      v10 = 0x80;
    }

    else
    {
      v10 = 0;
    }

    v26 = 0;
    if (a3)
    {
      v11 = 131;
    }

    else
    {
      v11 = 3;
    }

    v12 = sub_100045184(v7, v8, 0, 118, v11, 0, 0, &v26);
    v13 = v26;
    if (v13 || !v12)
    {
      if (!a4)
      {
        v18 = 0;
LABEL_29:

        goto LABEL_30;
      }

      v16 = SESDefaultLogObject();
      SESCreateAndLogError();
      *a4 = v18 = 0;
    }

    else
    {
      v14 = SESDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *[v12 bytes];
        *buf = 138412546;
        v28 = v8;
        v29 = 1024;
        v30 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Instance '%@' reporting %d objects", buf, 0x12u);
      }

      v25 = 0;
      v16 = sub_100045184(v7, v8, 0, 118, v10, 0, 0, &v25);
      v13 = v25;
      if (v13)
      {
        if (a4)
        {
          v17 = SESDefaultLogObject();
          *a4 = SESCreateAndLogError();
        }

        v18 = 0;
      }

      else
      {
        v18 = +[NSMutableArray array];
        if ([v16 length])
        {
          v19 = 0;
          v20 = 0;
          do
          {
            v21 = (v20 + 1);
            v22 = *([v16 bytes] + v19);
            v23 = [v16 subdataWithRange:{v21, v22}];
            [v18 addObject:v23];

            v19 = (v21 + v22);
            v20 = v19;
          }

          while ([v16 length] > v19);
        }
      }
    }

    goto LABEL_29;
  }

  if (!a4)
  {
    v18 = 0;
    goto LABEL_31;
  }

  v13 = SESDefaultLogObject();
  SESCreateAndLogError();
  *a4 = v18 = 0;
LABEL_30:

LABEL_31:

  return v18;
}

uint64_t sub_10004A138(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [v7 asHexString];
    *buf = 138412290;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v20 = 0;
  v12 = sub_100045184(v9, v8, 0, 118, 4, 0, v7, &v20);

  v13 = v20;
  v14 = v13;
  if (!v13)
  {
    if ([v12 length] == 1)
    {
      v16 = *[v12 bytes];
      goto LABEL_11;
    }

    if (a4)
    {
      v17 = SESDefaultLogObject();
      v19 = [v12 asHexString];
      *a4 = SESCreateAndLogError();
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  if (!a4)
  {
    goto LABEL_10;
  }

  v15 = v13;
  v16 = 0;
  *a4 = v14;
LABEL_11:

  return v16;
}

void *sub_10004A320(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if ([v6 length])
  {
    v7 = (24 * *ccec_cp_256() + 31) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin();
    v9 = (&v25 - v8);
    [v6 length];
    [v6 bytes];
    if (ccec_import_pub())
    {
      if (!a3)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v34 = 0;
    v35 = 0;
    v36 = 0;
    v32 = 0;
    v33 = 0;
    v32 = [v5 DERItem];
    v33 = v11;
    if (DERDecodeItem(&v32, &v34) || v34 != 0x6000000000000039)
    {
      if (!a3)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v31 = 0u;
    v29 = 0u;
    memset(v30, 0, sizeof(v30));
    if (DERParseSequenceSpecContent())
    {
      if (!a3)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (*(&v31 + 1) == 16 * **v9)
    {
      v14 = v30[0] + v30[1];
      if (!__CFADD__(v30[0], v30[1]) && (v15 = v35, v16 = v14 >= v35, v17 = v14 - v35, v16))
      {
        v26 = v17;
        v18 = SESDefaultLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [NSData dataWithBytesNoCopy:v15 length:v26 freeWhenDone:0];
          v20 = [v19 asHexString];
          LODWORD(v37) = 138412290;
          *(&v37 + 4) = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "RTR TBS: %@", &v37, 0xCu);
        }

        v42 = 0u;
        v43 = 0u;
        ccsha256_di();
        ccdigest();
        v21 = **v9;
        v28 = 0;
        if (ccec_verify_composite() || (v28 & 1) == 0)
        {
          if (a3)
          {
            goto LABEL_13;
          }
        }

        else
        {
          *&v37 = 0;
          *(&v37 + 1) = &v37;
          v38 = 0x3032000000;
          v39 = sub_10004A954;
          v40 = sub_10004A964;
          v41 = objc_alloc_init(NSMutableArray);
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_10004A96C;
          v27[3] = &unk_1004C2190;
          v27[4] = &v37;
          if (DERDecodeSequenceContentWithBlock(v30, v27))
          {
            if (a3)
            {
              v22 = SESDefaultLogObject();
              v23 = [NSData dataWithDERItem:v30];
              v24 = [v23 asHexString];
              *a3 = SESCreateAndLogError();

              a3 = 0;
            }
          }

          else
          {
            a3 = *(*(&v37 + 1) + 40);
          }

          _Block_object_dispose(&v37, 8);
        }
      }

      else if (a3)
      {
        goto LABEL_13;
      }
    }

    else if (a3)
    {
LABEL_13:
      v12 = SESDefaultLogObject();
      *a3 = SESCreateAndLogError();

      a3 = 0;
    }
  }

  else if (a3)
  {
    v10 = SESDefaultLogObject();
    *a3 = SESCreateAndLogError();

    a3 = 0;
  }

LABEL_14:

  return a3;
}

uint64_t sub_10004A954(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10004A96C(uint64_t a1, uint64_t *a2)
{
  if (*a2 == 0x6000000000000001)
  {
    *buf = 0u;
    v16 = 0u;
    v4 = DERParseSequenceSpecContent();
    if (v4)
    {
      v5 = SESDefaultLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [NSData dataWithDERItem:a2 + 1];
        v7 = [v6 asHexString];
        v12[0] = 67109378;
        v12[1] = v4;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed (%d) to parse content of tag 0x61 %@", v12, 0x12u);
      }
    }

    else
    {
      v10 = *(*(*(a1 + 32) + 8) + 40);
      v5 = [NSData dataWithDERItem:buf];
      [v10 addObject:v5];
    }
  }

  else
  {
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *a2;
      *buf = 134217984;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Ignoring unknown tag 0x%llX in RTR", buf, 0xCu);
    }

    return 0;
  }

  return v4;
}

id sub_10004AB24(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = SESDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "", buf, 2u);
  }

  if (v5 && v6)
  {
    v38 = 0;
    v8 = sub_100045184(v5, v6, 0, 118, 135, 0, 0, &v38);
    v9 = v38;
    if (v9 || !v8)
    {
      if (a3)
      {
        v12 = SESDefaultLogObject();
        *a3 = SESCreateAndLogError();
      }

      v11 = 0;
      goto LABEL_35;
    }

    *buf = 0;
    v33 = buf;
    v34 = 0x3032000000;
    v35 = sub_10004A954;
    v36 = sub_10004A964;
    v37 = objc_opt_new();
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10004B1BC;
    v31[3] = &unk_1004C2980;
    v31[4] = buf;
    if (sub_10004B110(v8, v31))
    {
      if (!a3)
      {
        v9 = 0;
        v11 = 0;
LABEL_34:
        _Block_object_dispose(buf, 8);

LABEL_35:
        goto LABEL_36;
      }

      v10 = SESDefaultLogObject();
      v22 = [v8 base64];
      *a3 = SESCreateAndLogError();

      v9 = 0;
    }

    else
    {
      v30 = 0;
      v10 = sub_100049DA8(v5, v6, 0, &v30);
      v9 = v30;
      if (!v9 && v10)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = v10;
        v13 = [v10 countByEnumeratingWithState:&v26 objects:v41 count:16];
        if (v13)
        {
          v14 = *v27;
          while (2)
          {
            v15 = 0;
            v16 = v8;
            do
            {
              if (*v27 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v17 = *(*(&v26 + 1) + 8 * v15);
              v25 = 0;
              v8 = sub_100045184(v5, v6, 0, 118, 136, 0, v17, &v25);
              v9 = v25;

              if (v9 || !v8)
              {
                v20 = SESDefaultLogObject();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  *v39 = 138412290;
                  v40 = v9;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Ignoring error on VIEW (0x88) -- probably not updated PTA: %@", v39, 0xCu);
                }

                goto LABEL_44;
              }

              v24[0] = _NSConcreteStackBlock;
              v24[1] = 3221225472;
              v24[2] = sub_10004B1D0;
              v24[3] = &unk_1004C2980;
              v24[4] = buf;
              if (sub_10004B110(v8, v24))
              {
                if (a3)
                {
                  v21 = SESDefaultLogObject();
                  v23 = [v8 base64];
                  *a3 = SESCreateAndLogError();
                }

                v9 = 0;
                v11 = 0;
                goto LABEL_33;
              }

              v15 = v15 + 1;
              v16 = v8;
            }

            while (v13 != v15);
            v13 = [v10 countByEnumeratingWithState:&v26 objects:v41 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }

          v9 = 0;
        }

        else
        {
          v9 = 0;
        }

LABEL_44:

        v11 = *(v33 + 5);
        goto LABEL_33;
      }

      if (a3)
      {
        v18 = SESDefaultLogObject();
        *a3 = SESCreateAndLogError();
      }
    }

    v11 = 0;
LABEL_33:

    goto LABEL_34;
  }

  if (!a3)
  {
    v11 = 0;
    goto LABEL_37;
  }

  v9 = SESDefaultLogObject();
  SESCreateAndLogError();
  *a3 = v11 = 0;
LABEL_36:

LABEL_37:

  return v11;
}

uint64_t sub_10004B110(void *a1, void *a2)
{
  v3 = a2;
  v10[0] = [a1 DERItem];
  v10[1] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004C384;
  v8[3] = &unk_1004C29A8;
  v9 = v3;
  v5 = v3;
  v6 = DERDecodeSequenceContentWithBlock(v10, v8);

  return v6;
}

id sub_10004B1E4(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "", v13, 2u);
  }

  if (v5 && v6 && v7)
  {
    v9 = [SESTLV TLVWithTag:147 value:v7];
    v10 = [v9 asData];
    v11 = sub_100045670(v5, v6, v10);
  }

  else
  {
    v9 = SESDefaultLogObject();
    v11 = SESCreateAndLogError();
  }

  return v11;
}

id sub_10004B32C(uint64_t a1, void *a2)
{
  memset(&v6[2], 0, 64);
  if (DERParseSequenceSpec())
  {
    if (a2)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  memset(v6, 0, 32);
  if (DERParseSequenceSpecContent())
  {
    if (a2)
    {
LABEL_6:
      v3 = SESDefaultLogObject();
      *a2 = SESCreateAndLogError();
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = [NSData dataWithDERItem:v6];
LABEL_8:

  return v4;
}

BOOL sub_10004B454(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = sub_1003AF1FC(v5, v6);
    if (v8)
    {
      v9 = v8;
      if (a3)
      {
        v10 = SESDefaultLogObject();
        *a3 = SESCreateAndLogError();
      }

      v11 = 0;
    }

    else
    {
      v13 = [NSData dataWithHexString:@"80CA000100"];
      v17 = 0;
      v14 = sub_1003AE9C8(v5, v13, &v17);
      v9 = v17;

      if (v9)
      {
        if (a3)
        {
          v15 = v9;
          v11 = 0;
          *a3 = v9;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = sub_1003B0984(v14) == 26880;
      }
    }
  }

  else
  {
    if (a3)
    {
      v12 = SESDefaultLogObject();
      *a3 = SESCreateAndLogError();
    }

    v11 = 0;
  }

  return v11;
}

id sub_10004B5EC(void *a1, void *a2, void *a3, void *a4, unsigned int a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v59 = 0;
  v15 = sub_100044F68(v11, v12, 0, &v59);
  v16 = v59;
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15 > 3;
  }

  if (v17)
  {
    v21 = [SESTLV TLVWithTag:80 value:v13];
    v63[0] = v21;
    v22 = [SESTLV TLVWithTag:81 value:v14];
    v63[1] = v22;
    v23 = [SESTLV TLVWithTag:83 unsignedShort:__rev16(a5)];
    v63[2] = v23;
    v19 = [NSArray arrayWithObjects:v63 count:3];

    v53 = [SESTLV TLVWithTag:32570 children:v19];
    v24 = [v53 asData];
    v58 = 0;
    v25 = sub_100045184(v11, v12, 0, 140, 0, 0, v24, &v58);
    v18 = v58;

    v52 = v25;
    if (v18)
    {
      if (a6)
      {
        SESDefaultLogObject();
        v27 = v26 = a6;
        SESCreateAndLogError();
        *v26 = v20 = 0;
        v28 = v53;
        goto LABEL_39;
      }

      v20 = 0;
      v28 = v53;
LABEL_40:

      goto LABEL_41;
    }

    v48 = a6;
    v49 = v19;
    v50 = v14;
    v51 = v13;
    [SESTLV TLVsWithData:v25];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v29 = v57 = 0u;
    v30 = [v29 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (!v30)
    {

      v27 = 0;
      goto LABEL_35;
    }

    v31 = v30;
    v46 = v12;
    v47 = v11;
    v32 = 0;
    v27 = 0;
    v33 = *v55;
LABEL_13:
    v34 = 0;
    while (1)
    {
      if (*v55 != v33)
      {
        objc_enumerationMutation(v29);
      }

      v35 = *(*(&v54 + 1) + 8 * v34);
      v36 = [v35 tag];
      if (v36 == 32548)
      {
        break;
      }

      if (v36 == 83)
      {
        v37 = [v35 value];
        v38 = [v37 length];

        if (v38 != 2)
        {
          if (v48)
          {
            v41 = SESDefaultLogObject();
            v42 = [v35 value];
            v45 = [v42 asHexString];
            *v48 = SESCreateAndLogError();
          }

          v20 = 0;
          goto LABEL_33;
        }

        v39 = [v35 value];
        v32 = [v39 u16BE:0];
        goto LABEL_21;
      }

LABEL_22:
      if (v31 == ++v34)
      {
        v31 = [v29 countByEnumeratingWithState:&v54 objects:v62 count:16];
        if (v31)
        {
          goto LABEL_13;
        }

        if (v27 && v32)
        {
          v40 = SESDefaultLogObject();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            v61 = v32;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Endpoint converted successfully to counter %d", buf, 8u);
          }

          v27 = v27;
          v20 = v27;
LABEL_33:
          v12 = v46;
          v11 = v47;
          goto LABEL_38;
        }

        v12 = v46;
        v11 = v47;
LABEL_35:
        if (v48)
        {
          v43 = SESDefaultLogObject();
          *v48 = SESCreateAndLogError();
        }

        v20 = 0;
LABEL_38:
        v13 = v51;
        v28 = v53;

        v19 = v49;
        v14 = v50;
LABEL_39:

        goto LABEL_40;
      }
    }

    [v35 value];
    v27 = v39 = v27;
LABEL_21:

    goto LABEL_22;
  }

  v18 = v16;
  if (!a6)
  {
    v20 = 0;
    goto LABEL_42;
  }

  v19 = SESDefaultLogObject();
  SESCreateAndLogError();
  *a6 = v20 = 0;
LABEL_41:

LABEL_42:

  return v20;
}

id sub_10004BB38(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [SESTLV TLVWithTag:80 value:v9];
  v12 = [v11 asData];
  v13 = [v12 mutableCopy];

  [v13 appendData:v10];
  v20 = 0;
  v14 = sub_100045184(v7, v8, 0, 174, 0, 0, v13, &v20);
  v15 = v20;
  if (v15)
  {
    v16 = SESDefaultLogObject();
    v19 = [v9 asHexString];
    v17 = SESCreateAndLogError();
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void *sub_10004BCBC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v57 = a3;
  v11 = a4;
  v12 = [NSData randomData:16];
  v13 = [NSData dataWithBytes:&unk_100408B08 length:1];
  v14 = [NSData withU16BE:1];
  v15 = [v10 appletIdentifier];
  v16 = [v10 appletIdentifier];
  v65[0] = 0;
  v17 = sub_1003AF230(v9, v16, 1, v65);
  v18 = v65[0];

  if (v18)
  {
    if (!a5)
    {
      goto LABEL_10;
    }

    v19 = SESDefaultLogObject();
LABEL_7:
    *a5 = SESCreateAndLogError();
LABEL_8:

LABEL_9:
    a5 = 0;
    goto LABEL_10;
  }

  v64 = 0;
  v20 = sub_100044F68(v9, v15, 0, &v64);
  v21 = v64;
  if (v21)
  {
    v18 = v21;
    if (!a5)
    {
      goto LABEL_10;
    }

    v19 = SESDefaultLogObject();
    goto LABEL_7;
  }

  if (v20 < 5)
  {
    v62[1] = [v13 DERItem];
    v62[2] = v33;
    v62[3] = [v12 DERItem];
    v62[4] = v34;
    v35 = [v10 publicKeyIdentifier];
    v62[5] = [v35 DERItem];
    v62[6] = v36;
    v62[7] = [v14 DERItem];
    v62[8] = v37;

    v38 = encodeSequence();
    if (v38)
    {
      v39 = v38;
      v51 = [v10 appletIdentifier];
      v40 = [v51 asHexString];
      v62[0] = 0;
      v53 = v39;
      v56 = sub_100057B60(v9, v40, v39, v11, v62);
      v18 = v62[0];

      v41 = v56;
      if (!v56 || v18)
      {
        if (a5)
        {
          v45 = SESDefaultLogObject();
          *a5 = SESCreateAndLogError();

          v41 = v56;
        }

        goto LABEL_37;
      }

      v61[0] = [v56 DERItem];
      v61[1] = v42;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      if (!DERDecodeItem(v61, &v58) && v58 == 0xE00000000000000ALL && v60 == 4)
      {
        v32 = v59;

        goto LABEL_26;
      }

      if (a5)
      {
        v47 = SESDefaultLogObject();
        *a5 = SESCreateAndLogError();

        v41 = v56;
      }
    }

    else if (a5)
    {
      v44 = SESDefaultLogObject();
      *a5 = SESCreateAndLogError();
    }

    v18 = 0;
    goto LABEL_9;
  }

  v63 = 0;
  v19 = sub_1000490AC(v9, v11, v15, @"se,pta,authep", &v63);
  v23 = v63;
  v18 = v23;
  if (!v19 || v23)
  {
    if (a5)
    {
      SESDefaultLogObject();
      v43 = v54 = v19;
      *a5 = SESCreateAndLogError();

      v19 = v54;
    }

    goto LABEL_8;
  }

  v53 = v19;
  v55 = objc_opt_new();
  [v55 appendData:v19];
  v48 = [v10 publicKeyIdentifier];
  v24 = [SESTLV TLVWithTag:80 value:v48];
  v25 = [v24 asData];
  [v55 appendData:v25];

  v49 = [SESTLV TLVWithTag:89 value:v12];
  v26 = [v49 asData];
  [v55 appendData:v26];

  v50 = [SESTLV TLVWithTag:2 value:v14];
  v27 = [v50 asData];
  [v55 appendData:v27];

  v62[9] = 0;
  v28 = sub_1003AF0E8();
  v29 = 0;
  v18 = v29;
  if (!v28 || v29)
  {
    if (a5)
    {
      SESDefaultLogObject();
      v46 = v52 = v28;
      *a5 = SESCreateAndLogError();

      v28 = v52;
    }

LABEL_37:
    goto LABEL_9;
  }

  sub_1003B0934(v28);
  v31 = v30 = v28;
  v32 = [v31 bytes];

LABEL_26:
  a5 = [SEEndPointCreateAuthorizationIDResponse withAuthorizationID:v12 authorizationInterval:1 authorizationCount:(bswap32(v32[1]) >> 16) + (bswap32(*v32) >> 16) * 3600.0];
  v18 = 0;
LABEL_10:

  return a5;
}

uint64_t sub_10004C384()
{
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  result = DERParseSequenceSpecContent();
  if (!result)
  {
    return 6;
  }

  return result;
}

id sub_10004C5A0(void *a1, void *a2, unsigned int a3)
{
  v5 = a1;
  v6 = a2;
  if ([v6 length])
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = [v6 length];
      v10 = &v9[-v7] >= a3 ? a3 : &v9[-v7];
      v11 = [v6 subdataWithRange:{v7, v10}];
      if (a3 < 0x100)
      {
        v19 = 0;
        v12 = &v19;
        v14 = sub_1003AEF50();
      }

      else
      {
        v20 = 0;
        v12 = &v20;
        v13 = sub_1003AF0E8();
      }

      v15 = *v12;

      if (v15)
      {
        break;
      }

      v8 += v10;
      v7 = v8;
      if ([v6 length] == v8)
      {
        goto LABEL_11;
      }
    }

    v17 = SESDefaultLogObject();
    v16 = SESCreateAndLogError();
  }

  else
  {
LABEL_11:
    v16 = 0;
  }

  return v16;
}

id sub_10004C734(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = SESDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "", buf, 2u);
  }

  v7 = objc_opt_new();
  if (a2)
  {
    v8 = 0;
    while (1)
    {
      v9 = sub_1003AEF50();
      v10 = 0;
      if (v10 || v9 == 0)
      {
        break;
      }

      v12 = sub_1003B0934(v9);
      [v7 appendData:v12];

      v13 = sub_1003B0934(v9);
      v8 += [v13 length];

      if (v8 == a2)
      {
        goto LABEL_10;
      }
    }

    v15 = v10;
    if (a3)
    {
      v16 = SESDefaultLogObject();
      *a3 = SESCreateAndLogError();
    }

    v14 = 0;
  }

  else
  {
LABEL_10:
    v14 = v7;
  }

  return v14;
}

void sub_10004C8F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, a5, a6, &a9, 2u);
}

id sub_10004C9FC()
{
  objc_opt_self();
  if (qword_10050CCC8 != -1)
  {
    sub_1003AE4F8();
  }

  v0 = qword_10050CCC0;

  return v0;
}

void sub_10004CA44(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_self();
  v2 = sub_10004C9FC();
  objc_sync_enter(v2);
  v3 = objc_opt_new();
  v4 = v3;
  if (v3)
  {
    *(v3 + 16) = 6;
  }

  if (v2)
  {
    v5 = v2[1];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v6 setObject:v4 forKeyedSubscript:v7];

  objc_sync_exit(v2);
}

void sub_10004CB20(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v26 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Posting SESD HUP event with result %lu", buf, 0xCu);
  }

  v6 = [v4 getEndpointUser];
  v7 = [v4 hupData];
  v8 = v7;
  if (v7)
  {
    v9 = v6 == 0;
    v10 = [v7 u8:0];
    v22 = [v8 u16BE:7];
    v11 = [KmlRoutingInformation alloc];
    v12 = [v4 readerInfo];
    v13 = [v11 initWithReaderInformation:v12];

    v21 = [v13 manufacturer];
    v14 = [v13 brand];
    v15 = [v13 regionString];
    v23[0] = @"bluetoothConfiguration";
    v16 = [NSNumber numberWithUnsignedChar:v10];
    v24[0] = v16;
    v24[1] = v14;
    v23[1] = @"Brand";
    v23[2] = @"dataCenterCode";
    v24[2] = v15;
    v23[3] = @"isOwner";
    v17 = [NSNumber numberWithBool:v9];
    v24[3] = v17;
    v24[4] = v21;
    v23[4] = @"Manufacturer";
    v23[5] = @"pairingResult";
    v18 = [NSNumber numberWithUnsignedInteger:a3];
    v24[5] = v18;
    v23[6] = @"vehicleCapabilities";
    v19 = [NSNumber numberWithUnsignedShort:v22];
    v24[6] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:7];

    [CALogger postCAEventFor:@"com.apple.kml.headUnitPairingEvent" eventInput:v20];
  }

  else
  {
    v13 = SESDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not report CA because hupData is nil", buf, 2u);
    }
  }
}

void sub_10004CE08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  objc_opt_self();
  v9 = [[KmlRoutingInformation alloc] initWithReaderInformation:v8];
  v10 = SESDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "readerInfo - %@", buf, 0xCu);
  }

  v11 = [v9 manufacturer];
  v12 = [v9 brand];
  v13 = [v9 regionString];
  v14 = [NSNumber numberWithInteger:a2, @"destination"];
  v19[0] = v14;
  v19[1] = v13;
  v18[1] = @"dataCenterCode";
  v18[2] = @"manufacturer";
  v19[2] = v11;
  v19[3] = v12;
  v18[3] = @"brand";
  v18[4] = @"transportSupported";
  v15 = [NSNumber numberWithUnsignedInteger:a4];
  v19[4] = v15;
  v18[5] = @"status";
  v16 = [NSNumber numberWithUnsignedInt:a5];
  v19[5] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:6];

  [CALogger postCAEventFor:@"com.apple.kml.keyRevocationEvent" eventInput:v17];
}

void sub_10004D01C(uint64_t a1, int a2, int a3, void *a4, unint64_t a5, void *a6)
{
  v10 = a4;
  v11 = a6;
  objc_opt_self();
  if (a5 <= 1)
  {
    v12 = sub_10004C9FC();
    objc_sync_enter(v12);
    if (v12)
    {
      v13 = v12[1];
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [v14 objectForKeyedSubscript:v11];

    if (!v15)
    {
      v19 = SESDefaultLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Couldn't retrieve peer", buf, 2u);
      }

      goto LABEL_11;
    }

    v16 = a3 | (a2 << 16);
    v17 = *(v15 + 12);
    if (v17 == 1)
    {
      *(v15 + 28) = v16;
    }

    else
    {
      if (v17 == 3)
      {
        v18 = 20;
      }

      else
      {
        if (v17 != 2)
        {
LABEL_17:
          objc_sync_exit(v12);

          goto LABEL_18;
        }

        v18 = 24;
      }

      *(v15 + v18) = v16;
      if (a2 != 0x8000)
      {
        goto LABEL_17;
      }
    }

    if (*(v15 + 9) != 1)
    {
      goto LABEL_17;
    }

    v19 = [[KmlRoutingInformation alloc] initWithReaderInformation:v10];
    v20 = SESDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v43 = v10;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "readerInfo - %@", buf, 0xCu);
    }

    v32 = [v19 manufacturer];
    v31 = [v19 brand];
    v30 = [v19 regionString];
    v40[0] = @"eventType";
    v37 = [NSNumber numberWithUnsignedInt:*(v15 + 16)];
    v41[0] = v37;
    v41[1] = v30;
    v40[1] = @"dataCenterCode";
    v40[2] = @"manufacturer";
    v41[2] = v32;
    v41[3] = v31;
    v40[3] = @"brand";
    v40[4] = @"optimalFlowStatus";
    v36 = [NSNumber numberWithUnsignedInt:*(v15 + 24)];
    v41[4] = v36;
    v40[5] = @"suboptimalFlowStatus";
    v35 = [NSNumber numberWithUnsignedInt:*(v15 + 28)];
    v41[5] = v35;
    v40[6] = @"recoveryFlowStatus";
    v34 = [NSNumber numberWithUnsignedInt:*(v15 + 20)];
    v41[6] = v34;
    v40[7] = @"deviceIntent";
    v29 = *(v15 + 32);
    v33 = [NSNumber numberWithInt:v29 != 0];
    v41[7] = v33;
    v21 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:8];
    v39 = [v21 mutableCopy];

    if (*(v15 + 32))
    {
      v22 = *(v15 + 32);
      [v39 setObject:v22 forKeyedSubscript:@"deviceIntentConfidence"];
    }

    v23 = *(v15 + 40);
    if (v23)
    {
      v24 = *(v15 + 40);
    }

    else
    {
      v24 = &off_1004DCA38;
    }

    v38 = v24;
    [v39 setObject:v24 forKeyedSubscript:{@"currentDeviceState", v29}];
    if (v23)
    {
    }

    [CALogger postCAEventFor:@"com.apple.kml.passiveEntryEvent" eventInput:v39];
    if (a2 != 0x8000)
    {
LABEL_45:
      *(v15 + 12) = -1;
      sub_1003ABB00(v15, 0);
      sub_1003ADB68(v15, 0);
      *(v15 + 16) = xmmword_100408B70;
      *(v15 + 9) = 0;

LABEL_11:
      goto LABEL_17;
    }

    if (a3 == 1 && *(v15 + 32))
    {
      v25 = @"friendPassiveEntryTxCount";
      if (!a5)
      {
        v25 = @"ownerPassiveEntryTxCount";
      }

      v26 = v25;
      *(v15 + 8) = 1;
    }

    else
    {
      if (a3 || *(v15 + 32))
      {
        v26 = 0;
        if (a3 != 1 || *(v15 + 32))
        {
          goto LABEL_44;
        }

        v27 = @"friendNoDIPassiveEntryTxCount";
        v28 = @"ownerNoDIPassiveEntryTxCount";
      }

      else
      {
        v27 = @"friendWalkAwayLockCount";
        v28 = @"ownerWalkAwayLockCount";
      }

      if (!a5)
      {
        v27 = v28;
      }

      v26 = v27;
    }

    sub_10004D584(SESDAnalyticsLogger, v26);
LABEL_44:

    goto LABEL_45;
  }

LABEL_18:
}

void sub_10004D584(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Registering CA General Transaction Statistics event %@", buf, 0xCu);
  }

  v4 = sub_10004C9FC();
  v19[0] = @"ownerPassiveEntryTxCount";
  v19[1] = @"ownerDrivingSessionCount";
  v19[2] = @"ownerNoDIPassiveEntryTxCount";
  v19[3] = @"ownerWalkAwayLockCount";
  v19[4] = @"ownerWalletRKECount";
  v19[5] = @"owner3rdPartyRKECount";
  v19[6] = @"ownerPassthroughCount";
  v5 = [NSArray arrayWithObjects:v19 count:7];
  v18[0] = @"friendPassiveEntryTxCount";
  v18[1] = @"friendDrivingSessionCount";
  v18[2] = @"friendNoDIPassiveEntryTxCount";
  v18[3] = @"friendWalkAwayLockCount";
  v18[4] = @"friendWalletRKECount";
  v18[5] = @"friend3rdPartyRKECount";
  v18[6] = @"friendPassthroughCount";
  v6 = [NSArray arrayWithObjects:v18 count:7];
  v17[0] = @"unlockNeededForCarActionCount";
  v17[1] = @"connectionCount";
  v17[2] = @"disconnectionCount";
  v17[3] = @"deviceIntentCount";
  v7 = [NSArray arrayWithObjects:v17 count:4];
  v8 = v4;
  objc_sync_enter(v8);
  v9 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  if ([v5 containsObject:v2])
  {
    v10 = [v9 dictionaryForKey:@"ca.general.transaction.statistics.owner"];
    v11 = [v10 mutableCopy];

    if (!v11)
    {
      v11 = sub_10004E014(SESDAnalyticsLogger, v5);
    }

    v12 = @"ca.general.transaction.statistics.owner";
LABEL_15:
    v15 = [v11 objectForKeyedSubscript:v2];
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 unsignedIntegerValue] + 1);
    [v11 setObject:v16 forKeyedSubscript:v2];

    [v9 setObject:v11 forKey:v12];
    goto LABEL_16;
  }

  if ([v6 containsObject:v2])
  {
    v13 = [v9 dictionaryForKey:@"ca.general.transaction.statistics.friend"];
    v11 = [v13 mutableCopy];

    if (!v11)
    {
      v11 = sub_10004E014(SESDAnalyticsLogger, v6);
    }

    v12 = @"ca.general.transaction.statistics.friend";
    goto LABEL_15;
  }

  if ([v7 containsObject:v2])
  {
    v14 = [v9 dictionaryForKey:@"ca.general.transaction.statistics"];
    v11 = [v14 mutableCopy];

    if (!v11)
    {
      v11 = sub_10004E014(SESDAnalyticsLogger, v7);
    }

    v12 = @"ca.general.transaction.statistics";
    goto LABEL_15;
  }

  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v21 = v2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unknown key %@", buf, 0xCu);
  }

LABEL_16:

  objc_sync_exit(v8);
}

void sub_10004D990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = a7;
  objc_opt_self();
  v12 = [[KmlRoutingInformation alloc] initWithReaderInformation:v11];
  v13 = SESDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "readerInfo - %@", buf, 0xCu);
  }

  v14 = [v12 manufacturer];
  v15 = [v12 brand];
  v16 = [v12 regionString];
  v23 = v11;
  v25[0] = @"type";
  v17 = [NSNumber numberWithUnsignedInt:a2];
  v26[0] = v17;
  v25[1] = @"functionID";
  v18 = [NSNumber numberWithUnsignedShort:a3];
  v26[1] = v18;
  v25[2] = @"actionID";
  v19 = [NSNumber numberWithUnsignedChar:a4];
  v26[2] = v19;
  v25[3] = @"executionStatus";
  v20 = [NSNumber numberWithUnsignedInt:a5];
  v25[4] = @"dataCenterCode";
  v25[5] = @"manufacturer";
  v26[3] = v20;
  v26[4] = v16;
  v25[6] = @"brand";
  v25[7] = @"status";
  v26[5] = v14;
  v26[6] = v15;
  v26[7] = &off_1004DCA38;
  v25[8] = @"subType";
  v21 = [NSNumber numberWithUnsignedInteger:a6];
  v26[8] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:9];
  [CALogger postCAEventFor:@"com.apple.kml.rkeEvent" eventInput:v22];
}

void sub_10004DC20(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  [CALogger postCAEventFor:@"com.apple.sesd.keySyncEvent" eventInput:v2];
}

void sub_10004DC84(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  [CALogger postCAEventFor:@"com.apple.sesd.fidoEvent" eventInput:v2];
}

void sub_10004DCE8(uint64_t a1, unint64_t a2)
{
  v3 = HIDWORD(a2);
  objc_opt_self();
  v9[0] = @"preconditionsMet";
  v4 = [NSNumber numberWithBool:a2 & 1];
  v10[0] = v4;
  v9[1] = @"isSynchronized";
  v5 = [NSNumber numberWithBool:(a2 >> 8) & 1];
  v10[1] = v5;
  v9[2] = @"serverRecoveredTLK";
  v6 = [NSNumber numberWithBool:(a2 >> 16) & 1];
  v10[2] = v6;
  v9[3] = @"identityAge";
  v7 = [NSNumber numberWithUnsignedInt:v3];
  v10[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  [CALogger postCAEventFor:@"com.apple.sesd.keySyncStateStatistics" eventInput:v8];
}

void sub_10004DE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  objc_opt_self();
  v23[0] = @"assetCompatibilityVersion";
  v15 = [NSNumber numberWithUnsignedInteger:a2];
  v24[0] = v15;
  v23[1] = @"assetContentVersion";
  v16 = [NSNumber numberWithUnsignedInteger:a3];
  v24[1] = v16;
  v23[2] = @"weeksSinceInitialMADownloadAttempt";
  v17 = [NSNumber numberWithUnsignedInteger:a4];
  v24[2] = v17;
  v23[3] = @"numberOfSheetsShown";
  v18 = [NSNumber numberWithUnsignedInteger:a5];
  v24[3] = v18;
  v23[4] = @"numberOfCompleteSheets";
  v19 = [NSNumber numberWithUnsignedInteger:a6];
  v24[4] = v19;
  v23[5] = @"numberOfCancelledSheets";
  v20 = [NSNumber numberWithUnsignedInteger:a7];
  v24[5] = v20;
  v23[6] = @"totalSecureElementCredentialSession";
  v21 = [NSNumber numberWithUnsignedInteger:a8];
  v24[6] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:7];

  [CALogger postCAEventFor:@"com.apple.sesd.generalStatistics" eventInput:v22];
}

id sub_10004E014(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 setObject:&off_1004DCA38 forKey:{*(*(&v10 + 1) + 8 * v8), v10}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

void sub_10004E158(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Recording CA Aliro Daily Transaction Statistics events %@", buf, 0xCu);
  }

  v4 = sub_10004C9FC();
  v23[0] = @"attemptedURSKprefetches";
  v23[1] = @"auxReaderKeyTxCount";
  v23[2] = @"btConnectionCount";
  v23[3] = @"btConnectionDuration";
  v23[4] = @"deviceInitatedRangingCount";
  v23[5] = @"deviceInitatedSuspendRangingCount";
  v23[6] = @"failedURSKprefetches";
  v23[7] = @"fastTxAttemptedCount";
  v23[8] = @"lockInitiatedSuspendRangingCount";
  v23[9] = @"lockInitiatedResumeRangingCount";
  v23[10] = @"primaryReaderKeyTxCount";
  v23[11] = @"rangingDuration";
  v23[12] = @"seDuration";
  v23[13] = @"standardTxAttemptedCount";
  v23[14] = @"stepUpTxAttemptedCount";
  v23[15] = @"successfulAliroTxCount";
  v23[16] = @"successfulFastTxCount";
  v23[17] = @"successfulStandardTxCount";
  v23[18] = @"successfulStepUpTxCount";
  v23[19] = @"suspendedDuration";
  v23[20] = @"timeSyncProcedure1Count";
  v23[21] = @"txCountAttempted";
  v15 = [NSArray arrayWithObjects:v23 count:22];
  obj = v4;
  objc_sync_enter(obj);
  v16 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  v5 = [v16 dictionaryForKey:@"ca.aliro.daily.transaction.statistics"];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v6 = sub_10004E014(SESDAnalyticsLogger, v15);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v2;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v7 objectForKeyedSubscript:v11];
        v13 = [v6 objectForKeyedSubscript:v11];
        v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 unsignedIntegerValue] + objc_msgSend(v12, "unsignedIntegerValue"));
        [v6 setObject:v14 forKeyedSubscript:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  [v16 setObject:v6 forKey:@"ca.aliro.daily.transaction.statistics"];
  objc_sync_exit(obj);
}

void sub_10004E500(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Recording CA Aliro Connection to lock %@", &v10, 0xCu);
  }

  v4 = sub_10004C9FC();
  objc_sync_enter(v4);
  v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  v6 = [v5 arrayForKey:@"ca.aliro.daily.connected.locks.array"];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = objc_opt_new();
  }

  if (([v7 containsObject:v2] & 1) == 0)
  {
    [v7 addObject:v2];
    [v5 setObject:v7 forKey:@"ca.aliro.daily.connected.locks.array"];
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 count];
      v10 = 138412546;
      v11 = v2;
      v12 = 2048;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Adding new lock %@ to list of connected locks in the day, total connected locks %lu", &v10, 0x16u);
    }
  }

  objc_sync_exit(v4);
}

void sub_10004E708()
{
  objc_opt_self();
  v28[0] = @"attemptedURSKprefetches";
  v28[1] = @"auxReaderKeyTxCount";
  v28[2] = @"btConnectionCount";
  v28[3] = @"btConnectionDuration";
  v28[4] = @"deviceInitatedRangingCount";
  v28[5] = @"deviceInitatedSuspendRangingCount";
  v28[6] = @"failedURSKprefetches";
  v28[7] = @"fastTxAttemptedCount";
  v28[8] = @"lockInitiatedSuspendRangingCount";
  v28[9] = @"lockInitiatedResumeRangingCount";
  v28[10] = @"primaryReaderKeyTxCount";
  v28[11] = @"rangingDuration";
  v28[12] = @"seDuration";
  v28[13] = @"standardTxAttemptedCount";
  v28[14] = @"stepUpTxAttemptedCount";
  v28[15] = @"successfulAliroTxCount";
  v28[16] = @"successfulFastTxCount";
  v28[17] = @"successfulStandardTxCount";
  v28[18] = @"successfulStepUpTxCount";
  v28[19] = @"suspendedDuration";
  v28[20] = @"timeSyncProcedure1Count";
  v28[21] = @"txCountAttempted";
  v17 = [NSArray arrayWithObjects:v28 count:22];
  obj = sub_10004C9FC();
  objc_sync_enter(obj);
  v0 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  v1 = [v0 dictionaryForKey:@"ca.aliro.daily.transaction.statistics"];
  v20 = v0;
  v19 = [v0 arrayForKey:@"ca.aliro.daily.connected.locks.array"];
  v2 = [v1 mutableCopy];
  if (!v2)
  {
    v2 = sub_10004E014(SESDAnalyticsLogger, v17);
  }

  if (v19 && [v19 count])
  {
    v3 = [v1 objectForKeyedSubscript:@"btConnectionDuration"];
    v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 longLongValue] / objc_msgSend(v19, "count"));

    v5 = v4;
  }

  else
  {
    v5 = &off_1004DCA38;
  }

  v16 = v5;
  [v2 setObject:? forKey:?];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v1;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v6 objectForKeyedSubscript:v10];
        v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[SignificantDigits getValueWithSignificantDigits:value:](_TtC10seserviced17SignificantDigits, "getValueWithSignificantDigits:value:", 2, [v11 intValue]));
        [v2 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
  }

  v13 = SESDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v19 count];
    *buf = 134217984;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Total connected Aliro locks in the day %lu", buf, 0xCu);
  }

  v15 = SESDefaultLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Posting CA Aliro Daily Statistics events %@", buf, 0xCu);
  }

  [CALogger postCAEventFor:@"com.apple.sesd.dailyAliroTransactionEvent" eventInput:v2];
  [v20 removeObjectForKey:@"ca.aliro.daily.connected.locks.array"];
  [v20 removeObjectForKey:@"ca.aliro.daily.transaction.statistics"];

  objc_sync_exit(obj);
}

void sub_10004EBC8(uint64_t a1, char a2)
{
  objc_opt_self();
  obj = sub_10004C9FC();
  objc_sync_enter(obj);
  v3 = obj;
  if (obj)
  {
    v4 = obj[2];
    v5 = 1 << a2;
    v6 = v4 | v5;
    if ((v4 | v5) == v4)
    {
      goto LABEL_5;
    }

    obj[2] = v6;
  }

  else
  {
    v6 = 1 << a2;
  }

  v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  [v7 setInteger:v6 forKey:@"ca.general.transaction.statistics.device.state"];

  v3 = obj;
LABEL_5:
  objc_sync_exit(v3);
}

void sub_10004ECB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_opt_self();
  if (!(a3 | a2))
  {
    return;
  }

  v9 = sub_10004C9FC();
  v24[0] = @"ownerPassiveEntryTxCount";
  v24[1] = @"ownerDrivingSessionCount";
  v24[2] = @"ownerNoDIPassiveEntryTxCount";
  v24[3] = @"ownerWalkAwayLockCount";
  v24[4] = @"ownerWalletRKECount";
  v24[5] = @"owner3rdPartyRKECount";
  v24[6] = @"ownerPassthroughCount";
  v20 = [NSArray arrayWithObjects:v24 count:7];
  v23[0] = @"friendPassiveEntryTxCount";
  v23[1] = @"friendDrivingSessionCount";
  v23[2] = @"friendNoDIPassiveEntryTxCount";
  v23[3] = @"friendWalkAwayLockCount";
  v23[4] = @"friendWalletRKECount";
  v23[5] = @"friend3rdPartyRKECount";
  v23[6] = @"friendPassthroughCount";
  v19 = [NSArray arrayWithObjects:v23 count:7];
  v22[0] = @"unlockNeededForCarActionCount";
  v22[1] = @"connectionCount";
  v22[2] = @"disconnectionCount";
  v22[3] = @"deviceIntentCount";
  v21 = [NSArray arrayWithObjects:v22 count:4];
  v10 = v9;
  objc_sync_enter(v10);
  v11 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  v12 = v11;
  if (a2)
  {
    v13 = [v11 dictionaryForKey:@"ca.general.transaction.statistics.owner"];
    if (!v13)
    {
      v13 = sub_10004E014(SESDAnalyticsLogger, v20);
    }

    if (!a3)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v13 = 0;
  if (a3)
  {
LABEL_8:
    a3 = [v12 dictionaryForKey:@"ca.general.transaction.statistics.friend"];
    if (!a3)
    {
      a3 = sub_10004E014(SESDAnalyticsLogger, v19);
    }
  }

LABEL_10:
  v14 = [v12 dictionaryForKey:@"ca.general.transaction.statistics"];
  if (!v14)
  {
    v14 = sub_10004E014(SESDAnalyticsLogger, v21);
  }

  v15 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v13 count] + objc_msgSend(a3, "count") + objc_msgSend(v14, "count"));
  v16 = v15;
  if (v13)
  {
    [v15 addEntriesFromDictionary:v13];
  }

  if (a3)
  {
    [v16 addEntriesFromDictionary:a3];
  }

  [v16 addEntriesFromDictionary:v14];
  v17 = [NSNumber numberWithBool:a4];
  [v16 setObject:v17 forKeyedSubscript:@"production"];

  v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 integerForKey:@"ca.general.transaction.statistics.device.state"]);
  [v16 setObject:v18 forKeyedSubscript:@"deviceStatus"];

  [CALogger postCAEventFor:@"com.apple.kml.generalTransactionStatisticsEvent" eventInput:v16];
  [v12 removeObjectForKey:@"ca.general.transaction.statistics"];
  [v12 removeObjectForKey:@"ca.general.transaction.statistics.friend"];
  [v12 removeObjectForKey:@"ca.general.transaction.statistics.owner"];
  if (v10)
  {
    v10[2] = a5;
  }

  [v12 setInteger:a5 forKey:@"ca.general.transaction.statistics.device.state"];

  objc_sync_exit(v10);
}

void sub_10004F0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12, unsigned int a13, unsigned int a14, unsigned int a15, unsigned int a16, unsigned int a17, unsigned int a18, void *a19, void *a20, void *a21)
{
  v42 = a21;
  v41 = a20;
  v48 = a19;
  objc_opt_self();
  v49[0] = @"deviceStatus";
  v47 = [NSNumber numberWithUnsignedInt:a2];
  v50[0] = v47;
  v49[1] = @"transactionMode";
  v46 = [NSNumber numberWithUnsignedInt:a3];
  v50[1] = v46;
  v49[2] = @"keyType";
  v45 = [NSNumber numberWithUnsignedInt:a4];
  v50[2] = v45;
  v49[3] = @"disconnectReason";
  v44 = [NSNumber numberWithUnsignedInt:a5];
  v50[3] = v44;
  v49[4] = @"lockStatus";
  v43 = [NSNumber numberWithUnsignedInt:a6];
  v50[4] = v43;
  v49[5] = @"lockSharingCapability";
  v40 = [NSNumber numberWithUnsignedInt:a7];
  v50[5] = v40;
  v49[6] = @"unlockCount";
  v39 = [NSNumber numberWithUnsignedInt:a8];
  v50[6] = v39;
  v49[7] = @"unlockFromOtherSourceCount";
  v37 = [NSNumber numberWithUnsignedInt:a9];
  v50[7] = v37;
  v49[8] = @"deviceInitatedRangingAttemptsCount";
  v36 = [NSNumber numberWithUnsignedInt:a10];
  v50[8] = v36;
  v49[9] = @"rangingAttemptsCount";
  v35 = [NSNumber numberWithUnsignedInt:a11];
  v50[9] = v35;
  v49[10] = @"timeSyncProcedure1Count";
  v27 = [NSNumber numberWithUnsignedInt:a12];
  v50[10] = v27;
  v49[11] = @"btTimeExtensionInitiatedByDeviceCount";
  v28 = [NSNumber numberWithUnsignedInt:a13];
  v50[11] = v28;
  v49[12] = @"btTimeExtensionInitiatedByLockCount";
  v29 = [NSNumber numberWithUnsignedInt:a14];
  v50[12] = v29;
  v49[13] = @"btOutOfOrderMessageCount";
  v30 = [NSNumber numberWithUnsignedInt:a15];
  v50[13] = v30;
  v49[14] = @"stepUpDuration";
  v31 = [NSNumber numberWithUnsignedInt:a16];
  v50[14] = v31;
  v49[15] = @"rangingDuration";
  v32 = [NSNumber numberWithUnsignedInt:a17];
  v50[15] = v32;
  v49[16] = @"btConnectionDuration";
  v33 = [NSNumber numberWithUnsignedInt:a18];
  v50[16] = v33;
  v50[17] = v48;
  v49[17] = @"infoVendorID";
  v49[18] = @"infoProductID";
  v49[19] = @"infoFWVersion";
  v50[18] = v41;
  v50[19] = v42;
  v34 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:20];

  [CALogger postCAEventFor:@"com.apple.sesd.aliroSessionEvent" eventInput:v34];
}

void sub_10004F508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned int a11, void *a12, void *a13, void *a14)
{
  v30 = a14;
  v29 = a13;
  v27 = a12;
  objc_opt_self();
  v35[0] = @"deviceStatus";
  v34 = [NSNumber numberWithUnsignedInt:a2];
  v36[0] = v34;
  v35[1] = @"lockStatus";
  v33 = [NSNumber numberWithUnsignedInt:a5];
  v36[1] = v33;
  v35[2] = @"lockCapability";
  v31 = [NSNumber numberWithUnsignedInt:a3];
  v36[2] = v31;
  v35[3] = @"lockStatusAtConnection";
  v28 = [NSNumber numberWithUnsignedInt:a4];
  v36[3] = v28;
  v35[4] = @"intentFallbackTriggered";
  v20 = [NSNumber numberWithUnsignedInt:a7];
  v36[4] = v20;
  v35[5] = @"rangingExceptionBitmap";
  v21 = [NSNumber numberWithUnsignedInt:a8];
  v36[5] = v21;
  v35[6] = @"deviceInitatedRangingAttemptsCount";
  v22 = [NSNumber numberWithUnsignedInt:a10];
  v36[6] = v22;
  v35[7] = @"rangingAttemptsCount";
  v23 = [NSNumber numberWithUnsignedInt:a9];
  v36[7] = v23;
  v35[8] = @"rangingDuration";
  v24 = [NSNumber numberWithUnsignedInt:a11];
  v36[8] = v24;
  v35[9] = @"unlockSource";
  v25 = [NSNumber numberWithUnsignedInt:a6];
  v36[9] = v25;
  v36[10] = v27;
  v35[10] = @"infoVendorID";
  v35[11] = @"infoProductID";
  v35[12] = @"infoFWVersion";
  v36[11] = v29;
  v36[12] = v30;
  v26 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:13];

  [CALogger postCAEventFor:@"com.apple.sesd.aliroTransactionEvent" eventInput:v26];
}

void sub_10004F7F8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10004F824(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

BOOL sub_10004F844(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

id sub_10004F85C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = +[UuidToEndpointId fetchRequest];
  v12 = 0;
  v6 = sub_1003AD310(v4, v5, &v12);

  v7 = v12;
  v8 = v7;
  if (v7)
  {
    if (a3)
    {
      v9 = v7;
      v10 = 0;
      *a3 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

id sub_10004F934(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_self();
  v12 = sub_10004F85C(v11, v10, a5);

  if (*a5)
  {
    v13 = 0;
  }

  else
  {
    v16 = v9;
    v17 = v8;
    v14 = Find();
    v13 = [v14 endpointId];
  }

  return v13;
}

id sub_10004FA68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientName];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 uuid];
    v6 = [v5 isEqual:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10004FAE4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10004FC94;
  v29 = sub_10004FCA4;
  v30 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004FCAC;
  v18[3] = &unk_1004C2A30;
  v24 = objc_opt_self();
  v12 = v9;
  v19 = v12;
  v13 = v10;
  v20 = v13;
  v14 = v11;
  v21 = v14;
  v23 = &v25;
  v15 = v8;
  v22 = v15;
  sub_1003AD2A8(v14, v18);
  v16 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v16;
}

void sub_10004FC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004FC94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004FCAC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[9];
  v8 = *(a1[8] + 8);
  obj = *(v8 + 40);
  v9 = sub_10004F934(v7, v4, v5, v6, &obj);
  objc_storeStrong((v8 + 40), obj);
  if (*(*(a1[8] + 8) + 40) | v9)
  {
    sub_1003AD19C(v3);
  }

  else
  {
    v10 = sub_1003AD0FC(v3);
    v11 = [NSEntityDescription insertNewObjectForEntityForName:@"UuidToEndpointId" inManagedObjectContext:v10];

    [v11 setEndpointId:a1[7]];
    [v11 setUuid:a1[4]];
    [v11 setClientName:a1[5]];
    v12 = *(a1[8] + 8);
    v17 = *(v12 + 40);
    v13 = [v11 validateForInsert:&v17];
    objc_storeStrong((v12 + 40), v17);
    if (v13)
    {
      v14 = sub_1003AD108(v3);
      v15 = *(a1[8] + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    else
    {
      sub_1003AD19C(v3);
    }
  }
}

id sub_10004FE00(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10004FC94;
  v30 = sub_10004FCA4;
  v31 = 0;
  obj = 0;
  v10 = sub_10004F85C(v9, v8, &obj);
  objc_storeStrong(&v31, obj);
  v11 = v27[5];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100050028;
    v22 = &unk_1004C2A08;
    v23 = v7;
    v24 = v6;
    v13 = Find();
    v14 = v13;
    if (v13)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000500A4;
      v16[3] = &unk_1004C1688;
      v17 = v13;
      v18 = &v26;
      sub_1003AD2A8(v8, v16);
      v12 = v27[5];
    }

    else
    {
      v12 = 0;
    }
  }

  _Block_object_dispose(&v26, 8);

  return v12;
}

void sub_10005000C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100050028(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientName];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = [v3 uuid];
    v6 = [v5 isEqual:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1000500A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1003AD0FC(v3);
  [v4 deleteObject:*(a1 + 32)];

  v5 = sub_1003AD108(v3);

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id sub_100050120(void *a1)
{
  v1 = a1;
  v2 = [@"A000000809434343444b467631" hexStringAsData];
  v18 = 0;
  v3 = sub_10005370C(v1, v2, &v18);
  v4 = v18;

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = sub_1003B0934(v4);
    v7 = [SESTLV TLVsWithData:v6];

    v8 = [v7 find:&stru_1004C2A50];
    v9 = SESDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v8 value];
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Got PAKE version: %@", buf, 0xCu);
    }

    v11 = [v8 value];
    v12 = [@"0100" hexStringAsData];
    v13 = [v11 isEqualToData:v12];

    if (v13)
    {
      v5 = 0;
    }

    else
    {
      v14 = [@"0100" hexStringAsData];
      v15 = sub_1003AEF50();
      v16 = 0;

      v5 = v16;
    }
  }

  return v5;
}

uint64_t sub_10005037C(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Invoking timer CB", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100050494(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10050CCD0;
  qword_10050CCD0 = v1;

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.secureelementservice.event.publisher.queue", v3);
  [qword_10050CCD0 setEventPublisherQueue:v4];

  v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  if ([v5 BOOLForKey:@"debug.use.test.event.port"])
  {
    v6 = @"com.apple.secureelementservice.test.events";
  }

  else
  {
    v6 = @"com.apple.passd.nf-events";
  }

  v7 = SESDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Posting xpc events to %@", &v11, 0xCu);
  }

  v8 = [NFSecureXPCEventPublisher alloc];
  v9 = [qword_10050CCD0 eventPublisherQueue];
  v10 = [(NFSecureXPCEventPublisher *)v8 initWithMachPort:v6 queue:v9];
  [qword_10050CCD0 setEventPublisher:v10];
}

void *sub_100050E34(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_1003AE808([SEProxyAdapter alloc], v2);

  return v3;
}

void sub_100050E94(id a1, NSError *a2)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "failed make proxy synchronous?", v3, 2u);
  }
}

void sub_1000510D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000510F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005110C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id sub_100051558(uint64_t a1)
{
  [SESAlarm registerAlarm:@"com.apple.seserviced.download.catalog" handler:*(a1 + 32)];
  [SESAlarm registerAlarm:@"com.apple.seserviced.download.asset" handler:*(a1 + 32)];
  [SESDarwinNotificationMonitor registerDelegate:*(a1 + 32) forEvent:@"com.apple.MobileAsset.SecureElementServiceAssets.ma.cached-metadata-updated"];
  [SESDarwinNotificationMonitor registerDelegate:*(a1 + 32) forEvent:@"com.apple.MobileAsset.SecureElementServiceAssets.ma.new-asset-installed"];
  [*(a1 + 32) queryMA];
  v2 = *(a1 + 32);

  return [v2 maybeQueryMetadata];
}

id sub_100051684(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Handling alarm %@", &v5, 0xCu);
  }

  if ([*(a1 + 32) isEqualToString:@"com.apple.seserviced.download.catalog"])
  {
    return [*(a1 + 40) maybeQueryMetadata];
  }

  result = [*(a1 + 32) isEqualToString:@"com.apple.seserviced.download.asset"];
  if (result)
  {
    return [*(a1 + 40) queryMA];
  }

  return result;
}

id sub_100051800(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Handling notification %@", &v5, 0xCu);
  }

  return [*(a1 + 40) queryMA];
}

void sub_100051D88(uint64_t a1, uint64_t a2)
{
  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "catalog download result %ld", buf, 0xCu);
  }

  v5 = [*(a1 + 32) queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100051EA0;
  v6[3] = &unk_1004C2B00;
  v6[4] = *(a1 + 32);
  v6[5] = a2;
  dispatch_async(v5, v6);
}

void sub_100051EA0(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v3 + 8))
  {

    [v2 retryWithBackoff:@"com.apple.seserviced.download.catalog"];
  }

  else
  {
    v4 = [v2 userDefaults];
    [v4 removeObjectForKey:@"catalogDownloadStartedOn"];

    [*(a1 + 32) setErrorCount:0];
    v5 = *(a1 + 32);
    v6 = objc_opt_self();
    [v6 metadataQueryInterval];
    v7 = [NSDate dateWithTimeIntervalSinceNow:?];

    v8 = [*(a1 + 32) userDefaults];
    [v8 setObject:v7 forKey:@"nextMetadataCheck"];

    [*(a1 + 32) metadataQueryInterval];
    [SESAlarm setAlarm:@"com.apple.seserviced.download.catalog" secondsFromNow:?];
    v9 = SESDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Metadata downloaded success, next check %@", &v10, 0xCu);
    }

    [*(a1 + 32) queryMA];
  }
}

void sub_100052148(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000521FC;
  block[3] = &unk_1004C2B50;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = a2;
  v7 = v5;
  dispatch_async(v4, block);
}

void sub_100052814(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000528C8;
  block[3] = &unk_1004C2B50;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = a2;
  block[4] = v5;
  v8 = v6;
  dispatch_async(v4, block);
}

id sub_1000528C8(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v8 = 134217984;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Download result %ld", &v8, 0xCu);
  }

  v4 = *(a1 + 48);
  if (v4 != 10 && v4 != 0)
  {
    return [*(a1 + 32) retryWithBackoff:@"com.apple.seserviced.download.asset"];
  }

  v6 = [*(a1 + 32) userDefaults];
  [v6 removeObjectForKey:@"assetDownloadStartedOn"];

  return [*(a1 + 32) handleAvailableAsset:*(a1 + 40)];
}

id sub_100053058(uint64_t a1)
{
  [*(a1 + 32) setUserInitiated:1];
  [*(*(a1 + 32) + 48) removeObjectForKey:@"nextMetadataCheck"];
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Querying metadata on user initiated trigger", v4, 2u);
  }

  return [*(a1 + 32) queryMetadata];
}

void sub_100053434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100053458(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100053470(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 24);
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v3 transceive:v2 outError:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_100053670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100053694(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 24);
  v4 = a1[8];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [v3 transceive:v2 toOS:v4 outError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id sub_10005370C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_100053458;
    v24 = sub_100053468;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_100053458;
    v18 = sub_100053468;
    v19 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000538D4;
    v10[3] = &unk_1004C2C90;
    v10[4] = a1;
    v11 = v5;
    v12 = &v14;
    v13 = &v20;
    [a1 sync:v10];
    v7 = v15[5];
    if (!v7 || v21[5])
    {
      v8 = v21[5];
      a1 = SESEnsureError();
    }

    else
    {
      a1 = 0;
      if (a3)
      {
        *a3 = v7;
      }
    }

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&v20, 8);
  }

  return a1;
}

void sub_1000538B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000538D4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) isEqualToData:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(v3 + 16));
    return;
  }

  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;

  v7 = [NSMutableData dataWithBytes:&unk_100408BD4 length:4];
  [v7 appendU8:{objc_msgSend(*(a1 + 40), "length")}];
  [v7 appendData:*(a1 + 40)];
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  v10 = [v8 transceive:v7 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (v10)
  {
    v11 = *(*(a1 + 56) + 8);
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    if (!v13)
    {
      v27 = 0;
      v14 = sub_1000596F0(RAPDU, v10, &v27);
      objc_storeStrong(v12, v27);
      v15 = *(*(a1 + 48) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v17 = *(*(*(a1 + 48) + 8) + 40);
      if (v17)
      {
        if (!*(*(*(a1 + 56) + 8) + 40))
        {
          if (sub_1003B0984(v17) == 27033 || sub_1003B0984(*(*(*(a1 + 48) + 8) + 40)) == 27266)
          {
            v18 = SESDefaultLogObject();
            v25 = *(a1 + 40);
          }

          else
          {
            if (sub_1003B0984(*(*(*(a1 + 48) + 8) + 40)) == 36864)
            {
              objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
              v19 = *(*(*(a1 + 48) + 8) + 40);
              v20 = *(a1 + 32);
              v21 = v19;
              v18 = *(v20 + 16);
              *(v20 + 16) = v21;
LABEL_15:

              goto LABEL_5;
            }

            v18 = SESDefaultLogObject();
            v26 = *(a1 + 40);
            sub_1003B0984(*(*(*(a1 + 48) + 8) + 40));
          }

          v22 = SESCreateAndLogError();
          v23 = *(*(a1 + 56) + 8);
          v24 = *(v23 + 40);
          *(v23 + 40) = v22;

          goto LABEL_15;
        }
      }
    }
  }

LABEL_5:
}

BOOL sub_100053B8C(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 4279897;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100053458;
  v10 = sub_100053468;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100053CF4;
  v5[3] = &unk_1004C2CB8;
  v5[4] = a1;
  v5[5] = &v6;
  v5[6] = &v12;
  [a1 sync:v5];
  if (a2)
  {
    *a2 = v7[5];
  }

  v3 = v13[3] == 1 && v7[5] == 0;
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
  return v3;
}

void sub_100053CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_100053CF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 32) & 1) != 0)
  {
    sub_1003AF3E4(v2);
  }

  else
  {
    sub_1003AF434(a1);
  }
}

id sub_100053D3C(void *a1)
{
  if (a1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = sub_100053458;
    v10 = sub_100053468;
    v11 = 0;
    v4[0] = 0;
    v4[1] = v4;
    v4[2] = 0x3032000000;
    v4[3] = sub_100053458;
    v4[4] = sub_100053468;
    v5 = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100053EA0;
    v3[3] = &unk_1004C2CB8;
    v3[4] = a1;
    v3[5] = v4;
    v3[6] = &v6;
    [a1 sync:v3];
    v1 = v7[5];
    _Block_object_dispose(v4, 8);

    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_100053E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100053EA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 32) & 1) != 0)
  {
    sub_1003AF4B4(v2);
  }

  else
  {
    sub_1003AF434(a1);
  }
}

id sub_100053EE8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100053458;
    v23 = sub_100053468;
    v24 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100053458;
    v17 = sub_100053468;
    v18 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100054090;
    v9[3] = &unk_1004C2CE0;
    v9[4] = a1;
    v11 = &v13;
    v12 = &v19;
    v10 = v5;
    [a1 sync:v9];
    if (a3)
    {
      *a3 = v14[5];
    }

    v7 = v20[5];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_10005406C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100054090(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(v2 + 32) & 1) != 0)
  {
    sub_1003AF50C(v2);
  }

  else
  {
    sub_1003AF574(a1);
  }
}

void sub_100054184(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;
}

void sub_100054258()
{
  v3 = *v0;

  objc_storeStrong(v1, v3);
}

uint64_t sub_10005481C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = 0;
  __s2 = 0;
  __n = 0;
  v5 = DERDecodeItem(a2 + 8, &v7);
  if (!v5 && v7 == 12 && __n == *(a1 + 40) && !memcmp(*(a1 + 48), __s2, __n))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return v5;
}

void sub_100054D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100054D34(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  type = xpc_get_type(v3);
  if (type != &_xpc_type_error)
  {
    v6 = type;
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      name = xpc_type_get_name(v6);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unexpected typed: %s", &v13, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (xpc_equal(v3, &_xpc_error_connection_interrupted))
  {
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v13 = 138412290;
      name = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Service interrupted: %@", &v13, 0xCu);
    }
  }

  else
  {
    if (!xpc_equal(v3, &_xpc_error_connection_invalid))
    {
      v7 = xpc_dictionary_get_value(v3, _xpc_error_key_description);
      v12 = SESDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315138;
        name = xpc_string_get_string_ptr(v7);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s", &v13, 0xCu);
      }

      goto LABEL_15;
    }

    v10 = SESDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v13 = 138412290;
      name = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Service not available: %@", &v13, 0xCu);
    }

    [WeakRetained setAvailable:0];
  }

LABEL_16:
}

void sub_1000551C4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10050CCE0;
  qword_10050CCE0 = v1;
}

void *sub_10005530C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_100055BD0([NearFieldManager alloc], v2);

  return v3;
}

void sub_100055378(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_self();
  v12 = sub_1000554DC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67240706;
    v13[1] = v8 != 0;
    v14 = 1026;
    v15 = v9 != 0;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Queuing SE request with transceiver %{public}d handoffToken %{public}d for %{public}@", v13, 0x18u);
  }

  if (v8)
  {
    sub_100055520(SecureElementManager, v8, v10, v11);
  }

  else if (v9)
  {
    sub_1003AF5F4(SecureElementManager, v10, v9, v11);
  }

  else
  {
    sub_1003AF710(SecureElementManager, v10, v11);
  }
}

id sub_1000554DC()
{
  if (qword_10050CCF0 != -1)
  {
    sub_1003B0578();
  }

  v1 = qword_10050CCF8;

  return v1;
}

void sub_100055520(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v9 = +[SecureElementManager getInstance];
  v10 = v9[2];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003AF800;
  v15[3] = &unk_1004C2548;
  v16 = v6;
  v17 = v9;
  v18 = v7;
  v19 = v8;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v6;
  dispatch_async(v10, v15);
}

void sub_100055640(uint64_t a1)
{
  v2 = [*(a1 + 32) getNFManager];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005571C;
  v5[3] = &unk_1004C2D78;
  v8 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v2 getSecureElementWithReason:v3 handoffToken:v4 completion:v5];
}

void sub_10005571C(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5 && !a3)
  {
    sub_1003B058C(a1, v5);
  }

  else
  {
    v6 = a1[6];
    v7 = SESEnsureError();
    (*(v6 + 16))(v6, 0, v7);
  }
}

void sub_10005579C(id *a1)
{
  v2 = [a1[4] getNFManager];

  if (v2)
  {
    v3 = sub_1000554DC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = a1[5];
      *buf = 138543362;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Requesting SE for %{public}@", buf, 0xCu);
    }

    v5 = [a1[4] getNFManager];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000559A0;
    v10[3] = &unk_1004C2D78;
    v6 = a1[5];
    v13 = a1[6];
    v11 = a1[4];
    v12 = a1[5];
    [v5 getSecureElementWithReason:v6 callback:v10];
  }

  else
  {
    v7 = a1[6];
    v9 = sub_1000554DC();
    v8 = SESCreateAndLogError();
    v7[2](v7, 0, v8);
  }
}

void sub_1000559A0(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5 && !a3)
  {
    sub_1003B0704(a1, v5);
  }

  else
  {
    v6 = a1[6];
    v7 = SESEnsureError();
    (*(v6 + 16))(v6, 0, v7);
  }
}

void sub_100055A20(uint64_t a1)
{
  v2 = [*(a1 + 32) getNFManager];
  [v2 setHandoffToken:*(a1 + 40)];
}

void *sub_100055A74(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = +[NFHardwareManager sharedHardwareManager];
  v11 = 0;
  v4 = [v3 expressPassConfigsWithError:&v11];
  v5 = v11;
  if (v5)
  {
    if (a2)
    {
      v6 = sub_1000554DC();
      *a2 = SESCreateAndLogError();

      a2 = 0;
    }
  }

  else
  {
    v7 = [v3 expressModeControlState];
    v8 = 1;
    if (v7 != 1)
    {
      v8 = 2;
    }

    if (v7 == -1)
    {
      v9 = 3;
    }

    else
    {
      v9 = v8;
    }

    a2 = [SESExpressConfiguration withState:v9 passConfigs:v4];
  }

  return a2;
}

void *sub_100055BD0(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v25.receiver = a1;
    v25.super_class = NearFieldManager;
    v5 = objc_msgSendSuper2(&v25, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      a1[4] = 6;
      v6 = objc_opt_new();
      v7 = a1[1];
      a1[1] = v6;

      v8 = [SESTimer alloc];
      v9 = a1[2];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100055DF4;
      v23[3] = &unk_1004C08D8;
      v10 = a1;
      v24 = v10;
      v11 = sub_1003AE50C(v8, v9, v23);
      v12 = v10[8];
      v10[8] = v11;

      objc_initWeak(&location, v10);
      v13 = a1[2];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_100055E68;
      v20 = &unk_1004C1510;
      objc_copyWeak(&v21, &location);
      os_state_add_handler();
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100055EA0;
      v15[3] = &unk_1004C2DA0;
      a1 = v10;
      v16 = a1;
      [NFHardwareManager sharedHardwareManager:v15];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

void sub_100055DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100055DF4(uint64_t a1)
{
  v2 = sub_1000554DC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SE Session timer expired", v4, 2u);
  }

  return sub_1003AFA54(*(a1 + 32));
}

id *sub_100055E68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_1003AFB44(WeakRetained);

  return v2;
}

void sub_100055EA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100055F2C;
  block[3] = &unk_1004C08D8;
  v4 = v1;
  dispatch_async(v2, block);
}

uint64_t sub_100056548(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = objc_opt_new();
  v7 = *(v6 + 16);
  *(v6 + 16) = v4;
  v8 = v4;

  v9 = [v5 copy];
  v10 = *(v6 + 8);
  *(v6 + 8) = v9;

  return v6;
}

void sub_10005666C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 48);
  if (v4)
  {
    v5 = [v4 activateWithToken:v2];
    *(*(a1 + 32) + 96) = 1;
  }

  else
  {

    objc_storeStrong((v3 + 88), v2);
  }
}

void sub_100056954(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056A58;
  block[3] = &unk_1004C2E30;
  v11 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v15 = *(a1 + 56);
  v14 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void sub_100056A58(uint64_t a1)
{
  v2 = sub_1000554DC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40) != 0;
    v5 = *(a1 + 48);
    *buf = 138543874;
    v17 = v3;
    v18 = 1026;
    v19 = v4;
    v20 = 2114;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Got tokened SE session for %{public}@ - success %{public}d error %{public}@", buf, 0x1Cu);
  }

  if (*(a1 + 40) && !*(a1 + 48))
  {
    v8 = [NearFieldSessionShim alloc];
    v9 = *(a1 + 56);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100056C18;
    v13[3] = &unk_1004C2E08;
    v10 = *(a1 + 40);
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v11 = sub_1003AFFF8(&v8->super.isa, v10, v9, v13);
    (*(*(a1 + 64) + 16))(*(a1 + 64), v11, 0, v12);

    v7 = v14;
  }

  else
  {
    v6 = *(a1 + 64);
    v7 = SESEnsureError();
    (*(v6 + 16))(v6, 0, v7);
  }
}

id sub_100056C18(uint64_t a1)
{
  v2 = sub_1000554DC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Tokened session for %{public}@ finished, releasing session", &v5, 0xCu);
  }

  return [*(a1 + 40) endSessionAndWait];
}

void sub_100056CC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000554DC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Requesting session from NF", buf, 2u);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100056E74;
  v13[3] = &unk_1004C2E80;
  v13[4] = *(a1 + 32);
  v5 = [v3 startSecureElementManagerSession:v13];

  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = v5;

  v8 = *(a1 + 32);
  if (*(v8 + 88))
  {
    v9 = [*(v8 + 48) activateWithToken:?];
    if (v9)
    {
      v10 = sub_1000554DC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to activate session with token %@", buf, 0xCu);
      }
    }

    *(*(a1 + 32) + 96) = 1;
    v11 = *(a1 + 32);
    v12 = *(v11 + 88);
    *(v11 + 88) = 0;
  }
}

void sub_100056E74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056F40;
  block[3] = &unk_1004C24A8;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_100056F40(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = sub_1000554DC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to start SEM Session due to error %@", &v7, 0xCu);
    }

    v5 = *(a1 + 40);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;

    ++*(*(a1 + 40) + 56);
    v2 = *(a1 + 40);
    if (*(v2 + 56) <= 5u)
    {
      sub_1003B087C((a1 + 40));
      return;
    }
  }

  else
  {
    v2 = *(a1 + 40);
  }

  *(v2 + 56) = 0;
  sub_1003B00C8(*(a1 + 40), *(a1 + 48), *(a1 + 32));
}

void sub_100057050(uint64_t a1)
{
  v2 = sub_1000554DC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 80);
    v5 = *(a1 + 40);
    v6 = *(v3 + 96);
    v7 = [*(v3 + 8) count];
    v19 = 138544130;
    v20 = v4;
    v21 = 1026;
    v22 = v5;
    v23 = 1026;
    v24 = v6;
    v25 = 1026;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Shim dealloced for %{public}@, invalidated %{public}d tokened %{public}d waiters %{public}u", &v19, 0x1Eu);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 80);
  *(v8 + 80) = 0;

  v10 = *(a1 + 32);
  if ((*(a1 + 40) & 1) != 0 || *(v10 + 96) == 1)
  {
    *(v10 + 32) = 4;
    sub_1003AFA54(*(a1 + 32));
  }

  else
  {
    v11 = [*(v10 + 8) popFirst];
    v12 = sub_1000554DC();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v13)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Handing off to next queued waiter", &v19, 2u);
      }

      Property = objc_getProperty(v11, v14, 8, 1);
      v16 = *(a1 + 32);
      v17 = Property;
      v18 = sub_1003AFF44(v16);
      (*(Property + 2))(v17, v18, 0);
    }

    else
    {
      if (v13)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "No waiters, queueing close", &v19, 2u);
      }

      *(*(a1 + 32) + 32) = 4;
      sub_1003AE618(*(*(a1 + 32) + 64), 0.3);
    }
  }
}

void sub_100057270(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000572E4;
  block[3] = &unk_1004C08D8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_100057A18(id a1)
{
  v1 = os_log_create(SESLoggingSubsystem, "secureelement.manager");
  v2 = qword_10050CCF8;
  qword_10050CCF8 = v1;
}

id sub_100057AAC(void *a1, const char *a2)
{

  return objc_getProperty(a1, a2, 16, 1);
}

BOOL sub_100057AEC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void sub_100057B04(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 0xCu);
}

void sub_100057B48(uint64_t a1)
{
  v2 = *(a1 + 16);

  dispatch_assert_queue_V2(v2);
}

id sub_100057B6C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = v14;
  if (v11 && v12 && v13 && (v14 || a5 == 2))
  {
    v27 = v14;
    v17 = [v12 hexStringAsData];
    v18 = [SESTLV TLVWithTag:79 value:v17];
    v28[0] = v18;
    v19 = [SESTLV TLVWithTag:239 value:v13];
    v28[1] = v19;
    v20 = [NSArray arrayWithObjects:v28 count:2];

    v21 = [SESTLV TLVWithTag:228 children:v20];
    v22 = [v21 asData];

    v23 = [NSMutableData dataWithBytes:&unk_100408C00 length:4];
    [v23 appendU8:{objc_msgSend(v22, "length")}];
    [v23 appendData:v22];
    [v23 appendU8:0];
    if (SSEIsFeatureSupported())
    {
      if (a6)
      {
        v24 = SESDefaultLogObject();
        *a6 = SESCreateAndLogError();
      }
    }

    else
    {
      SSEGetHostChallenge();
      if (a6)
      {
        v25 = SESDefaultLogObject();
        *a6 = SESCreateAndLogError();
        v15 = v27;

        goto LABEL_15;
      }
    }

    v15 = v27;
LABEL_15:

    goto LABEL_16;
  }

  if (a6)
  {
    v16 = SESDefaultLogObject();
    *a6 = SESCreateAndLogError();
  }

LABEL_16:

  return 0;
}

__CFData *sub_1000581C4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v26 = 0;
  if (a1 == 2 || a1 == 1)
  {
    v21 = SSEAuthorizeAndSignAPDU();
  }

  else
  {
    if (a1)
    {
      if (a8)
      {
        v24 = SESDefaultLogObject();
        *a8 = SESCreateAndLogError();
      }

      goto LABEL_12;
    }

    v21 = SSEAuthorizeAndSignECommerceBlob(v15, 0xFFFFFFFF, v16, 0, v17, v18, v19, v20, &v26);
  }

  if (v21 || (v22 = v26) == 0)
  {
    if (a8)
    {
      v23 = SESDefaultLogObject();
      *a8 = SESCreateAndLogError();
    }

LABEL_12:
    v22 = 0;
  }

  return v22;
}

void sub_1000586EC(id a1)
{
  v1 = objc_alloc_init(SECAngelProxy);
  v2 = qword_10050CD00;
  qword_10050CD00 = v1;
}

void sub_1000593C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000593E8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a2 == 0xC00000000000001CLL)
  {
    *(*(*(a1 + 32) + 8) + 32) = *(a2 + 8);
    *a3 = 1;
  }

  return 0;
}

id sub_1000596F0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  if ([v4 length] > 1)
  {
    v6 = objc_opt_new();
    *(v6 + 8) = bswap32(*([v4 bytes] + objc_msgSend(v4, "length") - 2)) >> 16;
    v7 = v4;
    v5 = *(v6 + 16);
    *(v6 + 16) = v7;
    goto LABEL_5;
  }

  if (a3)
  {
    v5 = SESDefaultLogObject();
    SESCreateAndLogError();
    *a3 = v6 = 0;
LABEL_5:

    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

id sub_100059808(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = +[AirInstanceEntity fetchRequest];
  v10 = 0;
  v6 = sub_1003AD310(v4, v5, &v10);

  v7 = v10;
  if (a3)
  {
    v8 = v7;
    *a3 = v7;
  }

  return v6;
}

id sub_1000598B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  v17 = 0;
  v9 = sub_100059808(v8, v7, &v17);

  v10 = v17;
  v11 = v10;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9 == 0;
  }

  if (v12)
  {
    if (a4)
    {
      v13 = v10;
      v14 = 0;
      *a4 = v11;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v16 = v6;
    v14 = Find();
  }

  return v14;
}

id sub_1000599EC(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_100059A30(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_self();
  if (v6)
  {
    v9 = v8;
    v10 = SESDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Create AirInstanceEntityWithIdentifier : %@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = sub_100059DA8;
    v30 = sub_100059DB8;
    v31 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_100059DA8;
    v25 = sub_100059DB8;
    v26 = 0;
    obj = 0;
    v11 = sub_1000598B8(v9, v6, v7, &obj);
    objc_storeStrong(&v31, obj);
    if (*(*(&buf + 1) + 40))
    {
      if (a4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (!v11)
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100059DC0;
        v16[3] = &unk_1004C2FA0;
        v18 = &v21;
        v17 = v6;
        p_buf = &buf;
        sub_1003AD2A8(v7, v16);
        if (a4)
        {
          *a4 = *(*(&buf + 1) + 40);
        }

        v13 = v22[5];
        v14 = v17;
        goto LABEL_17;
      }

      if (a4)
      {
LABEL_12:
        v14 = SESDefaultLogObject();
        SESCreateAndLogError();
        *a4 = v13 = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    v13 = 0;
LABEL_18:

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&buf, 8);

    goto LABEL_19;
  }

  if (a4)
  {
    v12 = SESDefaultLogObject();
    *a4 = SESCreateAndLogError();
  }

  v13 = 0;
LABEL_19:

  return v13;
}

void sub_100059D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100059DA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100059DC0(void *a1, void *a2)
{
  v3 = a2;
  v4 = sub_1003AD0FC(v3);
  v5 = [NSEntityDescription insertNewObjectForEntityForName:@"AirInstanceEntity" inManagedObjectContext:v4];
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(*(a1[5] + 8) + 40) setIdentifier:a1[4]];
  [*(*(a1[5] + 8) + 40) setNumCertificateAuthorityIdentifier:0];
  [*(*(a1[5] + 8) + 40) setNumEndPointIdentifier:0];
  v8 = *(*(a1[5] + 8) + 40);
  v9 = *(a1[6] + 8);
  obj = *(v9 + 40);
  LOBYTE(v4) = [v8 validateForInsert:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (v4)
  {
    v10 = sub_1003AD108(v3);
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v13 = SESDefaultLogObject();
    v14 = SESCreateAndLogError();
    v15 = *(a1[6] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    sub_1003AD19C(v3);
  }
}

id sub_100059F40(uint64_t a1, void *a2, void *a3)
{
  v41 = a2;
  v4 = a3;
  v5 = objc_opt_self();
  v42 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [&off_1004DC6E0 count]);
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v6 = [&off_1004DC6E0 countByEnumeratingWithState:&v66 objects:v77 count:16];
  if (v6)
  {
    v7 = *v67;
    v8 = &off_1004DC6E0;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v67 != v7)
        {
          objc_enumerationMutation(&off_1004DC6E0);
        }

        v10 = *(*(&v66 + 1) + 8 * i);
        v11 = objc_opt_new();
        v12 = sub_1003AF1FC(v4, v11);

        v13 = [v10 hexStringAsData];
        v14 = sub_1003AF1FC(v4, v13);

        if (v14)
        {
          if ([v14 code] != 11)
          {
            goto LABEL_43;
          }
        }

        else
        {
          [v42 addObject:v10];
        }
      }

      v6 = [&off_1004DC6E0 countByEnumeratingWithState:&v66 objects:v77 count:16];
    }

    while (v6);
  }

  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_10005A770;
  v64 = sub_10005A780;
  v65 = 0;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v8 = v42;
  v15 = [v8 countByEnumeratingWithState:&v56 objects:v76 count:16];
  if (v15)
  {
    v16 = *v57;
    while (2)
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v57 != v16)
        {
          objc_enumerationMutation(v8);
        }

        v18 = *(*(&v56 + 1) + 8 * j);
        v19 = (v61 + 5);
        obj = v61[5];
        v20 = sub_1000598B8(v5, v18, v41, &obj);
        objc_storeStrong(v19, obj);
        if (v61[5])
        {
          goto LABEL_41;
        }

        if (!v20)
        {
          v21 = SESDefaultLogObject();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v18;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Instance %@ not in DB, creating it", &buf, 0xCu);
          }

          v22 = (v61 + 5);
          v54 = v61[5];
          v20 = sub_100059A30(v5, v18, v41, &v54);
          objc_storeStrong(v22, v54);
          if (v61[5])
          {
            goto LABEL_41;
          }
        }

        v23 = sub_10005A788(v5, v20, v41, v4);
        v24 = v61[5];
        v61[5] = v23;

        if (v61[5])
        {
          goto LABEL_41;
        }

        v25 = sub_10005AEF0(v5, v20, v41, v4);
        v26 = v61[5];
        v61[5] = v25;

        if (v61[5] || (sub_10005B50C(v5, v20, v41, v4), v27 = objc_claimAutoreleasedReturnValue(), v28 = v61[5], v61[5] = v27, v28, v61[5]))
        {
LABEL_41:
          v39 = SESDefaultLogObject();
          v14 = SESCreateAndLogError();

          v32 = v8;
          goto LABEL_42;
        }
      }

      v15 = [v8 countByEnumeratingWithState:&v56 objects:v76 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v29 = SESDefaultLogObject();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = [v8 count];
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Finished reconciliation of %u instances", &buf, 8u);
  }

  v31 = (v61 + 5);
  v53 = v61[5];
  v32 = sub_100059808(v5, v41, &v53);
  objc_storeStrong(v31, v53);
  v33 = v61[5];
  if (v33)
  {
    v14 = v33;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v72 = 0x3032000000;
    v73 = sub_10005A770;
    v74 = sub_10005A780;
    v75 = objc_opt_new();
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10005B9CC;
    v47[3] = &unk_1004C2FC8;
    v32 = v32;
    v48 = v32;
    v49 = v8;
    p_buf = &buf;
    v51 = &v60;
    v52 = v5;
    sub_1003AD2A8(v41, v47);
    v34 = sub_10005BDE0(v5, v41, v4);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v35 = *(*(&buf + 1) + 40);
    v36 = [v35 countByEnumeratingWithState:&v43 objects:v70 count:16];
    if (v36)
    {
      v37 = *v44;
      do
      {
        for (k = 0; k != v36; k = k + 1)
        {
          if (*v44 != v37)
          {
            objc_enumerationMutation(v35);
          }

          [_TtC10seserviced13EndpointStore removeWithEndpoint:*(*(&v43 + 1) + 8 * k)];
        }

        v36 = [v35 countByEnumeratingWithState:&v43 objects:v70 count:16];
      }

      while (v36);
    }

    v14 = v61[5];
    _Block_object_dispose(&buf, 8);
  }

LABEL_42:

  _Block_object_dispose(&v60, 8);
LABEL_43:

  return v14;
}

uint64_t sub_10005A770(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10005A788(uint64_t a1, void *a2, void *a3, void *a4)
{
  v47 = a2;
  v6 = a3;
  v46 = a4;
  v7 = objc_opt_self();
  v45 = v6;
  v8 = sub_1003AD390(v6);
  dispatch_assert_queue_V2(v8);

  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_10005A770;
  v67 = sub_10005A780;
  v68 = 0;
  v9 = sub_10005C1EC(SESEndpointDatabase, v6);
  v10 = v64[5];
  v64[5] = v9;

  v11 = [v47 identifier];
  v12 = [v11 hexStringAsData];
  v13 = (v64 + 5);
  obj = v64[5];
  v43 = sub_100049D9C(v46, v12, &obj);
  objc_storeStrong(v13, obj);

  if (v64[5])
  {
    v44 = SESDefaultLogObject();
    v14 = [v47 identifier];
    v15 = SESCreateAndLogError();
  }

  else
  {
    v44 = Transform();
    v16 = SESDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v44 count];
      v18 = [v47 identifier];
      *buf = 67109378;
      *v71 = v17;
      *&v71[4] = 2112;
      *&v71[6] = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Found %u CAs in SE instance %@", buf, 0x12u);
    }

    v41 = [v47 certificateAuthorities];
    if (v64[5])
    {
      v42 = SESDefaultLogObject();
      v39 = [v47 identifier];
      v15 = SESCreateAndLogError();
    }

    else
    {
      v57 = _NSConcreteStackBlock;
      v58 = 3221225472;
      v59 = sub_10005C430;
      v60 = &unk_1004C3008;
      v61 = v7;
      v42 = TransformIf();
      v19 = SESDefaultLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v42 count];
        v21 = [v47 identifier];
        *buf = 67109378;
        *v71 = v20;
        *&v71[4] = 2112;
        *&v71[6] = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Found %u CAs in DB instance %@", buf, 0x12u);
      }

      v22 = [v42 mutableCopy];
      [v22 removeObjectsInArray:v44];
      v23 = SESDefaultLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [v22 count];
        *buf = 67109120;
        *v71 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Found %u CAs in the DB not present on SE", buf, 8u);
      }

      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_10005C484;
      v52[3] = &unk_1004C3058;
      v40 = v22;
      v53 = v40;
      v54 = v41;
      v55 = &v63;
      v56 = v7;
      sub_1003AD2A8(v6, v52);
      v25 = [v44 mutableCopy];
      [v25 removeObjectsInArray:v42];
      v26 = SESDefaultLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = [v25 count];
        *buf = 67109120;
        *v71 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Found %u CAs in the SE not present on DB", buf, 8u);
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v28 = v25;
      v29 = [v28 countByEnumeratingWithState:&v48 objects:v69 count:16];
      if (v29)
      {
        v30 = *v49;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v49 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v48 + 1) + 8 * i);
            v33 = SESDefaultLogObject();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v71 = v32;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Removing dangling SE CA %@", buf, 0xCu);
            }

            v34 = [v47 identifier];
            v35 = [v34 hexStringAsData];
            v36 = sub_100046048(v46, v35, v32);

            if (v36)
            {
              v37 = SESDefaultLogObject();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *v71 = v32;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to remove CA entity from SE for subjectCA %@", buf, 0xCu);
              }
            }
          }

          v29 = [v28 countByEnumeratingWithState:&v48 objects:v69 count:16];
        }

        while (v29);
      }

      v15 = 0;
    }

    v14 = v41;
  }

  _Block_object_dispose(&v63, 8);

  return v15;
}

id sub_10005AEF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = sub_1003AD390(v7);
  dispatch_assert_queue_V2(v10);

  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_10005A770;
  v62 = sub_10005A780;
  v63 = 0;
  v11 = [v6 identifier];
  v12 = [v11 hexStringAsData];
  v13 = (v59 + 5);
  obj = v59[5];
  v14 = sub_10004A12C(v8, v12, &obj);
  objc_storeStrong(v13, obj);

  v15 = v59[5];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v17 = SESDefaultLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v14 count];
      v19 = [v6 identifier];
      *buf = 67109378;
      *&buf[4] = v18;
      LOWORD(v71) = 2112;
      *(&v71 + 2) = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Found %u endpoints in SE instance %@", buf, 0x12u);
    }

    *buf = 0;
    *&v71 = buf;
    *(&v71 + 1) = 0x3032000000;
    v72 = sub_10005A770;
    v73 = sub_10005A780;
    v20 = [v6 endPoints];
    v74 = [v20 mutableCopy];

    v21 = v59[5];
    if (v21)
    {
      v16 = v21;
    }

    else
    {
      v22 = *(v71 + 40);
      v52 = _NSConcreteStackBlock;
      v53 = 3221225472;
      v54 = sub_10005C904;
      v55 = &unk_1004C3078;
      v56 = v9;
      v23 = TransformIf();
      v24 = SESDefaultLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v23 count];
        v26 = [v6 identifier];
        *v65 = 67109378;
        *&v65[4] = v25;
        LOWORD(v66) = 2112;
        *(&v66 + 2) = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Found %u endpoints in DB instance %@", v65, 0x12u);
      }

      v27 = [v23 mutableCopy];
      [v27 removeObjectsInArray:v14];
      v28 = SESDefaultLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v27 count];
        *v65 = 67109120;
        *&v65[4] = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Found %u EPs in the DB not present on SE", v65, 8u);
      }

      *v65 = 0;
      *&v66 = v65;
      *(&v66 + 1) = 0x3032000000;
      v67 = sub_10005A770;
      v68 = sub_10005A780;
      v69 = objc_opt_new();
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10005C958;
      v42[3] = &unk_1004C30C8;
      v30 = v27;
      v43 = v30;
      v48 = buf;
      v49 = v65;
      v50 = &v58;
      v51 = v9;
      v44 = v8;
      v45 = v6;
      v46 = v14;
      v31 = v23;
      v47 = v31;
      sub_1003AD2A8(v7, v42);
      v37 = v30;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v32 = *(v66 + 40);
      v33 = [v32 countByEnumeratingWithState:&v38 objects:v64 count:16];
      if (v33)
      {
        v34 = *v39;
        do
        {
          for (i = 0; i != v33; i = i + 1)
          {
            if (*v39 != v34)
            {
              objc_enumerationMutation(v32);
            }

            [_TtC10seserviced13EndpointStore removeWithEndpoint:*(*(&v38 + 1) + 8 * i)];
          }

          v33 = [v32 countByEnumeratingWithState:&v38 objects:v64 count:16];
        }

        while (v33);
      }

      v16 = v59[5];
      _Block_object_dispose(v65, 8);
    }

    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v58, 8);

  return v16;
}

void sub_10005B494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose((v39 - 176), 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

id sub_10005B50C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = a2;
  v6 = a3;
  v21 = a4;
  v27 = objc_opt_self();
  v20 = v6;
  v7 = sub_1003AD390(v6);
  dispatch_assert_queue_V2(v7);

  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_10005A770;
  v48 = sub_10005A780;
  v49 = 0;
  v22 = [v23 certificateAuthorities];
  if (v45[5])
  {
    v8 = SESDefaultLogObject();
    v9 = SESCreateAndLogError();
  }

  else
  {
    v24 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v22 count]);
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v40 = 0u;
    obj = v22;
    v10 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v10)
    {
      v11 = *v41;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v40 + 1) + 8 * i);
          v14 = [v13 endPoints];
          v34 = _NSConcreteStackBlock;
          v35 = 3221225472;
          v36 = sub_10005DAB4;
          v37 = &unk_1004C30F0;
          v38 = &v44;
          v39 = v27;
          v15 = Any();
          v16 = SESDefaultLogObject();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *v51 = v13;
            *&v51[8] = 1024;
            *&v51[10] = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "EndpointEntity %@ has active endpoints? %d", buf, 0x12u);
          }

          if ((v15 & 1) == 0)
          {
            [v24 addObject:v13];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v10);
    }

    if ([v24 count])
    {
      v17 = SESDefaultLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v24 count];
        *buf = 67109378;
        *v51 = v18;
        *&v51[4] = 2112;
        *&v51[6] = obj;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Deleting %u endPointCAs with no active endpoints : %@", buf, 0x12u);
      }

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10005DBC8;
      v28[3] = &unk_1004C3118;
      v25 = v24;
      v29 = v25;
      v32 = &v44;
      v33 = v27;
      v30 = v21;
      v31 = v23;
      sub_1003AD2A8(v20, v28);
      v9 = v45[5];
    }

    else
    {
      v9 = 0;
    }
  }

  _Block_object_dispose(&v44, 8);

  return v9;
}

void sub_10005B9CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v52;
    v37 = *v52;
    do
    {
      v7 = 0;
      v38 = v5;
      do
      {
        if (*v52 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v51 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        v10 = [v8 identifier];
        LOBYTE(v9) = [v9 containsObject:v10];

        if ((v9 & 1) == 0)
        {
          v11 = SESDefaultLogObject();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = [v8 identifier];
            *buf = 138412290;
            v58 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Database contains PTA instance %@ but SE does not, cleaning it now!", buf, 0xCu);
          }

          v41 = v7;

          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v40 = v8;
          v13 = [v8 endPoints];
          v14 = [v13 countByEnumeratingWithState:&v47 objects:v56 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v48;
            do
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v48 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v47 + 1) + 8 * i);
                v19 = *(a1 + 64);
                v46 = 0;
                v20 = sub_10003CCA4(v19, v18, &v46);
                v21 = v46;
                v22 = sub_1003AD0FC(v3);
                [v22 deleteObject:v18];

                if (v20)
                {
                  v23 = [v20 deleteEndPointLongTermPrivacyKey];
                  v24 = [v20 bleUUID];

                  if (v24)
                  {
                    [*(*(*(a1 + 48) + 8) + 40) addObject:v20];
                  }
                }

                else
                {
                  v25 = SESDefaultLogObject();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v58 = v21;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to retrieve endpoint %@", buf, 0xCu);
                  }
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v47 objects:v56 count:16];
            }

            while (v15);
          }

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v26 = [v40 certificateAuthorities];
          v27 = [v26 countByEnumeratingWithState:&v42 objects:v55 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v43;
            do
            {
              for (j = 0; j != v28; j = j + 1)
              {
                if (*v43 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v42 + 1) + 8 * j);
                v32 = sub_1003AD0FC(v3);
                [v32 deleteObject:v31];
              }

              v28 = [v26 countByEnumeratingWithState:&v42 objects:v55 count:16];
            }

            while (v28);
          }

          v33 = sub_1003AD0FC(v3);
          [v33 deleteObject:v40];

          v6 = v37;
          v5 = v38;
          v7 = v41;
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v5);
  }

  v34 = sub_1003AD108(v3);
  v35 = *(*(a1 + 56) + 8);
  v36 = *(v35 + 40);
  *(v35 + 40) = v34;
}

id sub_10005BDE0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  if ([v7 BOOLForKey:@"RebindCaAlreadyExecuted"])
  {
    v8 = 0;
    goto LABEL_6;
  }

  v32 = v4;
  v9 = [@"A000000809434343444B417631" hexStringAsData];
  v40 = 0;
  v10 = sub_100044F68(v5, v9, 0, &v40);
  v11 = v40;

  if (v11)
  {
    v12 = SESDefaultLogObject();
    v8 = SESCreateAndLogError();
    goto LABEL_5;
  }

  if (v10 >= 5)
  {
    v14 = SESDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Rebinding instance CAs for Alisha", buf, 2u);
    }

    v38 = 0;
    v12 = sub_10003CD80(v6, v4, &v38);
    v15 = v38;
    if (!v15)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v12 = v12;
      v16 = [v12 countByEnumeratingWithState:&v34 objects:v41 count:16];
      if (v16)
      {
        v17 = v16;
        v31 = v7;
        v33 = v5;
        v11 = 0;
        v18 = *v35;
        v19 = 1;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v35 != v18)
            {
              objc_enumerationMutation(v12);
            }

            v21 = *(*(&v34 + 1) + 8 * i);
            if ([v21 endPointType] == 1)
            {
              v22 = [v21 revocationAttestation];

              if (!v22)
              {
                v23 = [@"A000000809434343444B417631" hexStringAsData];
                v24 = [v21 publicKeyIdentifier];
                v25 = [v21 certificates];
                v26 = [v25 objectAtIndexedSubscript:2];
                v27 = sub_10004BB38(v33, v23, v24, v26);
                v28 = v11;
                v11 = v27;

                v19 &= v11 == 0;
              }
            }
          }

          v17 = [v12 countByEnumeratingWithState:&v34 objects:v41 count:16];
        }

        while (v17);

        if ((v19 & 1) == 0)
        {
          v30 = SESDefaultLogObject();
          v8 = SESCreateAndLogError();

          v4 = v32;
          v5 = v33;
          v7 = v31;
          goto LABEL_5;
        }

        v4 = v32;
        v5 = v33;
        v7 = v31;
      }

      else
      {

        v11 = 0;
      }

      v29 = SESDefaultLogObject();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Successfully rebinded instance CAs for Alisha", buf, 2u);
      }

      [v7 setBool:1 forKey:@"RebindCaAlreadyExecuted"];
      v8 = 0;
      goto LABEL_5;
    }

    v11 = v15;
    v8 = v11;
LABEL_5:

    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

id sub_10005C1EC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v18 = 0;
  v4 = sub_10003C954(v3, v2, &v18);
  v5 = v18;
  v6 = v5;
  if (!v4 || v5)
  {
    v9 = SESEnsureError();
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10005DE60;
    v17[3] = &unk_1004C3138;
    v17[4] = v3;
    v7 = [v4 filter:v17];
    v16 = 0;
    v8 = sub_100043148(v3, v2, &v16);
    v6 = v16;
    if (v6)
    {
      v9 = SESEnsureError();
    }

    else
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10005DEB0;
      v15[3] = &unk_1004C3158;
      v15[4] = v3;
      v10 = [v8 filter:v15];
      if ([v7 count] || objc_msgSend(v10, "count"))
      {
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10005DF00;
        v12[3] = &unk_1004C3180;
        v13 = v7;
        v14 = v10;
        sub_1003AD2A8(v2, v12);
      }

      v9 = 0;
    }
  }

  return v9;
}

id sub_10005C430(uint64_t a1, void *a2)
{
  v2 = sub_1000433C4(*(a1 + 32), a2, 0);
  v3 = [v2 subjectIdentifier];

  return v3;
}

void sub_10005C484(uint64_t a1, void *a2)
{
  v3 = a2;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = *(a1 + 32);
  v25 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v25)
  {
    v24 = *v44;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v43 + 1) + 8 * i);
        v37 = 0;
        v38 = &v37;
        v39 = 0x3032000000;
        v40 = sub_10005A770;
        v41 = sub_10005A780;
        v42 = 0;
        v6 = *(a1 + 40);
        v30 = _NSConcreteStackBlock;
        v31 = 3221225472;
        v32 = sub_10005C87C;
        v33 = &unk_1004C3030;
        v7 = *(a1 + 56);
        v35 = &v37;
        v36 = v7;
        v34 = v5;
        v8 = Find();
        if (v8)
        {
          v9 = SESDefaultLogObject();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = [v8 endPoints];
            v11 = [v10 count];
            *buf = 138412546;
            v49 = v5;
            v50 = 1024;
            LODWORD(v51) = v11;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Removing dangling DB CA %@ with %u endpoints ", buf, 0x12u);
          }

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v12 = [v8 endPoints];
          v13 = [v12 countByEnumeratingWithState:&v26 objects:v47 count:16];
          if (v13)
          {
            v14 = *v27;
            do
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v26 + 1) + 8 * j);
                v17 = sub_1003AD0FC(v3);
                [v17 deleteObject:v16];
              }

              v13 = [v12 countByEnumeratingWithState:&v26 objects:v47 count:16];
            }

            while (v13);
          }

          v18 = sub_1003AD0FC(v3);
          [v18 deleteObject:v8];
        }

        else
        {
          v18 = SESDefaultLogObject();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = v38[5];
            *buf = 138412546;
            v49 = v5;
            v50 = 2112;
            v51 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Couldn't get entity for subjectIdentifier %@ : %@", buf, 0x16u);
          }
        }

        _Block_object_dispose(&v37, 8);
      }

      v25 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v25);
  }

  v20 = sub_1003AD108(v3);
  v21 = *(*(a1 + 48) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;
}

id sub_10005C87C(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = *(a1[5] + 8);
  obj = *(v4 + 40);
  v5 = sub_1000433C4(v3, a2, &obj);
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 subjectIdentifier];
  v7 = [v6 isEqualToString:a1[4]];

  return v7;
}

id sub_10005C904(uint64_t a1, void *a2)
{
  v2 = sub_10003CCA4(*(a1 + 32), a2, 0);
  v3 = [v2 publicKeyIdentifier];

  return v3;
}

void sub_10005C958(uint64_t a1, void *a2)
{
  v130 = a2;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v134 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v151 objects:v165 count:16];
  if (v3)
  {
    v131 = *v152;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v152 != v131)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v151 + 1) + 8 * i);
        *v161 = 0;
        *&v161[8] = v161;
        *&v161[16] = 0x3032000000;
        v162 = sub_10005A770;
        v163 = sub_10005A780;
        v164 = 0;
        v6 = *(*(*(v134 + 72) + 8) + 40);
        v150[1] = _NSConcreteStackBlock;
        v150[2] = 3221225472;
        v150[3] = sub_10005DA2C;
        v150[4] = &unk_1004C30A0;
        v7 = *(v134 + 96);
        v150[6] = v161;
        v150[7] = v7;
        v150[5] = v5;
        v8 = Find();
        if (v8)
        {
          v9 = *(v134 + 96);
          v10 = (*&v161[8] + 40);
          v150[0] = *(*&v161[8] + 40);
          v11 = sub_10003CCA4(v9, v8, v150);
          objc_storeStrong(v10, v150[0]);
          v12 = SESDefaultLogObject();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = [v5 asHexString];
            *buf = 138412290;
            v158 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Removing dangling entity %@", buf, 0xCu);
          }

          v14 = sub_1003AD0FC(v130);
          [v14 deleteObject:v8];

          [*(*(*(v134 + 72) + 8) + 40) removeObject:v8];
          if (v11)
          {
            v15 = [v11 deleteEndPointLongTermPrivacyKey];
            v16 = [v11 bleUUID];

            if (v16)
            {
              [*(*(*(v134 + 80) + 8) + 40) addObject:v11];
            }
          }

          else
          {
            v19 = SESDefaultLogObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = *(*&v161[8] + 40);
              *buf = 138412290;
              v158 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to retrieve endpoint %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v11 = SESDefaultLogObject();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v17 = [v5 asHexString];
            v18 = *(*&v161[8] + 40);
            *buf = 138412546;
            v158 = v17;
            v159 = 2112;
            v160 = v18;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Couldn't get entity for identifier %@ : %@", buf, 0x16u);
          }
        }

        _Block_object_dispose(v161, 8);
      }

      v3 = [obj countByEnumeratingWithState:&v151 objects:v165 count:16];
    }

    while (v3);
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v21 = *(*(*(v134 + 72) + 8) + 40);
  v132 = [v21 countByEnumeratingWithState:&v146 objects:v156 count:16];
  if (v132)
  {
    obja = *v147;
    do
    {
      for (j = 0; j != v132; j = j + 1)
      {
        if (*v147 != obja)
        {
          objc_enumerationMutation(v21);
        }

        v23 = *(*(&v146 + 1) + 8 * j);
        v24 = *(v134 + 96);
        v25 = *(*(v134 + 88) + 8);
        v145 = *(v25 + 40);
        v26 = sub_10003CCA4(v24, v23, &v145);
        objc_storeStrong((v25 + 40), v145);
        if (*(*(*(v134 + 88) + 8) + 40))
        {
LABEL_72:
          v102 = SESDefaultLogObject();
          v103 = SESCreateAndLogError();
          v104 = *(*(v134 + 88) + 8);
          v105 = *(v104 + 40);
          *(v104 + 40) = v103;

          sub_1003AD19C(v130);
          goto LABEL_78;
        }

        v27 = [v26 revocationAttestation];

        if (!v27)
        {
          v28 = *(v134 + 40);
          v29 = [*(v134 + 48) identifier];
          v30 = [v29 hexStringAsData];
          v31 = [v26 publicKeyIdentifier];
          v32 = *(*(v134 + 88) + 8);
          v144 = *(v32 + 40);
          v33 = sub_10004A138(v28, v30, v31, &v144);
          objc_storeStrong((v32 + 40), v144);

          if (*(*(*(v134 + 88) + 8) + 40))
          {
            goto LABEL_72;
          }

          if (!v33)
          {
            v34 = SESDefaultLogObject();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v35 = [v26 publicKeyIdentifier];
              v36 = [v35 asHexString];
              *v161 = 138412290;
              *&v161[4] = v36;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Revoked endpoint %@ is not up-to-date in the DB", v161, 0xCu);
            }

            if ([v26 endPointType] == 3 || objc_msgSend(v26, "endPointType") == 4)
            {
              v37 = SESDefaultLogObject();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                v38 = [v26 publicKeyIdentifier];
                v39 = [v38 asHexString];
                *v161 = 138412290;
                *&v161[4] = v39;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Deleting the revoked HOME or Lyon endpoint %@ from the DB and the SE", v161, 0xCu);
              }

              v40 = sub_1003AD0FC(v130);
              [v40 deleteObject:v23];

              v41 = *(v134 + 40);
              v42 = [*(v134 + 48) identifier];
              v43 = [v42 hexStringAsData];
              v44 = [v26 publicKeyIdentifier];
              v45 = sub_100045800(v41, v43, v44);
              v46 = *(*(v134 + 88) + 8);
              v47 = *(v46 + 40);
              *(v46 + 40) = v45;

              if (*(*(*(v134 + 88) + 8) + 40))
              {
                v48 = SESDefaultLogObject();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  v49 = [v26 publicKeyIdentifier];
                  v50 = [v49 asHexString];
                  v51 = *(*(*(v134 + 88) + 8) + 40);
                  *v161 = 138412546;
                  *&v161[4] = v50;
                  *&v161[12] = 2112;
                  *&v161[14] = v51;
                  _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Failed to delete endpoint %@ %@", v161, 0x16u);
                }
              }

              v52 = [v26 deleteEndPointLongTermPrivacyKey];
              v53 = [v26 bleUUID];

              if (v53)
              {
                [*(*(*(v134 + 80) + 8) + 40) addObject:v26];
              }
            }

            else
            {
              v54 = *(v134 + 40);
              v126 = [*(v134 + 48) identifier];
              v55 = [v126 hexStringAsData];
              v56 = [v26 publicKeyIdentifier];
              v57 = [NSData randomData:16];
              v58 = *(*(v134 + 88) + 8);
              v143 = *(v58 + 40);
              v59 = sub_10004993C(v54, v55, v56, v57, 0, &v143);
              objc_storeStrong((v58 + 40), v143);

              if (*(*(*(v134 + 88) + 8) + 40))
              {
                v122 = SESDefaultLogObject();
                v123 = SESCreateAndLogError();
                v124 = *(*(v134 + 88) + 8);
                v125 = *(v124 + 40);
                *(v124 + 40) = v123;

LABEL_80:
                sub_1003AD19C(v130);

                goto LABEL_78;
              }

              [v26 setRevocationAttestation:v59];
              v60 = [v130 stageEndPointEntityUpdates:v23 fromEndPoint:v26];
              v61 = *(*(v134 + 88) + 8);
              v62 = *(v61 + 40);
              *(v61 + 40) = v60;

              if (*(*(*(v134 + 88) + 8) + 40))
              {
                goto LABEL_80;
              }

              v63 = [v26 bleUUID];

              if (v63)
              {
                [*(*(*(v134 + 80) + 8) + 40) addObject:v26];
              }
            }
          }
        }
      }

      v132 = [v21 countByEnumeratingWithState:&v146 objects:v156 count:16];
    }

    while (v132);
  }

  v64 = [*(v134 + 56) mutableCopy];
  [v64 removeObjectsInArray:*(v134 + 64)];
  v65 = SESDefaultLogObject();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
  {
    v66 = [v64 count];
    *v161 = 67109120;
    *&v161[4] = v66;
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "Found %u EPs on the SE not present in DB", v161, 8u);
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v21 = v64;
  v133 = [v21 countByEnumeratingWithState:&v139 objects:v155 count:16];
  if (!v133)
  {
    goto LABEL_71;
  }

  objb = *v140;
  while (2)
  {
    for (k = 0; k != v133; k = k + 1)
    {
      if (*v140 != objb)
      {
        objc_enumerationMutation(v21);
      }

      v68 = *(*(&v139 + 1) + 8 * k);
      v69 = [*(v134 + 48) identifier];
      if ([@"A00000085801010100000001" isEqualToString:v69])
      {
      }

      else
      {
        v70 = [*(v134 + 48) identifier];
        v71 = [@"A000000909ACCE5501" isEqualToString:v70];

        if (!v71)
        {
          v83 = *(v134 + 40);
          v84 = [*(v134 + 48) identifier];
          v85 = [v84 hexStringAsData];
          v86 = [NSData randomData:16];
          v87 = *(*(v134 + 88) + 8);
          v138 = *(v87 + 40);
          v80 = sub_10004993C(v83, v85, v68, v86, 0, &v138);
          objc_storeStrong((v87 + 40), v138);

          if (*(*(*(v134 + 88) + 8) + 40))
          {
            v106 = SESDefaultLogObject();
            v107 = SESCreateAndLogError();
            v108 = *(*(v134 + 88) + 8);
            v109 = *(v108 + 40);
            *(v108 + 40) = v107;

            sub_1003AD19C(v130);
          }

          else
          {
            v88 = [*(v134 + 48) identifier];
            v89 = [v88 hexStringAsData];
            v90 = *(*(v134 + 88) + 8);
            v137 = *(v90 + 40);
            v91 = [SEEndPoint revokedEndpointWithPublicKeyIdentifier:v68 appletIdentifier:v89 revocationAttestation:v80 error:&v137];
            objc_storeStrong((v90 + 40), v137);

            v92 = *(*(v134 + 88) + 8);
            v94 = *(v92 + 40);
            v93 = (v92 + 40);
            if (!v94)
            {
              v136 = 0;
              v95 = [v91 encodeWithError:&v136];
              objc_storeStrong(v93, v136);
              if (*(*(*(v134 + 88) + 8) + 40) || !v95)
              {
                v114 = SESDefaultLogObject();
                v115 = SESCreateAndLogError();
                v116 = *(*(v134 + 88) + 8);
                v117 = *(v116 + 40);
                *(v116 + 40) = v115;

                sub_1003AD19C(v130);
                goto LABEL_77;
              }

              v96 = sub_1003AD0FC(v130);
              v97 = [NSEntityDescription insertNewObjectForEntityForName:@"SEEndPointEntity" inManagedObjectContext:v96];

              [v97 setInstance:*(v134 + 48)];
              [v97 setClientName:@"com.apple.seserviced"];
              [v97 setEndPointData:v95];
              v98 = *(*(v134 + 88) + 8);
              v135 = *(v98 + 40);
              v99 = [v97 validateForInsert:&v135];
              objc_storeStrong((v98 + 40), v135);
              if ((v99 & 1) == 0)
              {
                v118 = SESDefaultLogObject();
                v119 = SESCreateAndLogError();
                v120 = *(*(v134 + 88) + 8);
                v121 = *(v120 + 40);
                *(v120 + 40) = v119;

                sub_1003AD19C(v130);
                goto LABEL_77;
              }

              goto LABEL_68;
            }

            v110 = SESDefaultLogObject();
            v111 = SESCreateAndLogError();
            v112 = *(*(v134 + 88) + 8);
            v113 = *(v112 + 40);
            *(v112 + 40) = v111;

            sub_1003AD19C(v130);
          }

LABEL_77:

          v26 = v21;
          goto LABEL_78;
        }
      }

      v72 = SESDefaultLogObject();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        v73 = [v68 asHexString];
        *v161 = 138412290;
        *&v161[4] = v73;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "Deleting the revoked HOME/LYON endpoint %@ from the SE", v161, 0xCu);
      }

      v74 = *(v134 + 40);
      v75 = [*(v134 + 48) identifier];
      v76 = [v75 hexStringAsData];
      v77 = sub_100045800(v74, v76, v68);
      v78 = *(*(v134 + 88) + 8);
      v79 = *(v78 + 40);
      *(v78 + 40) = v77;

      if (*(*(*(v134 + 88) + 8) + 40))
      {
        v80 = SESDefaultLogObject();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          v81 = [v68 asHexString];
          v82 = *(*(*(v134 + 88) + 8) + 40);
          *v161 = 138412546;
          *&v161[4] = v81;
          *&v161[12] = 2112;
          *&v161[14] = v82;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "Failed to delete endpoint %@ %@", v161, 0x16u);
        }

LABEL_68:

        continue;
      }
    }

    v133 = [v21 countByEnumeratingWithState:&v139 objects:v155 count:16];
    if (v133)
    {
      continue;
    }

    break;
  }

LABEL_71:

  v100 = sub_1003AD108(v130);
  v101 = *(*(v134 + 88) + 8);
  v26 = *(v101 + 40);
  *(v101 + 40) = v100;
LABEL_78:
}

id sub_10005DA2C(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = *(a1[5] + 8);
  obj = *(v4 + 40);
  v5 = sub_10003CCA4(v3, a2, &obj);
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 publicKeyIdentifier];
  v7 = [v6 isEqualToData:a1[4]];

  return v7;
}

BOOL sub_10005DAB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  obj = *(v5 + 40);
  v6 = sub_10003CCA4(v4, v3, &obj);
  objc_storeStrong((v5 + 40), obj);
  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = SESDefaultLogObject();
    v13 = [v3 identifier];
    v8 = SESCreateAndLogError();
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = 1;
  }

  else
  {
    v7 = [v6 revocationAttestation];
    v11 = v7 == 0;
  }

  return v11;
}

void sub_10005DBC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    do
    {
      v7 = 0;
      v28 = v5;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * v7);
        v9 = *(a1 + 64);
        v10 = *(*(a1 + 56) + 8);
        v30 = *(v10 + 40);
        v11 = sub_1000433C4(v9, v8, &v30);
        objc_storeStrong((v10 + 40), v30);
        if (*(*(*(a1 + 56) + 8) + 40))
        {
          goto LABEL_8;
        }

        v12 = *(a1 + 40);
        [*(a1 + 48) identifier];
        v13 = v6;
        v15 = v14 = v3;
        v16 = [v15 hexStringAsData];
        v17 = [v11 subjectIdentifier];
        v18 = sub_100046048(v12, v16, v17);
        v19 = *(*(a1 + 56) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;

        v3 = v14;
        v6 = v13;
        v5 = v28;
        if (*(*(*(a1 + 56) + 8) + 40))
        {
LABEL_8:
          v21 = SESDefaultLogObject();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = *(*(*(a1 + 56) + 8) + 40);
            v23 = [v11 subjectIdentifier];
            *buf = 138412546;
            v36 = v22;
            v37 = 2112;
            v38 = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Error %@ while removing CA %@ from SE", buf, 0x16u);
          }
        }

        v24 = sub_1003AD0FC(v3);
        [v24 deleteObject:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v5);
  }

  v25 = sub_1003AD108(v3);
  v26 = *(*(a1 + 56) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;
}

uint64_t sub_10005DE60(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = sub_10003CCA4(v2, a2, &v7);
  if (v3)
  {
    v4 = v7 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;

  return v5;
}

uint64_t sub_10005DEB0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = sub_1000433C4(v2, a2, &v7);
  if (v3)
  {
    v4 = v7 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;

  return v5;
}

void sub_10005DF00(uint64_t a1, void *a2)
{
  v3 = a2;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = a1;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = SESDefaultLogObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = [v9 identifier];
          *buf = 138412290;
          v34 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Deleting unparsable EP Entity %@", buf, 0xCu);
        }

        v12 = sub_1003AD0FC(v3);
        [v12 deleteObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v6);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = *(v23 + 40);
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * j);
        v19 = SESDefaultLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = [v18 identifier];
          *buf = 138412290;
          v34 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Deleting unparsable CA Entity %@", buf, 0xCu);
        }

        v21 = sub_1003AD0FC(v3);
        [v21 deleteObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  v22 = sub_1003AD108(v3);
}

uint64_t sub_10005E628(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESACWGSession endSession %@", &v5, 0xCu);
  }

  [*(a1 + 32) endSessionInternal:0];
  return (*(*(a1 + 40) + 16))();
}

void sub_10005E7C4(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v32 = v3;
    v33 = 2112;
    v34 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESACWGSession %@ setActiveKey %@", buf, 0x16u);
  }

  if (([*(a1 + 32) isActive] & 1) == 0)
  {
    v9 = *(a1 + 48);
    v10 = SESDefaultLogObject();
    v11 = SESCreateAndLogError();
    (*(v9 + 16))(v9, 0, v11);

    return;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_15;
  }

  v5 = [*(*(a1 + 32) + 64) publicKeyIdentifier];
  v6 = [*(a1 + 40) hexStringAsData];
  v7 = [v5 isEqualToData:v6];

  if (v7)
  {
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Key already active", buf, 2u);
    }

    goto LABEL_16;
  }

  v12 = *(a1 + 40);
  if (!v12)
  {
LABEL_15:
    v22 = *(a1 + 32);
    v23 = *(v22 + 64);
    *(v22 + 64) = 0;

    *(*(a1 + 32) + 56) = 0;
LABEL_16:
    (*(*(a1 + 48) + 16))();
    return;
  }

  v13 = [v12 hexStringAsData];
  v14 = +[_TtC10seserviced12LyonExternal shared];
  v15 = [v14 getAllEndpoints];

  v16 = [v15 allObjects];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10005EB90;
  v29[3] = &unk_1004C31A8;
  v17 = v13;
  v30 = v17;
  v18 = [v16 find:v29];

  v19 = *(a1 + 32);
  if (v18)
  {
    objc_storeStrong((v19 + 64), v18);
    v20 = SESDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 40);
      *buf = 138412290;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Active key set to %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v24 = *(v19 + 64);
    *(v19 + 64) = 0;

    *(*(a1 + 32) + 56) = 0;
    v25 = *(a1 + 48);
    v26 = SESDefaultLogObject();
    v28 = *(a1 + 40);
    v27 = SESCreateAndLogError();
    (*(v25 + 16))(v25, 0, v27);
  }
}

id sub_10005EB90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 publicKeyIdentifier];
  v4 = [v2 isEqualToData:v3];

  return v4;
}

void sub_10005ECB0(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESACWGSession %@ setSecureElementToken", &v7, 0xCu);
  }

  if ([*(a1 + 32) isActive])
  {
    if ([*(a1 + 32) isWaitingForSecureElement])
    {
      [*(a1 + 32) pushSecureElementToken:*(a1 + 40)];
      [*(a1 + 32) setIsWaitingForSecureElement:0];
    }

    else
    {
      [*(a1 + 32) setSeToken:*(a1 + 40)];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = SESDefaultLogObject();
    v6 = SESCreateAndLogError();
    (*(v4 + 16))(v4, 0, v6);
  }
}

void sub_10005EECC(uint64_t a1)
{
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v10 = 138412546;
    v11 = v3;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "SESACWGSession %@ preArmActiveKey %d", &v10, 0x12u);
  }

  if (([*(a1 + 32) isActive] & 1) != 0 && (v5 = *(a1 + 32), *(v5 + 64)))
  {
    *(v5 + 56) = *(a1 + 48);
    if ([*(*(a1 + 32) + 64) endPointType] == 4)
    {
      v6 = +[_TtC10seserviced12LyonExternal shared];
      [v6 updatePreArmState:*(*(a1 + 32) + 56) for:*(*(a1 + 32) + 64)];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = SESDefaultLogObject();
    v9 = SESCreateAndLogError();
    (*(v7 + 16))(v7, 0, v9);
  }
}

void sub_10005F12C(uint64_t a1)
{
  if (([*(a1 + 32) isWaitingForSecureElement] & 1) == 0)
  {
    v2 = [*(a1 + 32) seToken];

    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = [*(a1 + 32) seToken];
      [v3 pushSecureElementToken:v4];

      v5 = *(a1 + 32);

      [v5 setSeToken:0];
    }

    else
    {
      [*(a1 + 32) setIsWaitingForSecureElement:1];
      v6 = [*(a1 + 32) remoteObject];
      [v6 sendEvent:&off_1004DC898];
    }
  }
}

void sub_10005F4B4(id a1)
{
  v1 = qword_10050CD10;
  qword_10050CD10 = &off_1004DC6F8;
}

id sub_10005FC78()
{
  objc_opt_self();
  if (qword_10050CD28 != -1)
  {
    sub_1003B0C1C();
  }

  v0 = qword_10050CD20;

  return v0;
}

void sub_10005FCC0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10050CD20;
  qword_10050CD20 = v1;
}