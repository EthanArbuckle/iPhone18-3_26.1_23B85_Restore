uint64_t sub_1000011A8(int a1)
{
  if (a1)
  {
    v1 = 3;
  }

  else
  {
    v1 = 1;
  }

  if ((byte_1000EB601 & 1) == 0)
  {
    v1 = 2;
  }

  if (byte_1000EB600)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000011DC(uint64_t a1)
{
  v2 = sub_1000013A0(qword_1000EB2E8);

  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = sub_1000013AC(qword_1000EB608);
  v13 = 0;
  v4 = [v3 infoForProcessWithPID:a1 error:&v13];
  v5 = v13;

  if (v4)
  {
    v6 = sub_100001440(v4);
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v7 = qword_1000EB308;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v14 = 67109378;
        v15 = a1;
        v16 = 2112;
        v17 = v5;
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    v6 = 0xFFFFFFFFLL;
  }

  return v6;
}

uint64_t sub_1000013A0(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t sub_1000013AC(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t sub_100001434(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t sub_100001440(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

__CFString *sub_100001458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000013A0(qword_1000EB2E8);

  if (v4)
  {
    v5 = sub_1000013AC(qword_1000EB608);
    v17 = 0;
    v6 = [v5 infoForPersonaWithID:a3 error:&v17];
    v7 = v17;

    if (v6)
    {
      if (sub_100001660(v6) == -1)
      {
        v10 = @"FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF";
      }

      else
      {
        v8 = qword_1000EB2E0;
        v9 = sub_100001660(v6);
        v10 = sub_10008A4DC(v8, v9);
      }
    }

    else
    {
      if (qword_1000EB330 != -1)
      {
        sub_100089D40();
      }

      v11 = qword_1000EB328;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = sub_1000011A8(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFE;
        }

        if (v13)
        {
          v18 = 67109378;
          v19 = a3;
          v20 = 2112;
          v21 = v7;
          v14 = _os_log_send_and_compose_impl();
          v15 = v14;
          if (v14)
          {
            sub_100002A8C(v14);
          }
        }

        else
        {
          v15 = 0;
        }

        free(v15);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_100001660(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

BOOL sub_100001748(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t sub_1000017A4(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10);
}

uint64_t sub_1000017C8()
{
  v3 = v1 + *(v0 + 1) - v0;

  return ccder_blob_encode_body();
}

id sub_100001824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{

  return a12;
}

uint64_t sub_10000183C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a10 = 0;
  a11 = 0;

  return DeserializeRequirement(v22 + v24, v23 - v24, &a11, &a10, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void *sub_100001884()
{

  return acm_mem_alloc_typed(0x14uLL, 0x1000040A86A77D5uLL);
}

uint64_t sub_100001950()
{

  return ccder_blob_encode_tl();
}

void sub_100001998()
{
  *(v1 - 180) = v0;
  *(v1 - 176) = v0;
  *(v1 - 168) = v0;
  *(v1 - 188) = v0;
  *(v1 - 184) = v0;
}

void sub_100001A18()
{
  *(v1 - 56) = 0;
  *(v1 - 48) = v0;
  *(v1 - 60) = 1;
}

uint64_t sub_100001AF4(void *a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  v11 = a4;
  v60 = 0;
  if (!a5)
  {
    sub_100089E78();
LABEL_98:
    sub_100089E64();
LABEL_15:
    v17 = v6[101];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_41:
      v33 = 2;
      goto LABEL_45;
    }

    v65 = 0;
    v22 = sub_1000011A8(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 & 0xFFFFFFFE;
    }

    if (v23)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

  v5 = v11;
  v12 = sub_100056BC8(qword_1000EB2E8, v11);
  v6 = &off_1000EB000;
  if (!v12)
  {
    if (qword_1000EB330 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_98;
  }

  v13 = v12;
  v14 = sub_100056854(qword_1000EB2E8, a1, v12);
  CFRelease(v13);
  if (!v14)
  {
    if (qword_1000EB330 != -1)
    {
      sub_100089E64();
    }

    v17 = qword_1000EB328;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    v65 = 0;
    v24 = sub_1000011A8(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
LABEL_28:
      *v61 = 138543618;
      *&v61[4] = a1;
      *&v61[12] = 2114;
      *v62 = v5;
      v26 = _os_log_send_and_compose_impl();
      v27 = v26;
      if (v26)
      {
        sub_100002A8C(v26);
      }

      goto LABEL_40;
    }

LABEL_39:
    v27 = 0;
LABEL_40:
    free(v27);
    goto LABEL_41;
  }

  v15 = sub_1000023E8(v14, kUMUserPersonaIDKey);
  v16 = sub_100002454(v14, kUMUserPersonaDisabledKey);
  CFRelease(v14);
  if (v16)
  {
    if (qword_1000EB330 != -1)
    {
      sub_100089E64();
    }

    v17 = qword_1000EB328;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v65 = 0;
      v18 = sub_1000011A8(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        *v61 = 138543362;
        *&v61[4] = a1;
        v20 = _os_log_send_and_compose_impl();
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }

    v33 = 36;
  }

  else
  {
    if (qword_1000EB330 != -1)
    {
      sub_100089E64();
    }

    v28 = qword_1000EB328;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v65 = 0;
      v29 = sub_1000011A8(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
      }

      else
      {
        v30 = v29 & 0xFFFFFFFE;
      }

      if (v30)
      {
        *v61 = 138543874;
        *&v61[4] = a1;
        *&v61[12] = 1024;
        *v62 = v15;
        *&v62[4] = 1024;
        *&v62[6] = a2;
        v31 = _os_log_send_and_compose_impl();
        v32 = v31;
        if (v31)
        {
          sub_100002A8C(v31);
        }
      }

      else
      {
        v32 = 0;
      }

      free(v32);
    }

    v35 = sub_1000024A8(qword_1000EB608);
    v59 = 0;
    v36 = [v35 uniquePIDForPID:a2 error:&v59];
    v17 = v59;

    if (v36)
    {
      if (qword_1000EB330 != -1)
      {
        sub_100089D40();
      }

      v37 = qword_1000EB328;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v65 = 0;
        v38 = sub_1000011A8(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v39 = v38;
        }

        else
        {
          v39 = v38 & 0xFFFFFFFE;
        }

        if (v39)
        {
          *v61 = 67109632;
          *&v61[4] = v15;
          *&v61[8] = 1024;
          *&v61[10] = a3;
          *v62 = 2048;
          *&v62[2] = v36;
          v40 = _os_log_send_and_compose_impl();
          v41 = v40;
          if (v40)
          {
            sub_100002A8C(v40);
          }
        }

        else
        {
          v41 = 0;
        }

        free(v41);
      }

      v47 = mach_voucher_persona_for_originator();
      if (v47)
      {
        v48 = v47;
        if (qword_1000EB330 != -1)
        {
          sub_100089D40();
        }

        v49 = qword_1000EB328;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v65 = 0;
          v50 = sub_1000011A8(0);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v51 = v50;
          }

          else
          {
            v51 = v50 & 0xFFFFFFFE;
          }

          if (v51)
          {
            *v61 = 67109888;
            *&v61[4] = v15;
            *&v61[8] = 1024;
            *&v61[10] = a3;
            *v62 = 2048;
            *&v62[2] = v36;
            v63 = 1024;
            v64 = v48;
            v52 = _os_log_send_and_compose_impl();
            v53 = v52;
            if (v52)
            {
              sub_100002A8C(v52);
            }
          }

          else
          {
            v53 = 0;
          }

          free(v53);
        }

        v33 = 22;
      }

      else
      {
        if (qword_1000EB330 != -1)
        {
          sub_100089D40();
        }

        v54 = qword_1000EB328;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *v61 = 0;
          v55 = sub_1000011A8(0);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v56 = v55;
          }

          else
          {
            v56 = v55 & 0xFFFFFFFE;
          }

          if (v56)
          {
            LODWORD(v65) = 67109120;
            HIDWORD(v65) = v60;
            v57 = _os_log_send_and_compose_impl();
            v58 = v57;
            if (v57)
            {
              sub_100002A8C(v57);
            }
          }

          else
          {
            v58 = 0;
          }

          free(v58);
        }

        v33 = 0;
        *a5 = v60;
      }
    }

    else
    {
      if (qword_1000EB330 != -1)
      {
        sub_100089D40();
      }

      v42 = qword_1000EB328;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v65 = 0;
        v43 = sub_1000011A8(0);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v44 = v43;
        }

        else
        {
          v44 = v43 & 0xFFFFFFFE;
        }

        if (v44)
        {
          *v61 = 138543618;
          *&v61[4] = a1;
          *&v61[12] = 1024;
          *v62 = a2;
          v45 = _os_log_send_and_compose_impl();
          v46 = v45;
          if (v45)
          {
            sub_100002A8C(v45);
          }
        }

        else
        {
          v46 = 0;
        }

        free(v46);
      }

      v33 = [v17 code];
    }
  }

LABEL_45:

  return v33;
}

uint64_t sub_10000230C(int a1)
{
  if (a1)
  {
    return v1;
  }

  else
  {
    return v1 & 0xFFFFFFFE;
  }
}

uint64_t sub_100002330()
{

  return objc_opt_isKindOfClass();
}

uint64_t sub_100002348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{

  return sub_10007BAE4(a2, a3, &a11);
}

uint64_t sub_1000023AC(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t sub_1000023E8(const __CFDictionary *a1, const void *a2)
{
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

const __CFBoolean *sub_100002454(const __CFDictionary *a1, const void *a2)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFBooleanGetTypeID())
    {
      return (CFBooleanGetValue(v3) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000024A8(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

const void *sub_1000024C0(const __CFDictionary *a1, _DWORD *a2)
{
  v3 = sub_100002700(a1);
  if (!v3)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v10 = qword_1000EB308;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    if (a2)
    {
      v16 = 0;
      *a2 = 2;
      return v16;
    }

    return 0;
  }

  v4 = v3;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v5 = qword_1000EB308;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = _os_log_send_and_compose_impl();
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if (!CFDictionaryContainsKey(v4, kUMUserSessionKeybagOpaqueDataKey))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v4, kUMUserSessionKeybagOpaqueDataKey);
  v16 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v16;
}

CFTypeRef sub_100002700(const __CFDictionary *a1)
{
  if (CFDictionaryContainsKey(a1, kUMUserSessionIDKey))
  {
    v2 = sub_1000023E8(a1, kUMUserSessionIDKey);
    if (v2 != -1)
    {
      sub_10008A2F4(qword_1000EB2E0, v2);
      return objc_claimAutoreleasedReturnValue();
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      goto LABEL_46;
    }

LABEL_48:
    v17 = 0;
LABEL_49:
    free(v17);
LABEL_50:

    return 0;
  }

  if (CFDictionaryContainsKey(a1, kUMUserSessionAlternateDSIDKey))
  {
    v4 = sub_100079590(a1, kUMUserSessionAlternateDSIDKey);
    if (v4)
    {
      sub_10008A05C(qword_1000EB2E0, v4);
      return objc_claimAutoreleasedReturnValue();
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    v9 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (!v10)
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  if (CFDictionaryContainsKey(a1, kUMUserSessionUUIDKey))
  {
    v8 = sub_100079590(a1, kUMUserSessionUUIDKey);
    if (v8)
    {
      sub_10008A1A8(qword_1000EB2E0, v8);
      return objc_claimAutoreleasedReturnValue();
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    v12 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (!v13)
    {
      goto LABEL_48;
    }

LABEL_46:
    v16 = _os_log_send_and_compose_impl();
    v17 = v16;
    if (v16)
    {
      sub_100002A8C(v16);
    }

    goto LABEL_49;
  }

  if (!CFDictionaryContainsKey(a1, kUMUserSessionNameKey))
  {
    return 0;
  }

  v11 = sub_100079590(a1, kUMUserSessionNameKey);
  if (!v11)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  return sub_100018808(v11);
}

void sub_100002A8C(const char *a1)
{
  if (byte_1000EB600 == 1)
  {
    fprintf(__stdoutp, "UMD_INIT: %s\n", a1);
  }

  v2 = qword_1000EB368;

  sub_100095D30(v2, a1);
}

BOOL sub_100002AFC(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_1000013A0(*(result + 24));
    v3 = [v2 sizeOfFileWithDescriptor:*(v1 + 12) error:0];

    return (v3 & 0x8000000000000000) == 0 && v3 >= *(v1 + 48);
  }

  return result;
}

uint64_t sub_100002B7C()
{

  return sub_1000011A8(1);
}

id sub_100002BC4()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

uint64_t sub_100002BE8()
{

  return _os_log_send_and_compose_impl();
}

id sub_100003034(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = qword_1000EB228;
  qword_1000EB228 = v2;

  v4 = qword_1000EB228;

  return [v4 setSwitchState:0];
}

void sub_1000030C4(id a1)
{
  qword_1000EB238 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RDServer];

  _objc_release_x1();
}

void sub_100003150(id a1)
{
  qword_1000EB248 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BDKeybagd];

  _objc_release_x1();
}

void sub_100003460(uint64_t a1)
{
  v2 = [*(a1 + 32) pid];
  v7 = [NSNumber numberWithInt:v2];
  v3 = [*(a1 + 40) pidsToClients];
  v4 = [v3 objectForKeyedSubscript:v7];

  if (v4)
  {
    NSLog(@"We already have a client for pid: %d", v2);
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) pidsToClients];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }
}

void sub_1000035C8(uint64_t a1)
{
  v2 = [*(a1 + 32) pid];
  v3 = [*(a1 + 40) _clientForPID:v2];

  if (v3)
  {
    if ([*(a1 + 32) hasUserSwitchTasks])
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D00();
      }

      v4 = qword_1000EB268;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = sub_1000011A8(1);
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 &= ~1u;
        }

        if (v5)
        {
          v6 = *(a1 + 32);
          v7 = v4;
          v8 = [v6 userSwitchTasks];
          v14 = 138412546;
          v15 = v8;
          v16 = 1024;
          v17 = v2;
          LODWORD(v13) = 18;
          v12 = &v14;
          v9 = _os_log_send_and_compose_impl();

          if (v9)
          {
            sub_100002A8C(v9);
          }
        }

        else
        {
          v9 = 0;
        }

        free(v9);
      }
    }

    v10 = [*(a1 + 40) pidsToClients];
    v11 = [NSNumber numberWithInt:v2];
    [v10 setObject:0 forKeyedSubscript:v11];

    if ([*(a1 + 40) switchState] == 1)
    {
      [*(a1 + 40) _checkIfWeShouldSwitchUser:dword_1000EB5B8 == 3];
    }
  }
}

