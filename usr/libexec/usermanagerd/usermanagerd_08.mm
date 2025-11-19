void sub_10009864C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

const void *sub_100098710(UInt8 *bytes, CFIndex length)
{
  v2 = 0;
  format = kCFPropertyListBinaryFormat_v1_0;
  if (bytes && length)
  {
    v4 = CFReadStreamCreateWithBytesNoCopy(kCFAllocatorDefault, bytes, length, kCFAllocatorNull);
    if (!v4)
    {
      syslog(7, "Could not create stream from serialized data");
      return 0;
    }

    v5 = v4;
    if (CFReadStreamOpen(v4))
    {
      v6 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v5, length, 2uLL, &format, 0);
      v2 = v6;
      if (!v6)
      {
        syslog(7, "Could not create dictionary from stream");
        goto LABEL_9;
      }

      v7 = CFGetTypeID(v6);
      if (v7 == CFDictionaryGetTypeID())
      {
LABEL_9:
        CFReadStreamClose(v5);
        CFRelease(v5);
        return v2;
      }

      CFRelease(v2);
    }

    else
    {
      syslog(7, "Could not open the stream");
    }

    v2 = 0;
    goto LABEL_9;
  }

  return v2;
}

void sub_100098828(const char *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  syslog(7, "Could not fstat %s: %s", a1, v3);
}

void sub_100098870(const char *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  syslog(7, "Could not read %s: %s", a1, v3);
}

void sub_1000988DC(const char *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  syslog(7, "Could not open %s: %s", a1, v3);
}

id sub_100098960(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100089624(a1);
    v3 = sub_100001440(v1);
    v4 = sub_100088F2C(v1);
    v5 = sub_1000013A0(v1);
    v6 = sub_100089790(v1);
    v7 = sub_1000013AC(v1);
    v8 = sub_10008900C(v1);
    v9 = sub_1000024A8(v1);
    v1 = [DDIUser userWithUUID:v2 uid:v3 name:v4 primaryGroupUUID:v5 fullName:v6 homeDirectory:v7 shell:v8 memberships:v9];
  }

  return v1;
}

id sub_100098A8C(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100089624(a1);
    v3 = sub_100001440(v1);
    v4 = sub_100088F2C(v1);
    v5 = sub_1000013A0(v1);
    v1 = [DDIGroup groupWithUUID:v2 gid:v3 name:v4 fullName:v5];
  }

  return v1;
}

void sub_100098B6C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"UMPersonaMachPort.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"[aDecoder isKindOfClass:[NSXPCCoder class]]"}];
}

id sub_100098BE8(void *a1)
{
  if (a1)
  {
    v1 = sub_100016954(NSUUID, a1);
    v2 = [v1 UUIDString];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100098C4C(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 objectForKey:a2];
  objc_opt_class();
  if (sub_100002330())
  {
    v3 = [v2 BOOLValue];
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 2;
  }

  *__error() = v4;

  return v3;
}

id sub_100098CCC(void *a1, uint64_t a2, id a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 objectForKey:a2];
  objc_opt_class();
  if (sub_10007B07C())
  {
    a3 = [v4 intValue];
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  *__error() = v5;

  return a3;
}

id sub_100098D4C(void *a1, uint64_t a2, id a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 objectForKey:a2];
  objc_opt_class();
  if (sub_10007B07C())
  {
    a3 = [v4 unsignedIntValue];
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  *__error() = v5;

  return a3;
}

id sub_100098DCC(void *a1, uint64_t a2, id a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 objectForKey:a2];
  objc_opt_class();
  if (sub_10007B07C())
  {
    a3 = [v4 longLongValue];
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  *__error() = v5;

  return a3;
}

id sub_100098E4C(void *a1, uint64_t a2, id a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 objectForKey:a2];
  objc_opt_class();
  if (sub_10007B07C())
  {
    a3 = [v4 unsignedLongLongValue];
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  *__error() = v5;

  return a3;
}

id sub_100098ECC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 objectForKey:a2];
    objc_opt_class();
    v3 = sub_100002330();
    v4 = __error();
    if (v3)
    {
      *v4 = 0;
      v3 = v2;
    }

    else
    {
      sub_10007B06C(v4);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100098F4C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 objectForKey:a2];
    objc_opt_class();
    if (sub_100002330())
    {
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v3 = v2;
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v12;
        while (2)
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v12 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v11 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              *__error() = 2;

              v9 = 0;
              goto LABEL_14;
            }
          }

          v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

      v9 = [NSSet setWithArray:v3, v11];
      *__error() = 0;