void sub_10000386C(uint64_t a1)
{
  v2 = [*(a1 + 32) pid];
  v7 = [NSNumber numberWithInt:v2];
  v3 = [*(a1 + 40) pidsToClients];
  v4 = [v3 objectForKeyedSubscript:v7];

  if (v4)
  {
    NSLog(@"We already have a client for pid: %d", v2);
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) pidsToClients];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }
}

void sub_1000039D4(uint64_t a1)
{
  v2 = [*(a1 + 32) pid];
  v3 = [*(a1 + 40) _clientForPID:v2];

  if (v3)
  {
    v5 = [*(a1 + 40) pidsToClients];
    v4 = [NSNumber numberWithInt:v2];
    [v5 setObject:0 forKeyedSubscript:v4];
  }
}

void sub_100003FBC(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  v3 = sub_1000024A8(qword_1000EB608);
  v4 = [v3 pathForPID:*(a1 + 48) error:0];

  if (qword_1000EB280 != -1)
  {
    sub_100088D14();
  }

  v5 = qword_1000EB278;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1000011A8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v16 = *(a1 + 48);
      v8 = _os_log_send_and_compose_impl();
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if (!v2)
  {
    goto LABEL_29;
  }

  if ([*(a1 + 32) switchState])
  {
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:16 userInfo:0];
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v10);
  if (!v10)
  {
    [v2 setStakeholderIsRegistered:1];
    [v2 setSwitchStakeHolderKind:0];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v11 = qword_1000EB268;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v17 = *(a1 + 48);
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

LABEL_29:
    v10 = 0;
  }
}

void sub_100004340(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (v2)
  {
    v3 = sub_1000024A8(qword_1000EB608);
    v4 = [v3 pathForPID:*(a1 + 48) error:0];

    if (qword_1000EB280 != -1)
    {
      sub_100088D14();
    }

    v5 = qword_1000EB278;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 0;
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = *(a1 + 48);
        LODWORD(v26) = 67109378;
        HIDWORD(v26) = v8;
        v27 = 2114;
        v28 = v4;
        LODWORD(v25) = 18;
        v24 = &v26;
        v9 = _os_log_send_and_compose_impl();
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }

    if (![*(a1 + 32) switchState] || dword_1000EB5B8 == 3)
    {
      [v2 setCriticalStakeHolder:{1, v24, v25}];
      [v2 setSwitchStakeHolderKind:1];
      v17 = 0;
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v11 = qword_1000EB268;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 0;
        v12 = sub_1000011A8(1);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 &= ~1u;
        }

        if (v12)
        {
          v13 = *(a1 + 32);
          v14 = v11;
          v15 = [v13 switchState];
          LODWORD(v29) = 67109120;
          HIDWORD(v29) = v15;
          v16 = _os_log_send_and_compose_impl();

          if (v16)
          {
            sub_100002A8C(v16);
          }
        }

        else
        {
          v16 = 0;
        }

        free(v16);
      }

      v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:16 userInfo:0];
    }

    (*(*(a1 + 40) + 16))();
    if (!v17)
    {
      [v2 setStakeholderIsRegistered:1];
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v18 = qword_1000EB268;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 0;
        v19 = sub_1000011A8(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v21 = *(a1 + 48);
          LODWORD(v29) = 67109120;
          HIDWORD(v29) = v21;
          v22 = _os_log_send_and_compose_impl();
          v23 = v22;
          if (v22)
          {
            sub_100002A8C(v22);
          }
        }

        else
        {
          v23 = 0;
        }

        free(v23);
      }
    }
  }
}

void sub_1000047D0(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (!v2)
  {
    goto LABEL_35;
  }

  v3 = sub_1000024A8(qword_1000EB608);
  v4 = [v3 pathForPID:*(a1 + 48) error:0];

  if (qword_1000EB280 != -1)
  {
    sub_100088D14();
  }

  v5 = qword_1000EB278;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 0;
    v6 = sub_1000011A8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = *(a1 + 48);
      LODWORD(v24) = 67109378;
      HIDWORD(v24) = v8;
      v25 = 2114;
      v26 = v4;
      LODWORD(v23) = 18;
      v22 = &v24;
      v9 = _os_log_send_and_compose_impl();
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  if ([v2 hasEntitlement:@"com.apple.mobile.keybagd.UserManager.bubblepop"])
  {
    if (![*(a1 + 32) switchState])
    {
      v12 = 0;
      goto LABEL_18;
    }

    v11 = 16;
  }

  else
  {
    v11 = 1;
  }

  v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v11 userInfo:0, v22, v23];
LABEL_18:
  (*(*(a1 + 40) + 16))();
  if (!v12)
  {
    [v2 setStakeholderIsRegistered:1];
    [v2 setBubblePopstakeholderIsRegistered:1];
    [v2 setSwitchStakeHolderKind:3];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v13 = qword_1000EB268;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 0;
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v16 = *(a1 + 48);
        LODWORD(v27) = 67109120;
        HIDWORD(v27) = v16;
        v17 = _os_log_send_and_compose_impl();
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    v19 = [*(a1 + 32) bubbleStakeHolder];

    v20 = *(a1 + 32);
    if (v19)
    {
      v21 = [v20 bubbleStakeHolder];
      [v21 bubbleShouldPop];
    }

    else
    {
      [v20 _broadcastBubbleDidPop];
    }
  }

LABEL_35:
}

void sub_100004E5C(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  if (v2)
  {
    v3 = sub_1000024A8(qword_1000EB608);
    v4 = [v3 pathForPID:*(a1 + 56) error:0];

    if (qword_1000EB280 != -1)
    {
      sub_100088D14();
    }

    v5 = qword_1000EB278;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 0;
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = *(a1 + 56);
        v9 = *(a1 + 40);
        LODWORD(v32) = 67109634;
        HIDWORD(v32) = v8;
        v33 = 2114;
        v34 = v4;
        v35 = 2114;
        v36 = v9;
        LODWORD(v31) = 28;
        v30 = &v32;
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    if (([v2 hasEntitlement:@"com.apple.mobile.keybagd.UserManager.sync"] & 1) == 0)
    {
      v12 = NSPOSIXErrorDomain;
      v13 = 1;
      goto LABEL_17;
    }

    if ([*(a1 + 32) switchState])
    {
LABEL_15:
      v12 = NSPOSIXErrorDomain;
      v13 = 16;
LABEL_17:
      v14 = [NSError errorWithDomain:v12 code:v13 userInfo:0, v30, v31];
LABEL_18:
      (*(*(a1 + 48) + 16))(*(a1 + 48), v14);

      goto LABEL_19;
    }

    v15 = sub_100088F2C(qword_1000EB608);
    if (sub_100089A48(v15))
    {
      v16 = sub_100088F2C(qword_1000EB608);
      if (sub_100089AC4(v16) == 502)
      {

LABEL_34:
        [v2 setMachServiceName:{*(a1 + 40), v30, v31}];
        sub_100033AB0(*(a1 + 40));
        [v2 setStakeholderIsRegistered:1];
        [v2 setSwitchStakeHolderKind:2];
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v24 = qword_1000EB268;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 0;
          v25 = sub_1000011A8(1);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v25;
          }

          else
          {
            v26 = v25 & 0xFFFFFFFE;
          }

          if (v26)
          {
            v27 = *(a1 + 56);
            LODWORD(v37) = 67109120;
            HIDWORD(v37) = v27;
            v28 = _os_log_send_and_compose_impl();
            v29 = v28;
            if (v28)
            {
              sub_100002A8C(v28);
            }
          }

          else
          {
            v29 = 0;
          }

          free(v29);
        }

        v14 = 0;
        goto LABEL_18;
      }

      v23 = [*(a1 + 32) inLoginSession];

      if ((v23 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v17 = [*(a1 + 32) inLoginSession];

      if (!v17)
      {
        goto LABEL_34;
      }
    }

    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v18 = qword_1000EB268;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        LOWORD(v37) = 0;
        LODWORD(v31) = 2;
        v30 = &v37;
        v21 = _os_log_send_and_compose_impl();
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    goto LABEL_15;
  }

LABEL_19:
}

void sub_100005328(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  v3 = sub_1000024A8(qword_1000EB608);
  v4 = [v3 pathForPID:*(a1 + 48) error:0];

  if (qword_1000EB280 != -1)
  {
    sub_100088D14();
  }

  v5 = qword_1000EB278;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v40 = 0;
    v6 = sub_1000011A8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = *(a1 + 48);
      LODWORD(v37) = 67109378;
      HIDWORD(v37) = v8;
      v38 = 2114;
      v39 = v4;
      LODWORD(v36) = 18;
      v35 = &v37;
      v9 = _os_log_send_and_compose_impl();
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  if (v2)
  {
    v11 = [v2 machServiceName];

    if (v11)
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v12 = qword_1000EB268;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 0;
        v13 = sub_1000011A8(1);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
          LOWORD(v40) = 0;
          LODWORD(v36) = 2;
          v35 = &v40;
          v15 = _os_log_send_and_compose_impl();
          v16 = v15;
          if (v15)
          {
            sub_100002A8C(v15);
          }
        }

        else
        {
          v16 = 0;
        }

        free(v16);
      }

      if ((*(a1 + 40) | 2) == 2)
      {
        v17 = [v2 machServiceName];
        sub_1000344A8(v17);

        v11 = 0;
      }

      else
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v18 = qword_1000EB268;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v37 = 0;
          v19 = sub_1000011A8(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v19;
          }

          else
          {
            v20 = v19 & 0xFFFFFFFE;
          }

          if (v20)
          {
            LOWORD(v40) = 0;
            LODWORD(v36) = 2;
            v35 = &v40;
            v21 = _os_log_send_and_compose_impl();
            v22 = v21;
            if (v21)
            {
              sub_100002A8C(v21);
            }
          }

          else
          {
            v22 = 0;
          }

          free(v22);
        }

        v23 = [v2 machServiceName];
        sub_100033AB0(v23);

        v11 = [*(a1 + 32) fetchUserSyncTaskList];
        if ([v11 count])
        {
          sub_100034A90(v11);
        }
      }
    }

    if ([v2 bubblePopstakeholderIsRegistered])
    {
      sub_10001A30C();
    }

    [v2 setStakeholderIsRegistered:0];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v24 = qword_1000EB268;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        LOWORD(v40) = 0;
        v27 = _os_log_send_and_compose_impl();
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    [*(a1 + 32) _checkIfWeShouldSwitchUser:0];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v29 = qword_1000EB268;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 0;
      v30 = sub_1000011A8(1);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
        v32 = *(a1 + 48);
        LODWORD(v40) = 67109120;
        HIDWORD(v40) = v32;
        v33 = _os_log_send_and_compose_impl();
        v34 = v33;
        if (v33)
        {
          sub_100002A8C(v33);
        }
      }

      else
      {
        v34 = 0;
      }

      free(v34);
    }
  }
}

void sub_1000058A8(id a1)
{
  v1 = qword_1000EB258;
  qword_1000EB258 = &off_1000E15B8;
}