LABEL_14:
    }

    else
    {
      v9 = 0;
      *__error() = 2;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_1000990F0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 objectForKey:a2];
    objc_opt_class();
    if (sub_100002330())
    {
      v3 = sub_100016954(NSUUID, v2);
      v4 = 2 * (v3 == 0);
    }

    else
    {
      v3 = 0;
      v4 = 2;
    }

    *__error() = v4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100099194(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 objectForKey:a2];
    objc_opt_class();
    v3 = sub_100002330();
    v4 = __error();
    if (v3)
    {
      *v4 = 0;
      v3 = v2;
    }

    else
    {
      sub_10007B06C(v4);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100099214(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 objectForKey:a2];
    objc_opt_class();
    v3 = sub_100002330();
    v4 = __error();
    if (v3)
    {
      *v4 = 0;
      v3 = v2;
    }

    else
    {
      sub_10007B06C(v4);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100099294(uint64_t a1)
{
  if (a1)
  {
    sub_1000019C0();
    v4 = [v3 dataWithPropertyList:? format:? options:? error:?];
    v12 = sub_100001824(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18, v19, v20);
    if (!v1)
    {
      if (qword_1000EB508 != -1)
      {
        dispatch_once(&qword_1000EB508, &stru_1000DDF10);
      }

      if (sub_100001748(qword_1000EB500))
      {
        sub_100053940();
        v13 = sub_10007B050();
        if (sub_10000230C(v13))
        {
          sub_10007B014();
          v14 = sub_10007B030();
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
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_1000993D0(uint64_t a1)
{
  if (a1)
  {
    sub_1000019C0();
    v4 = [v3 dataWithPropertyList:? format:? options:? error:?];
    v12 = sub_100001824(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18, v19, v20);
    if (!v1)
    {
      if (qword_1000EB508 != -1)
      {
        dispatch_once(&qword_1000EB508, &stru_1000DDF10);
      }

      if (sub_100001748(qword_1000EB500))
      {
        sub_100053940();
        v13 = sub_10007B050();
        if (sub_10000230C(v13))
        {
          sub_10007B014();
          v14 = sub_10007B030();
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
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_10009950C(uint64_t a1)
{
  if (a1)
  {
    sub_1000019C0();
    v4 = [v3 propertyListWithData:? options:? format:? error:?];
    v12 = sub_100001824(v4, v5, v6, v7, v8, v9, v10, v11, v21, v22, v23, v24);
    if (v1)
    {
      objc_opt_class();
      if ((sub_100002330() & 1) == 0)
      {
        if (qword_1000EB508 != -1)
        {
          dispatch_once(&qword_1000EB508, &stru_1000DDF10);
        }

        if (sub_100001748(qword_1000EB500))
        {
          sub_1000011A8(0);
          v13 = sub_10007B050();
          if (sub_10000230C(v13))
          {
            sub_100053968();
            v14 = sub_10007B030();
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

        v19 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      if (qword_1000EB508 != -1)
      {
        dispatch_once(&qword_1000EB508, &stru_1000DDF10);
      }

      if (sub_100001748(qword_1000EB500))
      {
        sub_100053940();
        v16 = sub_10007B050();
        if (sub_10000230C(v16))
        {
          sub_10007B014();
          v17 = sub_10007B030();
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
    }

    v19 = v1;
LABEL_23:

    goto LABEL_24;
  }

  v19 = 0;
LABEL_24:

  return v19;
}

id sub_100099704(uint64_t a1)
{
  if (a1)
  {
    sub_1000019C0();
    v4 = [v3 propertyListWithData:? options:? format:? error:?];
    v12 = sub_100001824(v4, v5, v6, v7, v8, v9, v10, v11, v21, v22, v23, v24);
    if (v1)
    {
      objc_opt_class();
      if ((sub_100002330() & 1) == 0)
      {
        if (qword_1000EB508 != -1)
        {
          dispatch_once(&qword_1000EB508, &stru_1000DDF10);
        }

        if (sub_100001748(qword_1000EB500))
        {
          sub_1000011A8(0);
          v13 = sub_10007B050();
          if (sub_10000230C(v13))
          {
            sub_100053968();
            v14 = sub_10007B030();
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

        v19 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      if (qword_1000EB508 != -1)
      {
        dispatch_once(&qword_1000EB508, &stru_1000DDF10);
      }

      if (sub_100001748(qword_1000EB500))
      {
        sub_100053940();
        v16 = sub_10007B050();
        if (sub_10000230C(v16))
        {
          sub_10007B014();
          v17 = sub_10007B030();
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
    }

    v19 = v1;
LABEL_23:

    goto LABEL_24;
  }

  v19 = 0;
LABEL_24:

  return v19;
}

void *acm_mem_alloc_data(size_t size)
{
  result = malloc_type_calloc(1uLL, size, 0x7F43DDCBuLL);
  if (result)
  {
    qword_1000EB518 += size;
  }

  return result;
}

void acm_mem_free_data(void *a1, rsize_t a2)
{
  if (a1)
  {
    sub_10007B210(a1, a2);
    free(v3);
    v4 = qword_1000EB518 - v2;
    if (qword_1000EB518 < v2)
    {
      v4 = 0;
    }

    qword_1000EB518 = v4;
  }
}

void *acm_mem_alloc_typed(size_t size, malloc_type_id_t type_id)
{
  result = malloc_type_calloc(1uLL, size, type_id);
  if (result)
  {
    qword_1000EB520 += size;
  }

  return result;
}

void acm_mem_free(void *a1, rsize_t a2)
{
  if (a1)
  {
    sub_10007B210(a1, a2);
    free(v3);
    v4 = qword_1000EB520 - v2;
    if (qword_1000EB520 < v2)
    {
      v4 = 0;
    }

    qword_1000EB520 = v4;
  }
}

uint64_t GetSerializedVerifyPolicySize()
{
  result = sub_1000016A4();
  if (v5)
  {
    if (v1)
    {
      v6 = v4;
      if (v4)
      {
        v7 = v3;
        v8 = v2;
        v9 = strnlen(v1, 0x81uLL);
        if (v9 > 0x80)
        {
          return 4294967293;
        }

        else
        {
          v10 = v9;
          result = sub_10007BAE4(v8, v7, &v11);
          if (!result)
          {
            *v6 = v10 + v11 + 26;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DeserializeVerifyPolicy(uint64_t a1)
{
  v25 = 0;
  result = sub_1000016A4();
  v10 = v3 - 16;
  if (v3 >= 0x10)
  {
    if (a1)
    {
      if (v4)
      {
        v11 = v5;
        if (v5)
        {
          v12 = v6;
          if (v6)
          {
            v13 = v7;
            if (v7)
            {
              v14 = v8;
              if (v8)
              {
                v15 = v9;
                if (v9)
                {
                  v16 = v3;
                  *v4 = *a1;
                  v17 = strnlen((a1 + 16), v3 - 16);
                  v18 = v17;
                  if (v17 > 0x80uLL || v10 <= v17)
                  {
                    return 4294967293;
                  }

                  v19 = acm_mem_alloc_data(v17 + 1);
                  acm_mem_alloc_info("<data>", v19, v18 + 1, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 351, "DeserializeVerifyPolicy");
                  if (!v19)
                  {
                    return 4294967292;
                  }

                  memcpy(v19, (a1 + 16), v18 + 1);
                  v26 = v18 + 17;
                  if (v18 + 17 == v16 || (v20 = *(a1 + v18 + 17) != 0, v26 = v18 + 18, v16 - (v18 + 18) < 4))
                  {
                    v22 = 4294967293;
                  }

                  else
                  {
                    v23 = v15;
                    v21 = *(a1 + v18 + 18);
                    v26 = v18 + 22;
                    result = sub_10007BD10(a1, v16, &v26, &v25, &v24);
                    if (!result)
                    {
                      *v11 = v19;
                      *v12 = v20;
                      *v13 = v21;
                      *v14 = v25;
                      *v23 = v24;
                      return result;
                    }

                    v22 = result;
                  }

                  acm_mem_free_info("<data>", v19, v18 + 1, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 380, "DeserializeVerifyPolicy");
                  acm_mem_free_data(v19, v18 + 1);
                  if (v25)
                  {
                    Util_SafeDeallocParameters(v25, v24);
                  }

                  return v22;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t GetSerializedVerifyAclConstraintSize(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, void *a11)
{
  result = sub_1000016A4();
  if (v15)
  {
    if (a11)
    {
      if (a10 <= 0xA && (a9 != 0) == (a10 != 0))
      {
        v16 = v14;
        v17 = v13;
        result = sub_10007BAE4(a9, a10, &v21);
        if (!result)
        {
          v18 = 29;
          if (a1 == 32)
          {
            v18 = 33;
          }

          v19 = v18 + v17;
          if (a1 == 32)
          {
            v20 = v16;
          }

          else
          {
            v20 = 0;
          }

          *a11 = v19 + v20 + v21;
        }
      }
    }
  }

  return result;
}

uint64_t SerializeVerifyAclConstraint(int a1, _OWORD *a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, char a7, int a8, uint64_t a9, unsigned int a10, uint64_t a11, void *a12)
{
  if (!a3)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a12)
  {
    if (a11 && a10 <= 0xA && (a9 != 0) == (a10 != 0))
    {
      v30 = 0;
      result = sub_10007BAE4(a9, a10, &v30);
      if (!result)
      {
        v20 = 29;
        if (a1 == 32)
        {
          v20 = 33;
        }

        v21 = v20 + a4;
        if (a1 == 32)
        {
          v22 = a6;
        }

        else
        {
          v22 = 0;
        }

        if (*a12 < v21 + v22 + v30)
        {
          return 4294967293;
        }

        else
        {
          v23 = a8;
          if (a2)
          {
            *a11 = *a2;
          }

          else
          {
            *a11 = 0;
            *(a11 + 8) = 0;
          }

          *(a11 + 16) = a4;
          memcpy((a11 + 20), a3, a4);
          v24 = a4 + 20;
          if (a1 == 32)
          {
            *(a11 + v24) = a6;
            v25 = a4 + 24;
            memcpy((a11 + v25), a5, a6);
            v24 = v25 + a6;
          }

          v26 = a11 + v24;
          *v26 = a7;
          *(v26 + 1) = v23;
          v29 = v24 + 5;
          result = sub_10007BBD4(a9, a10, a11, &v29);
          if (!result)
          {
            *a12 = v29;
          }
        }
      }
    }
  }

  return result;
}

uint64_t GetSerializedProcessAclSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  result = sub_1000016A4();
  if (v14)
  {
    v15 = v10;
    if (v10)
    {
      if (a9 && v13 <= 0xA && (v12 != 0) == (v13 != 0))
      {
        v16 = v11;
        result = sub_10007BAE4(v12, v13, &v17);
        if (!result)
        {
          *a9 = v15 + v16 + v17 + 36;
        }
      }
    }
  }

  return result;
}

uint64_t SerializeProcessAcl(_OWORD *a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  v21 = 0;
  result = 4294967293;
  if (a2)
  {
    v12 = a3;
    if (a3)
    {
      v13 = a8;
      if (a10)
      {
        if (a9)
        {
          if (a8 <= 0xA && (a7 != 0) == (a8 != 0))
          {
            v15 = a6;
            v16 = a5;
            result = GetSerializedProcessAclSize(4294967293, a2, a3, a4, a5, a6, a7, a8, &v21);
            if (!result)
            {
              if (*a10 < v21)
              {
                return 4294967293;
              }

              else
              {
                if (a1)
                {
                  *a9 = *a1;
                }

                else
                {
                  *a9 = 0;
                  *(a9 + 8) = 0;
                }

                *(a9 + 16) = v12;
                memcpy((a9 + 20), a2, v12);
                *(a9 + v12 + 20) = v16;
                v19 = v12 + 24;
                if (v16)
                {
                  memcpy((a9 + v19), a4, v16);
                  v19 += v16;
                }

                *(a9 + v19) = v15;
                v20 = v19 + 4;
                result = sub_10007BBD4(a7, v13, a9, &v20);
                if (!result)
                {
                  *a10 = v20;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void GetSerializedRequirementSize(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = 0;
  if (a2 && a3 && *a2 <= 0x1Cu)
  {
    sub_10007BA30();
    if (v8)
    {
      if ((v7 & 0x30) != 0)
      {
        *a3 = 20;
        while (*(a2 + 16))
        {
          SerializedRequirementSize = GetSerializedRequirementSize(a1, *(a2 + 20), &v26);
          if (SerializedRequirementSize)
          {
            break;
          }

          sub_1000019CC(SerializedRequirementSize, v10, v11, v12, v13, v14, v15, v16, v25, v26);
        }
      }

      else if (v6 == 7)
      {
        *a3 = 24;
        while (*(a2 + 20))
        {
          v17 = GetSerializedRequirementSize(a1, *(a2 + 24), &v26);
          if (v17)
          {
            break;
          }

          sub_1000019CC(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
        }
      }
    }

    else
    {
      *a3 = sub_10007B880(a1, a2) + 16;
    }
  }
}

void SerializeRequirement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10007BAB4();
  a21 = v22;
  a22 = v27;
  v28 = v23;
  a12 = 0;
  if (v24)
  {
    v29 = v25;
    if (v25)
    {
      v30 = v26;
      if (v26)
      {
        v31 = v24;
        GetSerializedRequirementSize(v23, v24, &a12);
        if (!v32 && a12 <= *v30)
        {
          v41 = *v31;
          v42 = v31[2];
          v33 = sub_10007B880(v28, v31);
          *v29 = v41;
          *(v29 + 8) = v42;
          *(v29 + 12) = v33;
          if (*v31 <= 0x1Cu)
          {
            sub_10007BA30();
            if (!v36)
            {
              v37 = sub_10007B880(v28, v31);
              memcpy((v29 + 16), v31 + 4, v37);
              v38 = v37 + 16;
LABEL_9:
              *v30 = v38;
              goto LABEL_10;
            }

            if ((v35 & 0x30) != 0)
            {
              *(v29 + 16) = v31[4];
              if (!v31[4])
              {
                v38 = 20;
                goto LABEL_9;
              }

              v39 = 0;
              v38 = 20;
              while (!sub_10007BA04())
              {
                v38 += a9;
                if (++v39 >= v31[4])
                {
                  goto LABEL_9;
                }
              }
            }

            else
            {
              if (v34 != 7)
              {
                goto LABEL_10;
              }

              *(v29 + 16) = *(v31 + 2);
              if (!v31[5])
              {
                v38 = 24;
                goto LABEL_9;
              }

              v40 = 0;
              v38 = 24;
              while (!sub_10007BA04())
              {
                v38 += a9;
                if (++v40 >= v31[5])
                {
                  goto LABEL_9;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_10:
  sub_10007BACC();
}

uint64_t GetSerializedCredentialSize(_DWORD *a1, void *a2)
{
  result = 4294967293;
  if (a1 && a2 && *a1 <= 0x17u && ((1 << *a1) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a2 = a1[7] + 32;
  }

  return result;
}

uint64_t SerializeCredential(unsigned int *__src, void *__dst, size_t *a3)
{
  result = 4294967293;
  if (__src && __dst && a3)
  {
    v6 = *__src;
    if (*__src <= 0x17 && ((1 << *__src) & 0xFFF7FE) != 0)
    {
      v8 = __src[7] + 32;
      if (v8 <= *a3 && v6 <= 0x17 && ((1 << v6) & 0xFFF7FE) != 0)
      {
        memcpy(__dst, __src, v8);
        result = 0;
        *a3 = __src[7] + 32;
      }
    }
  }

  return result;
}

void DeserializeCredential(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _DWORD *__dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10007BA48();
  a19 = v20;
  a20 = v25;
  __dst = 0;
  if (v22 >= 0x20)
  {
    v26 = v21;
    if (v21)
    {
      v27 = v23;
      if (v23)
      {
        v28 = v24;
        if (v24)
        {
          v29 = *v21;
          v30 = v22;
          v31 = v21[7];
          switch(*v21)
          {
            case 1u:
              if (v31 == 28)
              {
                goto LABEL_7;
              }

              break;
            case 2u:
              if (v31 == 136)
              {
                goto LABEL_7;
              }

              break;
            case 3u:
              if (v31 == 305)
              {
                goto LABEL_7;
              }

              break;
            case 4u:
            case 5u:
            case 6u:
            case 8u:
            case 0xEu:
            case 0x10u:
            case 0x13u:
            case 0x16u:
            case 0x17u:
              if (!v31)
              {
                goto LABEL_7;
              }

              break;
            case 7u:
              if (v31 == 56)
              {
                goto LABEL_7;
              }

              break;
            case 9u:
              if (v31 == 24)
              {
                goto LABEL_7;
              }

              break;
            case 0xAu:
              if (v31 == 52)
              {
                goto LABEL_7;
              }

              break;
            case 0xCu:
            case 0xFu:
              if (v31 == 8)
              {
                goto LABEL_7;
              }

              break;
            case 0xDu:
            case 0x15u:
              if (v31 == 132)
              {
                goto LABEL_7;
              }

              break;
            case 0x11u:
              if (v31 == 81)
              {
                goto LABEL_7;
              }

              break;
            case 0x12u:
              if (v31 == 20)
              {
                goto LABEL_7;
              }

              break;
            case 0x14u:
              if (v31 != 32)
              {
                break;
              }

LABEL_7:
              if (!Util_AllocCredential(*v21, &__dst))
              {
                if (!__dst)
                {
                  break;
                }

                if (__dst[1] <= 3u && __dst[2] <= 0x100u && v29 <= 0x17 && ((1 << v29) & 0xFFF7FE) != 0 && v31 + 32 <= v30)
                {
                  memcpy(__dst, v26, v31 + 32);
                  *v27 = __dst;
                  *v28 = v31 + 32;
                  break;
                }

                goto LABEL_15;
              }

              if (__dst)
              {
LABEL_15:
                Util_DeallocCredential(__dst);
                break;
              }

              break;
            default:
              break;
          }
        }
      }
    }
  }

  sub_10007BA60();
}

uint64_t CopyCredential(uint64_t a1, void **a2)
{
  __dst = 0;
  v2 = 4294967293;
  if (a1 && a2)
  {
    v2 = Util_AllocCredential(*a1, &__dst);
    if (v2)
    {
      if (__dst)
      {
        Util_DeallocCredential(__dst);
      }
    }

    else if (__dst)
    {
      memcpy(__dst, a1, *(a1 + 28) + 32);
      v2 = 0;
      *a2 = __dst;
    }

    else
    {
      return 4294967292;
    }
  }

  return v2;
}

uint64_t CompareCredentials(char *__s1, _DWORD *__s2, BOOL *a3)
{
  result = 4294967293;
  if (__s1)
  {
    v5 = __s2;
    if (__s2)
    {
      if (a3)
      {
        if (*__s1 == *__s2)
        {
          v7 = *(__s1 + 7);
          if (v7 == __s2[7])
          {
            switch(*__s1)
            {
              case 1:
                if (sub_10007B9C8())
                {
                  break;
                }

                v9 = __s1 + 44;
                __s2 = v5 + 11;
                goto LABEL_33;
              case 2:
                if (*(__s1 + 8) != __s2[8])
                {
                  break;
                }

                v8 = *(__s1 + 9);
                if (v8 != __s2[9])
                {
                  break;
                }

                v9 = __s1 + 40;
                __s2 += 10;
                goto LABEL_8;
              case 3:
                if (sub_10007B9C8())
                {
                  break;
                }

                v9 = __s1 + 104;
                __s2 = v5 + 26;
                goto LABEL_33;
              case 4:
              case 5:
              case 6:
              case 8:
              case 0xC:
              case 0xE:
              case 0xF:
              case 0x10:
              case 0x11:
              case 0x12:
              case 0x13:
              case 0x16:
              case 0x17:
                v8 = v7 + 32;
                v9 = __s1;
                goto LABEL_8;
              case 7:
                if (sub_10007B9C8() || memcmp(__s1 + 32, v5 + 8, 0x20uLL))
                {
                  break;
                }

                v9 = __s1 + 64;
                __s2 = v5 + 16;
                v8 = 24;
                goto LABEL_8;
              case 9:
                if (sub_10007B9C8())
                {
                  break;
                }

                v9 = __s1 + 40;
                __s2 = v5 + 10;
                goto LABEL_33;
              case 0xA:
                if (sub_10007B9C8() || memcmp(__s1 + 36, v5 + 9, 0x10uLL))
                {
                  break;
                }

                v9 = __s1 + 52;
                __s2 = v5 + 13;
LABEL_33:
                v8 = 16;
                goto LABEL_8;
              case 0xD:
                v8 = *(__s1 + 8);
                if (v8 != __s2[8])
                {
                  break;
                }

                v9 = __s1 + 36;
                __s2 += 9;
                goto LABEL_8;
              case 0x14:
                if (sub_10007B9C8())
                {
                  break;
                }

                v9 = __s1 + 32;
                __s2 = v5 + 8;
                v8 = 32;
                goto LABEL_8;
              case 0x15:
                if (sub_10007B9C8())
                {
                  break;
                }

                v9 = __s1 + 36;
                __s2 = v5 + 9;
                v8 = 128;
LABEL_8:
                v10 = memcmp(v9, __s2, v8) == 0;
                goto LABEL_30;
              default:
                return result;
            }
          }
        }

        v10 = 0;
LABEL_30:
        result = 0;
        *a3 = v10;
      }
    }
  }

  return result;
}

uint64_t GetSerializedAddCredentialSize(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 2;
  }

  v5 = !v4;
  result = 4294967293;
  if (a4 && a2 && (v5 & 1) == 0 && *a2 <= 0x17u && ((1 << *a2) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a4 = a2[7] + 52;
  }

  return result;
}

uint64_t SerializeAddCredential(_OWORD *a1, unsigned int *__src, int a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3 == 2;
  }

  v7 = !v6;
  result = 4294967293;
  if (a5)
  {
    if (a4)
    {
      if (__src)
      {
        if ((v7 & 1) == 0)
        {
          result = 4294967293;
          if (*__src <= 0x17 && ((1 << *__src) & 0xFFF7FE) != 0 && *a5 >= __src[7] + 52)
          {
            if (a1)
            {
              *a4 = *a1;
            }

            else
            {
              *a4 = 0;
              *(a4 + 8) = 0;
            }

            v13 = *a5 - 16;
            result = SerializeCredential(__src, (a4 + 16), &v13);
            if (!result)
            {
              v12 = v13;
              *(a4 + v13 + 16) = a3;
              *a5 = v12 + 20;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t DeserializeAddCredentialType(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  result = 4294967293;
  if (a2 >= 0x34 && a1)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a1 + 16);
    }
  }

  return result;
}

uint64_t LibSer_GetSerializedContainsCredential_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 4294967293;
  if (a1)
  {
    if (a4)
    {
      result = 0;
      *a4 = 24;
    }
  }

  return result;
}

double LibSer_GetSerializedContainsCredential_Serialize(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, __n128 *a4, void *a5)
{
  if (a4 && a1 && a5 && *a5 >= 0x18uLL)
  {
    *&result = sub_10007BA98(a2, a3, a4, a5, a1).n128_u64[0];
  }

  return result;
}

uint64_t GetSerializedRemoveCredentialSize(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 2;
  }

  v5 = !v4;
  result = 4294967293;
  if (a4 && a2 && (v5 & 1) == 0 && *a2 <= 0x17u && ((1 << *a2) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a4 = a2[7] + 52;
  }

  return result;
}

uint64_t GetSerializedReplacePassphraseCredentialSize(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 2;
  }

  v5 = !v4;
  result = 4294967293;
  if (a4 && a2 && (v5 & 1) == 0 && *a2 <= 0x17u && ((1 << *a2) & 0xFFF7FE) != 0)
  {
    result = 0;
    *a4 = a2[7] + 52;
  }

  return result;
}

uint64_t SerializeCredentialList(unsigned int **a1, unsigned int a2, unsigned int *a3, void *a4)
{
  if (a2)
  {
    v6 = a1 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6 || a3 == 0 || a4 == 0)
  {
    return 4294967293;
  }

  v16[7] = v4;
  v16[8] = v5;
  *a3 = a2;
  if (a2)
  {
    v11 = a1;
    v12 = a2;
    v13 = 4;
    while (1)
    {
      v14 = *v11;
      if (!*v11)
      {
        return 4294967293;
      }

      v16[0] = *a4 - v13;
      result = SerializeCredential(v14, a3 + v13, v16);
      if (result)
      {
        return result;
      }

      v13 += v16[0];
      ++v11;
      if (!--v12)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v13 = 4;
LABEL_18:
    result = 0;
    *a4 = v13;
  }

  return result;
}

uint64_t DeserializeCredentialList(unsigned int *a1, int a2, void *a3, _DWORD *a4)
{
  __dst[0] = 0;
  v4 = 4294967293;
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        v7 = a1;
        v8 = *a1;
        if (v8 <= 0x3E8)
        {
          if (v8)
          {
            v10 = acm_mem_alloc_typed(8 * v8, 0x2004093837F09uLL);
            acm_mem_alloc_info("array of ACMCredentialRef", v10, 8 * v8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 1897, "DeserializeCredentialList");
            if (v10)
            {
              v15 = 4;
              v16 = v10;
              v17 = v8;
              while (1)
              {
                DeserializeCredential(v7 + v15, a2 - v15, v16, __dst, v11, v12, v13, v14, v20, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10]);
                if (v18)
                {
                  break;
                }

                v15 += LODWORD(__dst[0]);
                v16 += 8;
                if (!--v17)
                {
                  goto LABEL_12;
                }
              }

              v4 = v18;
              DeallocCredentialList(v10, v8);
            }

            else
            {
              return 4294967292;
            }
          }

          else
          {
            v10 = 0;
LABEL_12:
            v4 = 0;
            *a4 = v8;
            *a3 = v10;
          }
        }
      }
    }
  }

  return v4;
}

void DeallocCredentialList(_DWORD **a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1;
      v5 = a2;
      do
      {
        if (*v4)
        {
          Util_DeallocCredential(*v4);
          *v4 = 0;
        }

        ++v4;
        --v5;
      }

      while (v5);
    }

    v6 = 8 * v3;
    acm_mem_free_info("array of ACMCredentialRef", a1, v6, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 1935, "DeallocCredentialList");

    acm_mem_free(a1, v6);
  }
}

uint64_t GetSerializedGetContextPropertySize(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 4294967293;
  }

  result = 0;
  *a3 = 20;
  return result;
}

__n128 SerializeGetContextProperty(__n128 *a1, unsigned __int32 a2, __n128 *a3, void *a4)
{
  if (a1 && a3 && a4 && *a4 >= 0x14uLL)
  {
    result = *a1;
    *a3 = *a1;
    a3[1].n128_u32[0] = a2;
    *a4 = 20;
  }

  return result;
}

uint64_t DeserializeGetContextProperty(uint64_t a1, unint64_t a2, _OWORD *a3, _DWORD *a4)
{
  result = 4294967293;
  if (a2 >= 0x10 && a1 && a3 && a4)
  {
    *a3 = *a1;
    if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != 0x10)
    {
      result = 0;
      *a4 = *(a1 + 16);
    }
  }

  return result;
}

uint64_t LibSer_GetAclAuthMethod_GetSize(uint64_t a1, void *a2)
{
  if (a2)
  {
    return sub_10007B9F4(a1, a2);
  }

  else
  {
    return 4294967293;
  }
}

__n128 LibSer_GetAclAuthMethod_Serialize(__n128 *a1, __n128 *a2, void *a3)
{
  if (a1 && a2 && a3 && *a3 >= 0x10uLL)
  {
    result = *a1;
    *a2 = *a1;
    *a3 = 16;
  }

  return result;
}

__n128 LibSer_GetAclAuthMethod_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3)
{
  if (a2 >= 0x10 && a1)
  {
    if (a3)
    {
      result = *a1;
      *a3 = *a1;
    }
  }

  return result;
}

uint64_t LibSer_ContextCredentialGetProperty_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    return sub_10007B9E4(a1, a2, a3, a4);
  }

  else
  {
    return 4294967293;
  }
}

double LibSer_ContextCredentialGetProperty_Serialize(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, __n128 *a4, void *a5)
{
  if (a1 && a4 && a5 && *a5 >= 0x18uLL)
  {
    *&result = sub_10007BA98(a2, a3, a4, a5, a1).n128_u64[0];
  }

  return result;
}

__n128 LibSer_ContextCredentialGetProperty_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2 >= 0x18 && a1 && a3 && a4)
  {
    if (a5)
    {
      result = *a1;
      *a3 = *a1;
      *a4 = a1[1].n128_u32[0];
      *a5 = a1[1].n128_u32[1];
    }
  }

  return result;
}

uint64_t LibSer_GlobalContextCredentialGetProperty_GetSize(void *a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  result = 0;
  *a1 = 8;
  return result;
}

uint64_t LibSer_GlobalContextCredentialGetProperty_Serialize(int a1, int a2, _DWORD *a3, void *a4)
{
  result = 4294967293;
  if (a3 && a4 && *a4 >= 8uLL)
  {
    result = 0;
    *a3 = a1;
    a3[1] = a2;
    *a4 = 8;
  }

  return result;
}

uint64_t LibSer_GlobalContextCredentialGetProperty_Deserialize(_DWORD *a1, unint64_t a2, _DWORD *a3, _DWORD *a4)
{
  result = 4294967293;
  if (a2 >= 8 && a1 && a3)
  {
    if (a4)
    {
      result = 0;
      *a3 = *a1;
      *a4 = a1[1];
    }
  }

  return result;
}

uint64_t LibSer_RemoveCredentialByType_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    return sub_10007B9E4(a1, a2, a3, a4);
  }

  else
  {
    return 4294967293;
  }
}

double LibSer_RemoveCredentialByType_Serialize(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, __n128 *a4, void *a5)
{
  if (a1 && a4 && a5 && *a5 >= 0x18uLL)
  {
    *&result = sub_10007BA98(a2, a3, a4, a5, a1).n128_u64[0];
  }

  return result;
}

__n128 LibSer_RemoveCredentialByType_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2 >= 0x18 && a1 && a3 && a4)
  {
    if (a5)
    {
      result = *a1;
      *a3 = *a1;
      *a4 = a1[1].n128_u32[0];
      *a5 = a1[1].n128_u32[1];
    }
  }

  return result;
}

uint64_t LibSer_DeleteContext_GetSize(uint64_t a1, void *a2)
{
  if (a2)
  {
    return sub_10007B9F4(a1, a2);
  }

  else
  {
    return 4294967293;
  }
}

__n128 LibSer_DeleteContext_Serialize(__n128 *a1, __n128 *a2, void *a3)
{
  if (a1 && a2 && a3 && *a3 >= 0x10uLL)
  {
    result = *a1;
    *a2 = *a1;
    *a3 = 16;
  }

  return result;
}

__n128 LibSer_DeleteContext_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3)
{
  if (a2 >= 0x10 && a1)
  {
    if (a3)
    {
      result = *a1;
      *a3 = *a1;
    }
  }

  return result;
}

uint64_t LibSer_StorageAnyCmd_DeserializeCommonFields(uint64_t a1, unint64_t a2, _OWORD *a3, _DWORD *a4)
{
  result = 4294967293;
  if (a1 && a2 >= 0x14)
  {
    if (a3)
    {
      *a3 = *a1;
    }

    result = 0;
    if (a4)
    {
      *a4 = *(a1 + 16);
    }
  }

  return result;
}

uint64_t LibSer_StorageSetData_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a4)
  {
    return 4294967291;
  }

  result = sub_100002348(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, 0);
  if (!result)
  {
    *v8 = v9 + v13 + 28;
  }

  return result;
}

uint64_t LibSer_StorageSetData_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 4294967293;
  if (a1 && a2 >= 0x18 && a3 && a4 && a5 && a6 && a7 && a8)
  {
    v20[1] = v8;
    v20[2] = v9;
    sub_10007BA78(a1, a2, a3, a4);
    v16 = *(v11 + 20);
    v20[0] = 24;
    *v17 = v16;
    if (v16)
    {
      v18 = v16 + 24;
      if (v18 > v12)
      {
        return 4294967293;
      }

      *v13 = v11 + 24;
      v20[0] = v18;
    }

    else
    {
      *v13 = 0;
    }

    return sub_10007BD10(v11, v12, v20, v14, v15);
  }

  return v10;
}

uint64_t LibSer_StorageGetData_GetSize(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  if (!a3)
  {
    return 4294967291;
  }

  result = sub_10007BAE4(a1, a2, &v5);
  if (!result)
  {
    *a3 = v5 + 25;
  }

  return result;
}

uint64_t LibSer_StorageGetData_Deserialize(__n128 *a1, unint64_t a2, __n128 *a3, _DWORD *a4, uint64_t a5)
{
  v7 = 4294967293;
  if (a1 && a2 >= 0x15 && a3 && a4 && a5)
  {
    v14[1] = v5;
    v14[2] = v6;
    sub_10007BA78(a1, a2, a3, a4);
    *v9 = *(v8 + 20) != 0;
    v14[0] = 21;
    return sub_10007BD10(v8, v10, v14, v11, v12);
  }

  return v7;
}

uint64_t LibSer_GetUnlockSecret_GetSize(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  if (!a3)
  {
    return 4294967291;
  }

  result = sub_10007BAE4(a1, a2, &v5);
  if (!result)
  {
    *a3 = v5 + 20;
  }

  return result;
}

void LibSer_GetUnlockSecret_Serialize(_OWORD *a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  if (a1)
  {
    if (a4)
    {
      if (a5)
      {
        sub_100001A80();
        if (!sub_10007BAE4(v8, a3, v9))
        {
          sub_100001908();
          if (v10)
          {
            *a4 = *a1;
            v11 = sub_10007B9A4(16, v19);
            if (!v11)
            {
              sub_10007BA8C(v11, v12, v13, v14, v15, v16, v17, v18, v20);
            }
          }
        }
      }
    }
  }
}

uint64_t LibSer_GetUnlockSecret_Deserialize(_OWORD *a1, unint64_t a2, _OWORD *a3, void *a4, _DWORD *a5)
{
  if (!a1)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a2 >= 0x10 && a3 && a4)
  {
    if (a5)
    {
      v9[1] = v5;
      v9[2] = v6;
      *a3 = *a1;
      v9[0] = 16;
      return sub_10007BD10(a1, a2, v9, a4, a5);
    }
  }

  return result;
}

uint64_t LibSer_GetUnlockSecretResponse_GetSize(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294967291;
  }

  result = 0;
  *a2 = a1 + 1;
  return result;
}

uint64_t LibSer_GetUnlockSecretResponse_Serialize(void *__src, size_t __n, char a3, _BYTE *a4, void *a5)
{
  result = 4294967293;
  if (__src && __n && a4 && a5)
  {
    v9 = __n + 1;
    if (*a5 < __n + 1)
    {
      return 4294967293;
    }

    else
    {
      *a4 = a3;
      memcpy(a4 + 1, __src, __n);
      result = 0;
      *a5 = v9;
    }
  }

  return result;
}

uint64_t LibSer_GetUnlockSecretResponse_Deserialize(_BYTE *a1, uint64_t a2, void *a3, void *a4, _BYTE *a5)
{
  result = 4294967293;
  if (a2 && a1 && a3 && a4)
  {
    if (a5)
    {
      result = 0;
      *a5 = *a1;
      *a3 = a1 + 1;
      *a4 = a2 - 1;
    }
  }

  return result;
}

uint64_t LibSer_SEPControl_GetSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a4)
  {
    return 4294967291;
  }

  result = sub_100002348(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, 0);
  if (!result)
  {
    *v8 = v9 + v13 + 24;
  }

  return result;
}

void LibSer_SEPControl_Serialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10007BA48();
  a19 = v20;
  a20 = v27;
  v29 = v28;
  if (v25)
  {
    v30 = v26;
    if (v26)
    {
      v31 = v25;
      v32 = v24;
      v33 = v23;
      v34 = v22;
      v35 = v21;
      sub_100001A80();
      if (!sub_10007BAE4(v36, v34, v37))
      {
        sub_100001908();
        if (v38)
        {
          if (v29)
          {
            *v31 = *v29;
          }

          else
          {
            *v31 = 0;
            *(v31 + 8) = 0;
          }

          a9 = 16;
          if (!sub_10007BBD4(v35, v34, v31, &a9))
          {
            v39 = a9;
            *(v31 + a9) = v32;
            v40 = v39 + 4;
            memcpy((v31 + v39 + 4), v33, v32);
            *v30 = v40 + v32;
          }
        }
      }
    }
  }

  sub_10007BA60();
}

uint64_t LibSer_SEPControl_Deserialize(_OWORD *a1, unint64_t a2, _OWORD *a3, void *a4, _DWORD *a5, unint64_t *a6, void *a7)
{
  if (!a1)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a2 >= 0x18 && a3 && a4 && a5 && a6 && a7)
  {
    *a3 = *a1;
    v12 = 16;
    result = sub_10007BD10(a1, a2, &v12, a4, a5);
    if (!result)
    {
      v11 = a1 + v12 + 4;
      *a7 = *(a1 + v12);
      *a6 = v11;
    }
  }

  return result;
}

uint64_t LibSer_SEPControlResponse_GetSize(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294967291;
  }

  result = 0;
  *a2 = a1 + 4;
  return result;
}

uint64_t LibSer_SEPControlResponse_Serialize(void *__src, size_t __n, _DWORD *a3, uint64_t *a4)
{
  result = 4294967293;
  if (a3 && a4)
  {
    v8 = __n + 4;
    if (*a4 < __n + 4)
    {
      return 4294967293;
    }

    else
    {
      *a3 = __n;
      if (__src)
      {
        memcpy(a3 + 1, __src, __n);
      }

      else
      {
        v8 = 4;
      }

      result = 0;
      *a4 = v8;
    }
  }

  return result;
}

uint64_t LibSer_SEPControlResponse_Deserialize(unsigned int *a1, unint64_t a2, void *a3, void *a4)
{
  if (!a1)
  {
    return 4294967293;
  }

  result = 4294967293;
  if (a2 >= 4 && a3 && a4)
  {
    result = 0;
    v7 = *a1;
    v6 = a1 + 1;
    *a4 = v7;
    if (!v7)
    {
      v6 = 0;
    }

    *a3 = v6;
  }

  return result;
}

uint64_t LibSer_ACMDeserializeSEPControlCode()
{
  sub_100001760();
  if (v4 <= 0xA)
  {
    printf("%s: %s: called.\n", "ACM", "LibSer_ACMDeserializeSEPControlCode");
  }

  v10 = 0;
  v9 = 0;
  v5 = 4294967293;
  if (v1 && v2)
  {
    if (v2 < 0x18)
    {
      v5 = 4294967293;
    }

    else
    {
      v11 = 16;
      v6 = sub_10007BD10(v1, v2, &v11, &v10, &v9);
      if (v6)
      {
        v5 = v6;
      }

      else
      {
        v5 = 4294967293;
        if (v1 + v11 != -4 && *(v1 + v11) >= 4u)
        {
          v5 = 0;
          *v0 = *(v1 + v11 + 4);
        }
      }
    }
  }

  Util_SafeDeallocParameters(v10, v9);
  if (v5)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= *(v3 + 2304))
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibSer_ACMDeserializeSEPControlCode", v5);
  }

  return v5;
}

uint64_t crypto_generateKeyFromSharedInfo(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, _OWORD *a7)
{
  if ((a1 - 3) < 0xFFFFFFFE)
  {
    sub_100001778();
    goto LABEL_31;
  }

  v7 = a4;
  if (a2)
  {
    v9 = a3 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (a1 == 1)
  {
    if (!a7)
    {
      v10 = 1;
    }

    if (v10)
    {
      sub_100001778();
    }

    else
    {
      ccsha256_di();
      v11 = cchkdf();
      v7 = sub_10007C0E8(v11, "cchkdf");
      if (v7)
      {
        v12 = 70;
      }

      else
      {
        *a7 = 0u;
        a7[1] = 0u;
        v12 = 10;
      }
    }

    if (v12 < gACMLoggingLevel)
    {
      goto LABEL_28;
    }

    v13 = v7;
    v14 = "crypto_generateKeyFromSharedInfo_version1";
  }

  else
  {
    if (a6)
    {
      v16 = a7 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v10 = 1;
    }

    if (v10)
    {
      sub_100001778();
    }

    else
    {
      ccsha256_di();
      strlen(a6);
      v17 = cchkdf();
      v7 = sub_10007C0E8(v17, "cchkdf");
      if (v7)
      {
        v18 = 70;
      }

      else
      {
        *a7 = 0u;
        a7[1] = 0u;
        v18 = 10;
      }
    }

    if (v18 < gACMLoggingLevel)
    {
      goto LABEL_28;
    }

    v13 = v7;
    v14 = "crypto_generateKeyFromSharedInfo_version2";
  }

  printf("%s: %s: returning, err = %ld.\n", "ACM", v14, v13);
LABEL_28:
  if (v7)
  {
    v19 = 70;
  }

  else
  {
    v19 = 10;
  }

LABEL_31:
  if (v19 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "crypto_generateKeyFromSharedInfo", v7);
  }

  return v7;
}

uint64_t crypto_generateKey(uint64_t a1)
{
  v2 = 70;
  if (a1)
  {
    sub_10007C23C(a1, 32);
    sub_100001914();
    if (v3)
    {
      v2 = 10;
    }

    else
    {
      v2 = 70;
    }
  }

  else
  {
    v1 = 4294967293;
  }

  if (v2 >= gACMLoggingLevel)
  {
    sub_1000019E4();
    printf("%s: %s: returning, err = %ld.\n", v5, v6, v7);
  }

  return v1;
}

uint64_t crypto_encryptText(uint64_t a1, uint64_t a2)
{
  if ((a1 - 3) < 0xFFFFFFFE)
  {
    sub_100001778();
  }

  else
  {
    if (a1 == 1)
    {
      sub_10007C188(a1, a2);
      sub_10007C388();
    }

    else
    {
      sub_10007C188(a1, a2);
      sub_10007C548();
    }

    sub_100001914();
  }

  sub_100002370();
  if (v3)
  {
    sub_1000019E4();
    printf("%s: %s: returning, err = %ld.\n", v5, v6, v7);
  }

  return v2;
}

uint64_t crypto_decryptText(uint64_t a1, uint64_t a2)
{
  if ((a1 - 3) < 0xFFFFFFFE)
  {
    sub_100001778();
  }

  else
  {
    if (a1 == 1)
    {
      sub_10007C188(a1, a2);
      sub_10007C738();
    }

    else
    {
      sub_10007C188(a1, a2);
      sub_10007C914();
    }

    sub_100001914();
  }

  sub_100002370();
  if (v3)
  {
    sub_1000019E4();
    printf("%s: %s: returning, err = %ld.\n", v5, v6, v7);
  }

  return v2;
}

uint64_t crypto_deriveKeyAndEncryptData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  sub_10007C21C();
  if (v19)
  {
    v20 = v14 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20 || v15 == 0 || v16 == 0 || v17 == 0 || v18 == 0 || a10 == 0)
  {
    sub_100001778();
  }

  else
  {
    v26 = v11;
    if (a9)
    {
      v30 = sub_10007C1CC(v11, v12, v13, v14, v15, v16, v17, v18, v31, v32, v33, v34, v35[0], v35[1]);
      if (v30)
      {
        v10 = v30;
      }

      else
      {
        v10 = crypto_encryptText(v26, v35);
        if (!v10)
        {
          acm_explicit_bzero(v35, 0x20uLL);
        }
      }
    }

    else
    {
      v27 = 32;
      if (v11 != 1)
      {
        v27 = 33;
      }

      v28 = v27 + v17;
      if (v28)
      {
        v10 = 0;
        *a10 = v28;
      }

      else
      {
        v10 = 4294967280;
      }
    }
  }

  sub_100002370();
  if (v19)
  {
    sub_1000019E4();
    printf("%s: %s: returning, err = %ld.\n", v31, v32, v33);
  }

  return v10;
}

uint64_t crypto_deriveKeyAndDecryptData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10)
{
  sub_10007C21C();
  if (v19)
  {
    v20 = v14 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20 || v15 == 0 || v16 == 0 || v17 == 0 || a10 == 0)
  {
    sub_100001778();
    goto LABEL_26;
  }

  v25 = v11;
  if (!a9)
  {
    if (v11 == 1)
    {
      if (v17 <= 0x1F)
      {
        goto LABEL_25;
      }

      v26 = v17 - 32;
    }

    else
    {
      v26 = v17 - 33;
      if (v17 < 0x21)
      {
        goto LABEL_25;
      }
    }

    if (v26)
    {
      v10 = 0;
      *a10 = v26;
      goto LABEL_26;
    }

LABEL_25:
    v10 = 4294967280;
    goto LABEL_26;
  }

  v28 = sub_10007C1CC(v11, v12, v13, v14, v15, v16, v17, v18, v29, v30, v31, v32, v33[0], v33[1]);
  if (v28)
  {
    v10 = v28;
  }

  else
  {
    v10 = crypto_decryptText(v25, v33);
    if (!v10)
    {
      acm_explicit_bzero(v33, 0x20uLL);
    }
  }

LABEL_26:
  sub_100002370();
  if (v19)
  {
    sub_1000019E4();
    printf("%s: %s: returning, err = %ld.\n", v29, v30, v31);
  }

  return v10;
}

uint64_t crypto_generateRandomSaltLazily()
{
  sub_100001778();
  if (v1)
  {
    v3 = v2;
    if (v2)
    {
      v4 = v1;
      while (Util_isNullOrZeroMemory(v4, v3))
      {
        v5 = sub_10007C23C(v4, v3);
        if (v5)
        {
          v0 = v5;
          goto LABEL_8;
        }
      }

      v0 = 0;
    }
  }

LABEL_8:
  sub_100002370();
  if (v6)
  {
    sub_1000019E4();
    printf("%s: %s: returning, err = %ld.\n", v8, v9, v10);
  }

  return v0;
}

void LibCall_ACMGlobalContextCredentialGetProperty_Block(uint64_t (*a1)(uint64_t, uint64_t, void, uint64_t *, uint64_t, _BYTE *, uint64_t *), uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGlobalContextCredentialGetProperty_Block");
  }

  bzero(v18, 0x100uLL);
  v16 = 256;
  if (a1)
  {
    v17 = 0;
    v15 = 8;
    Property_Serialize = LibSer_GlobalContextCredentialGetProperty_Serialize(a3, a4, &v17, &v15);
    if (Property_Serialize)
    {
LABEL_7:
      v11 = Property_Serialize;
      goto LABEL_8;
    }

    if (v15 == 8)
    {
      Property_Serialize = a1(a2, 27, 0, &v17, 8, v18, &v16);
      goto LABEL_7;
    }

    v11 = 4294967291;
  }

  else
  {
    v11 = 4294967293;
  }

LABEL_8:
  if (a5)
  {
    v12 = sub_10007D308();
    v13(v12, v11);
  }

  if (v11)
  {
    v14 = 70;
  }

  else
  {
    v14 = 10;
  }

  if (v14 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMGlobalContextCredentialGetProperty_Block", v11);
  }
}

uint64_t LibCall_ACMContextVerifyPolicyWithPreflight_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextVerifyPolicyWithPreflight_Block");
  }

  v17 = 0;
  v16 = 0;
  v12 = 70;
  v13 = 4294967293;
  if (a3 && a4 && a6)
  {
    v13 = LibCall_ACMContextVerifyPolicyEx(a1, a2, a3, a4, a5, 0, 0, 0, &v16, &v17);
    v14 = v17;
    if (!v13)
    {
      (*(a6 + 16))(a6, v16, v17);
      v14 = v17;
    }

    if (v14)
    {
      Util_DeallocRequirement(v14);
    }

    if (v13)
    {
      v12 = 70;
    }

    else
    {
      v12 = 10;
    }
  }

  if (v12 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextVerifyPolicyWithPreflight_Block", v13);
  }

  return v13;
}

int *LibCall_ACMContextVerifyPolicyEx_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextVerifyPolicyEx_Block");
  }

  v17 = 0;
  v18 = 0;
  v22 = 0;
  v21 = 0;
  v19 = 4294967293;
  if (a3 && a4 && a9)
  {
    v19 = LibCall_ACMContextVerifyPolicyEx(a1, a2, a3, a4, a5, a6, a7, a8, &v21, &v22);
    v18 = v22;
    v17 = v21;
  }

  (*(a9 + 16))(a9, v19, v17 & 1, v18);
  result = v22;
  if (v22)
  {
    result = Util_DeallocRequirement(v22);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMContextVerifyPolicyEx_Block");
  }

  return result;
}

uint64_t LibCall_ACMGetEnvironmentVariable_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGetEnvironmentVariable_Block");
  }

  memset(v17, 0, sizeof(v17));
  v16 = 128;
  if (!a4)
  {
    v14 = 70;
    v9 = 4294967293;
    goto LABEL_11;
  }

  if (a3 == 36)
  {
    v8 = acm_mem_alloc_data(0x800uLL);
    acm_mem_alloc_info("<data>", v8, 2048, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCallBlock.c", 162, "LibCall_ACMGetEnvironmentVariable_Block");
    if (!v8)
    {
      v14 = 70;
      v9 = 4294967292;
      goto LABEL_11;
    }

    v16 = 2048;
    v9 = LibCall_ACMGetEnvironmentVariable(a1, a2, 36, v8, &v16);
    if (!v9)
    {
      v10 = sub_10007D308();
      v11(v10);
      acm_mem_free_info("<data>", v8, 0x800uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCallBlock.c", 176, "LibCall_ACMGetEnvironmentVariable_Block");
      acm_mem_free_data(v8, 0x800uLL);
LABEL_10:
      v14 = 10;
      goto LABEL_11;
    }

    acm_mem_free_info("<data>", v8, 0x800uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCallBlock.c", 176, "LibCall_ACMGetEnvironmentVariable_Block");
    acm_mem_free_data(v8, 0x800uLL);
  }

  else
  {
    v9 = LibCall_ACMGetEnvironmentVariable(a1, a2, a3, v17, &v16);
    if (!v9)
    {
      v12 = sub_10007D308();
      v13(v12);
      goto LABEL_10;
    }
  }

  v14 = 70;
LABEL_11:
  if (v14 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMGetEnvironmentVariable_Block", v9);
  }

  return v9;
}

uint64_t LibCall_ACMTRMLoadState_Block(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMTRMLoadState_Block");
  }

  bzero(v13, 0x2000uLL);
  v12 = 0x2000;
  if (v3)
  {
    v7 = LibCall_ACMTRMLoadState(v6, v5, v13, &v12);
    if (v7)
    {
      v10 = 70;
    }

    else
    {
      v8 = sub_10007D308();
      v9(v8);
      v10 = 10;
    }
  }

  else
  {
    v10 = 70;
    v7 = 4294967293;
  }

  if (v10 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMTRMLoadState_Block", v7);
  }

  return v7;
}

uint64_t LibCall_ACMContextUnloadToImage_Block(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextUnloadToImage_Block");
  }

  bzero(v9, 0x1000uLL);
  if (v2)
  {
    LibCall_ACMContextUnloadToImage();
    v4 = v3;
    if (v3)
    {
      v7 = 70;
    }

    else
    {
      v5 = sub_10007D308();
      v6(v5);
      v7 = 10;
    }
  }

  else
  {
    v7 = 70;
    v4 = 4294967293;
  }

  if (v7 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextUnloadToImage_Block", v4);
  }

  return v4;
}

uint64_t Util_WriteToBuffer(uint64_t a1, size_t a2, void *a3, void *__src, size_t __n)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_WriteToBuffer");
  }

  if (a3)
  {
    v10 = *a3;
    v11 = *a3 + __n;
    if (!__CFADD__(*a3, __n))
    {
      if (a1 && v11 > a2)
      {
        v12 = 4294967276;
        goto LABEL_19;
      }

      if (!a1 || !__src || !__n)
      {
        goto LABEL_12;
      }

      if (!__CFADD__(a1, v10))
      {
        memcpy((a1 + v10), __src, __n);
LABEL_12:
        v12 = 0;
        *a3 = v11;
        v13 = 10;
        goto LABEL_13;
      }
    }

    v12 = 4294967291;
  }

  else
  {
    v12 = 4294967293;
  }

LABEL_19:
  v13 = 70;
LABEL_13:
  if (v13 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "Util_WriteToBuffer", v12);
  }

  return v12;
}

uint64_t Util_ReadFromBuffer(uint64_t a1, size_t a2, void *a3, void *__dst, size_t __n)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_ReadFromBuffer");
  }

  v10 = 4294967293;
  v11 = 70;
  if (a1 && a3)
  {
    v12 = *a3;
    v13 = *a3 + __n;
    if (!__CFADD__(*a3, __n))
    {
      if (v13 > a2)
      {
        v10 = 4294967276;
        goto LABEL_17;
      }

      if (!__dst || !__n)
      {
        goto LABEL_11;
      }

      if (!__CFADD__(a1, v12))
      {
        memcpy(__dst, (a1 + v12), __n);
LABEL_11:
        v10 = 0;
        *a3 = v13;
        v11 = 10;
        goto LABEL_12;
      }
    }

    v10 = 4294967291;
LABEL_17:
    v11 = 70;
  }

LABEL_12:
  if (v11 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "Util_ReadFromBuffer", v10);
  }

  return v10;
}

rsize_t Util_DeallocCredential(_DWORD *a1)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_DeallocCredential");
  }

  if (a1)
  {
    v2 = 4294967293;
    v3 = 70;
    switch(*a1)
    {
      case 1:
        v4 = "ACMCredential - ACMCredentialDataPasscodeValidated";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 60;
        v5 = a1;
        v6 = 60;
        v9 = 146;
        goto LABEL_6;
      case 2:
        v4 = "ACMCredential - ACMCredentialDataPassphraseEntered";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 168;
        v5 = a1;
        v6 = 168;
        v9 = 138;
        goto LABEL_6;
      case 3:
        v4 = "ACMCredential - ACMCredentialDataBiometryMatched";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 337;
        v5 = a1;
        v6 = 337;
        v9 = 142;
        goto LABEL_6;
      case 4:
      case 5:
      case 6:
      case 8:
      case 0xE:
      case 0x10:
      case 0x13:
      case 0x16:
      case 0x17:
        sub_10007D58C();
        v9 = 191;
        goto LABEL_6;
      case 7:
        v4 = "ACMCredential - ACMCredentialDataUserOutputDisplayed";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 88;
        v5 = a1;
        v6 = 88;
        v9 = 154;
        goto LABEL_6;
      case 9:
        v4 = "ACMCredential - ACMCredentialDataContinuityUnlock";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 56;
        v5 = a1;
        v6 = 56;
        v9 = 158;
        goto LABEL_6;
      case 0xA:
        v4 = "ACMCredential - ACMCredentialDataPasscodeValidated2";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 84;
        v5 = a1;
        v6 = 84;
        v9 = 150;
        goto LABEL_6;
      case 0xC:
      case 0xF:
        v4 = "ACMCredential - ACMCredentialDataKextDenyList";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 40;
        v5 = a1;
        v6 = 40;
        v9 = 163;
        goto LABEL_6;
      case 0xD:
        v4 = "ACMCredential - ACMCredentialDataPassphraseExtractable";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 164;
        v5 = a1;
        v6 = 164;
        v9 = 133;
        goto LABEL_6;
      case 0x11:
        v4 = "ACMCredential - ACMCredentialDataSecureIntent";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 113;
        v5 = a1;
        v6 = 113;
        v9 = 167;
        goto LABEL_6;
      case 0x12:
        v4 = "ACMCredential - ACMCredentialDataBiometryMatchAttempted";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 52;
        v5 = a1;
        v6 = 52;
        v9 = 171;
        goto LABEL_6;
      case 0x14:
        v4 = "ACMCredential - ACMCredentialDataAP";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 64;
        v5 = a1;
        v6 = 64;
        v9 = 175;
        goto LABEL_6;
      case 0x15:
        v4 = "ACMCredential - ACMCredentialDataSignature";
        v7 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
        v8 = "Util_DeallocCredential";
        v2 = 164;
        v5 = a1;
        v6 = 164;
        v9 = 179;
LABEL_6:
        acm_mem_free_info(v4, v5, v6, v7, v9, v8);
        acm_mem_free(a1, v2);
        v2 = 0;
        v3 = 10;
        break;
      default:
        break;
    }
  }

  else
  {
    v2 = 4294967293;
    v3 = 70;
  }

  if (v3 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "Util_DeallocCredential", v2);
  }

  return v2;
}

uint64_t Util_AllocCredential(int a1, void *a2)
{
  if (!a2)
  {
    return 4294967293;
  }

  result = 4294967293;
  switch(a1)
  {
    case 1:
      sub_10007D568();
      v6 = acm_mem_alloc_typed(0x3CuLL, v18);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataPasscodeValidated", v6, 60, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 230, "Util_AllocCredential");
      v7 = 28;
      goto LABEL_4;
    case 2:
      sub_10007D568();
      v6 = acm_mem_alloc_typed(0xA8uLL, v19);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataPassphraseEntered", v6, 168, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 220, "Util_AllocCredential");
      v7 = 136;
      goto LABEL_4;
    case 3:
      sub_10007D568();
      v6 = acm_mem_alloc_typed(0x151uLL, v15);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataBiometryMatched", v6, 337, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 225, "Util_AllocCredential");
      v7 = 305;
      goto LABEL_4;
    case 4:
    case 5:
    case 6:
    case 8:
    case 14:
    case 16:
    case 19:
    case 22:
    case 23:
      sub_10007D568();
      v6 = acm_mem_alloc_typed(0x20uLL, v5);
      acm_mem_alloc_info("ACMCredential", v6, 32, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 284, "Util_AllocCredential");
      v7 = 0;
      goto LABEL_4;
    case 7:
      sub_10007D568();
      v6 = acm_mem_alloc_typed(0x58uLL, v17);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataUserOutputDisplayed", v6, 88, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 240, "Util_AllocCredential");
      v7 = 56;
      goto LABEL_4;
    case 9:
      sub_10007D568();
      v6 = acm_mem_alloc_typed(0x38uLL, v14);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataContinuityUnlock", v6, 56, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 245, "Util_AllocCredential");
      v7 = 24;
      goto LABEL_4;
    case 10:
      sub_10007D568();
      v6 = acm_mem_alloc_typed(0x54uLL, v20);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataPasscodeValidated2", v6, 84, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 235, "Util_AllocCredential");
      v7 = 52;
      goto LABEL_4;
    case 12:
    case 15:
      sub_10007D568();
      v6 = acm_mem_alloc_typed(0x28uLL, v8);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataKextDenyList", v6, 40, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 251, "Util_AllocCredential");
      v7 = 8;
      goto LABEL_4;
    case 13:
      sub_10007D568();
      v6 = acm_mem_alloc_typed(0xA4uLL, v21);
      v11 = "ACMCredential - ACMCredentialDataPassphraseExtractable";
      v12 = v6;
      v13 = 214;
      goto LABEL_17;
    case 17:
      sub_10007D568();
      v6 = acm_mem_alloc_typed(0x71uLL, v9);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataSecureIntent", v6, 113, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 256, "Util_AllocCredential");
      v7 = 81;
      goto LABEL_4;
    case 18:
      sub_10007D568();
      v6 = acm_mem_alloc_typed(0x34uLL, v16);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataBiometryMatchAttempted", v6, 52, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 261, "Util_AllocCredential");
      v7 = 20;
      goto LABEL_4;
    case 20:
      sub_10007D568();
      v6 = acm_mem_alloc_typed(0x40uLL, v22);
      acm_mem_alloc_info("ACMCredential - ACMCredentialDataAP", v6, 64, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 266, "Util_AllocCredential");
      v7 = 32;
      goto LABEL_4;
    case 21:
      sub_10007D568();
      v6 = acm_mem_alloc_typed(0xA4uLL, v10);
      v11 = "ACMCredential - ACMCredentialDataSignature";
      v12 = v6;
      v13 = 271;
LABEL_17:
      acm_mem_alloc_info(v11, v12, 164, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", v13, "Util_AllocCredential");
      v7 = 132;
LABEL_4:
      if (v6)
      {
        result = 0;
        *v6 = a1;
        v6[1] = 1;
        v6[7] = v7;
        v6[3] = -1;
        *a2 = v6;
      }

      else
      {
        result = 4294967292;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t Util_AllocRequirement(int a1, int a2, void *a3)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_AllocRequirement");
  }

  if (!a3)
  {
LABEL_61:
    v6 = 4294967293;
    goto LABEL_62;
  }

  v6 = 4294967293;
  v7 = 70;
  switch(a1)
  {
    case 1:
      sub_10007D554();
      v9 = acm_mem_alloc_typed(0x14uLL, v35);
      sub_10007D59C();
      v23 = 346;
      goto LABEL_57;
    case 2:
      sub_10007D554();
      v9 = acm_mem_alloc_typed(0x14uLL, v34);
      sub_10007D59C();
      v23 = 351;
      goto LABEL_57;
    case 3:
      sub_10007D554();
      v9 = acm_mem_alloc_typed(0xACuLL, v32);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataBiometryMatched", v9, 172, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 356, "Util_AllocRequirement");
      v10 = 156;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 4:
      sub_10000237C();
      if (!v12)
      {
        goto LABEL_61;
      }

      sub_10007D554();
      v9 = acm_mem_alloc_typed(0x64uLL, v28);
      v29 = "ACMRequirement - ACMRequirementDataOr";
      v30 = v9;
      v31 = 414;
      goto LABEL_45;
    case 5:
      sub_10000237C();
      if (!v12)
      {
        goto LABEL_61;
      }

      sub_10007D554();
      v9 = acm_mem_alloc_typed(0x64uLL, v33);
      v29 = "ACMRequirement - ACMRequirementDataAnd";
      v30 = v9;
      v31 = 406;
LABEL_45:
      acm_mem_alloc_info(v29, v30, 100, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", v31, "Util_AllocRequirement");
      v10 = 84;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 6:
    case 9:
    case 10:
    case 12:
    case 14:
    case 15:
    case 18:
    case 19:
    case 22:
    case 23:
    case 27:
    case 28:
      sub_10007D554();
      v9 = acm_mem_alloc_typed(0x10uLL, v8);
      acm_mem_alloc_info("ACMRequirement", v9, 16, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 336, "Util_AllocRequirement");
      v10 = 0;
      if (v9)
      {
        goto LABEL_6;
      }

      goto LABEL_58;
    case 7:
      sub_10000237C();
      if (!v12)
      {
        goto LABEL_61;
      }

      sub_10007D554();
      v9 = acm_mem_alloc_typed(0x68uLL, v24);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataKofN", v9, 104, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 399, "Util_AllocRequirement");
      v10 = 88;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 8:
      sub_10007D554();
      v9 = acm_mem_alloc_typed(0x410uLL, v26);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataAccessGroups", v9, 1040, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 386, "Util_AllocRequirement");
      v10 = 1024;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 11:
      sub_10007D554();
      v9 = acm_mem_alloc_typed(0x18uLL, v36);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataPushButton", v9, 24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 341, "Util_AllocRequirement");
      v10 = 8;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 13:
      sub_10007D554();
      v9 = acm_mem_alloc_typed(0x30uLL, v27);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataUserOutputDisplayed", v9, 48, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 371, "Util_AllocRequirement");
      v10 = 32;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 16:
    case 17:
      goto LABEL_19;
    case 20:
      sub_10007D554();
      v9 = acm_mem_alloc_typed(0x14uLL, v37);
      sub_10007D59C();
      v23 = 361;
      goto LABEL_57;
    case 21:
      sub_10007D554();
      v9 = acm_mem_alloc_typed(0x14uLL, v17);
      sub_10007D59C();
      v23 = 366;
LABEL_57:
      acm_mem_alloc_info(v18, v19, v20, v21, v23, v22);
      v10 = 4;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 24:
      sub_10007D554();
      v9 = acm_mem_alloc_typed(0x434uLL, v16);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataAP", v9, 1076, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 376, "Util_AllocRequirement");
      v10 = 1060;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 25:
      sub_10007D554();
      v9 = acm_mem_alloc_typed(0x3BuLL, v15);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataKeyRef", v9, 59, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 381, "Util_AllocRequirement");
      v10 = 43;
      if (!v9)
      {
        goto LABEL_58;
      }

      goto LABEL_6;
    case 26:
      sub_10007D554();
      v9 = acm_mem_alloc_typed(0x2CuLL, v25);
      acm_mem_alloc_info("ACMRequirement - ACMRequirementDataRatchet", v9, 44, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 392, "Util_AllocRequirement");
      v10 = 28;
      if (v9)
      {
LABEL_6:
        *v9 = a1;
        *(v9 + 1) = 0x100000001;
        v9[3] = v10;
        if ((a1 & 0xFFFFFFFE) == 4)
        {
          v11 = 4;
        }

        else if (a1 == 7)
        {
          v11 = 5;
        }

        else
        {
          if (a1 != 1000)
          {
LABEL_18:
            v6 = 0;
            *a3 = v9;
            v7 = 10;
            goto LABEL_19;
          }

          v11 = 13;
        }

        v9[v11] = a2;
        goto LABEL_18;
      }

LABEL_58:
      v6 = 4294967292;
LABEL_62:
      v7 = 70;
LABEL_19:
      if (v7 >= gACMLoggingLevel)
      {
        printf("%s: %s: returning, err = %ld.\n", "ACM", "Util_AllocRequirement", v6);
      }

      return v6;
    default:
      switch(a1)
      {
        case 1000:
          sub_10000237C();
          if (!v12)
          {
            goto LABEL_61;
          }

          sub_10007D554();
          v9 = acm_mem_alloc_typed(0x88uLL, v13);
          acm_mem_alloc_info("ACMRequirement - ACMRequirementDataKofNWithAttributes", v9, 136, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 422, "Util_AllocRequirement");
          v10 = 120;
          if (!v9)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        case 1001:
          sub_10007D554();
          v9 = acm_mem_alloc_typed(0xB8uLL, v44);
          acm_mem_alloc_info("ACMRequirement - ACMRequirementDataBiometryMatchedWithAttributes", v9, 184, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 427, "Util_AllocRequirement");
          v10 = 168;
          if (!v9)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        case 1002:
          sub_10007D554();
          v9 = acm_mem_alloc_typed(0x20uLL, v42);
          v39 = "ACMRequirement - ACMRequirementDataPushButtonWithAttributes";
          v40 = v9;
          v41 = 432;
          goto LABEL_54;
        case 1003:
          sub_10007D554();
          v9 = acm_mem_alloc_typed(0x14uLL, v43);
          sub_10007D59C();
          v23 = 437;
          goto LABEL_57;
        case 1004:
          sub_10007D554();
          v9 = acm_mem_alloc_typed(0x20uLL, v38);
          v39 = "ACMRequirement - ACMRequirementDataPasscodeValidatedWithAttributes";
          v40 = v9;
          v41 = 442;
LABEL_54:
          acm_mem_alloc_info(v39, v40, 32, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", v41, "Util_AllocRequirement");
          v10 = 16;
          if (!v9)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        default:
          goto LABEL_19;
      }
  }
}

uint64_t Util_CreateRequirement(int a1, int a2)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_CreateRequirement");
  }

  v5 = 0;
  Util_AllocRequirement(a1, a2, &v5);
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: returning.\n", "ACM", "Util_CreateRequirement");
  }

  return v5;
}

rsize_t Util_DeallocRequirement(int *a1)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "Util_DeallocRequirement");
  }

  if (!a1)
  {
    v7 = 4294967293;
    v8 = 70;
    goto LABEL_27;
  }

  v2 = *a1;
  if (*a1 == 4)
  {
    if (a1[4])
    {
      v6 = 0;
      do
      {
        Util_DeallocRequirement(*&a1[2 * v6++ + 5]);
      }

      while (v6 < a1[4]);
    }
  }

  else
  {
    switch(v2)
    {
      case 5:
        if (a1[4])
        {
          v4 = 0;
          do
          {
            Util_DeallocRequirement(*&a1[2 * v4++ + 5]);
          }

          while (v4 < a1[4]);
        }

        break;
      case 7:
        if (a1[5])
        {
          v5 = 0;
          do
          {
            Util_DeallocRequirement(*&a1[2 * v5++ + 6]);
          }

          while (v5 < a1[5]);
        }

        break;
      case 1000:
        if (a1[13])
        {
          v3 = 0;
          do
          {
            Util_DeallocRequirement(*&a1[2 * v3++ + 14]);
          }

          while (v3 < a1[13]);
        }

        break;
      default:
        goto LABEL_24;
    }
  }

  v2 = *a1;
LABEL_24:
  v7 = 4294967293;
  v8 = 70;
  switch(v2)
  {
    case 1:
      sub_10007D57C();
      v14 = 553;
      goto LABEL_26;
    case 2:
      sub_10007D57C();
      v14 = 557;
      goto LABEL_26;
    case 3:
      v9 = "ACMRequirement - ACMRequirementDataBiometryMatched";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 172;
      v12 = a1;
      v13 = 172;
      v14 = 561;
      goto LABEL_26;
    case 4:
      v9 = "ACMRequirement - ACMRequirementDataOr";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 100;
      v12 = a1;
      v13 = 100;
      v14 = 606;
      goto LABEL_26;
    case 5:
      v9 = "ACMRequirement - ACMRequirementDataAnd";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 100;
      v12 = a1;
      v13 = 100;
      v14 = 600;
      goto LABEL_26;
    case 6:
    case 9:
    case 10:
    case 12:
    case 14:
    case 15:
    case 18:
    case 19:
    case 22:
    case 23:
    case 27:
    case 28:
      v9 = "ACMRequirement";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 16;
      v12 = a1;
      v13 = 16;
      v14 = 545;
      goto LABEL_26;
    case 7:
      v9 = "ACMRequirement - ACMRequirementDataKofN";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 104;
      v12 = a1;
      v13 = 104;
      v14 = 595;
      goto LABEL_26;
    case 8:
      v9 = "ACMRequirement - ACMRequirementDataAccessGroups";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 1040;
      v12 = a1;
      v13 = 1040;
      v14 = 585;
      goto LABEL_26;
    case 11:
      v9 = "ACMRequirement - ACMRequirementDataPushButton";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 24;
      v12 = a1;
      v13 = 24;
      v14 = 549;
      goto LABEL_26;
    case 13:
      v9 = "ACMRequirement - ACMRequirementDataUserOutputDisplayed";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 48;
      v12 = a1;
      v13 = 48;
      v14 = 573;
      goto LABEL_26;
    case 16:
    case 17:
      break;
    case 20:
      sub_10007D57C();
      v14 = 565;
      goto LABEL_26;
    case 21:
      sub_10007D57C();
      v14 = 569;
      goto LABEL_26;
    case 24:
      v9 = "ACMRequirement - ACMRequirementDataAP";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 1076;
      v12 = a1;
      v13 = 1076;
      v14 = 577;
      goto LABEL_26;
    case 25:
      v9 = "ACMRequirement - ACMRequirementDataKeyRef";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 59;
      v12 = a1;
      v13 = 59;
      v14 = 581;
      goto LABEL_26;
    case 26:
      v9 = "ACMRequirement - ACMRequirementDataRatchet";
      v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
      v11 = "Util_DeallocRequirement";
      v7 = 44;
      v12 = a1;
      v13 = 44;
      v14 = 590;
LABEL_26:
      acm_mem_free_info(v9, v12, v13, v10, v14, v11);
      acm_mem_free(a1, v7);
      v7 = 0;
      v8 = 10;
      break;
    default:
      switch(v2)
      {
        case 1000:
          v9 = "ACMRequirement - ACMRequirementDataKofNWithAttributes";
          v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
          v11 = "Util_DeallocRequirement";
          v7 = 136;
          v12 = a1;
          v13 = 136;
          v14 = 612;
          goto LABEL_26;
        case 1001:
          v9 = "ACMRequirement - ACMRequirementDataBiometryMatchedWithAttributes";
          v10 = "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c";
          v11 = "Util_DeallocRequirement";
          v7 = 184;
          v12 = a1;
          v13 = 184;
          v14 = 616;
          goto LABEL_26;
        case 1002:
          sub_10007D58C();
          v14 = 620;
          goto LABEL_26;
        case 1003:
          sub_10007D57C();
          v14 = 624;
          goto LABEL_26;
        case 1004:
          sub_10007D58C();
          v14 = 628;
          goto LABEL_26;
        default:
          goto LABEL_27;
      }
  }

LABEL_27:
  if (v8 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "Util_DeallocRequirement", v7);
  }

  return v7;
}

void ACMContextAddCredentialWithScope(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, size_t size, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000809F8();
  sub_100080984();
  sub_100080910();
  if (v28 <= 0xA && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_1000808A0();
    sub_1000808C8();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
  }

  sub_100080994();
  sub_100001778();
  if (v27 && (v34 & 1) == 0)
  {
    if (sub_100080C08() || (v35 = sub_1000808B8(), GetSerializedAddCredentialSize(v35, v36, v37, v38)))
    {
      sub_1000809A4();
    }

    else
    {
      v39 = acm_mem_alloc_data(size);
      acm_mem_alloc_info("<data>", v39, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 333, "ACMContextAddCredentialWithScope");
      if (v39)
      {
        v40 = sub_1000808B8();
        if (!SerializeAddCredential(v40, v41, v42, v39, v43))
        {
          sub_10008092C(v26, 5, v44, v45, size);
        }

        acm_mem_free_info("<data>", v39, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 346, "ACMContextAddCredentialWithScope");
        acm_mem_free_data(v39, size);
      }

      else
      {
        sub_1000809B0();
      }
    }
  }

  sub_1000809BC();
  if (v46 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10008086C();
    sub_1000808C8();
    _os_log_impl(v47, v48, v49, v50, v51, 0x20u);
  }

  sub_1000809E0();
}

uint64_t ACMContextRemoveCredentialsByTypeAndScope(_OWORD *a1, int a2, int a3)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100080920();
    sub_1000019F0();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }

  if (a1 || a3 == 2)
  {
    if (sub_100080C08())
    {
      sub_1000809A4();
    }

    else
    {
      v12 = acm_mem_alloc_data(0x18uLL);
      sub_10008094C();
      acm_mem_alloc_info(v13, v14, v15, v16, 394, v17);
      if (v12)
      {
        if (a1)
        {
          *v12 = *a1;
        }

        else
        {
          *v12 = 0;
          v12[1] = 0;
        }

        *(v12 + 4) = a2;
        *(v12 + 5) = a3;
        sub_100080974();
        v3 = sub_100080DBC(v18, v19, v20, v21, v22, 0, 0);
        sub_10008094C();
        acm_mem_free_info(v23, v24, v25, v26, 415, v27);
        acm_mem_free_data(v12, 0x18uLL);
      }

      else
      {
        sub_1000809B0();
      }
    }
  }

  else
  {
    sub_100001778();
  }

  sub_1000809BC();
  if (v28 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100080A10();
    sub_100080958();
    sub_100001784();
    sub_1000019F0();
    _os_log_impl(v29, v30, v31, v32, v33, 0x20u);
  }

  return v3;
}

void ACMContextRemoveCredentialsByValueAndScope(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, size_t size, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000809F8();
  sub_100080984();
  sub_100080910();
  if (v28 <= 0xA && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_1000808A0();
    sub_1000808C8();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
  }

  sub_100080994();
  sub_100001778();
  if (v27 && (v34 & 1) == 0)
  {
    if (sub_100080C08() || (v35 = sub_1000808B8(), GetSerializedRemoveCredentialSize(v35, v36, v37, v38)))
    {
      sub_1000809A4();
    }

    else
    {
      v39 = acm_mem_alloc_data(size);
      acm_mem_alloc_info("<data>", v39, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 465, "ACMContextRemoveCredentialsByValueAndScope");
      if (v39)
      {
        v40 = sub_1000808B8();
        if (!SerializeRemoveCredential(v40))
        {
          sub_10008092C(v26, 6, v41, v42, size);
        }

        acm_mem_free_info("<data>", v39, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 478, "ACMContextRemoveCredentialsByValueAndScope");
        acm_mem_free_data(v39, size);
      }

      else
      {
        sub_1000809B0();
      }
    }
  }

  sub_1000809BC();
  if (v43 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10008086C();
    sub_1000808C8();
    _os_log_impl(v44, v45, v46, v47, v48, 0x20u);
  }

  sub_1000809E0();
}

uint64_t ACMGlobalContextRemoveCredentialsByType(int a1)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "ACMLib";
    sub_100001878();
    v19 = "ACMGlobalContextRemoveCredentialsByType";
    sub_1000808C8();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  v16 = 0;
  v7 = ACMContextCreateWithFlags(&v16, 0);
  if (!v7)
  {
    v7 = ACMContextRemoveCredentialsByTypeAndScope(v16, a1, 2);
  }

  v8 = v7;
  if (v16)
  {
    ACMContextDelete(v16, 1);
  }

  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_1000016C8();
    v18 = "ACMLib";
    sub_10000192C();
    v19 = "ACMGlobalContextRemoveCredentialsByType";
    sub_100080890();
    sub_1000808C8();
    _os_log_impl(v10, v11, v12, v13, v14, 0x20u);
  }

  return v8;
}

uint64_t ACMContextRemovePassphraseCredentialsByPurposeAndScope(_OWORD *a1, int a2, int a3)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100080920();
    sub_1000019F0();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }

  if (a1 || a3 == 2)
  {
    if (sub_100080C08())
    {
      sub_1000809A4();
    }

    else
    {
      v12 = acm_mem_alloc_data(0x18uLL);
      sub_10008094C();
      acm_mem_alloc_info(v13, v14, v15, v16, 500, v17);
      if (v12)
      {
        if (a1)
        {
          *v12 = *a1;
        }

        else
        {
          *v12 = 0;
          v12[1] = 0;
        }

        *(v12 + 4) = a2;
        *(v12 + 5) = a3;
        sub_100080974();
        v3 = sub_100080DBC(v18, v19, v20, v21, v22, 0, 0);
        sub_10008094C();
        acm_mem_free_info(v23, v24, v25, v26, 521, v27);
        acm_mem_free_data(v12, 0x18uLL);
      }

      else
      {
        sub_1000809B0();
      }
    }
  }

  else
  {
    sub_100001778();
  }

  sub_1000809BC();
  if (v28 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100080A10();
    sub_100080958();
    sub_100001784();
    sub_1000019F0();
    _os_log_impl(v29, v30, v31, v32, v33, 0x20u);
  }

  return v3;
}