void sub_100005E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 152), 8);
  _Block_object_dispose((v28 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005EAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100005EC4(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 104)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = &off_1000EB000;
  v4 = qword_1000EB268;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v80 = 0;
    v5 = sub_1000011A8(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFE;
    }

    if (v6)
    {
      LOWORD(v78[0]) = 0;
      LODWORD(v72) = 2;
      v70 = v78;
      v7 = _os_log_send_and_compose_impl();
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (([v2 hasEntitlement:@"com.apple.mkb.usersession.switch"] & 1) == 0 && (_os_feature_enabled_impl() & 1) == 0)
  {
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v10 = *(*(a1 + 72) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  if ([*(a1 + 32) inLogoutProcess])
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v12 = qword_1000EB268;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v80 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        LOWORD(v78[0]) = 0;
        LODWORD(v73) = 2;
        v71 = v78;
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }

    v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:16 userInfo:0];
    v23 = *(*(a1 + 72) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    goto LABEL_38;
  }

  if (!sub_10001A8EC())
  {
LABEL_38:
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v25 = qword_1000EB268;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v78[0] = 0;
      v26 = sub_1000011A8(1);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 &= ~1u;
      }

      if (v26)
      {
        v27 = v25;
        v28 = sub_10001B570();
        LODWORD(v80) = 67109376;
        HIDWORD(v80) = v28;
        v81 = 1024;
        v82 = dword_1000EB5B8;
        LODWORD(v73) = 14;
        v71 = &v80;
        v29 = _os_log_send_and_compose_impl();

        if (v29)
        {
          sub_100002A8C(v29);
        }
      }

      else
      {
        v29 = 0;
      }

      free(v29);
    }

    v30 = sub_10001B570();
    v31 = sub_1000023E8(*(a1 + 40), kUMUserSessionIDKey);
    v32 = *(a1 + 64);
    if (v30 != v31 || dword_1000EB5B8 == 1)
    {
      (*(v32 + 16))(v32, *(*(*(a1 + 72) + 8) + 40));
      if (!*(*(*(a1 + 72) + 8) + 40))
      {
        if (*(a1 + 48))
        {
          if (qword_1000EB270 != -1)
          {
            sub_100088D28();
          }

          v33 = qword_1000EB268;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v80 = 0;
            v34 = sub_1000011A8(1);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v35 = v34;
            }

            else
            {
              v35 = v34 & 0xFFFFFFFE;
            }

            if (v35)
            {
              LOWORD(v78[0]) = 0;
              LODWORD(v73) = 2;
              v71 = v78;
              v36 = _os_log_send_and_compose_impl();
              v37 = v36;
              if (v36)
              {
                sub_100002A8C(v36);
              }
            }

            else
            {
              v37 = 0;
            }

            free(v37);
          }

          v41 = objc_opt_new();
          v42 = [*(a1 + 32) _allowlistedPreferencesKeys];
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v43 = *(a1 + 48);
          v44 = [v43 countByEnumeratingWithState:&v74 objects:v79 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v75;
            do
            {
              for (i = 0; i != v45; i = i + 1)
              {
                if (*v75 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                v48 = *(*(&v74 + 1) + 8 * i);
                if ([v42 containsObject:{v48, v71, v73, v74}])
                {
                  v49 = [*(a1 + 48) objectForKeyedSubscript:v48];
                  [v41 setObject:v49 forKeyedSubscript:v48];
                }
              }

              v45 = [v43 countByEnumeratingWithState:&v74 objects:v79 count:16];
            }

            while (v45);
          }

          if ([v41 count])
          {
            v50 = sub_10001FF2C(*(a1 + 40));
            if (v50)
            {
              _CFPreferencesWriteUserPreferencesWithCorrectOwner();
              CFPreferencesSetMultiple(v41, 0, kCFPreferencesAnyApplication, v50, kCFPreferencesAnyHost);
              v3 = &off_1000EB000;
            }

            else
            {
              v3 = &off_1000EB000;
              if (qword_1000EB270 != -1)
              {
                sub_100088D28();
              }

              v55 = qword_1000EB268;
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v80 = 0;
                v56 = sub_1000011A8(1);
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  v57 = v56;
                }

                else
                {
                  v57 = v56 & 0xFFFFFFFE;
                }

                if (v57)
                {
                  LOWORD(v78[0]) = 0;
                  LODWORD(v73) = 2;
                  v71 = v78;
                  v58 = _os_log_send_and_compose_impl();
                  v59 = v58;
                  if (v58)
                  {
                    sub_100002A8C(v58);
                  }
                }

                else
                {
                  v59 = 0;
                }

                free(v59);
              }
            }
          }

          else
          {
            v3 = &off_1000EB000;
            if (qword_1000EB270 != -1)
            {
              sub_100088D28();
            }

            v50 = qword_1000EB268;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v80 = 0;
              v51 = sub_1000011A8(1);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                v52 = v51;
              }

              else
              {
                v52 = v51 & 0xFFFFFFFE;
              }

              if (v52)
              {
                LOWORD(v78[0]) = 0;
                LODWORD(v73) = 2;
                v71 = v78;
                v53 = _os_log_send_and_compose_impl();
                v54 = v53;
                if (v53)
                {
                  sub_100002A8C(v53);
                }
              }

              else
              {
                v54 = 0;
              }

              free(v54);
            }
          }
        }

        v60 = [NSMutableData dataWithBytes:*(*(*(a1 + 88) + 8) + 24) length:*(a1 + 96), v71, v73];
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v61 = v3[77];
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v80 = 0;
          v62 = sub_1000011A8(1);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v63 = v62;
          }

          else
          {
            v63 = v62 & 0xFFFFFFFE;
          }

          if (v63)
          {
            LOWORD(v78[0]) = 0;
            v64 = _os_log_send_and_compose_impl();
            v65 = v64;
            if (v64)
            {
              sub_100002A8C(v64);
            }
          }

          else
          {
            v65 = 0;
          }

          free(v65);
        }

        sub_10002E2B0(*(a1 + 40), v60, *(a1 + 56));
      }
    }

    else
    {
      (*(v32 + 16))(v32, 0);
    }

    goto LABEL_115;
  }

  if (qword_1000EB280 != -1)
  {
    sub_100088D64();
  }

  v17 = qword_1000EB278;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v80 = 0;
    v18 = sub_1000011A8(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (v19)
    {
      LOWORD(v78[0]) = 0;
      v20 = _os_log_send_and_compose_impl();
      v21 = v20;
      if (v20)
      {
        sub_100002A8C(v20);
      }
    }

    else
    {
      v21 = 0;
    }

    free(v21);
  }

  v38 = [NSError errorWithDomain:NSPOSIXErrorDomain code:37 userInfo:0];
  v39 = *(*(a1 + 72) + 8);
  v40 = *(v39 + 40);
  *(v39 + 40) = v38;

LABEL_115:
  v66 = *(*(*(a1 + 80) + 8) + 24);
  if (v66)
  {
    v67 = mach_task_self_;
    v68 = vm_page_size;
    if (vm_page_size >= *(a1 + 96))
    {
      v69 = *(a1 + 96);
    }

    else
    {
      v69 = vm_page_size;
    }

    memset_s(v66, v69, 0, v69);
    vm_deallocate(v67, v66, v68);
  }
}

void sub_100006974(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      LOWORD(v31[0]) = 0;
      LODWORD(v30) = 2;
      v29 = v31;
      v6 = _os_log_send_and_compose_impl();
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  if ([v2 hasEntitlement:@"com.apple.mkb.usersession.loginwindow"])
  {
    v8 = 0;
  }

  else
  {
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  }

  if ([*(a1 + 32) inLogoutProcess] && dword_1000EB5B8 != 1)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v9 = qword_1000EB268;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v31[0] = 67109120;
        v31[1] = dword_1000EB5B8;
        v12 = _os_log_send_and_compose_impl();
        v13 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

    v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:16 userInfo:0];

    v8 = v19;
    goto LABEL_39;
  }

  if (!sub_10001A8EC())
  {
LABEL_39:
    v20 = sub_10001B570();
    v21 = *(a1 + 40);
    v22 = *(v21 + 16);
    if (v20 == 502)
    {
      v22(v21, 0);
    }

    else
    {
      v22(v21, v8);
      if (!v8)
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v23 = qword_1000EB268;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = sub_1000011A8(1);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
          }

          else
          {
            v25 = v24 & 0xFFFFFFFE;
          }

          if (v25)
          {
            LOWORD(v31[0]) = 0;
            v26 = _os_log_send_and_compose_impl();
            v27 = v26;
            if (v26)
            {
              sub_100002A8C(v26);
            }
          }

          else
          {
            v27 = 0;
          }

          free(v27);
        }

        sub_10002E8EC();
        v8 = 0;
      }
    }

    goto LABEL_57;
  }

  if (qword_1000EB280 != -1)
  {
    sub_100088D64();
  }

  v14 = qword_1000EB278;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = sub_1000011A8(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      LOWORD(v31[0]) = 0;
      v17 = _os_log_send_and_compose_impl();
      v18 = v17;
      if (v17)
      {
        sub_100002A8C(v17);
      }
    }

    else
    {
      v18 = 0;
    }

    free(v18);
  }

  v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:37 userInfo:0];

  v8 = v28;
LABEL_57:
}

void sub_100006EB8(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      LOWORD(v39) = 0;
      LODWORD(v38) = 2;
      v37 = &v39;
      v6 = _os_log_send_and_compose_impl();
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  if (![v2 hasEntitlement:@"com.apple.mkb.usersession.loginwindow"])
  {
    v14 = 1;
    goto LABEL_37;
  }

  if (([*(a1 + 32) inLogoutProcess] & 1) != 0 || sub_10001B570() == 502)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v8 = qword_1000EB268;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1000011A8(1);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 &= ~1u;
      }

      if (v9)
      {
        v10 = *(a1 + 32);
        v11 = v8;
        v12 = [v10 inLogoutProcess];
        v39 = 67109120;
        v40 = v12;
        LODWORD(v38) = 8;
        v37 = &v39;
        v13 = _os_log_send_and_compose_impl();

        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

    v14 = 16;
LABEL_37:
    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v14 userInfo:0, v37, v38];
    if (v20)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (!sub_10001A8EC())
  {
LABEL_38:
    if (sub_10001B570() != 502)
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v22 = qword_1000EB268;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = sub_1000011A8(1);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          LOWORD(v39) = 0;
          v25 = _os_log_send_and_compose_impl();
          v26 = v25;
          if (v25)
          {
            sub_100002A8C(v25);
          }
        }

        else
        {
          v26 = 0;
        }

        free(v26);
      }

      if (sub_10002E93C())
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v27 = qword_1000EB268;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = sub_1000011A8(1);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v28;
          }

          else
          {
            v29 = v28 & 0xFFFFFFFE;
          }

          if (v29)
          {
            v39 = 67109120;
            v40 = dword_1000EB5B8;
            v30 = _os_log_send_and_compose_impl();
            v31 = v30;
            if (v30)
            {
              sub_100002A8C(v30);
            }
          }

          else
          {
            v31 = 0;
          }

          free(v31);
        }

        v20 = 0;
      }

      else
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v32 = qword_1000EB268;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = sub_1000011A8(1);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v33;
          }

          else
          {
            v34 = v33 & 0xFFFFFFFE;
          }

          if (v34)
          {
            v39 = 67109120;
            v40 = dword_1000EB5B8;
            v35 = _os_log_send_and_compose_impl();
            v36 = v35;
            if (v35)
            {
              sub_100002A8C(v35);
            }
          }

          else
          {
            v36 = 0;
          }

          free(v36);
        }

        v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      }

      v21 = *(*(a1 + 40) + 16);
      goto LABEL_78;
    }

    v20 = 0;
LABEL_40:
    v21 = *(*(a1 + 40) + 16);
LABEL_78:
    v21();
    goto LABEL_79;
  }

  if (qword_1000EB280 != -1)
  {
    sub_100088D64();
  }

  v15 = qword_1000EB278;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = sub_1000011A8(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      LOWORD(v39) = 0;
      v18 = _os_log_send_and_compose_impl();
      v19 = v18;
      if (v18)
      {
        sub_100002A8C(v18);
      }
    }

    else
    {
      v19 = 0;
    }

    free(v19);
  }

  v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:37 userInfo:0];
LABEL_79:
}

void sub_10000798C(uint64_t a1)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v2 = qword_1000EB268;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  if ([*(a1 + 32) inLogoutProcess])
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v7 = qword_1000EB268;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    [NSError errorWithDomain:NSPOSIXErrorDomain code:16 userInfo:0];
  }

  else
  {
    sub_10002A280();
  }
}

void sub_100007C28(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      LOWORD(v45) = 0;
      LODWORD(v44) = 2;
      v43 = &v45;
      v6 = _os_log_send_and_compose_impl();
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  if ([v2 hasEntitlement:@"com.apple.mkb.usersession.loginwindow"])
  {
    v8 = sub_100088F2C(qword_1000EB608);
    if (sub_100089A48(v8))
    {
      v9 = sub_100088F2C(qword_1000EB608);
      v10 = sub_100089AC4(v9);

      if (v10 == 502)
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v11 = qword_1000EB268;
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_78;
        }

        v46 = 0;
        v12 = sub_1000011A8(1);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFE;
        }

        if (v13)
        {
          LOWORD(v45) = 0;
          goto LABEL_74;
        }

LABEL_76:
        v36 = 0;
LABEL_77:
        free(v36);
        goto LABEL_78;
      }
    }

    else
    {
    }

    if ([*(a1 + 32) inLoginSession])
    {
      v19 = dword_1000EB5BC;
      dword_1000EB5BC = 1;
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v20 = qword_1000EB268;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v45 = 0;
        v21 = sub_1000011A8(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
        }

        else
        {
          v22 = v21 & 0xFFFFFFFE;
        }

        if (v22)
        {
          LODWORD(v46) = 67109376;
          HIDWORD(v46) = v19;
          v47 = 1024;
          v48 = dword_1000EB5BC;
          v23 = _os_log_send_and_compose_impl();
          v24 = v23;
          if (v23)
          {
            sub_100002A8C(v23);
          }
        }

        else
        {
          v24 = 0;
        }

        free(v24);
      }

      sub_100018C80();
      if (v19 == dword_1000EB5BC)
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v28 = qword_1000EB268;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 0;
          v29 = sub_1000011A8(1);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v30 = v29;
          }

          else
          {
            v30 = v29 & 0xFFFFFFFE;
          }

          if (v30)
          {
            LOWORD(v45) = 0;
            v31 = _os_log_send_and_compose_impl();
            v32 = v31;
            if (v31)
            {
              sub_100002A8C(v31);
            }
          }

          else
          {
            v32 = 0;
          }

          free(v32);
        }

        v37 = sub_100018084(502);
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v38 = qword_1000EB268;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 0;
          v39 = sub_1000011A8(1);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v40 = v39;
          }

          else
          {
            v40 = v39 & 0xFFFFFFFE;
          }

          if (v40)
          {
            LOWORD(v45) = 0;
            v41 = _os_log_send_and_compose_impl();
            v42 = v41;
            if (v41)
            {
              sub_100002A8C(v41);
            }
          }

          else
          {
            v42 = 0;
          }

          free(v42);
        }

        sub_10002E9D8(v37, 0);
        goto LABEL_79;
      }

      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v11 = qword_1000EB268;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_78:

LABEL_79:
        v27 = 0;
        goto LABEL_80;
      }

      v46 = 0;
      v33 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (!v34)
      {
        goto LABEL_76;
      }

      LOWORD(v45) = 0;
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v11 = qword_1000EB268;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_78;
      }

      v46 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (!v26)
      {
        goto LABEL_76;
      }

      LOWORD(v45) = 0;
    }

LABEL_74:
    v35 = _os_log_send_and_compose_impl();
    v36 = v35;
    if (v35)
    {
      sub_100002A8C(v35);
    }

    goto LABEL_77;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v14 = qword_1000EB268;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 0;
    v15 = sub_1000011A8(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      LOWORD(v45) = 0;
      v17 = _os_log_send_and_compose_impl();
      v18 = v17;
      if (v17)
      {
        sub_100002A8C(v17);
      }
    }

    else
    {
      v18 = 0;
    }

    free(v18);
  }

  v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
LABEL_80:
  (*(*(a1 + 40) + 16))();
}

void sub_1000083C0(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (!v2)
  {
    goto LABEL_35;
  }

  v3 = sub_1000024A8(qword_1000EB608);
  v4 = [v3 pathForPID:*(a1 + 48) error:0];

  if (qword_1000EB280 != -1)
  {
    sub_100088D14();
  }

  v5 = qword_1000EB278;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 0;
    v6 = sub_1000011A8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = *(a1 + 48);
      LODWORD(v24) = 67109378;
      HIDWORD(v24) = v8;
      v25 = 2114;
      v26 = v4;
      LODWORD(v23) = 18;
      v22 = &v24;
      v9 = _os_log_send_and_compose_impl();
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  if ([v2 hasEntitlement:@"com.apple.mobile.keybagd.UserManager.bubblepop"])
  {
    if (![*(a1 + 32) switchState])
    {
      v12 = 0;
      goto LABEL_18;
    }

    v11 = 16;
  }

  else
  {
    v11 = 1;
  }

  v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v11 userInfo:0, v22, v23];
LABEL_18:
  (*(*(a1 + 40) + 16))();
  if (!v12)
  {
    [v2 setBubblePopstakeholderIsRegistered:1];
    [v2 setSwitchStakeHolderKind:3];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v13 = qword_1000EB268;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 0;
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v16 = *(a1 + 48);
        LODWORD(v27) = 67109120;
        HIDWORD(v27) = v16;
        v17 = _os_log_send_and_compose_impl();
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    v19 = [*(a1 + 32) bubbleStakeHolder];

    v20 = *(a1 + 32);
    if (v19)
    {
      v21 = [v20 bubbleStakeHolder];
      [v21 bubbleShouldPop];
    }

    else
    {
      [v20 _broadcastBubbleDidPop];
    }
  }

LABEL_35:
}

void sub_100008794(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  v3 = sub_1000024A8(qword_1000EB608);
  v4 = [v3 pathForPID:*(a1 + 48) error:0];

  if (qword_1000EB280 != -1)
  {
    sub_100088D14();
  }

  v5 = qword_1000EB278;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1000011A8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v10 = *(a1 + 48);
      v8 = _os_log_send_and_compose_impl();
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if (v2)
  {
    [v2 setBubblePopstakeholderIsRegistered:0];
    sub_10001A30C();
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0);
}

void sub_1000089FC(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  [v2 setBubbleStakeHolder:1];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v14 = *(a1 + 52);
      v6 = _os_log_send_and_compose_impl();
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  v8 = sub_1000308D8(*(a1 + 52));
  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v9 = qword_1000EB268;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1000011A8(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v12 = _os_log_send_and_compose_impl();
      v13 = v12;
      if (v12)
      {
        sub_100002A8C(v12);
      }
    }

    else
    {
      v13 = 0;
    }

    free(v13);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v8);
}

void sub_100008CF0(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  [v2 setBubbleStakeHolder:1];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = _os_log_send_and_compose_impl();
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  sub_100034A2C(*(a1 + 52), *(a1 + 40));
}

void sub_100008E8C(uint64_t a1)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v2 = qword_1000EB268;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = *(a1 + 48);
      v10[0] = 67109120;
      v10[1] = v5;
      LODWORD(v9) = 8;
      v8 = v10;
      v6 = _os_log_send_and_compose_impl();
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  sub_10002C904(*(a1 + 48), 1);
  if (*(a1 + 40) == 1)
  {
    sub_10001BD58(*(a1 + 48));
  }

  [*(a1 + 32) _broadcastBubbleDidPop];
  sub_10001A30C();
}

void sub_100008FF0(id a1, RDClient *a2, BOOL *a3)
{
  v3 = a2;
  if ([(RDClient *)v3 bubblePopstakeholderIsRegistered])
  {
    [(RDClient *)v3 bubbleDidPop];
  }
}

void sub_100009C1C(uint64_t a1)
{
  if (qword_1000EB280 != -1)
  {
    sub_100088D14();
  }

  v2 = qword_1000EB278;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(0);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 &= ~1u;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      v18 = [v4 logoutTimer];
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = [*(a1 + 32) logoutTimer];
  dispatch_source_cancel(v7);

  [*(a1 + 32) setLogoutTimer:0];
  if ([*(a1 + 32) switchState] == 1 && objc_msgSend(*(a1 + 32), "switchState") != 2)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v13 = qword_1000EB268;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    [*(a1 + 32) _reallySwitchUser:0];
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v8 = qword_1000EB268;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1000011A8(1);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 &= ~1u;
      }

      if (v9)
      {
        v10 = *(a1 + 32);
        v11 = v8;
        [v10 switchState];
        v12 = _os_log_send_and_compose_impl();

        if (v12)
        {
          sub_100002A8C(v12);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }
  }
}

void sub_100009F70(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 stakeholderIsRegistered])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000A004;
    v5[3] = &unk_1000DCFF8;
    v4 = *(a1 + 32);
    v5[4] = *(a1 + 40);
    [v3 willSwitchToUser:v4 completionHandler:v5];
  }
}

void sub_10000A004(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A084;
  block[3] = &unk_1000DCFF8;
  block[4] = *(a1 + 32);
  dispatch_async(qword_1000EB610, block);
}

id sub_10000A084(uint64_t a1)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v2 = qword_1000EB268;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  return [*(a1 + 32) _checkIfWeShouldSwitchUser:0];
}

void sub_10000A8F8(uint64_t a1)
{
  if (qword_1000EB280 != -1)
  {
    sub_100088D14();
  }

  v2 = qword_1000EB278;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(0);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 &= ~1u;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      v18 = [v4 logoutTimer];
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = [*(a1 + 32) logoutTimer];
  dispatch_source_cancel(v7);

  [*(a1 + 32) setLogoutTimer:0];
  if ([*(a1 + 32) switchState] == 1)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v8 = qword_1000EB268;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = _os_log_send_and_compose_impl();
        v12 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }

    [*(a1 + 32) _reallySwitchUser:1];
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v13 = qword_1000EB268;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }
  }
}

void sub_10000AC0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 stakeholderIsRegistered])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000ACA0;
    v5[3] = &unk_1000DCFF8;
    v4 = *(a1 + 32);
    v5[4] = *(a1 + 40);
    [v3 willSwitchToUser:v4 completionHandler:v5];
  }
}

void sub_10000ACA0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AD20;
  block[3] = &unk_1000DCFF8;
  block[4] = *(a1 + 32);
  dispatch_async(qword_1000EB610, block);
}

id sub_10000AD20(uint64_t a1)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v2 = qword_1000EB268;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  return [*(a1 + 32) _checkIfWeShouldSwitchUser:1];
}

void sub_10000B188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B1C0(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = sub_1000024A8(qword_1000EB608);
  v7 = [v6 pathForPID:objc_msgSend(v5 error:{"pid"), 0}];

  if ([v5 stakeholderIsRegistered] && ((objc_msgSend(v5, "hasUserSwitchTasks") & 1) != 0 || (objc_msgSend(v5, "wasToldWillSwitchUser") & 1) == 0))
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D14();
    }

    v13 = qword_1000EB278;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_1000011A8(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v16 = v13;
        [v5 stakeholderIsRegistered];
        [v5 wasToldWillSwitchUser];
        [v5 hasUserSwitchTasks];
        [v5 pid];
        v17 = _os_log_send_and_compose_impl();

        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  else
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D14();
    }

    v8 = qword_1000EB278;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1000011A8(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v11 = v8;
        [v5 stakeholderIsRegistered];
        [v5 wasToldWillSwitchUser];
        [v5 hasUserSwitchTasks];
        [v5 pid];
        v12 = _os_log_send_and_compose_impl();

        if (v12)
        {
          sub_100002A8C(v12);
        }
      }

      else
      {
        v12 = 0;
      }

      free(v12);
    }
  }
}

void sub_10000C24C(id a1, RDClient *a2, BOOL *a3)
{
  v4 = a2;
  v5 = [(RDClient *)v4 machServiceName];

  if (v5)
  {
    v6 = [(RDClient *)v4 userSyncTasks];
    v7 = [v6 count];

    if (v7)
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D00();
      }

      v8 = qword_1000EB268;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = sub_1000011A8(1);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
        }

        else
        {
          v10 = v9 & 0xFFFFFFFE;
        }

        if (v10)
        {
          v11 = v8;
          v12 = [(RDClient *)v4 machServiceName];
          v13 = [(RDClient *)v4 userSyncTasks];
          v30 = 138412546;
          *v31 = v12;
          *&v31[8] = 2112;
          *&v31[10] = v13;
          LODWORD(v29) = 22;
          v28 = &v30;
          v14 = _os_log_send_and_compose_impl();

          if (v14)
          {
            sub_100002A8C(v14);
          }
        }

        else
        {
          v14 = 0;
        }

        free(v14);
      }

      v20 = [(RDClient *)v4 machServiceName];
      sub_100033AB0(v20);
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D00();
      }

      v15 = qword_1000EB268;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = sub_1000011A8(1);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 &= ~1u;
        }

        if (v16)
        {
          v17 = v15;
          v18 = [(RDClient *)v4 machServiceName];
          v30 = 138412290;
          *v31 = v18;
          LODWORD(v29) = 12;
          v28 = &v30;
          v19 = _os_log_send_and_compose_impl();

          if (v19)
          {
            sub_100002A8C(v19);
          }
        }

        else
        {
          v19 = 0;
        }

        free(v19);
      }

      v20 = [(RDClient *)v4 machServiceName];
      sub_1000344A8(v20);
    }

    sub_10002A458();
  }

  if ([(RDClient *)v4 stakeholderIsRegistered:v28]&& [(RDClient *)v4 hasUserSwitchTasks]&& [(RDClient *)v4 wasToldWillSwitchUser])
  {
    v21 = sub_1000024A8(qword_1000EB608);
    v22 = [v21 pathForPID:-[RDClient pid](v4 error:{"pid"), 0}];

    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v23 = qword_1000EB278;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = sub_1000011A8(0);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 &= ~1u;
      }

      if (v24)
      {
        v25 = v23;
        v26 = [(RDClient *)v4 pid];
        v30 = 67109378;
        *v31 = v26;
        *&v31[4] = 2114;
        *&v31[6] = v22;
        v27 = _os_log_send_and_compose_impl();

        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    *a3 = 0;
  }
}

void sub_10000C678(uint64_t a1)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v2 = qword_1000EB268;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v35[0] = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      LOWORD(v34) = 0;
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v7 = qword_1000EB268;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v35[0] = 0;
    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      LOWORD(v34) = 0;
      v10 = _os_log_send_and_compose_impl();
      v11 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  [*(a1 + 32) setSwitchState:0];
  dword_1000EB5B8 = 1;
  sub_100018C80();
  [*(a1 + 32) _broadcastDeviceLoginSessionStateDidUpdate];
  v12 = [*(a1 + 32) fastLogoutTimer];

  if (v12)
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v13 = qword_1000EB278;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 0;
      v14 = sub_1000011A8(0);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 &= ~1u;
      }

      if (v14)
      {
        v15 = *(a1 + 32);
        v16 = v13;
        [v15 fastLogoutTimer];
        *(v35 + 4) = LODWORD(v35[0]) = 134217984;
        v17 = _os_log_send_and_compose_impl();

        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v18 = qword_1000EB268;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v35[0] = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        LOWORD(v34) = 0;
        v21 = _os_log_send_and_compose_impl();
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v23 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_1000EB610);
    [*(a1 + 32) setFastLogoutTimer:v23];

    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v24 = qword_1000EB278;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 0;
      v25 = sub_1000011A8(0);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 &= ~1u;
      }

      if (v25)
      {
        v26 = *(a1 + 32);
        v27 = v24;
        [v26 fastLogoutTimer];
        *(v35 + 4) = LODWORD(v35[0]) = 134217984;
        v28 = _os_log_send_and_compose_impl();

        if (v28)
        {
          sub_100002A8C(v28);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    v29 = [*(a1 + 32) fastLogoutTimer];
    v30 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v29, v30, 0xFFFFFFFFFFFFFFFFLL, 0);

    v31 = [*(a1 + 32) fastLogoutTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000CC28;
    handler[3] = &unk_1000DCFF8;
    handler[4] = *(a1 + 32);
    dispatch_source_set_event_handler(v31, handler);

    v32 = [*(a1 + 32) fastLogoutTimer];
    dispatch_activate(v32);
  }
}

void sub_10000CC28(uint64_t a1)
{
  if (qword_1000EB280 != -1)
  {
    sub_100088D14();
  }

  v2 = qword_1000EB278;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(0);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 &= ~1u;
    }

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = v2;
      v22 = [v4 fastLogoutTimer];
      v6 = _os_log_send_and_compose_impl();

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = [*(a1 + 32) fastLogoutTimer];
  dispatch_source_cancel(v7);

  [*(a1 + 32) setFastLogoutTimer:0];
  if (![*(a1 + 32) switchState])
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v13 = qword_1000EB268;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    if (sub_10002E8EC() == 1)
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v8 = qword_1000EB268;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (!v19)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v8 = qword_1000EB268;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      v20 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (!v21)
      {
        goto LABEL_49;
      }
    }

    v12 = _os_log_send_and_compose_impl();
    if (!v12)
    {
LABEL_50:
      free(v12);
      goto LABEL_51;
    }

LABEL_48:
    sub_100002A8C(v12);
    goto LABEL_50;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v8 = qword_1000EB268;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_1000011A8(1);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= ~1u;
    }

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v8;
      [v10 switchState];
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

LABEL_49:
    v12 = 0;
    goto LABEL_50;
  }

LABEL_51:
}

uint64_t sub_10000D074(uint64_t a1)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v2 = qword_1000EB268;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  v7 = *(a1 + 32);
  if (CFDictionaryContainsKey(v7, @"UserSwitchTaskOpqueData"))
  {
    Value = CFDictionaryGetValue(v7, @"UserSwitchTaskOpqueData");
    v9 = CFRetain(Value);
    CFDictionaryRemoveValue(v7, @"UserSwitchTaskOpqueData");
  }

  else
  {
    v9 = 0;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v10 = qword_1000EB268;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_1000011A8(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      v13 = _os_log_send_and_compose_impl();
      v14 = v13;
      if (v13)
      {
        sub_100002A8C(v13);
      }
    }

    else
    {
      v14 = 0;
    }

    free(v14);
  }

  return sub_10002E9D8(v7, v9);
}

void sub_10000D35C(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  if (v2)
  {
    v3 = sub_1000024A8(qword_1000EB608);
    v4 = [v3 pathForPID:*(a1 + 56) error:0];

    if (qword_1000EB280 != -1)
    {
      sub_100088D14();
    }

    v5 = qword_1000EB278;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v16 = *(a1 + 56);
        v18 = *(a1 + 40);
        v8 = _os_log_send_and_compose_impl();
        v9 = v8;
        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {
        v9 = 0;
      }

      free(v9);
    }

    [v2 addUserSwitchTask:*(a1 + 40)];
    [*(a1 + 32) _broadcastUserSwitchTaskListDidUpdate];
    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v10 = qword_1000EB278;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1000011A8(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v17 = *(a1 + 56);
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, 0);
  }
}

void sub_10000D6D4(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  if (v2)
  {
    v3 = sub_1000024A8(qword_1000EB608);
    v4 = [v3 pathForPID:*(a1 + 56) error:0];

    if (qword_1000EB280 != -1)
    {
      sub_100088D14();
    }

    v5 = qword_1000EB278;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 0;
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = *(a1 + 56);
        v9 = *(a1 + 40);
        LODWORD(v27) = 67109634;
        HIDWORD(v27) = v8;
        v28 = 2114;
        v29 = v4;
        v30 = 2112;
        v31 = v9;
        LODWORD(v25) = 28;
        v24 = &v27;
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    if ([v2 removeUserSwitchTask:*(a1 + 40)])
    {
      [*(a1 + 32) _broadcastUserSwitchTaskListDidUpdate];
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v12 = qword_1000EB268;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 0;
        v13 = sub_1000011A8(1);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
          LOWORD(v26) = 0;
          LODWORD(v25) = 2;
          v24 = &v26;
          v15 = _os_log_send_and_compose_impl();
          v16 = v15;
          if (v15)
          {
            sub_100002A8C(v15);
          }
        }

        else
        {
          v16 = 0;
        }

        free(v16);
      }

      [*(a1 + 32) _checkIfWeShouldSwitchUser:{dword_1000EB5B8 == 3, v24, v25, v26}];
      if (qword_1000EB280 != -1)
      {
        sub_100088D64();
      }

      v17 = qword_1000EB278;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 0;
        v18 = sub_1000011A8(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          v20 = *(a1 + 56);
          LODWORD(v27) = 67109378;
          HIDWORD(v27) = v20;
          v28 = 2114;
          v29 = v4;
          v21 = _os_log_send_and_compose_impl();
          v22 = v21;
          if (v21)
          {
            sub_100002A8C(v21);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }
    }
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    (*(v23 + 16))(v23, 0);
  }
}

void sub_10000DA68(id a1, RDClient *a2, BOOL *a3)
{
  v3 = a2;
  if ([(RDClient *)v3 stakeholderIsRegistered]&& [(RDClient *)v3 criticalStakeHolder])
  {
    [(RDClient *)v3 userSwitchTaskListDidUpdate];
  }
}

void sub_10000DAC8(id a1, RDClient *a2, BOOL *a3)
{
  v3 = a2;
  if ([(RDClient *)v3 stakeholderIsRegistered]&& [(RDClient *)v3 criticalStakeHolder])
  {
    [(RDClient *)v3 deviceLoginSessionStateDidUpdate];
  }
}

void sub_10000DBBC(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DC78;
  v5[3] = &unk_1000DD160;
  v6 = v2;
  v4 = v2;
  [v3 _enumerateClientsWithBlock:v5];
  (*(*(a1 + 40) + 16))();
}

void sub_10000DC78(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 userSwitchTasks];
  [v2 addObjectsFromArray:v3];
}

void sub_10000DD7C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 userSyncTasks];
  [v2 addObjectsFromArray:v3];
}

void sub_10000DE80(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 userSwitchTasks];
  [v2 addObjectsFromArray:v3];
}

void sub_10000DFBC(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 machServiceName];

    if (v4)
    {
      v5 = sub_1000024A8(qword_1000EB608);
      v6 = [v5 pathForPID:*(a1 + 56) error:0];

      if (qword_1000EB280 != -1)
      {
        sub_100088D14();
      }

      v7 = qword_1000EB278;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = sub_1000011A8(0);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
        }

        else
        {
          v9 = v8 & 0xFFFFFFFE;
        }

        if (v9)
        {
          v21 = *(a1 + 56);
          v22 = *(a1 + 40);
          v10 = _os_log_send_and_compose_impl();
          v11 = v10;
          if (v10)
          {
            sub_100002A8C(v10);
          }
        }

        else
        {
          v11 = 0;
        }

        free(v11);
      }

      [v3 addUserSyncTask:*(a1 + 40)];
      v12 = [v3 userSyncTasks];
      v13 = [v12 count];

      if (v13 == 1)
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v14 = qword_1000EB268;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = sub_1000011A8(1);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v15;
          }

          else
          {
            v16 = v15 & 0xFFFFFFFE;
          }

          if (v16)
          {
            v17 = _os_log_send_and_compose_impl();
            v18 = v17;
            if (v17)
            {
              sub_100002A8C(v17);
            }
          }

          else
          {
            v18 = 0;
          }

          free(v18);
        }

        v19 = [v3 machServiceName];
        sub_100033AB0(v19);
      }
    }
  }

  v20 = *(a1 + 48);
  if (v20)
  {
    (*(v20 + 16))(v20, 0);
  }
}

void sub_10000E364(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  if (v2)
  {
    v3 = sub_1000024A8(qword_1000EB608);
    v4 = [v3 pathForPID:*(a1 + 56) error:0];

    if (qword_1000EB280 != -1)
    {
      sub_100088D14();
    }

    v5 = qword_1000EB278;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v19 = *(a1 + 56);
        v20 = *(a1 + 40);
        v8 = _os_log_send_and_compose_impl();
        v9 = v8;
        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {
        v9 = 0;
      }

      free(v9);
    }

    [v2 removeUserSyncTask:*(a1 + 40)];
    v10 = [v2 userSyncTasks];
    v11 = [v10 count];

    if (!v11)
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v12 = qword_1000EB268;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = sub_1000011A8(1);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
          v15 = _os_log_send_and_compose_impl();
          v16 = v15;
          if (v15)
          {
            sub_100002A8C(v15);
          }
        }

        else
        {
          v16 = 0;
        }

        free(v16);
      }

      v17 = [v2 machServiceName];
      sub_1000344A8(v17);
    }
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    (*(v18 + 16))(v18, 0);
  }
}

uint64_t sub_10000E6B8(uint64_t a1)
{
  [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  objc_claimAutoreleasedReturnValue();
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  return _objc_release_x1();
}

uint64_t sub_10000E7D0(uint64_t a1)
{
  [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  objc_claimAutoreleasedReturnValue();
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  return _objc_release_x1();
}

void sub_10000EED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10000EF28(uint64_t a1)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v2 = qword_1000EB268;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v100 = 0;
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = *(a1 + 88);
      LODWORD(v110) = 67109120;
      HIDWORD(v110) = v5;
      LODWORD(v96) = 8;
      v95 = &v110;
      v6 = _os_log_send_and_compose_impl();
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  v8 = [*(a1 + 32) _clientForPID:*(a1 + 88)];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 hasEntitlement:@"com.apple.usermanagerd.persona.create"];
  }

  else
  {
    v10 = [*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.create"];
  }

  if (v10)
  {
    if (*(a1 + 40))
    {
      if (*(a1 + 80) < 2uLL)
      {
        v110 = 0;
        v111 = &v110;
        v112 = 0x2020000000;
        v113 = 0;
        v100 = 0;
        v101 = &v100;
        v102 = 0x3032000000;
        v103 = sub_100005EAC;
        v104 = sub_100005EBC;
        v105 = 0;
        if (*(a1 + 72))
        {
          v11 = [NSMutableData dataWithBytes:*(*(*(a1 + 64) + 8) + 24) length:?];
        }

        else
        {
          v11 = 0;
        }

        v34 = *(*(*(a1 + 56) + 8) + 24);
        if (v34)
        {
          v35 = mach_task_self_;
          v36 = vm_page_size;
          if (vm_page_size >= *(a1 + 72))
          {
            v37 = *(a1 + 72);
          }

          else
          {
            v37 = vm_page_size;
          }

          memset_s(v34, v37, 0, v37);
          vm_deallocate(v35, v34, v36);
        }

        if (*(a1 + 80) == 1)
        {
          *v108 = 0;
          *&v108[8] = v108;
          *&v108[16] = 0x2020000000;
          v109 = 0;
          v38 = v11;
          v39 = ACMContextCreateWithExternalForm([v11 bytes], objc_msgSend(v11, "length"));
          v40 = v39;
          if (!v39)
          {
            if (qword_1000EB270 != -1)
            {
              sub_100088D28();
            }

            v51 = qword_1000EB268;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v99 = 0;
              v52 = sub_1000011A8(1);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                v53 = v52;
              }

              else
              {
                v53 = v52 & 0xFFFFFFFE;
              }

              if (v53)
              {
                LOWORD(v106) = 0;
                v54 = _os_log_send_and_compose_impl();
                v55 = v54;
                if (v54)
                {
                  sub_100002A8C(v54);
                }
              }

              else
              {
                v55 = 0;
              }

              free(v55);
            }

            v93 = *(a1 + 48);
            if (v93)
            {
              v94 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
              (*(v93 + 16))(v93, 0, v94);
            }

            if (v11)
            {
              [v11 resetBytesInRange:{0, objc_msgSend(v11, "length")}];
            }

            goto LABEL_185;
          }

          v98[0] = _NSConcreteStackBlock;
          v98[1] = 3221225472;
          v98[2] = sub_10000FEE8;
          v98[3] = &unk_1000DD1D8;
          v98[4] = v108;
          v98[5] = &v100;
          v98[6] = &v110;
          ACMContextCredentialGetProperty(v39, 0xDu, 0x2BDu, v98);
          v41 = ACMContextDelete(v40, 0);
          if (v41)
          {
            if (qword_1000EB270 != -1)
            {
              sub_100088D28();
            }

            v42 = qword_1000EB268;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v99 = 0;
              v43 = sub_1000011A8(1);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v44 = v43;
              }

              else
              {
                v44 = v43 & 0xFFFFFFFE;
              }

              if (v44)
              {
                v106 = 67109120;
                v107 = v41;
                LODWORD(v96) = 8;
                v95 = &v106;
                v45 = _os_log_send_and_compose_impl();
                v46 = v45;
                if (v45)
                {
                  sub_100002A8C(v45);
                }
              }

              else
              {
                v46 = 0;
              }

              free(v46);
            }
          }

          if (*(*&v108[8] + 24))
          {
            if (qword_1000EB270 != -1)
            {
              sub_100088D28();
            }

            v56 = qword_1000EB268;
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              v99 = 0;
              v57 = sub_1000011A8(1);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                v58 = v57;
              }

              else
              {
                v58 = v57 & 0xFFFFFFFE;
              }

              if (v58)
              {
                v59 = *(*&v108[8] + 24);
                v106 = 67109120;
                v107 = v59;
                v60 = _os_log_send_and_compose_impl();
                v61 = v60;
                if (v60)
                {
                  sub_100002A8C(v60);
                }
              }

              else
              {
                v61 = 0;
              }

              free(v61);
            }

            v90 = *(a1 + 48);
            if (v90)
            {
              v91 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
              (*(v90 + 16))(v90, 0, v91);
            }

            if (v11)
            {
              [v11 resetBytesInRange:{0, objc_msgSend(v11, "length")}];
            }

LABEL_185:
            _Block_object_dispose(v108, 8);