void ACMContextReplacePassphraseCredentialsWithScope(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, size_t size, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000809F8();
  sub_100080984();
  sub_100080910();
  if (v28 <= 0xA && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_1000808A0();
    sub_1000808C8();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
  }

  sub_100080994();
  sub_100001778();
  if (v27 && (v34 & 1) == 0)
  {
    if (sub_100080C08() || (v35 = sub_1000808B8(), GetSerializedReplacePassphraseCredentialSize(v35, v36, v37, v38)))
    {
      sub_1000809A4();
    }

    else
    {
      v39 = acm_mem_alloc_data(size);
      acm_mem_alloc_info("<data>", v39, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 546, "ACMContextReplacePassphraseCredentialsWithScope");
      if (v39)
      {
        v40 = sub_1000808B8();
        if (!SerializeReplacePassphraseCredential(v40))
        {
          sub_10008092C(v26, 15, v41, v42, size);
        }

        bzero(v39, size);
        acm_mem_free_info("<data>", v39, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 560, "ACMContextReplacePassphraseCredentialsWithScope");
        acm_mem_free_data(v39, size);
      }

      else
      {
        sub_1000809B0();
      }
    }
  }

  sub_1000809BC();
  if (v43 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10008086C();
    sub_1000808C8();
    _os_log_impl(v44, v45, v46, v47, v48, 0x20u);
  }

  sub_1000809E0();
}