LABEL_186:
            _Block_object_dispose(&v100, 8);

            _Block_object_dispose(&v110, 8);
            goto LABEL_187;
          }

          _Block_object_dispose(v108, 8);
        }

        v106 = 0;
        v97 = -1;
        v62 = [*(a1 + 32) asidForClient:v9 withAuid:&v97 withPid:{*(a1 + 88), v95, v96}];
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v63 = qword_1000EB268;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v99 = 0;
          v64 = sub_1000011A8(1);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            v65 = v64;
          }

          else
          {
            v65 = v64 & 0xFFFFFFFE;
          }

          if (v65)
          {
            v66 = *(a1 + 40);
            v67 = *(a1 + 88);
            *v108 = 138412802;
            *&v108[4] = v66;
            *&v108[12] = 1024;
            *&v108[14] = v67;
            *&v108[18] = 1024;
            *&v108[20] = v62;
            v68 = _os_log_send_and_compose_impl();
            v69 = v68;
            if (v68)
            {
              sub_100002A8C(v68);
            }
          }

          else
          {
            v69 = 0;
          }

          free(v69);
        }

        v70 = sub_100001458(v62, v97, *(a1 + 92));
        v71 = v11;
        if (*(v111 + 24) == 1)
        {
          v71 = v101[5];
        }

        v72 = sub_100044AA8(*(a1 + 40), v71, v70, 1, &v106);
        if (*(v111 + 24) == 1)
        {
          [v101[5] resetBytesInRange:{0, objc_msgSend(v101[5], "length")}];
        }

        if (v11)
        {
          [v11 resetBytesInRange:{0, objc_msgSend(v11, "length")}];
        }

        if (v72 || !v106)
        {
          if (v72)
          {
            if (qword_1000EB270 != -1)
            {
              sub_100088D28();
            }

            v78 = qword_1000EB268;
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              v99 = 0;
              v79 = sub_1000011A8(1);
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                v80 = v79;
              }

              else
              {
                v80 = v79 & 0xFFFFFFFE;
              }

              if (v80)
              {
                *v108 = 138412290;
                *&v108[4] = v72;
                v81 = _os_log_send_and_compose_impl();
                v82 = v81;
                if (v81)
                {
                  sub_100002A8C(v81);
                }
              }

              else
              {
                v82 = 0;
              }

              free(v82);
            }

            [*(a1 + 32) _broadcastPersonaUpdates:v70 withAuid:v97];
          }

          v92 = *(a1 + 48);
          if (v92)
          {
            (*(v92 + 16))(v92, v72, 0);
          }
        }

        else
        {
          if (qword_1000EB270 != -1)
          {
            sub_100088D28();
          }

          v73 = qword_1000EB268;
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            *v108 = 0;
            v74 = sub_1000011A8(1);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              v75 = v74;
            }

            else
            {
              v75 = v74 & 0xFFFFFFFE;
            }

            if (v75)
            {
              LOWORD(v99) = 0;
              v76 = _os_log_send_and_compose_impl();
              v77 = v76;
              if (v76)
              {
                sub_100002A8C(v76);
              }
            }

            else
            {
              v77 = 0;
            }

            free(v77);
          }

          v83 = *(a1 + 48);
          if (v83)
          {
            v84 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v106 userInfo:0];
            (*(v83 + 16))(v83, 0, v84);
          }

          if (qword_1000EB270 != -1)
          {
            sub_100088D28();
          }

          v85 = qword_1000EB268;
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            *v108 = 0;
            v86 = sub_1000011A8(1);
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
            {
              v87 = v86;
            }

            else
            {
              v87 = v86 & 0xFFFFFFFE;
            }

            if (v87)
            {
              LOWORD(v99) = 0;
              v88 = _os_log_send_and_compose_impl();
              v89 = v88;
              if (v88)
              {
                sub_100002A8C(v88);
              }
            }

            else
            {
              v89 = 0;
            }

            free(v89);
          }
        }

        goto LABEL_186;
      }

      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v23 = qword_1000EB268;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v100 = 0;
        v24 = sub_1000011A8(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
        }

        else
        {
          v25 = v24 & 0xFFFFFFFE;
        }

        if (v25)
        {
          LOWORD(v110) = 0;
          v26 = _os_log_send_and_compose_impl();
          v27 = v26;
          if (v26)
          {
            sub_100002A8C(v26);
          }
        }

        else
        {
          v27 = 0;
        }

        free(v27);
      }

      v49 = *(a1 + 48);
      if (v49)
      {
        v50 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        (*(v49 + 16))(v49, 0, v50);
      }

      v30 = *(*(*(a1 + 56) + 8) + 24);
      if (v30)
      {
        v31 = mach_task_self_;
        v32 = vm_page_size;
        if (vm_page_size >= *(a1 + 72))
        {
          v33 = *(a1 + 72);
        }

        else
        {
          v33 = vm_page_size;
        }

LABEL_89:
        memset_s(v30, v33, 0, v33);
        vm_deallocate(v31, v30, v32);
      }
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v18 = qword_1000EB268;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v100 = 0;
        v19 = sub_1000011A8(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          LOWORD(v110) = 0;
          v21 = _os_log_send_and_compose_impl();
          v22 = v21;
          if (v21)
          {
            sub_100002A8C(v21);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }

      v47 = *(a1 + 48);
      if (v47)
      {
        v48 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        (*(v47 + 16))(v47, 0, v48);
      }

      v30 = *(*(*(a1 + 56) + 8) + 24);
      if (v30)
      {
        v31 = mach_task_self_;
        v32 = vm_page_size;
        if (vm_page_size >= *(a1 + 72))
        {
          v33 = *(a1 + 72);
        }

        else
        {
          v33 = vm_page_size;
        }

        goto LABEL_89;
      }
    }
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v12 = qword_1000EB268;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v100 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = *(a1 + 88);
        LODWORD(v110) = 67109120;
        HIDWORD(v110) = v15;
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    v28 = *(a1 + 48);
    if (v28)
    {
      v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
      (*(v28 + 16))(v28, 0, v29);
    }

    v30 = *(*(*(a1 + 56) + 8) + 24);
    if (v30)
    {
      v31 = mach_task_self_;
      v32 = vm_page_size;
      if (vm_page_size >= *(a1 + 72))
      {
        v33 = *(a1 + 72);
      }

      else
      {
        v33 = vm_page_size;
      }

      goto LABEL_89;
    }
  }

LABEL_187:
}

void sub_10000FE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10000FEE8(void *a1, int a2)
{
  *(*(a1[4] + 8) + 24) = a2;
  if (!*(*(a1[4] + 8) + 24))
  {
    v3 = [NSMutableData dataWithBytes:"dataWithBytes:length:" length:?];
    v4 = *(a1[5] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    *(*(a1[6] + 8) + 24) = 1;
  }
}

void sub_100010194(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  v41 = -1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v40 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 56);
      v42 = 67109120;
      v43 = v6;
      LODWORD(v39) = 8;
      v38 = &v42;
      v7 = _os_log_send_and_compose_impl();
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (v2)
  {
    if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.delete"])
    {
      goto LABEL_14;
    }

LABEL_26:
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v18 = qword_1000EB268;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v21 = *(a1 + 56);
        v42 = 67109120;
        v43 = v21;
        LODWORD(v39) = 8;
        v38 = &v42;
        v22 = _os_log_send_and_compose_impl();
        v23 = v22;
        if (v22)
        {
          sub_100002A8C(v22);
        }
      }

      else
      {
        v23 = 0;
      }

      free(v23);
    }

    v34 = NSPOSIXErrorDomain;
    v35 = 1;
    goto LABEL_62;
  }

  if (([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.delete"] & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_14:
  if (!*(a1 + 40))
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v24 = qword_1000EB268;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        LOWORD(v42) = 0;
        LODWORD(v39) = 2;
        v38 = &v42;
        v27 = _os_log_send_and_compose_impl();
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    v34 = NSPOSIXErrorDomain;
    v35 = 22;
LABEL_62:
    v36 = [NSError errorWithDomain:v34 code:v35 userInfo:0, v38, v39, v40];
    goto LABEL_67;
  }

  v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v41 withPid:*(a1 + 56)];
  v10 = sub_100001458(v9, v41, *(a1 + 60));
  v11 = sub_100044EE0(*(a1 + 40), v10);
  if (v11)
  {
    v12 = v11;
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v13 = qword_1000EB268;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v42 = 67109120;
        v43 = v12;
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:0];
  }

  else
  {
    [*(a1 + 32) _broadcastPersonaUpdates:v10 withAuid:v41];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v29 = qword_1000EB268;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = sub_1000011A8(1);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
        LOWORD(v42) = 0;
        v32 = _os_log_send_and_compose_impl();
        v33 = v32;
        if (v32)
        {
          sub_100002A8C(v32);
        }
      }

      else
      {
        v33 = 0;
      }

      free(v33);
    }

    v36 = 0;
  }

LABEL_67:
  v37 = *(a1 + 48);
  if (v37)
  {
    (*(v37 + 16))(v37, v36);
  }
}

void sub_100010930(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  v41 = -1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v40 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 56);
      v42 = 67109120;
      v43 = v6;
      LODWORD(v39) = 8;
      v38 = &v42;
      v7 = _os_log_send_and_compose_impl();
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (v2)
  {
    if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.delete"])
    {
      goto LABEL_14;
    }

LABEL_26:
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v18 = qword_1000EB268;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v21 = *(a1 + 56);
        v42 = 67109120;
        v43 = v21;
        LODWORD(v39) = 8;
        v38 = &v42;
        v22 = _os_log_send_and_compose_impl();
        v23 = v22;
        if (v22)
        {
          sub_100002A8C(v22);
        }
      }

      else
      {
        v23 = 0;
      }

      free(v23);
    }

    v34 = NSPOSIXErrorDomain;
    v35 = 1;
    goto LABEL_62;
  }

  if (([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.delete"] & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_14:
  if (!*(a1 + 40))
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v24 = qword_1000EB268;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        LOWORD(v42) = 0;
        LODWORD(v39) = 2;
        v38 = &v42;
        v27 = _os_log_send_and_compose_impl();
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    v34 = NSPOSIXErrorDomain;
    v35 = 22;
LABEL_62:
    v36 = [NSError errorWithDomain:v34 code:v35 userInfo:0, v38, v39, v40];
    goto LABEL_67;
  }

  v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v41 withPid:*(a1 + 56)];
  v10 = sub_100001458(v9, v41, *(a1 + 60));
  v11 = sub_10004740C(*(a1 + 40), v10);
  if (v11)
  {
    v12 = v11;
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v13 = qword_1000EB268;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v42 = 67109120;
        v43 = v12;
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:0];
  }

  else
  {
    [*(a1 + 32) _broadcastPersonaUpdates:v10 withAuid:v41];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v29 = qword_1000EB268;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = sub_1000011A8(1);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
        LOWORD(v42) = 0;
        v32 = _os_log_send_and_compose_impl();
        v33 = v32;
        if (v32)
        {
          sub_100002A8C(v32);
        }
      }

      else
      {
        v33 = 0;
      }

      free(v33);
    }

    v36 = 0;
  }

LABEL_67:
  v37 = *(a1 + 48);
  if (v37)
  {
    (*(v37 + 16))(v37, v36);
  }
}