uint64_t ACMContextContainsPassphraseCredentialWithPurpose(_OWORD *a1, int a2, int a3)
{
  sub_100080910();
  if (v7 <= 0xA && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_1000808A0();
    sub_1000808C8();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
  }

  if (a1)
  {
    v13 = sub_100080C08();
    if (v13)
    {
      v28 = v13;
    }

    else
    {
      v14 = acm_mem_alloc_data(0x18uLL);
      sub_10008094C();
      acm_mem_alloc_info(v15, v16, v17, v18, 597, v19);
      if (v14)
      {
        *v14 = *a1;
        v14[4] = a2;
        v14[5] = a3;
        sub_100080974();
        v27 = sub_100080DBC(v20, v21, v22, v23, v24, v25, v26);
        if (v27)
        {
          v28 = v27;
        }

        else
        {
          v28 = 4294967289;
        }

        sub_10008094C();
        acm_mem_free_info(v29, v30, v31, v32, 611, v33);
        acm_mem_free_data(v14, 0x18uLL);
      }

      else
      {
        v28 = 4294967292;
      }
    }
  }

  else
  {
    v28 = 4294967293;
  }

  if (*(v3 + 2305) <= 0x46u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10008086C();
    sub_1000808C8();
    _os_log_impl(v34, v35, v36, v37, v38, 0x20u);
  }

  return v28;
}

void ACMCredentialGetProperty()
{
  sub_1000809F8();
  v1 = v0;
  v3 = v2;
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100001878();
    sub_1000808C8();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  sub_100001778();
  if (v3 && v1)
  {
    v10 = sub_100080A30();
    LibCall_ACMCredentialGetPropertyData(v10, v11, v12, v13);
    if (v14)
    {
      v9 = 70;
    }

    else
    {
      v15 = sub_100080A1C();
      v16(v15);
      v9 = 10;
    }
  }

  if (v9 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_1000016C8();
    sub_10000192C();
    sub_100080890();
    sub_1000808C8();
    _os_log_impl(v17, v18, v19, v20, v21, 0x20u);
  }

  sub_1000809E0();
}

void ACMRequirementGetSubrequirements(int *a1, uint64_t a2)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100002388();
    sub_1000019F0();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  if (a1 && a2)
  {
    v9 = *a1;
    if (*a1 == 4)
    {
      if (a1[4])
      {
        v16 = 0;
        do
        {
          v17 = sub_100080964();
          v18(v17);
          ++v16;
        }

        while (v16 < a1[4]);
      }
    }

    else if (v9 == 5)
    {
      if (a1[4])
      {
        v13 = 0;
        do
        {
          v14 = sub_100080964();
          v15(v14);
          ++v13;
        }

        while (v13 < a1[4]);
      }
    }

    else if (v9 == 7 && a1[5])
    {
      v10 = 0;
      do
      {
        v11 = sub_100080964();
        v12(v11);
        ++v10;
      }

      while (v10 < a1[5]);
    }
  }

  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100002388();
    sub_1000019F0();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
  }
}

void ACMRequirementGetProperty()
{
  sub_1000809F8();
  v1 = v0;
  v3 = v2;
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100001878();
    sub_1000808C8();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  sub_100001778();
  if (v3 && v1)
  {
    v10 = sub_100080A30();
    if (LibCall_ACMRequirementGetPropertyData(v10, v11, v12, v13))
    {
      v9 = 70;
    }

    else
    {
      v14 = sub_100080A1C();
      v15(v14);
      v9 = 10;
    }
  }

  if (v9 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_1000016C8();
    sub_10000192C();
    sub_100080890();
    sub_1000808C8();
    _os_log_impl(v16, v17, v18, v19, v20, 0x20u);
  }

  sub_1000809E0();
}

uint64_t ACMRequirementGetProperties(int *a1, uint64_t a2)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100080920();
    sub_1000019F0();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  v9 = 4294967293;
  v10 = 70;
  if (a1 && a2)
  {
    (*(a2 + 16))(a2, 1, a1, 4);
    (*(a2 + 16))(a2, 2, a1 + 1, 4);
    (*(a2 + 16))(a2, 3, a1 + 2, 4);
    v9 = 0;
    v11 = *a1;
    v10 = 10;
    switch(*a1)
    {
      case 1:
        goto LABEL_10;
      case 2:
        v12 = sub_100080900();
        v14 = 200;
        goto LABEL_12;
      case 3:
        v21 = sub_100080900();
        v22(v21, 100);
        (*(a2 + 16))(a2, 300, a1 + 5, 8);
        (*(a2 + 16))(a2, 302, a1 + 9, 8);
        (*(a2 + 16))(a2, 301);
        goto LABEL_13;
      case 4:
      case 5:
      case 6:
        break;
      case 7:
        v12 = sub_100080900();
        v14 = 700;
        goto LABEL_12;
      default:
        if (v11 != 20 && v11 != 21)
        {
          break;
        }

LABEL_10:
        v12 = sub_100080900();
        v14 = 100;
LABEL_12:
        v13(v12, v14);
LABEL_13:
        v9 = 0;
        v10 = 10;
        break;
    }
  }

  if (v10 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_100080958();
    sub_100001784();
    sub_1000019F0();
    _os_log_impl(v15, v16, v17, v18, v19, 0x20u);
  }

  return v9;
}

uint64_t ACMContextGetDataEx(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  if (byte_1000EA901 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *size_4 = 136315394;
    *&size_4[4] = "ACMLib";
    *&size_4[12] = 2080;
    *&size_4[14] = "ACMContextGetDataEx";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", size_4, 0x16u);
  }

  HIDWORD(v24) = 0;
  v23 = 4;
  v10 = sub_1000808EC();
  v11 = LibCall_ACMContextGetData(v10, &v21, a1, a2, 1, a3, a4, &v24 + 4, &v23, v20, a1, 0, v23, v24, *size_4, *&size_4[8], *&size_4[16], v26, v27, v28, v29, v30, v31, v32, v33, v34);
  if (!v11)
  {
    v12 = HIDWORD(v24);
    if (HIDWORD(v24))
    {
      v13 = acm_mem_alloc_data(HIDWORD(v24));
      acm_mem_alloc_info("<data>", v13, v12, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 1182, "ACMContextGetDataEx");
      if (!v13)
      {
        v18 = 70;
        v16 = 4294967292;
        goto LABEL_15;
      }

      v22 = HIDWORD(v24);
      v14 = sub_1000808EC();
      v15 = LibCall_ACMContextGetData(v14, &v20, a1, a2, 0, a3, a4, v13, &v22, a1, v21, v22, v23, v24, *size_4, *&size_4[8], *&size_4[16], v26, v27, v28, v29, v30, v31, v32, v33, v34);
      v16 = v15;
      if (a5 && !v15)
      {
        (*(a5 + 16))(a5, v13, v22);
      }

      v17 = HIDWORD(v24);
      acm_mem_free_info("<data>", v13, HIDWORD(v24), "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 1196, "ACMContextGetDataEx");
      acm_mem_free_data(v13, v17);
      if (v16)
      {
        goto LABEL_11;
      }
    }

    else if (a5)
    {
      (*(a5 + 16))(a5, 0, 0);
    }

    v16 = 0;
    v18 = 10;
    goto LABEL_15;
  }

  v16 = v11;
LABEL_11:
  v18 = 70;
LABEL_15:
  if (v18 >= byte_1000EA901 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *size_4 = 136315650;
    *&size_4[4] = "ACMLib";
    *&size_4[12] = 2080;
    *&size_4[14] = "ACMContextGetDataEx";
    *&size_4[22] = 2048;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", size_4, 0x20u);
  }

  return v16;
}

_BYTE *LibCall_BuildCommand(char a1, char a2, char a3, const void *a4, size_t a5, void *a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_BuildCommand");
  }

  v12 = 0;
  if (a5)
  {
    v13 = a4 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13 && a6)
  {
    if (a5 >= 0xFFFFFFFFFFFFFFF8)
    {
      v12 = 0;
    }

    else
    {
      v12 = acm_mem_alloc_data(a5 + 8);
      acm_mem_alloc_info("<data>", v12, a5 + 8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 22, "LibCall_BuildCommand");
      if (v12)
      {
        *a6 = a5 + 8;
        *v12 = 1396920900;
        v12[4] = a1;
        v12[5] = a2;
        v12[6] = a3;
        v12[7] = 2;
        if (a5)
        {
          memcpy(v12 + 8, a4, a5);
        }
      }
    }
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: returning.\n", "ACM", "LibCall_BuildCommand");
  }

  return v12;
}

uint64_t LibCall_ACMContextCreate(uint64_t (*a1)(void), uint64_t a2, void *a3, uint64_t a4, _BYTE *a5, int a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextCreate");
  }

  sub_1000815CC();
  if (a1 && a3 && v11)
  {
    v12 = sub_100001884();
    acm_mem_alloc_info("ACMHandleWithPayload", v12, 20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 49, "LibCall_ACMContextCreate");
    if (!v12)
    {
      sub_100081618();
      goto LABEL_20;
    }

    memset(v17, 0, sizeof(v17));
    if (a6)
    {
      sub_100001794();
      sub_1000814DC();
      v13 = a1();
      if (!v13)
      {
        v6 = 0;
LABEL_16:
        *v12 = *v17;
        v12[4] = 0;
        *a3 = v12;
        if (a5)
        {
          *a5 = 0;
        }

LABEL_18:
        if (!v6)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v6 = v13;
      if (v13 != -3)
      {
LABEL_19:
        acm_mem_free_info("ACMHandleWithPayload", v12, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 89, "LibCall_ACMContextCreate");
        acm_mem_free(v12, 0x14uLL);
        goto LABEL_20;
      }
    }

    sub_100001794();
    sub_1000814DC();
    v14 = a1();
    if (v14)
    {
      v6 = v14;
    }

    else
    {
      v6 = 0;
    }

    if (v14)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_20:
  sub_100081598();
  if (v15)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextCreate", v6);
  }

  return v6;
}

uint64_t LibCall_ACMContextVerifyPolicyAndCopyRequirementEx(int a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7, int a8, BOOL *a9, uint64_t *a10, char a11)
{
  sub_1000019FC();
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextVerifyPolicyAndCopyRequirementEx");
  }

  v44 = 0;
  size = 0;
  v42 = 0;
  v43 = 4096;
  v17 = 4294967293;
  v41 = 0;
  if (v11 && a3 && a4 && a9)
  {
    if (a6 && a7)
    {
      v18 = a7;
      v19 = (a6 + 16);
      while (*(v19 - 4) != 13)
      {
        v19 += 6;
        if (!--v18)
        {
          goto LABEL_23;
        }
      }

      v20 = *(v19 - 1);
      v21 = *v19;
      if (v20)
      {
        v22 = v21 == 1;
      }

      else
      {
        v22 = 0;
      }

      if (v22)
      {
        if (!a11)
        {
          v17 = 4294967293;
          goto LABEL_35;
        }

        v22 = *v20 == 0;
      }
    }

    else
    {
      v17 = 4294967293;
      if (a6 || a7)
      {
        goto LABEL_35;
      }
    }

LABEL_23:
    sub_1000815B0();
    SerializedVerifyPolicySize = GetSerializedVerifyPolicySize();
    if (SerializedVerifyPolicySize)
    {
      v17 = SerializedVerifyPolicySize;
    }

    else
    {
      v24 = acm_mem_alloc_data(size);
      acm_mem_alloc_info("<data>", v24, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 348, "LibCall_ACMContextVerifyPolicyAndCopyRequirementEx");
      if (v24)
      {
        v44 = size;
        v25 = sub_1000815B0();
        v26 = SerializeVerifyPolicy(v25);
        if (v26)
        {
          v17 = v26;
          v27 = 0;
        }

        else
        {
          v27 = acm_mem_alloc_data(0x1000uLL);
          acm_mem_alloc_info("<data>", v27, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 355, "LibCall_ACMContextVerifyPolicyAndCopyRequirementEx");
          if (v27)
          {
            v28 = v11(v12, 3, 0, v24, v44, v27, &v43);
            if (v28)
            {
              v17 = v28;
            }

            else
            {
              v33 = v43 - 4;
              if (v43 < 4)
              {
                v17 = 4294967291;
              }

              else
              {
                *a9 = *v27 != 0;
                if (a10)
                {
                  v17 = DeserializeRequirement(v27 + 4, v33, &v42, &v41, v29, v30, v31, v32, v37, v38, v39, v40, v12, v41, v42, v43, v44, size, v46, v47, v48, v49);
                  if (!v17)
                  {
                    *a10 = v42;
                  }
                }

                else
                {
                  v17 = 0;
                }
              }
            }
          }

          else
          {
            v17 = 4294967292;
          }
        }

        v34 = size;
        acm_mem_free_info("<data>", v24, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 379, "LibCall_ACMContextVerifyPolicyAndCopyRequirementEx");
        acm_mem_free_data(v24, v34);
        if (v27)
        {
          acm_mem_free_info("<data>", v27, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 382, "LibCall_ACMContextVerifyPolicyAndCopyRequirementEx");
          acm_mem_free_data(v27, 0x1000uLL);
        }
      }

      else
      {
        v17 = 4294967292;
      }
    }
  }

LABEL_35:
  if (v17 && v42)
  {
    Util_DeallocRequirement(v42);
  }

  if (v17)
  {
    v35 = 70;
  }

  else
  {
    v35 = 10;
  }

  if (v35 >= gACMLoggingLevel)
  {
    sub_1000023A0();
    printf("%s: %s: returning, err = %ld.\n", v37, v38, v39);
  }

  return v17;
}

uint64_t LibCall_ACMRequirementDelete(uint64_t a1, int *a2)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMRequirementDelete");
  }

  sub_100001778();
  if (a1 && a2)
  {
    Util_DeallocRequirement(a2);
    sub_100001914();
    if (v6)
    {
      v5 = 10;
    }

    else
    {
      v5 = 70;
    }
  }

  if (v5 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMRequirementDelete", v2);
  }

  return v2;
}

_DWORD *LibCall_ACMCredentialDelete(_DWORD *a1)
{
  if (a1)
  {
    return Util_DeallocCredential(a1);
  }

  return a1;
}

unsigned int *LibCall_ACMCredentialGetType(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

void LibCall_ACMCredentialSetProperty(uint64_t a1, uint64_t a2, unsigned int *__src, size_t a4)
{
  if (!a1 || (__src != 0) != (a4 != 0))
  {
    return;
  }

  v5 = a1;
  if (!a4)
  {
    switch(a2)
    {
      case 300:
        sub_100081580();
        if (v72)
        {
          v8 = v7 == 3;
        }

        else
        {
          v8 = 0;
        }

        if (!v8)
        {
          return;
        }

        goto LABEL_50;
      case 301:
        v53 = *a1;
        return;
      case 302:
        sub_100081580();
        if (v72)
        {
          v48 = v47 == 3;
        }

        else
        {
          v48 = 0;
        }

        if (!v48)
        {
          return;
        }

        goto LABEL_143;
      case 303:
        v52 = *a1;
        return;
      case 304:
        sub_100081580();
        if (v72)
        {
          v26 = v25 == 3;
        }

        else
        {
          v26 = 0;
        }

        if (v26)
        {
          *(v5 + 185) = sub_100081574(v22, v23, v24);
        }

        return;
      case 305:
        v58 = *a1;
        return;
      case 306:
        sub_10008163C();
        if (!v72 & v71)
        {
          v63 = 0;
        }

        else
        {
          v63 = v62 == 3;
        }

        if (v63)
        {
          memcpy((v5 + 209), v61, a4);
          *(v5 + 205) = a4;
        }

        return;
      default:
        JUMPOUT(0);
    }
  }

  switch(a2)
  {
    case 5:
      if (a4 == 4)
      {
        sub_10008160C(a1, a2, __src);
        *(v5 + 12) = v78;
      }

      return;
    case 0x3E9:
      sub_10008163C();
      if (!v72 & v71)
      {
        v75 = 0;
      }

      else
      {
        v75 = v74 == 21;
      }

      if (v75)
      {
        memcpy((v5 + 36), v73, a4);
        *(v5 + 32) = a4;
      }

      return;
    case 0x65:
      if (a4 == 4)
      {
        v9 = *a1;
        a1 = 4294967293;
        switch(v9)
        {
          case 1:
          case 3:
          case 9:
          case 10:
            goto LABEL_158;
          case 2:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
            return;
          default:
            if (v9 == 18)
            {
              goto LABEL_158;
            }

            break;
        }
      }

      return;
    case 0x66:
      if (a4 != 4 || *a1 != 1)
      {
        return;
      }

      goto LABEL_146;
    case 0xC8:
      sub_10008163C();
      if (!v17 & v16)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19 == 2;
      }

      if (!v20)
      {
        return;
      }

      *(v5 + 36) = a4;
      v21 = (v5 + 40);
      goto LABEL_69;
    case 0xC9:
      if (a4 != 4 || *a1 != 2)
      {
        return;
      }

LABEL_158:
      sub_10008160C(a1, a2, __src);
      *(v5 + 32) = v77;
      return;
    case 0x190:
      if (a4 != 32 || *a1 != 7)
      {
        return;
      }

      goto LABEL_121;
    case 0x191:
      if (a4 == 24 && *a1 == 7)
      {
        v50 = sub_100081574(a1, a2, __src);
        *(v5 + 80) = *(v51 + 16);
        *(v5 + 64) = v50;
      }

      return;
    case 0x1F5:
      sub_100081580();
      if (v10)
      {
        v15 = v14 == 10;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
LABEL_50:
        *(v5 + 36) = sub_100081574(v11, v12, v13);
      }

      return;
    case 0x1F6:
      sub_100081580();
      if (v64)
      {
        v69 = v68 == 10;
      }

      else
      {
        v69 = 0;
      }

      if (v69)
      {
LABEL_143:
        *(v5 + 52) = sub_100081574(v65, v66, v67);
      }

      return;
    case 0x1F7:
      sub_100081580();
      if (v41)
      {
        v46 = v45 == 10;
      }

      else
      {
        v46 = 0;
      }

      if (v46)
      {
        *(v5 + 68) = sub_100081574(v42, v43, v44);
      }

      return;
    case 0x259:
      v40 = *a1 == 12 || *a1 == 15;
      a1 = 4294967293;
      if (a4 != 4 || !v40)
      {
        return;
      }

      goto LABEL_158;
    case 0x25A:
      v60 = *a1 == 12 || *a1 == 15;
      a1 = 4294967293;
      if (a4 != 4 || !v60)
      {
        return;
      }

LABEL_146:
      sub_10008160C(a1, a2, __src);
      *(v5 + 36) = v70;
      return;
  }

  if (a2 != 701)
  {
    if (a2 == 801)
    {
      sub_100081580();
      if (v33)
      {
        v38 = v37 == 17;
      }

      else
      {
        v38 = 0;
      }

      if (v38)
      {
        *(v5 + 32) = sub_100081574(v34, v35, v36);
      }

      return;
    }

    if (a2 == 802)
    {
      if (a4 == 65 && *a1 == 17)
      {
        v21 = (a1 + 48);
        v31 = __src;
        v32 = 65;
        goto LABEL_110;
      }

      return;
    }

    if (a2 != 901)
    {
      if (a2 == 100 && a4 == 16)
      {
        v6 = *a1;
        if (*a1 != 18)
        {
          switch(v6)
          {
            case 3:
              *(a1 + 100) = 16;
              break;
            case 9:
              *(a1 + 36) = 16;
              break;
            case 1:
              *(a1 + 40) = 16;
              break;
            default:
              return;
          }
        }

        v79 = sub_100081574(a1, a2, __src);
        *v80 = v79;
      }

      return;
    }

    if (a4 != 32 || *a1 != 20)
    {
      return;
    }

LABEL_121:
    v57 = *(__src + 1);
    *(a1 + 32) = *__src;
    *(a1 + 48) = v57;
    return;
  }

  sub_10008163C();
  if (!v28 & v27)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29 == 13;
  }

  if (v30)
  {
    *(v5 + 32) = a4;
    v21 = (v5 + 36);
LABEL_69:
    v31 = v18;
    v32 = a4;
LABEL_110:
    memcpy(v21, v31, v32);
  }
}

void LibCall_ACMCredentialGetPropertyData(int *a1, int a2, int **a3, uint64_t *a4)
{
  if (!a1 || !a3 || !a4)
  {
    return;
  }

  if (!(!v5 & v4))
  {
    switch(a2)
    {
      case 300:
        sub_10008158C();
        if (!v5)
        {
          return;
        }

        v11 = a1 + 9;
        goto LABEL_45;
      case 301:
        sub_10008158C();
        if (!v5)
        {
          return;
        }

        v16 = a1 + 17;
        goto LABEL_58;
      case 302:
        sub_10008158C();
        if (!v5)
        {
          return;
        }

        v11 = a1 + 13;
        goto LABEL_45;
      case 303:
        sub_10008158C();
        if (!v5)
        {
          return;
        }

        v12 = a1 + 30;
        goto LABEL_63;
      case 304:
        sub_10008158C();
        if (!v5)
        {
          return;
        }

        v11 = (a1 + 185);
LABEL_45:
        *a3 = v11;
        goto LABEL_112;
      case 305:
        sub_10008158C();
        if (!v5)
        {
          return;
        }

        v23 = (a1 + 201);
        goto LABEL_102;
      case 306:
        sub_10008158C();
        if (!v5)
        {
          return;
        }

        v10 = *(a1 + 205);
        v24 = (a1 + 209);
        if (!*(a1 + 205))
        {
          v24 = 0;
        }

        *a3 = v24;
        goto LABEL_113;
      default:
        JUMPOUT(0);
    }
  }

  switch(a2)
  {
    case 100:
      v25 = *a1;
      if (*a1 == 1)
      {
        v27 = 11;
      }

      else
      {
        switch(v25)
        {
          case 0x12u:
            v27 = 9;
            break;
          case 9u:
            v27 = 10;
            break;
          case 3u:
            v27 = 26;
            break;
          default:
            return;
        }
      }

      v17 = &a1[v27];
      goto LABEL_110;
    case 101:
      if (*a1 > 0x12 || ((1 << *a1) & 0x4060A) == 0)
      {
        return;
      }

      goto LABEL_95;
    case 102:
      if (*a1 != 1)
      {
        return;
      }

LABEL_101:
      v23 = a1 + 9;
      goto LABEL_102;
    case 200:
      if (*a1 != 2)
      {
        return;
      }

      *a3 = a1 + 10;
      v10 = a1[9];
      goto LABEL_113;
    case 201:
      if (*a1 != 2)
      {
        return;
      }

LABEL_95:
      v23 = a1 + 8;
LABEL_102:
      *a3 = v23;
      v10 = 4;
LABEL_113:
      *a4 = v10;
      return;
    case 400:
      if (*a1 != 7)
      {
        return;
      }

      v16 = a1 + 8;
LABEL_58:
      *a3 = v16;
      v10 = 32;
      goto LABEL_113;
    case 401:
      if (*a1 != 7)
      {
        return;
      }

      *a3 = a1 + 16;
      v10 = 24;
      goto LABEL_113;
    case 501:
      if (*a1 != 10)
      {
        return;
      }

      v17 = a1 + 9;
      goto LABEL_110;
    case 502:
      if (*a1 != 10)
      {
        return;
      }

      v17 = a1 + 13;
LABEL_110:
      *a3 = v17;
      if (Util_isNullOrZeroMemory(v17, 16))
      {
        *a4 = 0;
        *a3 = 0;
        return;
      }

LABEL_112:
      v10 = 16;
      goto LABEL_113;
    case 503:
      if (*a1 != 10)
      {
        return;
      }

      v17 = a1 + 17;
      goto LABEL_110;
    case 601:
      if (*a1 != 15 && *a1 != 12)
      {
        return;
      }

      goto LABEL_95;
    case 602:
      if (*a1 != 15 && *a1 != 12)
      {
        return;
      }

      goto LABEL_101;
    case 701:
      if (*a1 != 13)
      {
        return;
      }

      *a3 = a1 + 9;
      v10 = a1[8];
      goto LABEL_113;
    case 801:
      if (*a1 != 17)
      {
        return;
      }

      v12 = a1 + 8;
      v13 = 16;
      v14 = a1 + 8;
      v15 = 16;
LABEL_64:
      isNullOrZeroMemory = Util_isNullOrZeroMemory(v14, v15);
      v19 = !isNullOrZeroMemory;
      if (isNullOrZeroMemory)
      {
        v20 = 0;
      }

      else
      {
        v20 = v12;
      }

      if (v19)
      {
        v21 = v13;
      }

      else
      {
        v21 = 0;
      }

      *a3 = v20;
      *a4 = v21;
      return;
    case 802:
      if (*a1 != 17)
      {
        return;
      }

      v12 = a1 + 12;
LABEL_63:
      v13 = 65;
      v14 = v12;
      v15 = 65;
      goto LABEL_64;
    case 901:
      if (*a1 != 20)
      {
        return;
      }

      v12 = a1 + 8;
      v13 = 32;
      v14 = a1 + 8;
      v15 = 32;
      goto LABEL_64;
  }

  if (a2 == 1001 && *a1 == 21)
  {
    v9 = a1 + 9;
    if (Util_isNullOrZeroMemory(a1 + 36, 128))
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v10 = a1[8];
    }

    *a3 = v9;
    goto LABEL_113;
  }
}

unsigned int *LibCall_ACMRequirementGetType(unsigned int *result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t LibCall_ACMRequirementGetState(uint64_t result)
{
  if (result)
  {
    return *(result + 4);
  }

  return result;
}

uint64_t LibCall_ACMRequirementGetPriority(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t LibCall_ACMRequirementGetPropertyData(unsigned int *a1, int a2, unsigned int **a3, unint64_t *a4)
{
  v6 = 4294967293;
  if (a1 && a3 && a4)
  {
    if (v5 || !v4)
    {
      switch(a2)
      {
        case 300:
          v9 = sub_1000815A4(a1);
          if (!v5)
          {
            return 4294967293;
          }

          v10 = v9 + 5;
          goto LABEL_34;
        case 301:
          v19 = sub_1000815A4(a1);
          if (!v5)
          {
            return 4294967293;
          }

          v18 = v19 + 13;
          goto LABEL_62;
        case 302:
          v13 = sub_1000815A4(a1);
          if (!v5)
          {
            return 4294967293;
          }

          v10 = v13 + 9;
          goto LABEL_34;
        case 303:
          v16 = sub_1000815A4(a1);
          if (!v5)
          {
            return 4294967293;
          }

          v14 = 0;
          v17 = v16 + 21;
          break;
        case 304:
          v12 = sub_1000815A4(a1);
          if (!v5)
          {
            return 4294967293;
          }

          if (v12[3] < 0x9C)
          {
            return 4294967282;
          }

          v11 = v12 + 41;
          goto LABEL_77;
        case 305:
          v20 = sub_1000815A4(a1);
          if (!v5)
          {
            return 4294967293;
          }

          if (v20[3] < 0x9C)
          {
            return 4294967282;
          }

          v11 = v20 + 42;
          goto LABEL_77;
        case 306:
          if (*a1 != 24)
          {
            return 4294967293;
          }

          *a3 = a1 + 5;
          v14 = a1[4];
          goto LABEL_79;
        case 307:
          if (*a1 != 24)
          {
            return 4294967293;
          }

          v18 = a1 + 261;
          goto LABEL_62;
        default:
          JUMPOUT(0);
      }

      while (!Util_isNullOrZeroMemory(v17 + v14, 16))
      {
        v4 = v14 >= 0x40;
        v14 += 16;
        if (v4)
        {
          v14 = 80;
          goto LABEL_83;
        }
      }

      if (!v14)
      {
        v17 = 0;
      }

LABEL_83:
      *a3 = v17;
      goto LABEL_79;
    }

    if (a2 != 800)
    {
      switch(a2)
      {
        case 2:
          v11 = a1 + 1;
          goto LABEL_77;
        case 3:
          v11 = a1 + 2;
          goto LABEL_77;
        case 100:
          v15 = *a1;
          if (*a1 != 21 && v15 != 3 && v15 != 11 && v15 != 20 && v15 != 1)
          {
            return 4294967293;
          }

          break;
        case 200:
          if (*a1 != 2)
          {
            return 4294967293;
          }

          break;
        case 400:
          if (*a1 == 13)
          {
            v18 = a1 + 4;
LABEL_62:
            *a3 = v18;
            v14 = 32;
            goto LABEL_79;
          }

          return 4294967293;
        case 500:
          if (*a1 != 25)
          {
            return 4294967293;
          }

          *a3 = a1 + 4;
          v14 = 43;
LABEL_79:
          v6 = 0;
          *a4 = v14;
          return v6;
        case 600:
          if (*a1 != 26)
          {
            return 4294967293;
          }

          if (a1[3] < 0x1C)
          {
            return 4294967282;
          }

          v11 = a1 + 6;
LABEL_77:
          *a3 = v11;
          goto LABEL_78;
        default:
          switch(a2)
          {
            case 601:
              if (*a1 != 26)
              {
                return 4294967293;
              }

              if (a1[3] >= 0x1C)
              {
                v10 = a1 + 7;
LABEL_34:
                *a3 = v10;
                v14 = 16;
                goto LABEL_79;
              }

              break;
            case 602:
              if (*a1 != 26)
              {
                return 4294967293;
              }

              if (a1[3] >= 0x1C)
              {
                *a3 = a1 + 4;
                v14 = 8;
                goto LABEL_79;
              }

              break;
            case 700:
              if (*a1 != 7)
              {
                return 4294967293;
              }

              goto LABEL_76;
            case 1:
              *a3 = a1;
LABEL_78:
              v14 = 4;
              goto LABEL_79;
            default:
              return 4294967293;
          }

          return 4294967282;
      }

LABEL_76:
      v11 = a1 + 4;
      goto LABEL_77;
    }

    if (*a1 != 11)
    {
      return 4294967293;
    }

    v11 = a1 + 5;
    goto LABEL_77;
  }

  return v6;
}

uint64_t LibCall_ACMPing(uint64_t a1, uint64_t a2, int a3)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMPing");
  }

  v5 = 70;
  if (a1 && (a3 != 47 ? (v6 = a3 == 29) : (v6 = 1), v6))
  {
    sub_1000814DC();
    sub_1000814F8();
    (a1)();
    sub_100001914();
    if (v6)
    {
      v5 = 10;
    }

    else
    {
      v5 = 70;
    }
  }

  else
  {
    a1 = 4294967293;
  }

  if (v5 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMPing", a1);
  }

  return a1;
}