void sub_100010F78(uint64_t a1)
{
  v40 = -1;
  v41 = 0;
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (qword_1000EB290 != -1)
  {
    sub_100088D8C();
  }

  v3 = qword_1000EB288;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v42 = 0;
    v4 = sub_1000011A8(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 48);
      LODWORD(v49) = 67109120;
      HIDWORD(v49) = v6;
      LODWORD(v39) = 8;
      v38 = &v49;
      v7 = _os_log_send_and_compose_impl();
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (*(a1 + 40))
  {
    if (v2)
    {
      if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.fetch"])
      {
LABEL_15:
        v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v40 withPid:{*(a1 + 48), v38, v39}];
        if (qword_1000EB290 != -1)
        {
          sub_100088DA0();
        }

        v10 = qword_1000EB288;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v49 = 0;
          v11 = sub_1000011A8(0);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v12 = v11;
          }

          else
          {
            v12 = v11 & 0xFFFFFFFE;
          }

          if (v12)
          {
            v13 = *(a1 + 48);
            LODWORD(v42) = 67109376;
            HIDWORD(v42) = v13;
            v43 = 1024;
            v44 = v9;
            v14 = _os_log_send_and_compose_impl();
            v15 = v14;
            if (v14)
            {
              sub_100002A8C(v14);
            }
          }

          else
          {
            v15 = 0;
          }

          free(v15);
        }

        v28 = sub_100001458(v9, v40, *(a1 + 52));
        v16 = sub_100002B68(v28, &v41);
        if (v16)
        {
          (*(*(a1 + 40) + 16))(*(a1 + 40), v16);
        }

        else
        {
          if (qword_1000EB290 != -1)
          {
            sub_100088DA0();
          }

          v29 = qword_1000EB288;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v49 = 0;
            v30 = sub_1000011A8(0);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v31 = v30;
            }

            else
            {
              v31 = v30 & 0xFFFFFFFE;
            }

            if (v31)
            {
              v32 = *(a1 + 48);
              LODWORD(v42) = 67109890;
              HIDWORD(v42) = v32;
              v43 = 1024;
              v44 = v9;
              v45 = 2114;
              v46 = v28;
              v47 = 1024;
              v48 = v41;
              v33 = _os_log_send_and_compose_impl();
              v34 = v33;
              if (v33)
              {
                sub_100002A8C(v33);
              }
            }

            else
            {
              v34 = 0;
            }

            free(v34);
          }

          v36 = *(a1 + 40);
          v37 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v41 userInfo:0];
          (*(v36 + 16))(v36, 0, v37);
        }

        goto LABEL_65;
      }
    }

    else if ([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"])
    {
      goto LABEL_15;
    }

    if (qword_1000EB290 != -1)
    {
      sub_100088DA0();
    }

    v22 = qword_1000EB288;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v42 = 0;
      v23 = sub_1000011A8(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v25 = *(a1 + 48);
        LODWORD(v49) = 67109120;
        HIDWORD(v49) = v25;
        v26 = _os_log_send_and_compose_impl();
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v35 = *(a1 + 40);
    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    (*(v35 + 16))(v35, 0, v16);
  }

  else
  {
    if (qword_1000EB290 != -1)
    {
      sub_100088DA0();
    }

    v16 = qword_1000EB288;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v42 = 0;
      v17 = sub_1000011A8(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        v19 = *(a1 + 48);
        LODWORD(v49) = 67109120;
        HIDWORD(v49) = v19;
        v20 = _os_log_send_and_compose_impl();
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }
  }

LABEL_65:
}

void sub_100011600(uint64_t a1)
{
  HIDWORD(v39) = 0;
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v40 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 48);
      LODWORD(v43) = 67109120;
      HIDWORD(v43) = v6;
      LODWORD(v39) = 8;
      v38 = &v43;
      v7 = _os_log_send_and_compose_impl();
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (*(a1 + 40))
  {
    if (v2)
    {
      if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.fetch"])
      {
LABEL_15:
        if (qword_1000EB290 != -1)
        {
          sub_100088DA0();
        }

        v9 = qword_1000EB288;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v40 = 0;
          v10 = sub_1000011A8(0);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v11 = v10;
          }

          else
          {
            v11 = v10 & 0xFFFFFFFE;
          }

          if (v11)
          {
            v12 = *(a1 + 48);
            LODWORD(v43) = 67109120;
            HIDWORD(v43) = v12;
            LODWORD(v39) = 8;
            v38 = &v43;
            v13 = _os_log_send_and_compose_impl();
            v14 = v13;
            if (v13)
            {
              sub_100002A8C(v13);
            }
          }

          else
          {
            v14 = 0;
          }

          free(v14);
        }

        v27 = sub_100047940(&v39 + 1);
        if (v27)
        {
          v15 = v27;
          v28 = *(*(a1 + 40) + 16);
LABEL_65:
          v28();
          goto LABEL_66;
        }

        if (qword_1000EB290 != -1)
        {
          sub_100088DA0();
        }

        v29 = qword_1000EB288;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v43 = 0;
          v30 = sub_1000011A8(0);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v30;
          }

          else
          {
            v31 = v30 & 0xFFFFFFFE;
          }

          if (v31)
          {
            v32 = *(a1 + 48);
            LODWORD(v40) = 67109376;
            HIDWORD(v40) = v32;
            v41 = 1024;
            v42 = HIDWORD(v39);
            LODWORD(v39) = 14;
            v38 = &v40;
            v33 = _os_log_send_and_compose_impl();
            v34 = v33;
            if (v33)
            {
              sub_100002A8C(v33);
            }
          }

          else
          {
            v34 = 0;
          }

          free(v34);
        }

        v35 = *(a1 + 40);
        v36 = NSPOSIXErrorDomain;
        v37 = SHIDWORD(v39);
LABEL_64:
        v15 = [NSError errorWithDomain:v36 code:v37 userInfo:0, v38, v39, v40];
        v28 = *(v35 + 16);
        goto LABEL_65;
      }
    }

    else if ([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"])
    {
      goto LABEL_15;
    }

    if (qword_1000EB290 != -1)
    {
      sub_100088DA0();
    }

    v21 = qword_1000EB288;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v40 = 0;
      v22 = sub_1000011A8(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        v24 = *(a1 + 48);
        LODWORD(v43) = 67109120;
        HIDWORD(v43) = v24;
        LODWORD(v39) = 8;
        v38 = &v43;
        v25 = _os_log_send_and_compose_impl();
        v26 = v25;
        if (v25)
        {
          sub_100002A8C(v25);
        }
      }

      else
      {
        v26 = 0;
      }

      free(v26);
    }

    v35 = *(a1 + 40);
    v36 = NSPOSIXErrorDomain;
    v37 = 1;
    goto LABEL_64;
  }

  if (qword_1000EB290 != -1)
  {
    sub_100088DA0();
  }

  v15 = qword_1000EB288;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v40 = 0;
    v16 = sub_1000011A8(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      v18 = *(a1 + 48);
      LODWORD(v43) = 67109120;
      HIDWORD(v43) = v18;
      v19 = _os_log_send_and_compose_impl();
      v20 = v19;
      if (v19)
      {
        sub_100002A8C(v19);
      }
    }

    else
    {
      v20 = 0;
    }

    free(v20);
  }

LABEL_66:
}

void sub_100011C10(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v20 = *(a1 + 48);
      v6 = _os_log_send_and_compose_impl();
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  if (v2)
  {
    if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.fetch"])
    {
LABEL_14:
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v8 = qword_1000EB268;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = sub_1000011A8(1);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v10 = v9;
        }

        else
        {
          v10 = v9 & 0xFFFFFFFE;
        }

        if (v10)
        {
          v11 = _os_log_send_and_compose_impl();
          v12 = v11;
          if (v11)
          {
            sub_100002A8C(v11);
          }
        }

        else
        {
          v12 = 0;
        }

        free(v12);
      }

      v17 = 45;
      goto LABEL_39;
    }
  }

  else if ([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"])
  {
    goto LABEL_14;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v8 = qword_1000EB268;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_1000011A8(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      v21 = *(a1 + 48);
      v15 = _os_log_send_and_compose_impl();
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  v17 = 1;
LABEL_39:

  v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v17 userInfo:0];
  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, 0, v18);
  }
}

void sub_10001205C(uint64_t a1)
{
  v47 = 0;
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  v46 = -1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v48 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 56);
      LODWORD(v53) = 67109120;
      HIDWORD(v53) = v6;
      LODWORD(v45) = 8;
      v44 = &v53;
      v7 = _os_log_send_and_compose_impl();
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (v2)
  {
    if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.fetch"])
    {
      goto LABEL_14;
    }

LABEL_25:
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v17 = qword_1000EB268;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v48 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v20 = *(a1 + 56);
        LODWORD(v53) = 67109120;
        HIDWORD(v53) = v20;
        LODWORD(v45) = 8;
        v44 = &v53;
        v21 = _os_log_send_and_compose_impl();
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v28 = NSPOSIXErrorDomain;
    v29 = 1;
    goto LABEL_73;
  }

  if (([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"] & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (!*(a1 + 40))
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v23 = qword_1000EB268;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *v48 = 0;
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        LOWORD(v53) = 0;
        LODWORD(v45) = 2;
        v44 = &v53;
        v26 = _os_log_send_and_compose_impl();
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v28 = NSPOSIXErrorDomain;
    v29 = 22;
LABEL_73:
    v37 = [NSError errorWithDomain:v28 code:v29 userInfo:0, v44, v45];
    v31 = 0;
    goto LABEL_77;
  }

  v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v46 withPid:*(a1 + 56)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v10 = qword_1000EB268;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v53 = 0;
    v11 = sub_1000011A8(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 56);
      *v48 = 138412802;
      *&v48[4] = v13;
      v49 = 1024;
      v50 = v14;
      v51 = 1024;
      v52 = v9;
      v15 = _os_log_send_and_compose_impl();
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  v30 = sub_100001458(v9, v46, *(a1 + 60));
  v31 = sub_100002B94(*(a1 + 40), v30, &v47);
  if (v31)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v32 = qword_1000EB268;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v53 = 0;
      v33 = sub_1000011A8(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        *v48 = 138412290;
        *&v48[4] = v31;
        v35 = _os_log_send_and_compose_impl();
        v36 = v35;
        if (v35)
        {
          sub_100002A8C(v35);
        }
      }

      else
      {
        v36 = 0;
      }

      free(v36);
    }

    v37 = 0;
  }

  else
  {
    v37 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v47 userInfo:0];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v32 = qword_1000EB268;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v53 = 0;
      v38 = sub_1000011A8(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 0xFFFFFFFE;
      }

      if (v39)
      {
        v40 = *(a1 + 56);
        *v48 = 138412802;
        *&v48[4] = v37;
        v49 = 1024;
        v50 = v40;
        v51 = 1024;
        v52 = v9;
        v41 = _os_log_send_and_compose_impl();
        v42 = v41;
        if (v41)
        {
          sub_100002A8C(v41);
        }
      }

      else
      {
        v42 = 0;
      }

      free(v42);
    }
  }

LABEL_77:
  v43 = *(a1 + 48);
  if (v43)
  {
    (*(v43 + 16))(v43, v31, v37);
  }
}

void sub_100012938(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 64)];
  HIDWORD(v44) = -1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v45 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 64);
      LODWORD(v48) = 67109120;
      HIDWORD(v48) = v6;
      LODWORD(v44) = 8;
      v43 = &v48;
      v7 = _os_log_send_and_compose_impl();
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (v2)
  {
    if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.setbundle"])
    {
      goto LABEL_14;
    }

LABEL_25:
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v17 = qword_1000EB268;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v20 = *(a1 + 64);
        LODWORD(v48) = 67109120;
        HIDWORD(v48) = v20;
        LODWORD(v44) = 8;
        v43 = &v48;
        v21 = _os_log_send_and_compose_impl();
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v28 = NSPOSIXErrorDomain;
    v29 = 1;
    goto LABEL_72;
  }

  if (([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.setbundle"] & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (!*(a1 + 40))
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v23 = qword_1000EB268;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        LOWORD(v48) = 0;
        LODWORD(v44) = 2;
        v43 = &v48;
        v26 = _os_log_send_and_compose_impl();
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v28 = NSPOSIXErrorDomain;
    v29 = 22;
LABEL_72:
    v32 = [NSError errorWithDomain:v28 code:v29 userInfo:0, v43, v44, *v45];
    goto LABEL_77;
  }

  v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v44 + 4 withPid:*(a1 + 64)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v10 = qword_1000EB268;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v48 = 0;
    v11 = sub_1000011A8(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      v13 = *(a1 + 64);
      v14 = *(a1 + 48);
      *v45 = 67109634;
      *&v45[4] = v13;
      *&v45[8] = 2112;
      *&v45[10] = v14;
      v46 = 1024;
      v47 = v9;
      v15 = _os_log_send_and_compose_impl();
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  v30 = sub_100001458(v9, HIDWORD(v44), *(a1 + 68));
  v31 = sub_1000479A8(*(a1 + 40), *(a1 + 48), v30);
  if (v31)
  {
    v32 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v31 userInfo:0];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v33 = qword_1000EB268;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v48 = 0;
      v34 = sub_1000011A8(1);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 & 0xFFFFFFFE;
      }

      if (v35)
      {
        *v45 = 138412290;
        *&v45[4] = v32;
        v36 = _os_log_send_and_compose_impl();
        v37 = v36;
        if (v36)
        {
          sub_100002A8C(v36);
        }
      }

      else
      {
        v37 = 0;
      }

      free(v37);
    }
  }

  else
  {
    [*(a1 + 32) _broadcastPersonaUpdates:v30 withAuid:HIDWORD(v44)];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v33 = qword_1000EB268;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *v45 = 0;
      v38 = sub_1000011A8(1);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 0xFFFFFFFE;
      }

      if (v39)
      {
        LOWORD(v48) = 0;
        v40 = _os_log_send_and_compose_impl();
        v41 = v40;
        if (v40)
        {
          sub_100002A8C(v40);
        }
      }

      else
      {
        v41 = 0;
      }

      free(v41);
    }

    v32 = 0;
  }

LABEL_77:
  v42 = *(a1 + 56);
  if (v42)
  {
    (*(v42 + 16))(v42, v32);
  }
}

void sub_100013094(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  v46 = -1;
  v47 = 2;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v48 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 56);
      LODWORD(v53) = 67109120;
      HIDWORD(v53) = v6;
      LODWORD(v45) = 8;
      v44 = &v53;
      v7 = _os_log_send_and_compose_impl();
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (v2)
  {
    if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.fetchbundle"])
    {
      goto LABEL_14;
    }

LABEL_25:
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v17 = qword_1000EB268;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v48 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v20 = *(a1 + 56);
        LODWORD(v53) = 67109120;
        HIDWORD(v53) = v20;
        LODWORD(v45) = 8;
        v44 = &v53;
        v21 = _os_log_send_and_compose_impl();
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v28 = NSPOSIXErrorDomain;
    v29 = 1;
    goto LABEL_73;
  }

  if (([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetchbundle"] & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (!*(a1 + 40))
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v23 = qword_1000EB268;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v48 = 0;
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        LOWORD(v53) = 0;
        LODWORD(v45) = 2;
        v44 = &v53;
        v26 = _os_log_send_and_compose_impl();
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v28 = NSPOSIXErrorDomain;
    v29 = 22;
LABEL_73:
    v38 = [NSError errorWithDomain:v28 code:v29 userInfo:0, v44, v45];
    v32 = 0;
    goto LABEL_77;
  }

  v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v46 withPid:*(a1 + 56)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v10 = qword_1000EB268;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v53 = 0;
    v11 = sub_1000011A8(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 56);
      *v48 = 138412802;
      *&v48[4] = v13;
      v49 = 1024;
      v50 = v14;
      v51 = 1024;
      v52 = v9;
      v15 = _os_log_send_and_compose_impl();
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  v30 = sub_100001458(v9, v46, *(a1 + 60));
  v31 = *(a1 + 40);
  v32 = sub_1000480DC();
  if (v32)
  {
    v47 = 0;
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v33 = qword_1000EB268;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v53 = 0;
      v34 = sub_1000011A8(1);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 & 0xFFFFFFFE;
      }

      if (v35)
      {
        *v48 = 138412290;
        *&v48[4] = v32;
        v36 = _os_log_send_and_compose_impl();
        v37 = v36;
        if (v36)
        {
          sub_100002A8C(v36);
        }
      }

      else
      {
        v37 = 0;
      }

      free(v37);
    }

    v38 = 0;
  }

  else
  {
    v38 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v47 userInfo:0];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v33 = qword_1000EB268;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v53 = 0;
      v39 = sub_1000011A8(1);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v39;
      }

      else
      {
        v40 = v39 & 0xFFFFFFFE;
      }

      if (v40)
      {
        *v48 = 138412290;
        *&v48[4] = v38;
        v41 = _os_log_send_and_compose_impl();
        v42 = v41;
        if (v41)
        {
          sub_100002A8C(v41);
        }
      }

      else
      {
        v42 = 0;
      }

      free(v42);
    }
  }