uint64_t LibCall_ACMKernDoubleClickNotify()
{
  sub_1000019FC();
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernDoubleClickNotify");
  }

  v1 = 70;
  if (v0)
  {
    sub_1000814DC();
    sub_1000814F8();
    (v0)();
    sub_100001914();
    if (v2)
    {
      v1 = 10;
    }

    else
    {
      v1 = 70;
    }
  }

  else
  {
    v0 = 4294967293;
  }

  if (v1 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernDoubleClickNotify", v0);
  }

  return v0;
}

uint64_t LibCall_ACMContextCredentialGetProperty(uint64_t (*a1)(uint64_t, uint64_t, void, __n128 *, uint64_t, uint64_t, uint64_t, double), uint64_t a2, __n128 *a3, unsigned __int32 a4, unsigned __int32 a5, uint64_t a6, uint64_t a7)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextCredentialGetProperty");
  }

  sub_100081568();
  if (a1)
  {
    if (a3)
    {
      v7 = 4294967293;
      if (a6)
      {
        if (a7)
        {
          v20 = 0uLL;
          v21 = 0;
          v19 = 24;
          Property_Serialize = LibSer_ContextCredentialGetProperty_Serialize(a3, a4, a5, &v20, &v19);
          if (v15)
          {
            v7 = v15;
          }

          else if (v19 == 24)
          {
            v7 = a1(a2, 33, 0, &v20, 24, a6, a7, Property_Serialize);
          }

          else
          {
            v7 = 4294967291;
          }
        }
      }
    }
  }

  sub_100081598();
  if (v17)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextCredentialGetProperty", v7);
  }

  return v7;
}

uint64_t LibCall_ACMGetEnvironmentVariable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100081648();
  v16 = v10;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGetEnvironmentVariable");
  }

  sub_1000815CC();
  if (v5 && a4 && a5)
  {
    v6 = v5(v7, 25, 0, &v16, 4, a4, a5);
    if (v6)
    {
      v11 = 70;
    }

    else
    {
      v11 = 10;
    }
  }

  if (v11 >= gACMLoggingLevel)
  {
    sub_100081654();
    printf("%s: %s: returning, err = %ld.\n", v13, v14, v15);
  }

  return v6;
}

void LibCall_ACMSetEnvironmentVariable()
{
  sub_100001A8C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v0;
  if (gACMLoggingLevel <= 0xAu)
  {
    v0 = printf("%s: %s: called.\n", "ACM", "LibCall_ACMSetEnvironmentVariable");
  }

  if (v13 && v6 == 16 * (v8 != 0) && (v4 ? (v14 = v2 - 129 < 0xFFFFFFFFFFFFFF80) : (v14 = v2 != 0), !v14))
  {
    __chkstk_darwin(v0);
    v15 = (&v17 - ((v2 + 59) & 0xFFFFFFFFFFFFFFF0));
    bzero(v15, v2 + 44);
    *v15 = v12;
    v15[1] = 2;
    v15[2] = v2;
    *(v15 + 3) = 0u;
    *(v15 + 7) = 0u;
    if (v10)
    {
      *(v15 + 3) = *v10;
    }

    if (v8)
    {
      *(v15 + 7) = *v8;
    }

    if (v2)
    {
      memcpy(v15 + 11, v4, v2);
    }

    sub_1000814F8();
    LODWORD(v13) = v13();
    if (v13)
    {
      v16 = 70;
    }

    else
    {
      v16 = 10;
    }
  }

  else
  {
    sub_100001778();
  }

  if (v16 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSetEnvironmentVariable", v13);
  }

  sub_1000016B0();
}

uint64_t LibCall_ACMTRMLoadState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100081648();
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMTRMLoadState");
  }

  sub_100001778();
  if (v5 && a3 && a4)
  {
    sub_1000814DC();
    v5();
    sub_100001914();
    if (v9)
    {
      v8 = 10;
    }

    else
    {
      v8 = 70;
    }
  }

  if (v8 >= gACMLoggingLevel)
  {
    sub_100081654();
    printf("%s: %s: returning, err = %ld.\n", v11, v12, v13);
  }

  return v4;
}

void LibCall_ACMContextLoadFromImage()
{
  sub_100001A8C();
  v2 = __chkstk_darwin(v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v2;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextLoadFromImage");
  }

  sub_100081568();
  if (v11 && v8 && (v6 - 4097) >= 0xFFFFFFFFFFFFF000)
  {
    v12 = sub_100001884();
    acm_mem_alloc_info("ACMHandleWithPayload", v12, 20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1479, "LibCall_ACMContextLoadFromImage");
    if (v12)
    {
      bzero(v21, 0x1005uLL);
      v20 = 1;
      *&v21[1] = 6;
      v22 = v6;
      __memcpy_chk();
      bzero(v17, 0x118uLL);
      v16 = 280;
      v13 = v11(v10, 48, 0, &v20, 4102, v17, &v16);
      if (v13)
      {
        v0 = v13;
      }

      else if (v16 < 0x18)
      {
        v0 = -5;
      }

      else
      {
        if (v17[0])
        {
          v0 = 0;
          v14 = v19;
          *v12 = v18;
          v12[4] = v14;
          *v4 = v12;
          goto LABEL_11;
        }

        v0 = -16;
      }

      acm_mem_free_info("ACMHandleWithPayload", v12, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1540, "LibCall_ACMContextLoadFromImage");
      acm_mem_free(v12, 0x14uLL);
    }

    else
    {
      v0 = -4;
    }
  }

LABEL_11:
  sub_1000814EC();
  if (v15)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextLoadFromImage", v0);
  }

  sub_1000016B0();
}

void LibCall_ACMContextUnloadToImage()
{
  sub_100001A8C();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextUnloadToImage");
  }

  v11 = -3;
  if (v10 && v5 && v3)
  {
    v20 = 0uLL;
    v19 = 1310721;
    if (v7)
    {
      v20 = *v7;
    }

    else
    {
      v20 = 0uLL;
    }

    bzero(v16, 0x1106uLL);
    *v15 = 4358;
    v12 = v10(v9, 49, 0, &v19, 20, v16, v15);
    if (v12)
    {
      v11 = v12;
    }

    else if (*v15 < 6uLL)
    {
      v11 = -5;
    }

    else if (v16[0])
    {
      v14 = v17;
      v11 = Util_ReadFromBuffer(v16, *v15, &v14, v5, __n);
      if (!v11)
      {
        *v3 = v14 - v17;
      }
    }

    else
    {
      v11 = -16;
    }
  }

  sub_100081598();
  if (v13)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextUnloadToImage", v11);
  }

  sub_1000016B0();
}

uint64_t LibCall_ACMContextCopyData(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  sub_1000019FC();
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextCopyData");
  }

  v11 = 4294967293;
  if (a3)
  {
    if (a4 == 16)
    {
      v11 = 4294967293;
      if (a5)
      {
        if (a6 == 16)
        {
          v17 = *a3;
          v18 = *a5;
          sub_1000814F8();
          v11 = v6();
        }
      }
    }
  }

  sub_1000814EC();
  if (v12)
  {
    sub_1000023A0();
    printf("%s: %s: returning, err = %ld.\n", v14, v15, v16);
  }

  return v11;
}

void LibCall_ACMPublishTrustedAccessories()
{
  sub_100001A8C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMPublishTrustedAccessories");
  }

  if (v6)
  {
    sub_100081568();
    if ((v2 & 0xF) == 0 && v2 <= 0x100 && (v9 & 1) == 0)
    {
      __chkstk_darwin(v7);
      v10 = (&v11 - ((v2 + 23) & 0xFFFFFFFFFFFFFFF0));
      bzero(v10, v2 | 8);
      *v10 = 1;
      v10[1] = v2;
      if (v2)
      {
        memcpy(v10 + 2, v4, v2);
      }

      sub_1000814F8();
      v0 = v6();
      if (v0)
      {
        v8 = 70;
      }

      else
      {
        v8 = 10;
      }
    }
  }

  else
  {
    sub_100081568();
  }

  if (v8 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMPublishTrustedAccessories", v0);
  }

  sub_1000016B0();
}

uint64_t LibCall_ACMContextGetInfo(uint64_t (*a1)(uint64_t, uint64_t, void, int *, uint64_t, int *, unint64_t *), uint64_t a2, __int128 *a3, int a4, void *a5)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextGetInfo");
  }

  v10 = 4294967293;
  if (a3 && a1 && a5)
  {
    v17 = 1;
    v19 = a4;
    v18 = *a3;
    bzero(&v15, 0x8CuLL);
    v14 = 140;
    v11 = a1(a2, 46, 0, &v17, 24, &v15, &v14);
    if (v11)
    {
      v10 = v11;
    }

    else if (v14 < 0xC)
    {
      v10 = 4294967291;
    }

    else if (v15)
    {
      v10 = 0;
      *a5 = v16;
    }

    else
    {
      v10 = 4294967281;
    }
  }

  sub_100081598();
  if (v12)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextGetInfo", v10);
  }

  return v10;
}

uint64_t verifyAclConstraintInternal(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, int a11, unsigned int a12, BOOL *a13, uint64_t *a14)
{
  sub_100081648();
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "verifyAclConstraintInternal");
  }

  v51 = 0;
  v49 = 0;
  v50 = 4096;
  v48 = 0;
  v20 = 4294967293;
  if (!a4 || !a5 || !a6 || !a13)
  {
LABEL_19:
    if (!v20)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v21 = sub_1000815E8();
  SerializedVerifyAclConstraintSize = GetSerializedVerifyAclConstraintSize(v21, v22, v23, a6, a7, a8, a9, a12, v41, v42, &v51);
  if (!SerializedVerifyAclConstraintSize)
  {
    v25 = v51;
    v26 = acm_mem_alloc_data(v51);
    acm_mem_alloc_info("<data>", v26, v25, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1994, "verifyAclConstraintInternal");
    if (v26)
    {
      v27 = sub_1000815E8();
      v30 = SerializeVerifyAclConstraint(v27, v28, v29, a6, a7, a8, a9, a12, v41, v42, v26, &v51);
      if (v30)
      {
        v20 = v30;
        v31 = 0;
      }

      else
      {
        v31 = acm_mem_alloc_data(0x1000uLL);
        acm_mem_alloc_info("<data>", v31, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 2000, "verifyAclConstraintInternal");
        if (v31)
        {
          v32 = v14(v15, a3, 0, v26, v51, v31, &v50);
          if (v32)
          {
            v20 = v32;
          }

          else
          {
            v37 = v50 - 4;
            if (v50 < 4)
            {
              v20 = 4294967291;
            }

            else
            {
              *a13 = *v31 != 0;
              if (a14)
              {
                v20 = DeserializeRequirement(v31 + 4, v37, &v49, &v48, v33, v34, v35, v36, v41, v42, v43, v44, v45, a13, v15, v14, a7, a8, v48, v49, v50, v51);
                if (!v20)
                {
                  *a14 = v49;
                }
              }

              else
              {
                v20 = 0;
              }
            }
          }
        }

        else
        {
          v20 = 4294967292;
        }
      }

      v38 = v51;
      acm_mem_free_info("<data>", v26, v51, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 2023, "verifyAclConstraintInternal");
      acm_mem_free_data(v26, v38);
      if (v31)
      {
        acm_mem_free_info("<data>", v31, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 2026, "verifyAclConstraintInternal");
        acm_mem_free_data(v31, 0x1000uLL);
      }
    }

    else
    {
      v20 = 4294967292;
    }

    goto LABEL_19;
  }

  v20 = SerializedVerifyAclConstraintSize;
LABEL_20:
  if (v49)
  {
    Util_DeallocRequirement(v49);
  }

LABEL_22:
  if (v20)
  {
    v39 = 70;
  }

  else
  {
    v39 = 10;
  }

  if (v39 >= gACMLoggingLevel)
  {
    sub_1000023A0();
    printf("%s: %s: returning, err = %ld.\n", v41, v42, v43);
  }

  return v20;
}

void LibCall_ACMSecCredentialProviderEnrollmentStateChangedForUser(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100001A8C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1000019FC();
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMSecCredentialProviderEnrollmentStateChangedForUser");
  }

  v35 = v32 - 113 < 0xFFFFFF90;
  if (!v34)
  {
    v35 = v32 != 0;
  }

  if (v35)
  {
    sub_100081630();
  }

  else
  {
    sub_100081630();
    if (v24)
    {
      if (a21 == 16)
      {
        v22 = -3;
        if (v30)
        {
          if (v28 == 16)
          {
            v37 = v32;
            __chkstk_darwin(v36);
            v38 = &v40[-((v32 + 51) & 0x1FFFFFFF0)];
            bzero(&v40[-((v37 + 51) & 0x1FFFFFFF0)], v37 + 36);
            *v38 = v26;
            *(v38 + 4) = *v24;
            *(v38 + 20) = *v30;
            if (v34)
            {
              memcpy(v38 + 36, v34, v37);
            }

            sub_1000814F8();
            v22 = v21();
          }
        }
      }
    }
  }

  sub_1000814EC();
  if (v39)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSecCredentialProviderEnrollmentStateChangedForUser", v22);
  }

  sub_1000016B0();
}

uint64_t LibCall_ACMSecSetBuiltinBiometry(uint64_t a1, uint64_t a2)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMSecSetBuiltinBiometry");
  }

  sub_100057558();
  sub_100081660();
  sub_100001914();
  if (v3)
  {
    v4 = 10;
  }

  else
  {
    v4 = 70;
  }

  if (v4 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSecSetBuiltinBiometry", a2);
  }

  return a2;
}

uint64_t LibCall_ACMSecContextGetUnlockSecret(uint64_t (*a1)(void, void, void, void, void, void, void), uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, void *a6, size_t *a7, _BYTE *a8)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMSecContextGetUnlockSecret");
  }

  memset(v30, 0, sizeof(v30));
  v28 = 64;
  v16 = 129;
  bzero(v29, 0x81uLL);
  v27 = 129;
  if (!a3)
  {
LABEL_19:
    sub_100081568();
    goto LABEL_14;
  }

  sub_100081568();
  if (a6 && a7 && a8)
  {
    if ((a4 != 0) == (a5 != 0))
    {
      LibSer_GetUnlockSecret_Serialize(a3, a4, a5, v30, &v28);
      if (UnlockSecretResponse_Deserialize || (UnlockSecretResponse_Deserialize = a1(a2, 50, 0, v30, v28, v29, &v27), UnlockSecretResponse_Deserialize) || (__n = 0, __src = 0, v24 = 0, UnlockSecretResponse_Deserialize = LibSer_GetUnlockSecretResponse_Deserialize(v29, v27, &__src, &__n, &v24), UnlockSecretResponse_Deserialize))
      {
        v16 = UnlockSecretResponse_Deserialize;
      }

      else
      {
        v18 = __n;
        if (*a7 < __n)
        {
          v16 = 4294967276;
        }

        else if (__src)
        {
          memcpy(a6, __src, __n);
          v16 = 0;
          *a7 = v18;
          *a8 = v24;
        }

        else
        {
          v16 = 4294967291;
        }
      }

      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_14:
  sub_1000814EC();
  if (v19)
  {
    sub_1000023A0();
    printf("%s: %s: returning, err = %ld.\n", v21, v22, v23);
  }

  return v16;
}

void LibCall_ACMSEPControl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t *a21)
{
  sub_100001A8C();
  v50 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMSEPControl");
  }

  v54 = 0;
  bzero(v55, 0x400uLL);
  v53 = 1024;
  if (!v35)
  {
    goto LABEL_17;
  }

  v40 = (v29 - 4097) < 0xFFFFFFFFFFFFF000;
  if (!v31)
  {
    v40 = v29 != 0;
  }

  if (v40)
  {
LABEL_17:
    sub_100081568();
    goto LABEL_21;
  }

  v49 = v35;
  Size = LibSer_SEPControl_GetSize(v29, v25, v23, &v54, v36, v37, v38, v39);
  if (Size)
  {
LABEL_18:
    LODWORD(v27) = Size;
LABEL_25:
    v46 = 70;
    goto LABEL_21;
  }

  __chkstk_darwin(Size);
  v43 = &v49 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v43, v42);
  LibSer_SEPControl_Serialize(v27, v25, v23, v31, v29, v43, &v54, v44, v49, v50, v51, v52, v53, v54, v55[0], v55[1], v55[2], v55[3], v55[4], v55[5]);
  if (v45)
  {
    LODWORD(v27) = v45;
    goto LABEL_20;
  }

  LODWORD(v27) = v49(v33, 51, 0, v43, v54, v55, &v53);
  if (v27)
  {
LABEL_20:
    v46 = 70;
    goto LABEL_21;
  }

  v46 = 10;
  v47 = v50;
  if (!v50 || !a21)
  {
    goto LABEL_21;
  }

  v51 = 0;
  v52 = 0;
  LODWORD(Size) = LibSer_SEPControlResponse_Deserialize(v55, v53, &v52, &v51);
  if (Size)
  {
    goto LABEL_18;
  }

  v48 = v51;
  if (*a21 < v51)
  {
    LODWORD(v27) = -20;
    goto LABEL_25;
  }

  if (v52)
  {
    memcpy(v47, v52, v51);
  }

  LODWORD(v27) = 0;
  *a21 = v48;
  v46 = 10;
LABEL_21:
  if (v46 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSEPControl", v27);
  }

  sub_1000016B0();
}

BOOL sub_1000A3C78(unsigned int a1, _DWORD *a2)
{
  v2 = a1 + 15;
  v3 = v2 << 31 >> 31;
  v4 = v3 == v2;
  v5 = v3 != v2;
  if (v4)
  {
    *a2 = v2 & 0xFFFFFFF8;
  }

  return !v5;
}

BOOL sub_1000A3CA0(unint64_t a1, unint64_t *a2)
{
  v2 = (((a1 >= 0xFFFFFFFFFFFFFFF1) << 63) >> 63) ^ (a1 >= 0xFFFFFFFFFFFFFFF1);
  if (!v2)
  {
    *a2 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  }

  return v2 == 0;
}

void sub_1000A3CE4()
{
  sub_100001A8C();
  sub_100083684();
  __chkstk_darwin(v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *(v0 - 96) = __stack_chk_guard;
  bzero(v69, 0x1000uLL);
  v67[0] = v69;
  v67[1] = &v70;
  v67[2] = 4096;
  if (v7 && v5)
  {
    v8 = sub_100082754();
    if (v8)
    {
      v16 = v8;
      sub_100001A08(v8, v9, v10, v11, v12, v13, v14, v15, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v66, v67[0]);
      if (ccder_blob_encode_body_tl())
      {
        if (sub_1000B0F34(v67))
        {
          if (sub_1000B0F34(v67))
          {
            if (sub_1000B0F90(v67))
            {
              sub_1000835EC();
              if (ccder_blob_encode_tl())
              {
                sub_10008363C();
                if (!sub_1000023AC(v16, 0x4Au, v68, 2u, v17, v18, v19, v20, v69, v21))
                {
                  sub_1000835EC();
                  if (ccder_blob_decode_range())
                  {
                    sub_1000016F0();
                    v25 = sub_10008772C(v22, v23, v24);
                    if (v25)
                    {
                      if (v3)
                      {
                        v33 = sub_1000018A8(v25, v26, v27, v28, v29, v30, v31, v32, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v69);
                        sub_1000B0DD8(v33, v34, v35);
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

    else
    {
      sub_1000835D8();
      fprintf(v37, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v38, v43, v45, v47, v49, v51, v53, ":", 180, "", "");
    }
  }

  sub_1000835F8(v69);
  v36 = *(v0 - 96);
  sub_100001938();
  sub_1000016B0();
}

unint64_t sub_1000A3EE4(char *a1, const void *a2, size_t a3)
{
  v3 = a1;
  if (a1)
  {
    v6 = open_dprotected_np(a1, 1793, 4, 0, 384);
    if (v6 == -1)
    {
      v10 = __error();
      v11 = strerror(*v10);
      syslog(3, "could not create file: %s (%s)\n", v3, v11);
      return 0;
    }

    else
    {
      v7 = v6;
      v8 = write(v6, a2, a3);
      v3 = v8 != -1;
      if (v8 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "failed to write restore bag to disk %s\n", v13);
      }

      close(v7);
    }
  }

  return v3;
}

BOOL sub_1000A3FB8(_BOOL8 a1, void *a2, size_t *a3)
{
  bzero(&v14, 0x90uLL);
  if (a1)
  {
    if (!stat(a1, &v14))
    {
      st_size = v14.st_size;
      v7 = open(a1, 0);
      if (v7 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "could not open file: %s (%s)\n", a1, v13);
      }

      else
      {
        v8 = v7;
        v9 = calloc(st_size, 1uLL);
        a1 = v9 != 0;
        if (!v9)
        {
LABEL_7:
          close(v8);
          return a1;
        }

        v10 = v9;
        if (read(v8, v9, st_size) == st_size)
        {
          *a2 = v10;
          *a3 = st_size;
          goto LABEL_7;
        }

        close(v8);
        free(v10);
      }
    }

    return 0;
  }

  return a1;
}

uint64_t sub_1000A40B8(const char *a1)
{
  v1 = open_dprotected_np(a1, 0, 0, 1);
  if (v1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  v3 = fcntl(v1, 63);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  return v3;
}

uint64_t sub_1000A4114(uint64_t a1, uint64_t a2)
{
  result = sub_1000A40B8(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || result == v5)
  {
    return printf("file: %s %i\n", *(a2 + 48), result);
  }

  return result;
}

uint64_t sub_1000A416C(const char *a1)
{
  bzero(v4, 0x400uLL);
  bzero(__str, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v4))
  {
    snprintf(__str, 0x400uLL, "%s/mobile", v4);
    sub_100082BAC(v4, &off_1000DDFC8, 36);
    if ((sub_100082A28() & 1) == 0)
    {
      sub_100082BAC(__str, &off_1000DE688, 72);
    }
  }

  return 0;
}

uint64_t sub_1000A4240(const char *a1)
{
  bzero(v3, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v3))
  {
    sub_100082BAC(v3, &off_1000DE688, 72);
  }

  return 0;
}

void sub_1000A42C8()
{
  sub_100001A8C();
  sub_100083684();
  __chkstk_darwin(v2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_100083670(__stack_chk_guard);
  bzero(v68, 0x1000uLL);
  v64 = v68;
  v65 = &v69;
  v66 = v0;
  if (v6 && v4)
  {
    v9 = sub_100082754();
    if (v9)
    {
      v17 = v9;
      sub_100001A08(v9, v10, v11, v12, v13, v14, v15, v16, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v63, v64);
      if (ccder_blob_encode_body_tl())
      {
        if (sub_1000B0F34(&v64))
        {
          if (sub_1000B0F90(&v64))
          {
            sub_1000835EC();
            if (ccder_blob_encode_tl())
            {
              v67[0] = v8;
              v67[1] = v65;
              v67[2] = &v69 - v65;
              if (!sub_1000023AC(v17, 0x4Cu, v67, 3u, v18, v19, v20, v21, v68, &v66))
              {
                sub_1000835EC();
                v22 = ccder_blob_decode_range();
                if (v22)
                {
                  v30 = sub_1000018A8(v22, v23, v24, v25, v26, v27, v28, v29, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v68);
                  sub_10008772C(v30, v31, v32);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_1000835D8();
      fprintf(v34, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v35, v40, v42, v44, v46, v48, v50, ":", 509, "", "");
    }
  }

  sub_1000835F8(v68);
  v33 = *(v1 - 88);
  sub_100001938();
  sub_1000016B0();
}

void sub_1000A44A8()
{
  sub_100001A8C();
  __chkstk_darwin(v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_100083670(__stack_chk_guard);
  bzero(v30, 0x1000uLL);
  v26 = v30;
  v27 = &v31;
  v28 = v0;
  if (v7 && v5)
  {
    v8 = sub_100082754();
    if (v8)
    {
      v9 = v8;
      if (ccder_blob_encode_body_tl())
      {
        if (sub_1000B0F34(&v26))
        {
          if (sub_1000B0F90(&v26))
          {
            sub_1000835EC();
            if (ccder_blob_encode_tl())
            {
              v29[0] = v27;
              v29[1] = &v31 - v27;
              if (!sub_1000023AC(v9, 0x63u, v29, 2u, v10, v11, v12, v13, v30, &v28))
              {
                *&v25 = v30;
                *(&v25 + 1) = &v30[v28];
                sub_1000835EC();
                if (ccder_blob_decode_range())
                {
                  sub_1000016F0();
                  if (sub_10008772C(v14, v15, v16))
                  {
                    if (v3)
                    {
                      sub_1000B0DD8(&v25, 0, v3);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_1000835D8();
      fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 544, "", "");
    }
  }

  sub_1000835F8(v30);
  sub_1000016B0();
}

void sub_1000A46AC()
{
  sub_100001A8C();
  sub_100083684();
  __chkstk_darwin(v1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  *(v0 - 96) = __stack_chk_guard;
  bzero(v69, 0x1000uLL);
  v67[0] = v69;
  v67[1] = &v70;
  v67[2] = 4096;
  if (v9 && v7 && v5 && v3)
  {
    v10 = sub_100082754();
    if (v10)
    {
      v11 = v10;
      v12 = sub_1000B0F34(v67);
      if (v12)
      {
        sub_100001A08(v12, v13, v14, v15, v16, v17, v18, v19, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v66, v67[0]);
        if (ccder_blob_encode_body_tl())
        {
          if (sub_1000B0F34(v67))
          {
            if (sub_1000B0F34(v67))
            {
              if (sub_1000B0F90(v67))
              {
                sub_1000835EC();
                if (ccder_blob_encode_tl())
                {
                  sub_10008363C();
                  if (!sub_1000023AC(v11, 0x4Du, v68, 2u, v20, v21, v22, v23, v69, v24))
                  {
                    sub_1000835EC();
                    v25 = ccder_blob_decode_range();
                    if (v25)
                    {
                      v33 = sub_1000018A8(v25, v26, v27, v28, v29, v30, v31, v32, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v69);
                      sub_10008772C(v33, v34, v35);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      sub_1000835D8();
      fprintf(v37, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v38, v43, v45, v47, v49, v51, v53, ":", 583, "", "");
    }
  }

  sub_1000835F8(v69);
  v36 = *(v0 - 96);
  sub_100001938();
  sub_1000016B0();
}

void sub_1000A48B0()
{
  sub_100001A8C();
  __chkstk_darwin(v1);
  sub_10008365C();
  v3 = v2;
  v5 = v4;
  bzero(v27, 0x1000uLL);
  v23 = v27;
  v24 = v28;
  v25 = 4096;
  v6 = sub_100082754();
  if (v6)
  {
    v7 = v6;
    if (!sub_1000B0F34(&v23) || !sub_1000B0F34(&v23) || !sub_1000B0F34(&v23) || !sub_1000B0F90(&v23) || (sub_1000835EC(), !ccder_blob_encode_tl()) || (v26[0] = v5, v26[1] = v3, v26[2] = v24, v26[3] = &v28[-v24], !sub_1000023AC(v7, 0x54u, v26, 4u, v8, v9, v10, v11, v27, &v25)) && v25 && ((sub_1000835EC(), !ccder_blob_decode_range()) || v0 && (sub_1000016F0(), (sub_10008772C(v12, v13, v14) & 1) == 0)))
    {
      sub_100083630();
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 617, "", "");
    sub_100083630();
  }

  sub_1000835F8(v27);
  sub_1000016B0();
}

void sub_1000A4AA8()
{
  sub_100001A8C();
  sub_100083684();
  __chkstk_darwin(v3);
  sub_10008365C();
  v5 = v4;
  *(v2 - 96) = __stack_chk_guard;
  bzero(v28, 0x1000uLL);
  v24 = v28;
  v25 = v29;
  v26 = 4096;
  if (v1)
  {
    v6 = sub_100082754();
    if (v6)
    {
      v7 = v6;
      if (!sub_1000B0F34(&v24) || !sub_1000B0F34(&v24) || !sub_1000B0F34(&v24) || !sub_1000B0F34(&v24) || !sub_1000B0F90(&v24) || (sub_1000835EC(), !ccder_blob_encode_tl()) || (v27[0] = v25, v27[1] = &v29[-v25], v27[2] = v5, !sub_1000023AC(v7, 0x4Bu, v27, 3u, v8, v9, v10, v11, v28, &v26)) && ((sub_1000835EC(), !ccder_blob_decode_range()) || v0 && (sub_1000016F0(), (sub_1000B0DD8(v12, v13, v14) & 1) == 0)))
      {
        sub_100083630();
      }
    }

    else
    {
      sub_1000835D8();
      fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 654, "", "");
      sub_100083630();
    }
  }

  else
  {
    sub_100083630();
  }

  sub_1000835F8(v28);
  v15 = *(v2 - 96);
  sub_100001938();
  sub_1000016B0();
}

uint64_t sub_1000A4CC0(uint64_t a1, uint64_t a2)
{
  result = sub_1000A40B8(*(a2 + 48));
  if ((result - 7) >= 0xFFFFFFFA)
  {
    v5 = *(a2 + 96);
    v6 = *(v5 + 96);
    v7 = *(a1 + 32);
    ++*(v7 + 296 * result);
    if (*(v5 + 6) >= 2u)
    {
      ++*(v7 + 296 * result + 8);
    }

    if ((*(v5 + 116) & 0x20) != 0)
    {
      ++*(v7 + 296 * result + 4);
    }

    v8 = v7 + 296 * result;
    v10 = *(v8 + 32);
    v9 = (v8 + 32);
    *(v9 - 2) += v6;
    if (v6 > v10)
    {
      *v9 = v6;
    }

    v11 = v7 + 296 * result;
    v14 = *(v11 + 24);
    v12 = (v11 + 24);
    v13 = v14;
    if (v14)
    {
      v15 = v6 < v13;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      *v12 = v6;
    }

    if (v6)
    {
      v16 = v7 + 296 * result + 4 * (63 - __clz(v6));
    }

    else
    {
      v16 = v7 + 296 * result;
    }

    ++*(v16 + 40);
  }

  return result;
}

uint64_t sub_1000A4DCC()
{
  sub_100083650();
  if (!v2)
  {
    return (v0 + 6);
  }

  v3 = v2;
  input[0] = 0;
  input[1] = v1;
  input[2] = 0;
  output = 0;
  outputCnt = 1;
  v4 = sub_100082754();
  if (v4)
  {
    v0 = IOConnectCallMethod(v4, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
    if (!v0)
    {
      *v3 = output;
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v6, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v7, v8, v9, v10, v11, v12, v13, ":", 842, "", "");
  }

  return v0;
}

void sub_1000A4ED8()
{
  sub_100001A8C();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v1;
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  v17 = sub_100082754();
  if (v17)
  {
    v30[0] = v16;
    v30[1] = v15;
    v30[2] = v13;
    v30[3] = v11;
    if ((!v15 || v5 && v3) && !sub_1000017A4(v17, 0x36u, v30, 4u, v9, v7, v18, v19, __src, &__count))
    {
      if (v15)
      {
        v20 = calloc(__count, 1uLL);
        *v5 = v20;
        if (v20)
        {
          memcpy(v20, __src, __count);
          *v3 = __count;
        }
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v23, v24, v25, v26, v27, v28, ":", 891, "", "");
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  sub_1000016B0();
}

void sub_1000A5098()
{
  sub_100001A8C();
  sub_100083614();
  v15[0] = v5;
  v15[1] = v4;
  v14 = 0;
  outputCnt = 1;
  bzero(outputStruct, 0x400uLL);
  v11 = 1024;
  if (!IOConnectCallMethod(v3, 0xFu, v15, 2u, v2, 0x10uLL, &v14, &outputCnt, outputStruct, &v11) && outputCnt == 1)
  {
    *v1 = v14;
    sub_1000B2AC4(outputStruct, v11, 3u, v6, v7, v8, v9, v10, v0);
  }

  sub_1000016B0();
}

void sub_1000A51AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  sub_100001A8C();
  sub_100083614();
  v43[0] = v30;
  v43[1] = v29;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  outputCnt = 3;
  bzero(outputStruct, 0x400uLL);
  v37 = 1024;
  if (!IOConnectCallMethod(v28, 0x13u, v43, 2u, v27, 0x10uLL, &v40, &outputCnt, outputStruct, &v37) && outputCnt == 3)
  {
    v36 = v41;
    *v26 = v40;
    *a22 = v36;
    *a25 = v42;
    sub_1000B2AC4(outputStruct, v37, 5u, v31, v32, v33, v34, v35, v25);
  }

  sub_1000016B0();
}

uint64_t sub_1000A52E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, unsigned int a12, void *outputStruct, size_t *a14, _DWORD *a15)
{
  input[0] = a3;
  input[1] = a6;
  input[2] = a9;
  input[3] = a12;
  output = 0;
  outputCnt = 1;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  sub_100088BF8(&inputStructCnt[1], inputStructCnt, 4, a4, a5, a6, a7, a8, a2);
  v16 = IOConnectCallMethod(a1, 0x15u, input, 4u, *&inputStructCnt[1], inputStructCnt[0], &output, &outputCnt, outputStruct, a14);
  if (v16)
  {
    a1 = v16;
  }

  else if (outputCnt == 1)
  {
    a1 = 0;
    *a15 = output;
  }

  else
  {
    sub_100083650();
  }

  free(*&inputStructCnt[1]);
  return a1;
}

void sub_1000A53F4()
{
  sub_100001A8C();
  v3 = v2;
  sub_100001AC0();
  v22[0] = v4;
  v22[1] = v5;
  v20 = 0;
  v19 = 0;
  bzero(v21, 0x400uLL);
  v18 = 1024;
  sub_100088BF8(&v20, &v19, 2, v6, v7, v8, v9, v10, v0);
  if (!sub_1000017A4(v1, 0x10u, v22, 2u, v20, v19, v11, v12, v21, &v18))
  {
    sub_1000B2AC4(v21, v18, 2u, v13, v14, v15, v16, v17, v3);
  }

  free(v20);
  sub_1000016B0();
}

void sub_1000A550C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  sub_100001A8C();
  sub_100001AC0();
  v42[0] = v24;
  v42[1] = v25;
  v42[2] = a21;
  v40 = 0;
  v39 = 0;
  bzero(v41, 0x400uLL);
  v38 = 1024;
  sub_100088BF8(&v40, &v39, 3, v26, v27, v28, v29, v30, v22);
  if (!sub_1000017A4(v23, 0x17u, v42, 3u, v40, v39, v31, v32, v41, &v38))
  {
    sub_1000B2AC4(v41, v38, 2u, v33, v34, v35, v36, v37, a22);
  }

  free(v40);
  sub_1000016B0();
}

uint64_t sub_1000A5634(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v26 = v1;
  bzero(__src, 0x8000uLL);
  __n = 0x8000;
  v8 = sub_100082754();
  if (v8)
  {
    if (v7)
    {
      v11 = 18;
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_1000017A4(v8, 0x5Du, &v26, 1u, v7, v11, v9, v10, __src, &__n);
    v13 = __n;
    if (v12)
    {
      v7 = v12;
    }

    else
    {
      sub_100083650();
      if (v13 - 32769 < 0xFFFFFFFFFFFF8000)
      {
        v7 = (v7 + 6);
      }

      else
      {
        v14 = calloc(v13, 1uLL);
        *v5 = v14;
        v13 = __n;
        if (v14)
        {
          *v3 = __n;
          memcpy(v14, __src, v13);
          v7 = 0;
          v13 = __n;
        }

        else
        {
          v7 = (v7 + 1);
        }
      }
    }
  }

  else
  {
    sub_100083650();
    sub_1000835D8();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 1246, "", "");
    v13 = 0x8000;
  }

  memset_s(__src, v13, 0, v13);
  return v7;
}

uint64_t sub_1000A585C(FTS *a1, uint64_t a2, uint64_t a3)
{
  v6 = fts_read(a1);
  if (v6)
  {
    v7 = v6;
    do
    {
      fts_info = v7->fts_info;
      if (fts_info == 1)
      {
        if (a2 && ((*(a2 + 16))(a2, v7) & 1) == 0)
        {
          fts_set(a1, v7, 4);
        }
      }

      else if (fts_info != 6 && a3 != 0 && fts_info == 8)
      {
        (*(a3 + 16))(a3, v7);
      }

      v7 = fts_read(a1);
    }

    while (v7);
  }

  return fts_close(a1);
}

uint64_t sub_1000A5A50(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 + a3;
  v4 = a1[10];
  if (!ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_implicit_raw_octet_string())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_implicit_raw_octet_string())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_implicit_raw_octet_string())
  {
    return 4294967273;
  }

  v5 = *a1;
  if (!ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  v6 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v6)
  {
    if (a2 == v9)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t sub_1000A5B34(uint64_t a1, uint64_t a2, void *a3)
{
  *&v6 = a1;
  *(&v6 + 1) = a1 + a2;
  if (!ccder_blob_decode_range() || !sub_1000B2674(&v6, 0x8000000000000000, a3) || !sub_1000B0168(&v6, 0x8000000000000001, a3 + 1, 16) || !sub_1000B0168(&v6, 0x8000000000000002, a3 + 3, 40) || !sub_1000B0168(&v6, 0x8000000000000003, a3 + 8, 16))
  {
    return 4294967277;
  }

  v4 = sub_1000B2674(&v6, 0x8000000000000004, a3 + 10);
  result = 4294967277;
  if (v4)
  {
    if (v6 == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}

uint64_t sub_1000A5C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *__s = 0u;
  v20 = 0u;
  HIDWORD(v18) = 40;
  *a4 = 0;
  uuid_copy((a4 + 8), (a1 + 32));
  *(a4 + 80) = 1;
  sub_100087CD4(a4 + 64, 0x10u);
  ccsha256_di();
  v6 = *(a4 + 80);
  LODWORD(v7) = j__ccpbkdf2_hmac();
  if (v7)
  {
    v15 = 4294967286;
  }

  else
  {
    v7 = sub_1000822F0(__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, a1, 0x20u, (a4 + 24), &v18 + 1);
    if (v7)
    {
      v15 = v7;
    }

    else if (HIDWORD(v18) == 40)
    {
      v15 = 0;
    }

    else
    {
      v15 = 4294967286;
    }
  }

  sub_100083714(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, __s[0]);
  return v15;
}

uint64_t sub_1000A5D30(const unsigned __int8 *a1, int a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  *__s = 0u;
  v17 = 0u;
  HIDWORD(v15) = 32;
  if (*a1)
  {
    v12 = 4294967284;
  }

  else
  {
    v9 = a1;
    ccsha256_di();
    v10 = *(v9 + 10);
    LODWORD(a1) = j__ccpbkdf2_hmac();
    if (a1)
    {
      goto LABEL_9;
    }

    a1 = sub_1000826A4(__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, v9 + 3, 0x28u, a4, &v15 + 1);
    if (a1)
    {
      v12 = a1;
      goto LABEL_8;
    }

    if (HIDWORD(v15) != 32)
    {
LABEL_9:
      v12 = 4294967286;
    }

    else
    {
      v11 = cccurve25519_make_pub() == 0;
      sub_100086D14(v11, 118, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/backup_serialize.c");
      LODWORD(a1) = uuid_compare(v9 + 8, (a4 + 32));
      if (a1)
      {
        v12 = 4294967272;
      }

      else
      {
        v12 = 0;
      }
    }
  }

LABEL_8:
  sub_100083714(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, __s[0]);
  return v12;
}

void sub_1000A5E70()
{
  sub_100001A8C();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  bzero(v28, 0x1000uLL);
  v25 = v28;
  v26 = &v29;
  v11 = sub_100082754();
  if (v11)
  {
    v12 = v11;
    if (sub_1000B0F34(&v25))
    {
      sub_1000835EC();
      if (ccder_blob_encode_tl())
      {
        v27[0] = v10;
        v27[1] = v9;
        v27[2] = v5;
        v27[3] = v3;
        v27[4] = v7;
        v27[5] = v26;
        v27[6] = &v29 - v26;
        sub_1000023AC(v12, 0x21u, v27, 7u, v13, v14, v15, v16, 0, 0);
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 53, "", "");
  }

  sub_1000016B0();
}

uint64_t sub_1000A6028(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (sub_100082754())
  {
    sub_1000016FC();
    result = IOConnectCallMethod(v4, v5, v6, v7, v8, v9, v10, v11, 0, 0);
    if (!result)
    {
      result = 0;
      if (a3)
      {
        *a3 = 0;
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 80, "", "");
    return sub_100001AD4();
  }

  return result;
}

uint64_t sub_1000A613C(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  sub_100086150();
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  free(a1[1]);
  free(a1);
  return 0;
}

uint64_t sub_1000A6194(int a1, uint64_t a2, unint64_t a3, int a4, void *a5)
{
  v14 = 0;
  if (!a2 && a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (sub_1000A6294(a4, &v14) || (v9 = calloc(0x20uLL, 1uLL)) == 0)
  {
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
    v11 = sub_1000A637C(v14);
    v12 = 0xFFFFFFFFLL;
    if (a3 <= 0x7FFFFFFE && !v11 && !sub_1000A641C(a1, a2, a3, v10, v14))
    {
      v12 = 0;
      if (a5)
      {
        *a5 = v14;
        v14 = 0;
      }
    }

    sub_100086098(v10);
    free(v10);
  }

  if (v14)
  {
    sub_1000A613C(v14);
  }

  return v12;
}

uint64_t sub_1000A6294(int a1, void *a2)
{
  if ((a1 - 1) > 2 || a2 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = calloc(0x20uLL, 1uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  *(v6 + 2) = 20;
  v8 = calloc(0x14uLL, 1uLL);
  *(v7 + 1) = v8;
  if (!v8)
  {
LABEL_19:
    free(v7);
    return 0xFFFFFFFFLL;
  }

  *v7 = 1634431856;
  v7[6] = a1;
  v9 = *(v7 + 2);
  result = CCRandomCopyBytes();
  if (result)
  {
    v11 = *(v7 + 1);
    if (v11)
    {
      free(v11);
    }

    goto LABEL_19;
  }

  if (a1 == 3)
  {
    v10 = 2000;
  }

  else
  {
    v10 = 10000000;
  }

  if (a1 == 2)
  {
    v10 = 1000;
  }

  v7[1] = v10;
  *a2 = v7;
  return result;
}

uint64_t sub_1000A637C(unsigned int *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  sub_100086150();
  if (!v6 || !v3 && v4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (v5 && a1[6] - 4 >= 0xFFFFFFFD)
  {
    ccsha256_di();
    v9 = *(a1 + 1);
    v8 = *(a1 + 2);
    v10 = a1[1];
    if (ccpbkdf2_hmac())
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000A641C(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v40 = 0;
  sub_10008606C();
  v38 = 0;
  __n = 0;
  if ((v10 || !a3) && a4 && a5)
  {
    v11 = sub_100082754();
    if (v11)
    {
      v12 = v11;
      v13 = *(a5 + 8);
      v14 = *(a5 + 16);
      if (!sub_1000B05EC() && !sub_1000B05EC() && !sub_1000B08B0(&v38, off_1000EACD8, *(a5 + 4)) && !sub_1000B08B0(&v38, off_1000EACE0, *(a5 + 24)) && (a3 < 1 || !sub_1000B05EC()) && !sub_1000876BC(&v38) && !sub_1000B0318(&v38, &v40, &__n))
      {
        sub_1000860E4(a1, v23, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, __n);
        v5 = sub_1000023AC(v12, 0x1Eu, v15, 3u, v16, v17, v18, v19, v24, v26);
      }
    }

    else
    {
      sub_1000835D8();
      fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v27, v28, v29, v30, v31, v32, ":", 221, "", "");
      v5 = (v5 - 6);
    }
  }

  sub_100087284(&v38);
  if (v40)
  {
    sub_1000860C0(v40, __n);
    free(v40);
  }

  return v5;
}

void sub_1000A6610()
{
  sub_100001A8C();
  __chkstk_darwin(v2);
  if (v3)
  {
    sub_100086038();
    v4 = calloc(0x20uLL, 1uLL);
    if (v4)
    {
      v5 = v4;
      *v4 = 1634431856;
      v6 = sub_100082754();
      if (!v6)
      {
        sub_1000835D8();
        fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 387, "", "");
        goto LABEL_16;
      }

      v7 = v6;
      bzero(v36, 0x8000uLL);
      v26[0] = 0x8000;
      v35 = v1;
      if (sub_100085F14(v7, 0x1Fu, &v35, v8, v9, v10, v11, v12, v36, v26) || v26[0] > 0x8000)
      {
        goto LABEL_16;
      }

      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v28 = 0u;
      v30 = 0u;
      v31 = 0;
      v27 = 0u;
      v33 = 0u;
      v34 = 0u;
      v26[1] = off_1000EACD0;
      v29 = off_1000EACD8;
      v32 = off_1000EACE0;
      sub_100085EF4();
      sub_1000AFCE8();
      v14 = ccder_decode_tl();
      if (v14)
      {
        v15 = v14;
        v16 = calloc(*(v5 + 2), 1uLL);
        *(v5 + 1) = v16;
        if (!v16)
        {
          v17 = 0;
          if (!Mutable)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        memcpy(v16, v15, *(v5 + 2));
        v5[1] = sub_1000AFE9C();
        v5[6] = sub_1000AFE9C();
      }

      v17 = 1;
      if (!Mutable)
      {
LABEL_11:
        if (v17 && *(v5 + 2))
        {
          *v0 = v5;
          goto LABEL_14;
        }

LABEL_16:
        sub_1000A613C(v5);
        goto LABEL_14;
      }

LABEL_10:
      CFRelease(Mutable);
      goto LABEL_11;
    }
  }

LABEL_14:
  sub_1000016B0();
}

uint64_t sub_1000A689C(int a1, uint64_t a2, int a3, unsigned int *a4)
{
  memset(v9, 0, sizeof(v9));
  if (a3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 || a4 == 0;
  if (v5 || *a4 != 1634431856 || sub_1000A637C(a4))
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = sub_100083E2C(a1, v9, 32, 0);
  }

  sub_100086098(v9);
  return v7;
}

uint64_t sub_1000A6960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int **a6)
{
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v21 = 0;
  if (!a6)
  {
    goto LABEL_18;
  }

  v7 = *a6;
  if (!*a6)
  {
    goto LABEL_18;
  }

  v8 = *v7;
  sub_100086150();
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v9;
  if (!v10)
  {
    if (v11)
    {
      goto LABEL_18;
    }
  }

  if (!v12 && v13 || sub_1000A637C(v7))
  {
    goto LABEL_18;
  }

  v16 = sub_1000A6294(v7[6], &v21);
  v17 = v21;
  if (v16 || (v18 = sub_1000A637C(v21), v17 = v21, v18))
  {
LABEL_16:
    if (v17)
    {
      sub_1000A613C(v17);
    }

LABEL_18:
    v19 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  if (sub_1000A641C(v15, v23, 32, v22, v21))
  {
    v17 = v21;
    goto LABEL_16;
  }

  sub_1000A613C(v7);
  v19 = 0;
  *a6 = v21;
LABEL_14:
  sub_100086098(v23);
  sub_100086098(v22);
  return v19;
}

uint64_t sub_1000A6AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v9 = 3758097084;
  if (sub_100082754())
  {
    if (a8)
    {
      sub_1000016FC();
      v9 = IOConnectCallMethod(v10, v11, v12, v13, v14, v15, v16, v17, 0, 0);
      if (!v9)
      {
        *a8 = 0;
      }
    }

    else
    {
      return 3758097090;
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 190, "", "");
  }

  return v9;
}

uint64_t sub_1000A6DDC(const void *a1, int a2, _DWORD *a3)
{
  sub_1000018B8(__stack_chk_guard);
  v7 = sub_100082754();
  if (v7)
  {
    v3 = (v3 + 6);
    if (a1)
    {
      if (a3)
      {
        output = 0;
        outputCnt = 1;
        v3 = IOConnectCallMethod(v7, 6u, 0, 0, a1, a2, &output, &outputCnt, 0, 0);
        if (!v3)
        {
          *a3 = output;
        }
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v9, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v10, v11, v12, v13, v14, v15, v16, ":", 607, "", "");
  }

  return v3;
}

uint64_t sub_1000A6EE8(const void *a1, int a2)
{
  sub_100083650();
  v5 = sub_100082754();
  if (v5)
  {
    if (a1)
    {
      return sub_1000017A4(v5, 0x57u, 0, 0, a1, a2, v6, v7, 0, 0);
    }

    return (v2 + 6);
  }

  else
  {
    sub_1000835D8();
    fprintf(v9, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v10, v11, v12, v13, v14, v15, v16, ":", 629, "", "");
  }

  return v2;
}

void sub_1000A6FA4()
{
  sub_100086344();
  sub_10008620C();
  __chkstk_darwin(v6);
  sub_1000860B4();
  v8 = v7;
  *(v5 - 72) = __stack_chk_guard;
  sub_1000861AC();
  v9 = sub_100082754();
  if (v9)
  {
    v17 = v9;
    if (v1)
    {
      if (v0)
      {
        sub_100086078((v2 + 6), v10, v11, v12, v13, v14, v15, v16, v27, v28, v29, v30, v31, v32, v33);
        __count = v3;
        v36 = v8;
        if (!sub_100085F14(v17, 3u, &v36, v18, v19, v20, v21, v22, v4, &__count))
        {
          v23 = calloc(__count, 1uLL);
          *v1 = v23;
          if (v23)
          {
            memcpy(v23, __src, __count);
            *v0 = __count;
          }
        }
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v25, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v26, v29, v30, v31, v32, v33, v34, ":", 679, "", "");
    sub_100001AD4();
  }

  v24 = *(v5 - 72);
  sub_100086244();
  sub_100086330();
}

uint64_t sub_1000A70EC()
{
  sub_100086038();
  sub_1000018B8(__stack_chk_guard);
  v18 = 16;
  v3 = sub_100082754();
  if (v3)
  {
    if (v1)
    {
      v20 = 0uLL;
      v19 = v2;
      v0 = sub_100085F14(v3, 0x17u, &v19, v4, v5, v6, v7, v8, &v20, &v18);
      if (!v0)
      {
        *v1 = v20;
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v11, v12, v13, v14, v15, v16, v17, ":", 782, "", "");
  }

  return v0;
}

uint64_t sub_1000A71EC(int a1, uint64_t a2, void **a3, size_t *a4)
{
  sub_100086250();
  v51 = 0;
  memset(__src, 0, sizeof(__src));
  v47 = 0;
  __count = 34;
  HIDWORD(v45) = 0;
  v9 = sub_100082754();
  if (v9)
  {
    v17 = (v4 + 5);
    if (a3 && a4)
    {
      v18 = v9;
      v49 = a1;
      v19 = sub_100086274(v9, v10, v11, v12, v13, v14, v15, v16, a2, 16, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, 0);
      sub_100088BF8(v19, v20, 1, v21, v22, v23, v24, v25, v34);
      if (v47)
      {
        v29 = sub_10008601C(v18, 0x44u, &v49, v26, v47, v46, v27, v28, __src, &__count);
        if (v29)
        {
          v17 = v29;
        }

        else
        {
          *a3 = calloc(__count, 1uLL);
          sub_100086250();
          if (v30)
          {
            memcpy(v30, __src, __count);
            v17 = 0;
            *a4 = __count;
          }
        }
      }

      else
      {
        sub_100086250();
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v33, v35, v36, v37, v38, v39, v40, ":", 813, "", "");
    v17 = (v4 - 1);
  }

  free(v47);
  return v17;
}

uint64_t sub_1000A7378()
{
  sub_100086038();
  sub_1000018B8(__stack_chk_guard);
  if (sub_100082754())
  {
    if (v1)
    {
      sub_100001A18();
      sub_100085F38();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
      if (!v0)
      {
        sub_1000861F4();
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v15, v16, v17, v18, v19, v20, ":", 889, "", "");
  }

  return v0;
}

uint64_t sub_1000A759C(const void *a1, int a2, int a3, int a4, void *a5, int *a6)
{
  sub_100085F48(__stack_chk_guard);
  v13 = sub_100082754();
  if (v13)
  {
    v6 = (v6 + 6);
    if (a1)
    {
      if (a5)
      {
        if (a6)
        {
          v26[0] = a4;
          v26[1] = a3;
          v25 = *a6;
          v6 = sub_1000017A4(v13, 0xBu, v26, 2u, a1, a2, v14, v15, a5, &v25);
          if (!v6)
          {
            *a6 = v25;
          }
        }
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 942, "", "");
  }

  return v6;
}

uint64_t sub_1000A77E8()
{
  sub_100086038();
  sub_1000018B8(__stack_chk_guard);
  if (sub_100082754())
  {
    if (v1)
    {
      sub_1000016FC();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, 0, 0);
      if (!v0)
      {
        sub_1000861F4();
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 987, "", "");
  }

  return v0;
}

void sub_1000A7A2C()
{
  sub_100001A8C();
  v1 = __chkstk_darwin(v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v33 = 0;
  v32 = 0;
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  v13 = sub_100082754();
  if (v13)
  {
    v19 = v13;
    v34[0] = v11;
    v34[1] = v9;
    v34[2] = v7;
    sub_100088BF8(&v33, &v32, 1, v14, v15, v16, v17, v18, v12);
    if (v33)
    {
      if (!sub_1000017A4(v19, 0x6Eu, v34, 3u, v33, v32, v20, v21, __src, &__count))
      {
        v22 = calloc(__count, 1uLL);
        *v5 = v22;
        if (v22)
        {
          memcpy(v22, __src, __count);
          *v3 = __count;
        }
      }
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v24, v25, v26, v27, v28, v29, v30, ":", 1101, "", "");
  }

  free(v33);
  sub_100086268();
  sub_1000016B0();
}

uint64_t sub_1000A7BE4()
{
  sub_100083650();
  v24 = 0;
  v23 = 0;
  v1 = sub_100082754();
  if (v1)
  {
    v2 = v1;
    sub_10008625C();
    sub_100088BF8(&v24, &v23, 1, v3, v4, v5, v6, v7, v16);
    if (v24)
    {
      v0 = sub_100085F74(v2, 0x6Fu, v8, v9, v24, v23, v10, v11, 0, 0);
      v12 = v24;
    }

    else
    {
      v12 = sub_100086054();
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v17, v18, v19, v20, v21, v22, ":", 1143, "", "");
    v12 = 0;
  }

  free(v12);
  return v0;
}

uint64_t sub_1000A7CC8(uint64_t a1, void *a2)
{
  sub_100083650();
  v28 = 0;
  v27 = 0;
  v26 = 16;
  v5 = sub_100082754();
  if (v5)
  {
    v11 = v5;
    sub_100088BF8(&v28, &v27, 1, v6, v7, v8, v9, v10, a1);
    if (v28)
    {
      v2 = sub_100085F74(v11, 0x70u, v12, v13, v28, v27, v14, v15, a2, &v26);
      v16 = v28;
    }

    else
    {
      v16 = sub_100086054();
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 1165, "", "");
    v16 = 0;
  }

  free(v16);
  return v2;
}

uint64_t sub_1000A8084(uint64_t a1, uint64_t a2, int a3, int a4, _OWORD *a5)
{
  v24 = 0u;
  v25 = 0u;
  __s = 0u;
  v23 = 0u;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v8 = sub_1000A5B34(a1, a2, v20);
  if (v8)
  {
    v16 = v8;
  }

  else
  {
    v8 = sub_1000A5D30(v20, a3, a4, &__s, v12, v13, v14, v15);
    v16 = v8;
    if (!v8)
    {
      v17 = v23;
      *a5 = __s;
      a5[1] = v17;
      v18 = v25;
      a5[2] = v24;
      a5[3] = v18;
    }
  }

  sub_1000862B8(v8, v9, v10, v11, v12, v13, v14, v15, *&v20[0]);
  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  return sub_100086CF8(v16);
}

uint64_t sub_1000A8164(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v4 = sub_1000A5B34(a1, a2, v14);
  v12 = v4;
  if (!v4)
  {
    uuid_copy(a3, v14 + 8);
  }

  sub_1000862B8(v4, v5, v6, v7, v8, v9, v10, v11, *&v14[0]);
  return sub_100086CF8(v12);
}

uint64_t sub_1000A8200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  sub_100086130();
  v10 = v9;
  sub_100083650();
  v11 = sub_100082754();
  if (v11)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v25[0] = v10;
      v25[1] = 64;
      return sub_100085FC0(v11, 0x82u, v25, 2u, v12, v13, v14, v15, v7, a5);
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 1292, "", "");
  }

  return v5;
}

uint64_t sub_1000A82F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  sub_100086130();
  v10 = v9;
  sub_100083650();
  v11 = sub_100082754();
  if (v11)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v25 = v10;
      return sub_100085FC0(v11, 0x81u, &v25, 1u, v12, v13, v14, v15, v7, a5);
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 1311, "", "");
  }

  return v5;
}

uint64_t sub_1000A83F0()
{
  sub_100086038();
  sub_1000018B8(__stack_chk_guard);
  if (sub_100082754())
  {
    if (v1)
    {
      sub_100001A18();
      sub_100085F38();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
      if (!v0)
      {
        sub_1000861F4();
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v15, v16, v17, v18, v19, v20, ":", 1330, "", "");
  }

  return v0;
}

uint64_t sub_1000A84D0()
{
  sub_100086038();
  sub_1000018B8(__stack_chk_guard);
  v3 = sub_100082754();
  if (v3)
  {
    if (v1)
    {
      v21 = 0;
      v22 = v2;
      v19 = 16;
      *src = 0;
      v9 = sub_100085F14(v3, 0x84u, &v22, v4, v5, v6, v7, v8, src, &v19);
      if (v9)
      {
        return v9;
      }

      else if (v19 == 16)
      {
        uuid_copy(v1, src);
        return 0;
      }

      else
      {
        return 3758604298;
      }
    }

    else
    {
      return (v0 + 6);
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 1352, "", "");
  }

  return v0;
}

uint64_t sub_1000A85F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (a5)
  {
    sub_100086180();
    v10 = v9;
    *a5 = -1;
    v15 = sub_1000A8084(v9, v11, v12, v13, v14);
    if (!v15)
    {
      sub_1000835D8();
      fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Unwrapped DER backup bag%s\n", "aks", v17, v33, v34, v36, v38, v40, v42, ":", 1401, "", "");
      v18 = 0;
      goto LABEL_9;
    }

    v46 = v15;
    sub_100085F60();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unwrap backup bag as DER: 0x%08x%s\n", "aks", "", v20, v34, v36, v38, v40, v42, v44, 1389, "", v46, "");
    v21 = sub_1000A6DDC(v10, v7, a5);
    if (v21)
    {
      v18 = v21;
      v47 = v21;
      sub_100085F60();
      fprintf(v29, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to load in-kernel backup bag: 0x%08x%s\n", "aks", "", v30, v35, v37, v39, v41, v43, v45, 1391, "", v47, "");
    }

    else
    {
      v22 = *a5;
      sub_1000A6610();
      v24 = v23;
      v25 = *a5;
      if (v24)
      {
        v18 = sub_1000A689C(v25, v6, v5, 0);
        if (!v18)
        {
          goto LABEL_9;
        }

        sub_100085F60();
        fprintf(v31, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag with prederived secret: 0x%08x%s\n", "aks", "", v32);
      }

      else
      {
        v18 = sub_100083E2C(v25, v6, v5, 0);
        if (!v18)
        {
          goto LABEL_9;
        }

        sub_100085F60();
        fprintf(v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag: 0x%08x%s\n", "aks", "", v27);
      }
    }
  }

  else
  {
    v18 = 3758097090;
  }

  if (*a5 != -1)
  {
    sub_100083A44(*a5);
    *a5 = -1;
  }

LABEL_9:
  sub_1000A613C(0);
  return v18;
}

uint64_t sub_1000A8804(int a1, uint64_t a2, uint64_t a3)
{
  sub_100083650();
  v28 = 0;
  v27 = 0;
  v7 = sub_100082754();
  if (v7)
  {
    v8 = v7;
    v29[0] = a1;
    v29[1] = a2;
    v29[2] = a3;
    sub_10008625C();
    sub_100088BF8(&v28, &v27, 1, v9, v10, v11, v12, v13, v20);
    if (v28)
    {
      v3 = sub_1000017A4(v8, 0x60u, v29, 3u, v28, v27, v14, v15, 0, 0);
      v16 = v28;
    }

    else
    {
      v16 = sub_100086054();
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v21, v22, v23, v24, v25, v26, ":", 1423, "", "");
    v16 = 0;
  }

  free(v16);
  return v3;
}

uint64_t sub_1000A893C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  sub_100085F48(__stack_chk_guard);
  v31 = 0;
  v30 = 0;
  v10 = sub_100082754();
  if (v10)
  {
    v11 = v10;
    v32[0] = a1;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a5;
    sub_10008625C();
    sub_100088BF8(&v31, &v30, 1, v12, v13, v14, v15, v16, v23);
    if (v31)
    {
      v5 = sub_1000017A4(v11, 0x75u, v32, 4u, v31, v30, v17, v18, 0, 0);
      v19 = v31;
    }

    else
    {
      v19 = sub_100086054();
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v24, v25, v26, v27, v28, v29, ":", 1445, "", "");
    v19 = 0;
  }

  free(v19);
  return v5;
}

uint64_t sub_1000A8A80(uint64_t a1)
{
  __chkstk_darwin(a1);
  v5 = v4;
  sub_100086038();
  sub_100086140(__stack_chk_guard);
  bzero(__src, 0x2000uLL);
  __count = 0x2000;
  v26 = v2;
  v6 = (v3 + 6);
  if (v1 && v5)
  {
    v7 = sub_100082754();
    if (v7)
    {
      v13 = sub_100085F14(v7, 0x61u, &v26, v8, v9, v10, v11, v12, __src, &__count);
      if (v13)
      {
        v6 = v13;
      }

      else
      {
        if (__count)
        {
          v14 = calloc(__count, 1uLL);
          *v1 = v14;
          if (!v14)
          {
            v6 = (v3 + 1);
            goto LABEL_10;
          }

          memcpy(v14, __src, __count);
          v15 = __count;
        }

        else
        {
          v15 = 0;
          *v1 = 0;
        }

        sub_1000861E8(v15);
      }
    }

    else
    {
      sub_1000835D8();
      fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 1471, "", "");
      sub_100086060();
    }
  }

LABEL_10:
  memset_s(__src, 0x2000uLL, 0, 0x2000uLL);
  return v6;
}

uint64_t sub_1000A8C00(int a1)
{
  sub_1000018B8(__stack_chk_guard);
  v25 = 0;
  v24 = 0;
  v3 = sub_100082754();
  if (v3)
  {
    v4 = v3;
    v26 = a1;
    sub_10008625C();
    sub_100088BF8(&v25, &v24, 1, v5, v6, v7, v8, v9, v17);
    if (v25)
    {
      v1 = sub_10008601C(v4, 0x62u, &v26, v10, v25, v24, v11, v12, 0, 0);
      v13 = v25;
    }

    else
    {
      v13 = sub_100086054();
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v18, v19, v20, v21, v22, v23, ":", 1493, "", "");
    v13 = 0;
  }

  free(v13);
  return v1;
}

uint64_t sub_1000A8E20(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v62 = 0;
  sub_10008606C();
  v60 = 0;
  __n = 0;
  v8 = sub_100082754();
  if (v8)
  {
    v9 = v8;
    CFNumberGetTypeID();
    v10 = sub_100086010();
    if (!sub_1000ADAA8(v10, v11, v12))
    {
      CFNumberGetTypeID();
      v13 = sub_100086010();
      if (!sub_1000ADAA8(v13, v14, v15))
      {
        CFNumberGetTypeID();
        v16 = sub_100086010();
        if (!sub_1000ADAA8(v16, v17, v18))
        {
          CFNumberGetTypeID();
          v19 = sub_100086010();
          if (!sub_1000ADAA8(v19, @"EscrowPasscodePeriod", v20))
          {
            CFNumberGetTypeID();
            v21 = sub_100086010();
            if (!sub_1000ADAA8(v21, @"EscrowTokenPeriod", v22))
            {
              CFDataGetTypeID();
              v23 = sub_100086010();
              if (!sub_1000ADAA8(v23, v24, v25))
              {
                CFDataGetTypeID();
                v26 = sub_100086010();
                if (!sub_1000ADAA8(v26, v27, v28))
                {
                  CFBooleanGetTypeID();
                  v29 = sub_100086010();
                  if (!sub_1000ADAA8(v29, v30, v31))
                  {
                    CFBooleanGetTypeID();
                    v32 = sub_100086010();
                    if (!sub_1000ADAA8(v32, v33, v34) && !sub_1000876BC(&v60))
                    {
                      if (!a2)
                      {
                        goto LABEL_24;
                      }

                      v35 = &off_1000EA988;
                      if (!a4)
                      {
                        v35 = &off_1000EA998;
                      }

                      v36 = *v35;
                      if (!sub_1000B05EC())
                      {
LABEL_24:
                        if (!sub_1000B0318(&v60, &v62, &__n))
                        {
                          sub_1000860E4(a1, v45, v47, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, __n);
                          v4 = sub_1000023AC(v9, 0x1Eu, v37, 3u, v38, v39, v40, v41, v46, v48);
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
    }
  }

  else
  {
    sub_1000835D8();
    fprintf(v43, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v44, v49, v50, v51, v52, v53, v54, ":", 1587, "", "");
    v4 = (v4 - 6);
  }

  sub_100087284(&v60);
  if (v62)
  {
    sub_1000860C0(v62, __n);
    free(v62);
  }

  return v4;
}