LABEL_77:
  v43 = *(a1 + 48);
  if (v43)
  {
    (*(v43 + 16))(v43, v32, v38);
  }
}

void sub_100013934(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  HIDWORD(v37) = -1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v38 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 56);
      LODWORD(v41) = 67109120;
      HIDWORD(v41) = v6;
      LODWORD(v37) = 8;
      v36 = &v41;
      v7 = _os_log_send_and_compose_impl();
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (v2)
  {
    if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.setbundle"])
    {
LABEL_14:
      v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v37 + 4 withPid:{*(a1 + 56), v36, v37}];
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v10 = qword_1000EB268;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v41 = 0;
        v11 = sub_1000011A8(1);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v12 = v11;
        }

        else
        {
          v12 = v11 & 0xFFFFFFFE;
        }

        if (v12)
        {
          v13 = *(a1 + 56);
          v14 = *(a1 + 40);
          *v38 = 67109634;
          *&v38[4] = v13;
          *&v38[8] = 2112;
          *&v38[10] = v14;
          v39 = 1024;
          v40 = v9;
          v15 = _os_log_send_and_compose_impl();
          v16 = v15;
          if (v15)
          {
            sub_100002A8C(v15);
          }
        }

        else
        {
          v16 = 0;
        }

        free(v16);
      }

      v23 = sub_100001458(v9, HIDWORD(v37), *(a1 + 60));
      v24 = sub_1000480F4(*(a1 + 40), v23);
      if (v24)
      {
        v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v24 userInfo:0];
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v26 = qword_1000EB268;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v41 = 0;
          v27 = sub_1000011A8(1);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v28 = v27;
          }

          else
          {
            v28 = v27 & 0xFFFFFFFE;
          }

          if (v28)
          {
            *v38 = 138412290;
            *&v38[4] = v25;
            v29 = _os_log_send_and_compose_impl();
            v30 = v29;
            if (v29)
            {
              sub_100002A8C(v29);
            }
          }

          else
          {
            v30 = 0;
          }

          free(v30);
        }
      }

      else
      {
        [*(a1 + 32) _broadcastPersonaUpdates:v23 withAuid:HIDWORD(v37)];
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v26 = qword_1000EB268;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *v38 = 0;
          v31 = sub_1000011A8(1);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v32 = v31;
          }

          else
          {
            v32 = v31 & 0xFFFFFFFE;
          }

          if (v32)
          {
            LOWORD(v41) = 0;
            v33 = _os_log_send_and_compose_impl();
            v34 = v33;
            if (v33)
            {
              sub_100002A8C(v33);
            }
          }

          else
          {
            v34 = 0;
          }

          free(v34);
        }

        v25 = 0;
      }

      goto LABEL_63;
    }
  }

  else if ([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.setbundle"])
  {
    goto LABEL_14;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v17 = qword_1000EB268;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v38 = 0;
    v18 = sub_1000011A8(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (v19)
    {
      v20 = *(a1 + 56);
      LODWORD(v41) = 67109120;
      HIDWORD(v41) = v20;
      v21 = _os_log_send_and_compose_impl();
      v22 = v21;
      if (v21)
      {
        sub_100002A8C(v21);
      }
    }

    else
    {
      v22 = 0;
    }

    free(v22);
  }

  v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
LABEL_63:
  v35 = *(a1 + 48);
  if (v35)
  {
    (*(v35 + 16))(v35, v25);
  }
}

void sub_100013F90(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  v38 = -1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v39 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 48);
      LODWORD(v40) = 67109120;
      HIDWORD(v40) = v6;
      LODWORD(v37) = 8;
      v36 = &v40;
      v7 = _os_log_send_and_compose_impl();
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if (v2)
  {
    if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.fetchbundle"])
    {
LABEL_14:
      v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v38 withPid:{*(a1 + 48), v36, v37}];
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v10 = qword_1000EB268;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v40 = 0;
        v11 = sub_1000011A8(1);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v12 = v11;
        }

        else
        {
          v12 = v11 & 0xFFFFFFFE;
        }

        if (v12)
        {
          v13 = *(a1 + 48);
          *v39 = 67109376;
          *&v39[4] = v13;
          *&v39[8] = 1024;
          *&v39[10] = v9;
          v14 = _os_log_send_and_compose_impl();
          v15 = v14;
          if (v14)
          {
            sub_100002A8C(v14);
          }
        }

        else
        {
          v15 = 0;
        }

        free(v15);
      }

      v22 = sub_100001458(v9, v38, *(a1 + 52));
      v23 = sub_1000487DC(v22);
      if (v23)
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v24 = qword_1000EB268;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v40 = 0;
          v25 = sub_1000011A8(1);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v26 = v25;
          }

          else
          {
            v26 = v25 & 0xFFFFFFFE;
          }

          if (v26)
          {
            *v39 = 138412290;
            *&v39[4] = v23;
            v27 = _os_log_send_and_compose_impl();
            v28 = v27;
            if (v27)
            {
              sub_100002A8C(v27);
            }
          }

          else
          {
            v28 = 0;
          }

          free(v28);
        }

        v29 = 0;
      }

      else
      {
        v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v30 = qword_1000EB268;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v40 = 0;
          v31 = sub_1000011A8(1);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v31;
          }

          else
          {
            v32 = v31 & 0xFFFFFFFE;
          }

          if (v32)
          {
            *v39 = 138412290;
            *&v39[4] = v29;
            v33 = _os_log_send_and_compose_impl();
            v34 = v33;
            if (v33)
            {
              sub_100002A8C(v33);
            }
          }

          else
          {
            v34 = 0;
          }

          free(v34);
        }
      }

      goto LABEL_64;
    }
  }

  else if ([*(a1 + 32) remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetchbundle"])
  {
    goto LABEL_14;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v16 = qword_1000EB268;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v39 = 0;
    v17 = sub_1000011A8(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v19 = *(a1 + 48);
      LODWORD(v40) = 67109120;
      HIDWORD(v40) = v19;
      v20 = _os_log_send_and_compose_impl();
      v21 = v20;
      if (v20)
      {
        sub_100002A8C(v20);
      }
    }

    else
    {
      v21 = 0;
    }

    free(v21);
  }

  v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v23 = 0;
LABEL_64:
  v35 = *(a1 + 40);
  if (v35)
  {
    (*(v35 + 16))(v35, v23, v29);
  }
}

void sub_1000147B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) notifyNextPersonaObserver:v3 withUser:*(a1 + 40)])
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v4 = qword_1000EB268;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000011A8(1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
LABEL_17:
        v9 = _os_log_send_and_compose_impl();
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }

        goto LABEL_20;
      }

LABEL_19:
      v10 = 0;
LABEL_20:
      free(v10);
    }
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v4 = qword_1000EB268;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_1000011A8(1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }
}

void sub_100014D6C(id a1)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v1 = qword_1000EB268;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = sub_1000011A8(1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v4 = _os_log_send_and_compose_impl();
      v5 = v4;
      if (v4)
      {
        sub_100002A8C(v4);
      }
    }

    else
    {
      v5 = 0;
    }

    free(v5);
  }
}

void sub_100014E50(id a1)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v1 = qword_1000EB268;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = sub_1000011A8(1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v4 = _os_log_send_and_compose_impl();
      v5 = v4;
      if (v4)
      {
        sub_100002A8C(v4);
      }
    }

    else
    {
      v5 = 0;
    }

    free(v5);
  }
}

id sub_100014F34(uint64_t a1)
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v2 = qword_1000EB268;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v8 = *(a1 + 32);
      v5 = _os_log_send_and_compose_impl();
      v6 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  return [*(a1 + 40) invalidate];
}

void sub_100015118(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 48)];
  v28 = -1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 48);
      v29 = 67109120;
      v30 = v6;
      v7 = _os_log_send_and_compose_impl();
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }
    }

    else
    {
      v8 = 0;
    }

    free(v8);
  }

  if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.observer"])
  {
    v9 = [*(a1 + 32) asidForClient:v2 withAuid:&v28 withPid:*(a1 + 48)];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v10 = qword_1000EB268;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v29 = 67109120;
        v30 = v9;
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    [v2 setPersonaStakeHolderIsRegistered:1];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v21 = qword_1000EB268;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = sub_1000011A8(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        LOWORD(v29) = 0;
        v24 = _os_log_send_and_compose_impl();
        v25 = v24;
        if (v24)
        {
          sub_100002A8C(v24);
        }
      }

      else
      {
        v25 = 0;
      }

      free(v25);
    }

    v26 = 0;
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v15 = qword_1000EB268;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v18 = *(a1 + 48);
        v29 = 67109120;
        v30 = v18;
        v19 = _os_log_send_and_compose_impl();
        v20 = v19;
        if (v19)
        {
          sub_100002A8C(v19);
        }
      }

      else
      {
        v20 = 0;
      }

      free(v20);
    }

    v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  }

  v27 = *(a1 + 40);
  if (v27)
  {
    (*(v27 + 16))(v27, v26);
  }
}

void sub_100015640(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  v37 = -1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v39 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 40);
      *v38 = 67109378;
      *&v38[4] = v6;
      *&v38[8] = 2112;
      *&v38[10] = v7;
      v8 = _os_log_send_and_compose_impl();
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if ([v2 hasEntitlement:@"com.apple.usermanagerd.persona.observer"])
  {
    v10 = [*(a1 + 32) asidForClient:v2 withAuid:&v37 withPid:*(a1 + 56)];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v11 = qword_1000EB268;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = *(a1 + 40);
        *v38 = 138412546;
        *&v38[4] = v14;
        *&v38[12] = 1024;
        *&v38[14] = v10;
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }

    v23 = sub_100001458(v10, v37, *(a1 + 60));
    if (sub_10004A188(*(a1 + 40), v23))
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v24 = qword_1000EB268;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 0;
        v25 = sub_1000011A8(1);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v25;
        }

        else
        {
          v26 = v25 & 0xFFFFFFFE;
        }

        if (v26)
        {
          LOWORD(v39) = 0;
          v27 = _os_log_send_and_compose_impl();
          v28 = v27;
          if (v27)
          {
            sub_100002A8C(v27);
          }
        }

        else
        {
          v28 = 0;
        }

        free(v28);
      }

      v35 = 0;
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v29 = qword_1000EB268;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 0;
        v30 = sub_1000011A8(1);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v30;
        }

        else
        {
          v31 = v30 & 0xFFFFFFFE;
        }

        if (v31)
        {
          v32 = *(a1 + 40);
          *v38 = 138412290;
          *&v38[4] = v32;
          v33 = _os_log_send_and_compose_impl();
          v34 = v33;
          if (v33)
          {
            sub_100002A8C(v33);
          }
        }

        else
        {
          v34 = 0;
        }

        free(v34);
      }

      v35 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v17 = qword_1000EB268;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v20 = *(a1 + 56);
        LODWORD(v39) = 67109120;
        HIDWORD(v39) = v20;
        v21 = _os_log_send_and_compose_impl();
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v35 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  }

  v36 = *(a1 + 48);
  if (v36)
  {
    (*(v36 + 16))(v36, v35);
  }
}

void sub_100015C78(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForPID:*(a1 + 56)];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v31 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 40);
      *v30 = 67109378;
      *&v30[4] = v6;
      *&v30[8] = 2112;
      *&v30[10] = v7;
      v8 = _os_log_send_and_compose_impl();
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if ([v2 hasEntitlement:@"com.apple.mkb.usersession.loginwindow"])
  {
    v29 = 0;
    v10 = sub_100048D4C(*(a1 + 40), &v29);
    if (v29)
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v11 = qword_1000EB268;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        v12 = sub_1000011A8(1);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFE;
        }

        if (v13)
        {
          LODWORD(v31) = 67109120;
          HIDWORD(v31) = v29;
          v14 = _os_log_send_and_compose_impl();
          v15 = v14;
          if (v14)
          {
            sub_100002A8C(v14);
          }
        }

        else
        {
          v15 = 0;
        }

        free(v15);
      }

      v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v29 userInfo:0];
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v22 = qword_1000EB268;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 0;
        v23 = sub_1000011A8(1);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          *v30 = 138412290;
          *&v30[4] = v10;
          v25 = _os_log_send_and_compose_impl();
          v26 = v25;
          if (v25)
          {
            sub_100002A8C(v25);
          }
        }

        else
        {
          v26 = 0;
        }

        free(v26);
      }

      v27 = 0;
    }
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v16 = qword_1000EB268;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      v17 = sub_1000011A8(1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        v19 = *(a1 + 56);
        LODWORD(v31) = 67109120;
        HIDWORD(v31) = v19;
        v20 = _os_log_send_and_compose_impl();
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }

    v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v10 = 0;
  }

  v28 = *(a1 + 48);
  if (v28)
  {
    (*(v28 + 16))(v28, v10, v27);
  }
}