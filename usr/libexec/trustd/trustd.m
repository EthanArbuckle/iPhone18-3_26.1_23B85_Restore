void sub_1000012B0(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    return;
  }

  v4 = *(a1 + 32);
  type = xpc_get_type(object);
  cf = 0;
  v60 = 0u;
  *v58 = 0u;
  v59 = 0u;
  *v57 = 0u;
  LOBYTE(v58[0]) = 1;
  euid = xpc_connection_get_euid(v4);
  HIDWORD(v58[0]) = euid;
  BYTE4(v59) = 0;
  BYTE9(v60) = 0;
  if (type != &_xpc_type_dictionary)
  {
    sub_100029B54(1, @"com.apple.security.xpc", v7, &cf, v8, @"Messages expect to be xpc dictionary, got: %@", object);
    v9 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      buf.val[0] = 138412546;
      *&buf.val[1] = 0;
      LOWORD(buf.val[3]) = 2112;
      *(&buf.val[3] + 2) = cf;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: returning error: %@", &buf, 0x16u);
    }

    v10 = sub_10002AE7C(cf);
    reply_with_format = xpc_create_reply_with_format();
    v12 = 0;
    goto LABEL_6;
  }

  v13 = euid;
  reply = xpc_dictionary_create_reply(object);
  uint64 = xpc_dictionary_get_uint64(object, "operation");
  *bytes = 0u;
  v56 = 0u;
  objecta = v4;
  xpc_connection_get_audit_token();
  memset(&buf, 0, sizeof(buf));
  v14 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &buf);
  v57[0] = v14;
  v44 = CFDataCreate(kCFAllocatorDefault, bytes, 32);
  v15 = sub_10000227C(v14, @"com.apple.developer.on-demand-install-capable");
  v16 = sub_1000021D8(v14, @"keychain-access-groups");
  v17 = sub_1000021D8(v14, @"com.apple.security.application-groups");
  v18 = sub_1000022EC(v14);
  v19 = sub_1000021D8(v14, @"com.apple.developer.associated-application-identifier");
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (v16)
  {
    v76.length = CFArrayGetCount(v16);
    v76.location = 0;
    CFArrayAppendArray(Mutable, v16, v76);
  }

  if (v19)
  {
    v77.length = CFArrayGetCount(v19);
    v77.location = 0;
    CFArrayAppendArray(Mutable, v19, v77);
  }

  if (v18)
  {
    CFArrayAppendValue(Mutable, v18);
  }

  if (v17)
  {
    if (v15)
    {
      v21 = sub_1000027AC("entitlements");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        buf.val[0] = 138412290;
        *&buf.val[1] = @"com.apple.security.application-groups";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Ignoring %@ because client is API-restricted", &buf, 0xCu);
      }
    }

    else
    {
      v78.length = CFArrayGetCount(v17);
      v78.location = 0;
      CFArrayAppendArray(Mutable, v17, v78);
    }
  }

  v75.length = CFArrayGetCount(Mutable);
  v75.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(Mutable, v75, kSecAttrAccessGroupToken);
  if (FirstIndexOfValue != -1)
  {
    v23 = FirstIndexOfValue;
    if (_os_feature_enabled_impl())
    {
      CFArrayRemoveValueAtIndex(Mutable, v23);
      CFArrayAppendValue(Mutable, kSecAttrAccessGroupToken);
    }

    else
    {
      v24 = sub_1000027AC("SecWarning");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.val[0]) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Keychain access group com.apple.token ignored, feature not available", &buf, 2u);
      }

      CFArrayRemoveValueAtIndex(Mutable, v23);
    }
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v57[1] = Mutable;
  v25 = sub_1000027AC("serverxpc");
  v26 = uint64;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    if (uint64 > 0x88)
    {
      v28 = @"Unknown xpc operation";
    }

    else
    {
      v28 = *(&off_100085F70 + uint64);
    }

    buf.val[0] = 138412802;
    *&buf.val[1] = v14;
    LOWORD(buf.val[3]) = 2112;
    *(&buf.val[3] + 2) = v28;
    HIWORD(buf.val[5]) = 2048;
    *&buf.val[6] = uint64;
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "XPC [%@] operation: %@ (%llu)", &buf, 0x20u);
  }

  if (uint64 <= 24)
  {
    if (uint64 <= 7)
    {
      reply_with_format = reply;
      v4 = objecta;
      v12 = v44;
      switch(uint64)
      {
        case 4:
          v27 = &qword_100081C50;
          break;
        case 5:
          v27 = &off_100081C60;
          break;
        case 6:
          v27 = &off_100081C90;
          break;
        default:
          goto LABEL_143;
      }
    }

    else if (uint64 > 19)
    {
      reply_with_format = reply;
      v4 = objecta;
      v12 = v44;
      if (uint64 == 20)
      {
        v27 = &qword_100081CE0;
      }

      else
      {
        if (uint64 != 23)
        {
          goto LABEL_143;
        }

        v27 = &qword_100081CF0;
      }
    }

    else
    {
      if (uint64 == 8)
      {
        *v62 = 0;
        v53 = 0;
        v54 = 0;
        v51 = 0;
        v52 = 0;
        v49 = 0;
        v50 = 0;
        v48 = 0;
        v29 = xpc_dictionary_get_BOOL(object, "anchorsOnly");
        v30 = xpc_dictionary_get_BOOL(object, "keychainsAllowed");
        v31 = xpc_dictionary_get_uint64(object, "attribution");
        if (sub_100002344(object, v62, &cf) && sub_1000023C0(object, &v54) && sub_100002414(object, &v53) && sub_10000246C(object, "responses", &v52, &cf) && sub_10000246C(object, "scts", &v51, &cf) && sub_10000260C(object, "trustedLogs", &v50, &cf))
        {
          v32 = xpc_dictionary_get_double(object, "verifyDate");
          if (sub_10000260C(object, "exceptions", &v49, &cf))
          {
            if (sub_1000026DC(object, "auditToken", &v48, &cf))
            {
              xpc_retain(objecta);
              if (v14)
              {
                CFRetain(v14);
              }

              v33 = v48;
              if (v48 && sub_100025058(8u, v14, @"com.apple.private.network.socket-delegate", &cf) || (v33 = v44) != 0)
              {
                CFRetain(v33);
              }

              v34 = sub_1000020D8();
              *buf.val = _NSConcreteStackBlock;
              *&buf.val[2] = 0x40000000;
              *&buf.val[4] = sub_10001A1F4;
              *&buf.val[6] = &unk_100081BF0;
              v68 = reply;
              v69 = objecta;
              v72 = v59;
              v73 = v60;
              v70 = *v57;
              v71 = *v58;
              v74 = v33;
              sub_10000319C(v34, v33, *v62, v54, v29, v30, v53, v52, v32, v51, v50, Mutable, v49, v31, &buf);
              reply = 0;
            }

            v26 = uint64;
          }
        }

        reply_with_format = reply;
        v4 = objecta;
        v12 = v44;
        if (v53)
        {
          CFRelease(v53);
        }

        if (v54)
        {
          CFRelease(v54);
        }

        if (*v62)
        {
          CFRelease(*v62);
        }

        if (v52)
        {
          CFRelease(v52);
        }

        if (v51)
        {
          CFRelease(v51);
        }

        if (v50)
        {
          CFRelease(v50);
        }

        if (v49)
        {
          CFRelease(v49);
        }

        v35 = v48;
        if (v48)
        {
LABEL_171:
          CFRelease(v35);
        }

        goto LABEL_143;
      }

      if (uint64 != 19)
      {
        reply_with_format = reply;
        v4 = objecta;
        v12 = v44;
        goto LABEL_143;
      }

      v27 = &qword_100081CD0;
      reply_with_format = reply;
      v4 = objecta;
      v12 = v44;
    }
  }

  else
  {
    reply_with_format = reply;
    v4 = objecta;
    v12 = v44;
    switch(uint64)
    {
      case 100:
        v27 = &off_100081C70;
        break;
      case 101:
        v27 = &off_100081C80;
        break;
      case 102:
        v27 = &qword_100081CA0;
        break;
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 131:
      case 132:
        goto LABEL_143;
      case 115:
        v27 = &qword_100081D20;
        break;
      case 116:
        v27 = &off_100081D30;
        break;
      case 117:
        v27 = &off_100081D40;
        break;
      case 118:
        v27 = &qword_100081D50;
        break;
      case 119:
        v27 = &qword_100081D60;
        break;
      case 120:
        v27 = &qword_100081D70;
        break;
      case 121:
        v27 = &off_100081D80;
        break;
      case 122:
        v27 = &off_100081D90;
        break;
      case 123:
        v27 = &off_100081DA0;
        break;
      case 124:
        v27 = &qword_100081DB0;
        break;
      case 125:
        v27 = &off_100081DC0;
        break;
      case 126:
        v27 = &off_100081DD0;
        break;
      case 127:
        *v62 = 0;
        v53 = 0;
        v54 = 0;
        if (!sub_10006117C(object, "domain", v62, &cf))
        {
          goto LABEL_170;
        }

        if (sub_1000026DC(object, "auth", &v54, &cf))
        {
          if (sub_1000026DC(object, "settings", &v53, &cf))
          {
            xpc_retain(objecta);
            if (v14)
            {
              CFRetain(v14);
            }

            if (v44)
            {
              CFRetain(v44);
            }

            v36 = v53;
            *buf.val = _NSConcreteStackBlock;
            *&buf.val[2] = 0x40000000;
            *&buf.val[4] = sub_1000250F4;
            *&buf.val[6] = &unk_100081C10;
            v68 = reply;
            v69 = objecta;
            v70 = *v57;
            v71 = *v58;
            v72 = v59;
            v73 = v60;
            v74 = v44;
            sub_100059858(v13, v44, *v62, v54, v53, &buf);
            reply_with_format = 0;
          }

          else
          {
            v36 = v53;
          }

          if (v36)
          {
            CFRelease(v36);
          }
        }

        v43 = v54;
        if (!v54)
        {
          goto LABEL_170;
        }

        goto LABEL_169;
      case 128:
        v27 = &qword_100081DF0;
        break;
      case 129:
        v27 = &off_100081E00;
        break;
      case 130:
        v27 = &qword_100081E10;
        break;
      case 133:
        *v62 = 0;
        v54 = 0;
        if (!sub_100025058(0x85u, v14, @"com.apple.private.security.storage.trustd-private", &cf))
        {
          goto LABEL_143;
        }

        if (sub_100061100(object, v62, &cf))
        {
          if (sub_100061030(object, "cfdict", &v54, &cf))
          {
            xpc_retain(objecta);
            if (v14)
            {
              CFRetain(v14);
            }

            v37 = v54;
            *buf.val = _NSConcreteStackBlock;
            *&buf.val[2] = 0x40000000;
            *&buf.val[4] = sub_1000251C4;
            *&buf.val[6] = &unk_100081C30;
            v68 = reply;
            v69 = objecta;
            v70 = *v57;
            v71 = *v58;
            v72 = v59;
            v73 = v60;
            sub_1000401CC(v13, *v62, v54, &buf);
            reply_with_format = 0;
          }

          else
          {
            v37 = v54;
          }

          if (v37)
          {
            v43 = v37;
LABEL_169:
            CFRelease(v43);
          }
        }

LABEL_170:
        v35 = *v62;
        if (*v62)
        {
          goto LABEL_171;
        }

        goto LABEL_143;
      case 134:
        v27 = &qword_100081CC0;
        break;
      case 135:
        v27 = &qword_100081CB0;
        break;
      default:
        reply_with_format = reply;
        v4 = objecta;
        v12 = v44;
        if (uint64 == 25)
        {
          v27 = &qword_100081D00;
        }

        else
        {
          if (uint64 != 26)
          {
            goto LABEL_143;
          }

          v27 = &qword_100081D10;
        }

        break;
    }
  }

  v38 = v27[1];
  if (!v38)
  {
    goto LABEL_143;
  }

  if (*v27)
  {
    if (!sub_100025058(uint64, v14, *v27, &cf))
    {
      goto LABEL_143;
    }

    v38 = v27[1];
  }

  v38(v57, object, reply_with_format, &cf);
LABEL_143:
  if (cf)
  {
    if (SecErrorGetOSStatus() == -25300)
    {
      goto LABEL_158;
    }

    if (SecErrorGetOSStatus() == -25330)
    {
      v39 = sub_1000027AC("SecWarning");
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_158;
      }

      if (v26 > 0x88)
      {
        v40 = @"Unknown xpc operation";
      }

      else
      {
        v40 = *(&off_100085F70 + v26);
      }

      *v62 = 138412802;
      *&v62[4] = v57[0];
      v63 = 2112;
      v64 = v40;
      v65 = 2112;
      v66 = cf;
      v42 = "Authentication is needed %@ %@ %@";
    }

    else
    {
      v39 = sub_1000027AC("SecError");
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_158;
      }

      if (v26 > 0x88)
      {
        v41 = @"Unknown xpc operation";
      }

      else
      {
        v41 = *(&off_100085F70 + v26);
      }

      *v62 = 138412802;
      *&v62[4] = v57[0];
      v63 = 2112;
      v64 = v41;
      v65 = 2112;
      v66 = cf;
      v42 = "%@ %@ %@";
    }

    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v42, v62, 0x20u);
LABEL_158:
    v10 = sub_10002AE7C(cf);
    if (reply_with_format)
    {
      xpc_dictionary_set_value(reply_with_format, "error", v10);
    }

    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:
  if (reply_with_format)
  {
    xpc_connection_send_message(v4, reply_with_format);
    xpc_release(reply_with_format);
  }

  if (v10)
  {
    xpc_release(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v57[1])
  {
    CFRelease(v57[1]);
  }

  if (v58[1])
  {
    CFRelease(v58[1]);
  }

  if (v57[0])
  {
    CFRelease(v57[0]);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

id sub_1000020D8()
{
  if (qword_100092BF0 != -1)
  {
    dispatch_once(&qword_100092BF0, &stru_100082710);
  }

  v1 = qword_100092BE8;

  return v1;
}

void sub_10000212C(id a1, void *a2)
{
  if (xpc_get_type(a2) == &_xpc_type_connection)
  {
    v3 = sub_1000020D8();
    xpc_connection_set_target_queue(a2, v3);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_1000012B0;
    handler[3] = &unk_100081BD0;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_activate(a2);
  }
}

const void *sub_1000021D8(__SecTask *a1, const __CFString *a2)
{
  v2 = SecTaskCopyValueForEntitlement(a1, a2, 0);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFArrayGetTypeID())
    {
LABEL_8:
      CFRelease(v3);
      return 0;
    }

    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 != CFStringGetTypeID())
        {
          break;
        }

        if (v6 == ++v7)
        {
          return v3;
        }
      }

      goto LABEL_8;
    }
  }

  return v3;
}

BOOL sub_10000227C(__SecTask *a1, const __CFString *a2)
{
  v2 = SecTaskCopyValueForEntitlement(a1, a2, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  TypeID = CFBooleanGetTypeID();
  v5 = TypeID == CFGetTypeID(v3) && CFBooleanGetValue(v3) != 0;
  CFRelease(v3);
  return v5;
}

const void *sub_1000022EC(__SecTask *a1)
{
  result = sub_10000283C(a1, @"application-identifier");
  if (!result)
  {

    return sub_10000283C(a1, @"com.apple.application-identifier");
  }

  return result;
}

BOOL sub_100002344(void *a1, uint64_t *a2, __CFString **a3)
{
  if (xpc_dictionary_get_value(a1, "certificates"))
  {
    v5 = SecCertificateXPCArrayCopyArray();
    *a2 = v5;
    return v5 != 0;
  }

  else
  {
    sub_10001C2D4(-108, a3, @"no certs for key %s", "certificates");
    return 0;
  }
}

BOOL sub_1000023C0(void *a1, uint64_t *a2)
{
  value = xpc_dictionary_get_value(a1, "anchors");
  if (value)
  {
    value = SecCertificateXPCArrayCopyArray();
    v4 = value != 0;
  }

  else
  {
    v4 = 1;
  }

  *a2 = value;
  return v4;
}

BOOL sub_100002414(void *a1, uint64_t *a2)
{
  if (xpc_dictionary_get_value(a1, "policies"))
  {
    v3 = SecPolicyXPCArrayCopyArray();
    *a2 = v3;
    return v3 != 0;
  }

  else
  {
    if (a2)
    {
      *a2 = 0;
    }

    return 1;
  }
}

BOOL sub_10000246C(void *a1, const char *a2, __CFArray **a3, __CFString **a4)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (value)
  {
    v7 = value;
    if (xpc_get_type(value) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v7);
      v9 = count;
      if (count >= 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_10001C2D4(-108, a4, @"failed to create CFArray of capacity %zu", count);
      }

      else
      {
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, count, &kCFTypeArrayCallBacks);
        if (!Mutable)
        {
          sub_10001C2D4(-108, a4, @"failed to create CFArray of capacity %zu", v9);
          goto LABEL_17;
        }

        if (!v9)
        {
LABEL_17:
          *a3 = Mutable;
          return Mutable != 0;
        }

        v11 = 0;
        while (1)
        {
          length = 0;
          data = xpc_array_get_data(v7, v11, &length);
          if (!data)
          {
            break;
          }

          if (length > 0x7FFFFFFFFFFFFFFELL)
          {
            break;
          }

          v13 = CFDataCreate(kCFAllocatorDefault, data, length);
          if (!v13)
          {
            break;
          }

          v14 = v13;
          CFArraySetValueAtIndex(Mutable, v11, v13);
          CFRelease(v14);
          if (v9 == ++v11)
          {
            goto LABEL_17;
          }
        }

        sub_10001C2D4(-50, a4, @"data_array[%zu] failed to decode", v11);
        CFRelease(Mutable);
      }
    }

    else
    {
      sub_10001C2D4(-50, a4, @"data_array xpc value is not an array");
    }

    Mutable = 0;
    goto LABEL_17;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 1;
}

BOOL sub_10000260C(void *a1, const char *a2, void *a3, __CFString **a4)
{
  if (xpc_dictionary_get_value(a1, a2))
  {
    v8 = sub_100060E9C(a1, a2, a4);
    v9 = v8;
    if (v8)
    {
      v10 = CFGetTypeID(v8);
      if (v10 != CFArrayGetTypeID())
      {
        v11 = CFCopyTypeIDDescription(v10);
        sub_10001C2D4(-50, a4, @"object for key %s not array but %@", a2, v11);
        if (v11)
        {
          CFRelease(v11);
        }

        CFRelease(v9);
        v9 = 0;
      }
    }

    result = v9 != 0;
  }

  else
  {
    v9 = 0;
    result = 1;
  }

  *a3 = v9;
  return result;
}

BOOL sub_1000026DC(void *a1, const char *a2, void *a3, __CFString **a4)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, a2, &length);
  if (data)
  {
    v13 = 0;
    v9 = xpc_dictionary_get_data(a1, a2, &v13);
    if (v9)
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        sub_10001C2D4(-50, a4, @"too large data for key %s", a2);
      }

      else
      {
        data = CFDataCreate(kCFAllocatorDefault, v9, v13);
        if (data)
        {
LABEL_10:
          v10 = data != 0;
          goto LABEL_11;
        }

        sub_10001C2D4(-50, a4, @"failed to create data for key %s", a2);
      }
    }

    else
    {
      sub_10001C2D4(-50, a4, @"no data for key %s", a2);
    }

    data = 0;
    goto LABEL_10;
  }

  v10 = 1;
LABEL_11:
  *a3 = data;
  return v10;
}

const void *sub_1000027AC(const char *a1)
{
  pthread_mutex_lock(&stru_100092700);
  pthread_mutex_unlock(&stru_100092700);
  if (a1)
  {
    v2 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x600u);
    v3 = sub_100002890(v2);
    if (v2)
    {
      CFRelease(v2);
    }

    return v3;
  }

  else
  {

    return sub_100002890(0);
  }
}

const void *sub_10000283C(__SecTask *a1, const __CFString *a2)
{
  v2 = SecTaskCopyValueForEntitlement(a1, a2, 0);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFStringGetTypeID())
    {
      CFRelease(v3);
      return 0;
    }
  }

  return v3;
}

const void *sub_100002890(const __CFString *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = @"logging";
  }

  os_unfair_lock_lock_with_options();
  Mutable = qword_100092B10;
  if (!qword_100092B10)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, 0);
    qword_100092B10 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v1);
  if (!Value)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_10002648C;
    v5[3] = &unk_100081F98;
    v5[4] = v1;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_100026744;
    v6[3] = &unk_100082030;
    v6[4] = v5;
    sub_1000054FC(v1, v6);
    Value = CFDictionaryGetValue(qword_100092B10, v1);
  }

  os_unfair_lock_unlock(&unk_100092B08);
  return Value;
}

uint64_t sub_1000029CC(uint64_t result, uint64_t a2)
{
  if (*(result + 184))
  {
    v2 = result;
    v7 = 0;
    v3 = *(result + 192);
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        v6 = *(*(v2 + 184) + 8 * i);
        if (v6)
        {
          result = (*(a2 + 16))(a2, v6, &v7);
          if (v7)
          {
            return result;
          }

          v3 = *(v2 + 192);
        }
      }
    }
  }

  return result;
}

uint64_t sub_100002A58()
{
  if (qword_100092C38 != -1)
  {
    dispatch_once(&qword_100092C38, &stru_1000827E0);
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C978;
  block[3] = &unk_100083638;
  block[4] = &v3;
  dispatch_sync(qword_100092C10, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t sub_100002B2C(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    v6 = *(a1 + 16) + 1;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v8 = -1;
    v6 = 1;
  }

  sub_1000034AC();
  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    *(Instance + 24) = 0u;
    *(Instance + 40) = 0u;
    *(Instance + 120) = 0u;
    *(Instance + 104) = 0u;
    *(Instance + 88) = 0u;
    *(Instance + 72) = 0u;
    *(Instance + 56) = 0u;
    *(Instance + 16) = v6;
    *(Instance + 32) = v7;
    *(Instance + 40) = v8;
    v12 = v6 - 1;
    *(Instance + 48) = v9 & 1;
    if (v6 >= 2)
    {
      v13 = (a1 + 136);
      v14 = (Instance + 136);
      v15 = v6 - 1;
      do
      {
        v16 = *v13++;
        *v14++ = v16;
        CFRetain(v16);
        --v15;
      }

      while (v15);
    }

    if (!a2)
    {
      goto LABEL_63;
    }

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 0x40000000;
    v51[2] = sub_100038E20;
    v51[3] = &unk_100082FD8;
    v51[4] = &qword_100092D58;
    if (qword_100092D50 != -1)
    {
      dispatch_once(&qword_100092D50, v51);
    }

    v17 = _CFRuntimeCreateInstance();
    if (!v17)
    {
      goto LABEL_64;
    }

    CFRetain(a2);
    *(v17 + 16) = a2;
    *(v17 + 42) = SecCertificateIsWeakHash();
    CertificatePolicies = SecCertificateGetCertificatePolicies();
    if (!CertificatePolicies)
    {
      goto LABEL_55;
    }

    v19 = CertificatePolicies;
    if (!*(CertificatePolicies + 8))
    {
      goto LABEL_55;
    }

    v20 = 0;
    v21 = 1;
    do
    {
      v22 = *(v19 + 16);
      v20 |= sub_100003364() != 0;
    }

    while (*(v19 + 8) > v21++);
    if ((v20 & 1) == 0)
    {
      goto LABEL_55;
    }

    BasicConstraints = SecCertificateGetBasicConstraints();
    if (BasicConstraints && *(BasicConstraints + 2))
    {
      v44 = sub_1000027AC("ev");
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      LOWORD(v51[0]) = 0;
      v45 = "Leaf has invalid basic constraints";
      v46 = v44;
      v47 = 2;
    }

    else
    {
      KeyUsage = SecCertificateGetKeyUsage();
      if ((KeyUsage & 0x60) == 0)
      {
        v51[0] = 256;
        v26 = CFNumberCreate(0, kCFNumberCFIndexType, v51);
        if (v26)
        {
          v27 = v26;
          Mutable = CFDictionaryCreateMutable(0, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (Mutable)
          {
            v29 = Mutable;
            CFDictionaryAddValue(Mutable, kSecAttrKeyTypeEC, v27);
            SecCertificateNotValidBefore();
            if (v30 >= 410227200.0)
            {
              v51[0] = 2048;
              v35 = CFNumberCreate(0, kCFNumberCFIndexType, v51);
              if (v35)
              {
                v32 = v35;
                CFDictionaryAddValue(v29, kSecAttrKeyTypeRSA, v35);
                if ((SecCertificateIsAtLeastMinKeySize() & 1) == 0)
                {
                  v33 = sub_1000027AC("ev");
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(v51[0]) = 0;
                    v34 = "Leaf's public key is too small for issuance after 2013";
                    goto LABEL_60;
                  }

LABEL_61:
                  v37 = 0;
                  goto LABEL_32;
                }

LABEL_29:
                SecCertificateNotValidBefore();
                if (v36 <= 473299200.0 || SecCertificateGetSignatureHashAlgorithm() > 4)
                {
                  v37 = 1;
LABEL_32:
                  CFRelease(v32);
LABEL_33:
                  CFRelease(v27);
                  CFRelease(v29);
LABEL_34:
                  *(v17 + 40) = v37;
                  v38 = SecCertificateCopyQualifiedCertificateStatements();
                  if (v38)
                  {
                    v39 = v38;
                    if (qword_100092AC0 != -1)
                    {
                      dispatch_once(&qword_100092AC0, &stru_100081E78);
                    }

                    v41 = byte_100092AB8 == 1 && CFDictionaryContainsKey(v39, kSecQCStatementCompliance) && (Value = CFDictionaryGetValue(v39, kSecQCStatementType)) != 0 && CFSetContainsValue(Value, kSecQCStatementTypeWeb) != 0;
                    CFRelease(v39);
                  }

                  else
                  {
                    v41 = 0;
                  }

                  *(v17 + 41) = v41;
                  if (a3)
                  {
                    CFRetain(a3);
                    *(v17 + 24) = a3;
LABEL_64:
                    *(v11 + 8 * v12 + 136) = v17;
                    return v11;
                  }

                  v42 = CFArrayCreate(kCFAllocatorDefault, 0, 0, &kCFTypeArrayCallBacks);
                  if (v42)
                  {
                    v43 = v42;
                    CFRetain(v42);
                    *(v17 + 24) = v43;
                    CFRelease(v43);
                    goto LABEL_64;
                  }

                  CFRelease(v17);
LABEL_63:
                  v17 = 0;
                  goto LABEL_64;
                }

                v33 = sub_1000027AC("ev");
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v51[0]) = 0;
                  v34 = "Leaf was issued with SHA-1 after 2015";
                  goto LABEL_60;
                }

                goto LABEL_61;
              }
            }

            else
            {
              v51[0] = 1024;
              v31 = CFNumberCreate(0, kCFNumberCFIndexType, v51);
              if (v31)
              {
                v32 = v31;
                CFDictionaryAddValue(v29, kSecAttrKeyTypeRSA, v31);
                if ((SecCertificateIsAtLeastMinKeySize() & 1) == 0)
                {
                  v33 = sub_1000027AC("ev");
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(v51[0]) = 0;
                    v34 = "Leaf's public key is too small for issuance before 2014";
LABEL_60:
                    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v34, v51, 2u);
                    goto LABEL_61;
                  }

                  goto LABEL_61;
                }

                goto LABEL_29;
              }
            }

            v37 = 0;
            goto LABEL_33;
          }

          CFRelease(v27);
        }

LABEL_55:
        v37 = 0;
        goto LABEL_34;
      }

      v48 = KeyUsage;
      v49 = sub_1000027AC("ev");
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      LODWORD(v51[0]) = 67109120;
      HIDWORD(v51[0]) = v48;
      v45 = "Leaf has invalid key usage %u";
      v46 = v49;
      v47 = 8;
    }

    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v45, v51, v47);
    goto LABEL_55;
  }

  return v11;
}

uint64_t sub_100003140()
{
  v0 = os_variant_uses_ephemeral_storage();
  if (v0 && qword_100092BB0 != -1)
  {
    dispatch_once(&qword_100092BB0, &stru_100082670);
  }

  return v0 ^ 1u;
}

void sub_10000319C(NSObject *a1, const void *a2, const __CFArray *cf, const __CFArray *a4, int a5, int a6, const void *a7, const void *a8, double a9, const void *a10, void *a11, const void *a12, const void *a13, uint64_t a14, void (**a15)(void, void, void, void, void, void))
{
  if (cf && (v23 = CFGetTypeID(cf), v23 == CFArrayGetTypeID()) && CFArrayGetCount(cf) > 0)
  {
    v24 = _Block_copy(a15);
    v25 = sub_100003544(a1, a2, cf, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, sub_10001A194, v24);

    sub_100004890(v25);
  }

  else
  {
    v26 = CFErrorCreate(0, kCFErrorDomainOSStatus, -26275, 0);
    (a15)[2](a15, 0, 0, 0, 0, v26);
    if (v26)
    {

      CFRelease(v26);
    }
  }
}

const void *sub_100003364()
{
  v0 = sub_100002A58();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = *(v0 + 64);
  if (v2)
  {
    CFRetain(*(v0 + 64));
    CFRelease(v1);
    v3 = SecDERItemCopyOIDDecimalRepresentation();
    if (v3)
    {
      v4 = v3;
      Value = CFDictionaryGetValue(v2, v3);
      CFRelease(v4);
    }

    else
    {
      Value = 0;
    }

    v1 = v2;
  }

  else
  {
    Value = 0;
  }

  CFRelease(v1);
  return Value;
}

void sub_10000340C(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = a2;
  *(a1 + 8) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 64) = 4;
  values = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(a1 + 40) = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  CFRelease(values);
}

uint64_t sub_1000034AC()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100038E94;
  block[3] = &unk_100083058;
  block[4] = &qword_100092D68;
  if (qword_100092D60 != -1)
  {
    dispatch_once(&qword_100092D60, block);
  }

  return qword_100092D68;
}

uint64_t sub_100003544(NSObject *a1, const void *a2, const __CFArray *a3, const __CFArray *a4, int a5, int a6, const void *a7, const void *a8, double a9, CFTypeRef a10, void *a11, const void *a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10005BC48;
  block[3] = &unk_100085840;
  block[4] = &qword_100092F60;
  if (qword_100092F58 != -1)
  {
    dispatch_once(&qword_100092F58, block);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 272) = malloc_type_calloc(1uLL, 0x50uLL, 0x100004074E59A96uLL);
    **(Instance + 272) = mach_absolute_time();
    if (a2)
    {
      v26 = CFRetain(a2);
    }

    else
    {
      v26 = 0;
    }

    *(Instance + 32) = v26;
    if (a1)
    {
      dispatch_retain(a1);
    }

    else
    {
      a1 = dispatch_queue_create("com.apple.trustd.evaluation.builder", 0);
    }

    *(Instance + 16) = a1;
    *(Instance + 80) = 1;
    *(Instance + 178) = 1;
    *(Instance + 208) = 0;
    *(Instance + 280) = a14;
    *(Instance + 72) = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
    *(Instance + 88) = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
    *(Instance + 136) = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    *(Instance + 144) = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
    *(Instance + 152) = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
    *(Instance + 160) = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
    *(Instance + 184) = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
    **(Instance + 184) = malloc_type_malloc(0x48uLL, 0x10600407F7167BDuLL);
    sub_10000340C(**(Instance + 184), Instance, a7);
    *(Instance + 192) = 1;
    *(Instance + 120) = a9;
    if (a13)
    {
      CFRetain(a13);
    }

    *(Instance + 128) = a13;
    *(Instance + 40) = sub_100003AB8(a3);
    if (a4)
    {
      *(Instance + 56) = sub_100003AB8(a4);
    }

    if (qword_100092AE0 != -1)
    {
      dispatch_once(&qword_100092AE0, &stru_100081EF8);
    }

    if ((byte_100092AD8 & 1) == 0)
    {
      v27 = sub_100003C24();
      v28 = sub_100003B94(v27);
      *(Instance + 64) = sub_100003AB8(v28);
    }

    CFArrayAppendValue(*(Instance + 88), *(Instance + 40));
    if (sub_100003140() && a6)
    {
      v29 = malloc_type_malloc(0x20uLL, 0xE0040DD5D8FE3uLL);
      *v29 = sub_1000198F8;
      v29[1] = 0;
      v29[2] = sub_100039D88;
      v29[3] = a12;
      if (a12)
      {
        CFRetain(a12);
      }

      *(Instance + 48) = v29;
      CFArrayAppendValue(*(Instance + 88), v29);
    }

    if (a5)
    {
      v30 = *(Instance + 64);
      if (v30)
      {
        CFArrayAppendValue(*(Instance + 88), v30);
      }

      CFArrayAppendValue(*(Instance + 88), off_1000927C0);
      if (qword_100092AF0 != -1)
      {
        dispatch_once(&qword_100092AF0, &stru_100081F38);
      }

      if ((byte_100092AE8 & 1) == 0)
      {
        CFArrayAppendValue(*(Instance + 88), off_1000927D8);
      }

      CFArrayAppendValue(*(Instance + 88), off_1000927A8);
      CFArrayAppendValue(*(Instance + 88), off_1000927F0);
    }

    if (a6 && *(Instance + 178) == 1)
    {
      CFArrayAppendValue(*(Instance + 88), &off_100092808);
    }

    v31 = *(Instance + 56);
    if (v31)
    {
      CFArrayAppendValue(*(Instance + 72), v31);
    }

    if ((a5 & 1) == 0)
    {
      v32 = *(Instance + 64);
      if (v32)
      {
        CFArrayAppendValue(*(Instance + 88), v32);
      }

      CFArrayAppendValue(*(Instance + 72), off_1000927C0);
      sub_100003140();
      CFArrayAppendValue(*(Instance + 72), off_1000927F0);
      if (qword_100092AF0 != -1)
      {
        dispatch_once(&qword_100092AF0, &stru_100081F38);
      }

      if ((byte_100092AE8 & 1) == 0)
      {
        CFArrayAppendValue(*(Instance + 72), off_1000927D8);
      }

      CFArrayAppendValue(*(Instance + 72), off_1000927A8);
    }

    if (a8)
    {
      CFRetain(a8);
    }

    *(Instance + 96) = a8;
    if (a10)
    {
      CFRetain(a10);
    }

    *(Instance + 104) = a10;
    if (a11)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = sub_10002C408(a11);
      objc_autoreleasePoolPop(v33);
      *(Instance + 112) = v34;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a3, 0);
    v36 = sub_100002B2C(0, ValueAtIndex, 0);
    CFSetAddValue(*(Instance + 136), v36);
    CFArrayAppendValue(*(Instance + 144), v36);
    if (v36)
    {
      CFRetain(v36);
      *(Instance + 200) = v36;
      v37 = Instance;
      v38 = v36;
    }

    else
    {
      *(Instance + 200) = 0;
      v37 = Instance;
      v38 = 0;
    }

    sub_100003F3C(v37, v38);
    CFRelease(v36);
    *(Instance + 248) = sub_10000403C;
    *(Instance + 256) = a15;
    *(Instance + 264) = a16;
  }

  return Instance;
}

void *sub_100003AB8(const __CFArray *a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0xA00406C891FDCuLL);
  *v2 = sub_100012BF0;
  v2[1] = 0;
  v2[2] = sub_1000071D8;
  Count = CFArrayGetCount(a1);
  v2[3] = CFSetCreateMutable(kCFAllocatorDefault, Count, &kCFTypeSetCallBacks);
  v2[4] = CFDictionaryCreateMutable(kCFAllocatorDefault, Count, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5.location = 0;
  v5.length = Count;
  CFArrayApplyFunction(a1, v5, sub_100003DBC, v2);
  return v2;
}

uint64_t sub_100003B94(char a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000293A4;
  block[3] = &unk_1000825C8;
  v3 = a1;
  if (qword_100092B98 != -1)
  {
    dispatch_once(&qword_100092B98, block);
  }

  return qword_100092B90;
}

uint64_t sub_100003C24()
{
  if (qword_100092C90 != -1)
  {
    dispatch_once(&qword_100092C90, &stru_100082B98);
  }

  if (byte_100092C88)
  {
    v0 = 1;
  }

  else
  {
    if (qword_100092BD8 != -1)
    {
      dispatch_once(&qword_100092BD8, &stru_1000826D0);
    }

    if (byte_100092BD0 != 1)
    {
      goto LABEL_18;
    }

    if (qword_100092BE0 != -1)
    {
      dispatch_once(&qword_100092BE0, &stru_1000826F0);
    }

    if (byte_100092BD0)
    {
      v1 = CFPreferencesCopyKeyList(@"com.apple.security", kCFPreferencesAnyUser, kCFPreferencesAnyHost);
      v2 = sub_100035DA0(v1);
      if (v1)
      {
        CFRelease(v1);
      }

      if (v2)
      {
        goto LABEL_17;
      }

      v3 = CFPreferencesCopyKeyList(@"com.apple.security", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      v4 = sub_100035DA0(v3);
      if (v3)
      {
        CFRelease(v3);
      }

      if (v4)
      {
LABEL_17:
        v0 = 1;
      }

      else
      {
        if (qword_100092CF8 != -1)
        {
          dispatch_once(&qword_100092CF8, &stru_100082C80);
        }

        dispatch_source_merge_data(qword_100092D00, 1uLL);
        v0 = 0;
      }

      byte_100092C88 = v0;
    }

    else
    {
LABEL_18:
      v0 = byte_100092C88;
    }
  }

  return v0 & 1;
}

void sub_100003DBC(void *value, uint64_t a2)
{
  if (!CFSetContainsValue(*(a2 + 24), value))
  {
    CFSetAddValue(*(a2 + 24), value);
    NormalizedSubjectContent = SecCertificateGetNormalizedSubjectContent();
    if (NormalizedSubjectContent)
    {
      v5 = NormalizedSubjectContent;
      v6 = *(a2 + 32);
      v7 = CFDictionaryGetValue(v6, NormalizedSubjectContent);
      if (v7)
      {
        Mutable = v7;
      }

      else
      {
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        CFDictionaryAddValue(v6, v5, Mutable);
        CFRelease(Mutable);
        if (!Mutable)
        {
          return;
        }
      }

      CFArrayAppendValue(Mutable, value);
    }
  }
}

uint64_t sub_100003E94(uint64_t a1)
{
  if (*(a1 + 16) < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = a1 + 136;
  do
  {
    v3 += CFHash(*(v4 + 8 * v2++));
  }

  while (v2 < *(a1 + 16));
  return v3;
}

CFHashCode sub_100003EFC(uint64_t a1)
{
  v2 = CFHash(*(a1 + 16));
  v3 = *(a1 + 24);
  if (v3)
  {
    v2 += CFHash(v3);
  }

  return v2;
}

uint64_t sub_100003F3C(uint64_t a1, CFTypeRef cf1)
{
  v4 = *(a1 + 200);
  if (cf1)
  {
    if (v4)
    {
      if (CFEqual(cf1, v4))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 200);
    }

    else
    {
      v5 = 0;
    }

    if (v5 != cf1)
    {
      CFRetain(cf1);
      v4 = *(a1 + 200);
      if (!v4)
      {
LABEL_11:
        *(a1 + 200) = cf1;
        goto LABEL_12;
      }

LABEL_10:
      CFRelease(v4);
      goto LABEL_11;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

LABEL_12:
  v6 = *(a1 + 232);
  if (v6)
  {
    *(a1 + 232) = 0;
    CFRelease(v6);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10000401C;
  v8[3] = &unk_100085860;
  v8[4] = cf1;
  return sub_1000029CC(a1, v8);
}

void sub_10000401C(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = 0;
  *(a2 + 64) = 4;
  v2 = *(a2 + 56);
  if (v2)
  {
    *(a2 + 56) = 0;
    CFRelease(v2);
  }
}

uint64_t sub_10000403C(uint64_t a1)
{
  v52 = *(a1 + 192);
  if (v52 >= 1)
  {
    v2 = 0;
    key = kSecPolicyCheckSSLHostname;
    v51 = kSecPolicyCheckCAspkiSHA256;
    do
    {
      v53 = v2;
      v3 = *(*(a1 + 184) + 8 * v2);
      v4 = *(v3 + 8);
      if (v4)
      {
        CFRetain(*(v3 + 8));
      }

      for (i = 0; i < CFArrayGetCount(v4); ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        Name = SecPolicyGetName();
        Value = CFDictionaryGetValue(ValueAtIndex[4], key);
        if (Value)
        {
          v9 = Value;
          Mutable = CFDictionaryCreateMutable(0, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFDictionaryAddValue(Mutable, @"PinningPolicyName", Name);
          CFDictionaryAddValue(Mutable, @"PinningHostname", v9);
          v11 = objc_autoreleasePoolPush();
          if (qword_100092E18 != -1)
          {
            dispatch_once(&qword_100092E18, &stru_100083F48);
          }

          v12 = Mutable;
          v13 = [(__CFDictionary *)v12 objectForKey:@"PinningPolicyName"];
          v14 = [qword_100092E10 queryForPolicyName:v13];
          if (v14)
          {
            v15 = v14;
          }

          else
          {
            v16 = [(__CFDictionary *)v12 objectForKey:@"PinningHostname"];
            v15 = [qword_100092E10 queryForDomain:v16];
          }

          objc_autoreleasePoolPop(v11);
          if (v12)
          {
            CFRelease(v12);
          }

          if (v15)
          {
            MutableCopy = CFDictionaryGetValue(v15, @"PinningRules");
            v55 = CFDictionaryGetValue(v15, @"PinningPolicyName");
            v18 = CFDictionaryGetValue(v15, @"PinningTransparentConnection");
            v19 = sub_1000027AC("SecPinningDb");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              Count = CFArrayGetCount(MutableCopy);
              *context = 134218755;
              *&context[4] = Count;
              *&context[12] = 2112;
              *&context[14] = v55;
              *&context[22] = 2113;
              v59 = v9;
              LOWORD(v60[0]) = 2114;
              *(v60 + 2) = Name;
              _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "found pinning %lu %@ policies for hostname %{private}@, policyName %{public}@", context, 0x2Au);
            }

            LODWORD(valuePtr) = 0;
            if (v18)
            {
              if (CFNumberGetValue(v18, kCFNumberIntType, &valuePtr))
              {
                if (valuePtr == 1)
                {
                  v20 = sub_10003FD6C(0, 0);
                  if (v20)
                  {
                    v21 = v20;
                    if (CFArrayGetCount(v20))
                    {
                      v22 = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                      v23 = CFArrayGetCount(v21);
                      v24 = CFArrayCreateMutable(0, v23, &kCFTypeArrayCallBacks);
                      *context = _NSConcreteStackBlock;
                      *&context[8] = 0x40000000;
                      *&context[16] = sub_10005BCF8;
                      v59 = &unk_1000859D0;
                      v60[0] = v24;
                      v64.length = CFArrayGetCount(v21);
                      v64.location = 0;
                      CFArrayApplyFunction(v21, v64, sub_10005BDE0, context);
                      if (CFArrayGetCount(v24))
                      {
                        v25 = sub_1000027AC("SecPinningDb");
                        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                        {
                          v26 = CFArrayGetCount(v24);
                          LODWORD(buf) = 134217984;
                          *(&buf + 4) = v26;
                          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Adding %lu CA pins for Transparent Connection", &buf, 0xCu);
                        }

                        CFDictionaryAddValue(v22, v51, v24);
                        if (v24)
                        {
                          CFRelease(v24);
                        }

                        v27 = CFArrayGetCount(MutableCopy);
                        MutableCopy = CFArrayCreateMutableCopy(0, v27 + 1, MutableCopy);
                        CFArrayAppendValue(MutableCopy, v22);
                        if (v22)
                        {
                          CFRelease(v22);
                        }

                        CFRelease(v21);
                        goto LABEL_38;
                      }

                      if (v24)
                      {
                        CFRelease(v24);
                      }

                      if (v22)
                      {
                        CFRelease(v22);
                      }
                    }

                    CFRelease(v21);
                  }
                }
              }
            }

            if (MutableCopy)
            {
              CFRetain(MutableCopy);
            }

LABEL_38:
            v29 = 0;
LABEL_39:
            if (v29 >= CFArrayGetCount(MutableCopy))
            {
              CFRelease(v15);
              if (MutableCopy)
              {
                CFRelease(MutableCopy);
              }

              continue;
            }

            v30 = CFArrayGetValueAtIndex(MutableCopy, v29);
            if (v30)
            {
              v31 = CFGetTypeID(v30);
              if (v31 == CFDictionaryGetTypeID())
              {
                v32 = CFArrayGetValueAtIndex(MutableCopy, v29);
                SSL = SecPolicyCreateSSL(1u, v9);
                valuePtr = SSL;
                if (SSL)
                {
                  v34 = SSL;
                  *&buf = 0;
                  *(&buf + 1) = &buf;
                  v62 = 0x2000000000;
                  v63 = CFDictionaryCreateMutableCopy(0, 0, SSL[4]);
                  *context = _NSConcreteStackBlock;
                  *&context[8] = 0x40000000;
                  *&context[16] = sub_100006120;
                  v59 = &unk_1000859F8;
                  v60[0] = &buf;
                  CFDictionaryApplyFunction(v32, sub_10005BDC4, context);
                  v35 = *(*(&buf + 1) + 24);
                  v36 = v34[4];
                  if (v36)
                  {
                    CFRelease(v36);
                  }

                  v34[4] = v35;
                  _Block_object_dispose(&buf, 8);
                  SecPolicySetName();
                  v37 = CFArrayCreateMutableCopy(0, 0, v4);
                  if (v37)
                  {
                    v38 = v37;
                    v65.location = i;
                    v65.length = 1;
                    CFArrayReplaceValues(v37, v65, &valuePtr, 1);
                    if (v29)
                    {
                      *(a1 + 184) = malloc_type_realloc(*(a1 + 184), 8 * *(a1 + 192) + 8, 0x2004093837F09uLL);
                      v39 = malloc_type_malloc(0x48uLL, 0x10600407F7167BDuLL);
                      v40 = *(a1 + 192);
                      *(*(a1 + 184) + 8 * v40) = v39;
                      sub_10000340C(*(*(a1 + 184) + 8 * v40), a1, v38);
                      ++*(a1 + 192);
                    }

                    else
                    {
                      v41 = *(*(a1 + 184) + 8 * v53);
                      if (*(v41 + 8) != v38)
                      {
                        CFRetain(v38);
                        v42 = *(v41 + 8);
                        if (v42)
                        {
                          CFRelease(v42);
                        }

                        *(v41 + 8) = v38;
                      }
                    }

                    v43 = valuePtr;
                    if (valuePtr)
                    {
                      valuePtr = 0;
                      CFRelease(v43);
                    }

LABEL_56:
                    CFRelease(v38);
                  }

                  else
                  {
                    v38 = valuePtr;
                    if (valuePtr)
                    {
                      valuePtr = 0;
                      goto LABEL_56;
                    }
                  }
                }
              }
            }

            ++v29;
            goto LABEL_39;
          }
        }
      }

      if (v4)
      {
        CFRelease(v4);
      }

      v2 = v53 + 1;
    }

    while (v53 + 1 != v52);
  }

  v44 = *(a1 + 200);
  if (v44 && v44[2] >= 1 && (v45 = v44[17]) != 0)
  {
    v46 = *(v45 + 16);
  }

  else
  {
    v46 = 0;
  }

  *&buf = 0;
  v47 = sub_100007610(a1, v46, &buf);
  if (!buf || (v48 = *(buf + 8)) == 0)
  {
    sub_100007C68(v44, 0);
    if (!v47)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v49 = v48();
  sub_100007C68(v44, v49);
  if (v49)
  {
    CFRelease(v49);
  }

  if (v47)
  {
LABEL_74:
    sub_100013360(v44);
    CFArrayAppendValue(*(a1 + 160), v44);
  }

LABEL_75:
  *context = 0;
  *&context[8] = context;
  *&context[16] = 0x2000000000;
  LOBYTE(v59) = 1;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 0x40000000;
  v56[2] = sub_100006A90;
  v56[3] = &unk_1000859B0;
  v56[4] = context;
  sub_1000029CC(a1, v56);
  *(a1 + 176) = *(*&context[8] + 24);
  *(a1 + 248) = sub_1000066A8;
  _Block_object_dispose(context, 8);
  return 1;
}

void sub_100004890(uint64_t a1)
{
  if (*(a1 + 240))
  {
    return;
  }

  *(a1 + 240) = 1;
  do
  {
    v2 = *(a1 + 248);
    if (!v2)
    {
      v5 = *(a1 + 240) - 1;
      *(a1 + 240) = v5;
      if (v5)
      {
        return;
      }

LABEL_9:
      v6 = sub_100015F54(a1);
      v7 = *(v6 + 64);
      if (v7 != 4 || *(a1 + 128) == 0)
      {
        v9 = v7;
      }

      else
      {
        v9 = 1;
      }

      v10 = sub_1000027AC("trust");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a1 + 224);
        v17 = *(v6 + 56);
        v18 = 138478339;
        v19 = v16;
        v20 = 2114;
        v21 = v17;
        v22 = 1024;
        v23 = v9;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "completed: %{private}@ details: %{public}@ result: %d", &v18, 0x1Cu);
      }

      if (*(a1 + 256))
      {
        v11 = sub_100020884(*(a1 + 224));
        v12 = *(a1 + 232);
        if (v12)
        {
          CFRetain(*(a1 + 232));
        }

        v13 = *(v6 + 56);
        if (v13)
        {
          CFRetain(v13);
        }

        v15 = *(a1 + 256);
        v14 = *(a1 + 264);
        CFRelease(a1);
        v15(v14, v11, v13, v12, v9);
        if (v11)
        {
          CFRelease(v11);
        }

        if (v12)
        {
          CFRelease(v12);
        }

        if (!v13)
        {
          return;
        }
      }

      else
      {
        v13 = a1;
      }

      CFRelease(v13);
      return;
    }
  }

  while ((v2(a1) & 1) != 0);
  v3 = *(a1 + 248);
  v4 = *(a1 + 240) - 1;
  *(a1 + 240) = v4;
  if (!v3 && !v4)
  {
    goto LABEL_9;
  }
}

uint64_t sub_100004A60(uint64_t a1, const __CFString *cf, CFTypeRef *a3, uint64_t a4)
{
  v6 = cf;
  CFRetain(cf);
  if (!v6)
  {
    return 1;
  }

  LOBYTE(v8) = 1;
  do
  {
    v11 = 0;
    if (v8)
    {
      v8 = sub_10000512C(a1, v6, &v11, a3);
      if (v8)
      {
        if (a4)
        {
          v9 = (*(a4 + 16))(a4, v8);
        }

        else
        {
          sub_10001C2D4(-50, a3, @"SecDbWithSQL perform block missing");
          v9 = 0;
        }

        v8 = (v9 & sub_100006318(v8, a3));
      }
    }

    else
    {
      sub_100026CFC(1, a3, @"Error with unexecuted sql remaining %@", v6);
      v8 = 0;
    }

    CFRelease(v6);
    v6 = v11;
  }

  while (v11);
  return v8;
}

BOOL sub_100004B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  sub_10000526C(a1, 1, &v6, a2);
  v4 = v6;
  if (v6)
  {
    (*(a3 + 16))(a3, v6);
    sub_100006380(v4);
  }

  return v4 != 0;
}

void sub_100004BDC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(v2 + 128))
  {
    goto LABEL_28;
  }

  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = *(v2 + 16);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 1;
  cf[0] = _NSConcreteStackBlock;
  cf[1] = 0x40000000;
  cf[2] = sub_100028C80;
  cf[3] = &unk_100082478;
  cf[4] = &v34;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v39 = sub_100026744;
  v40 = &unk_100082030;
  v41 = cf;
  sub_1000054FC(v5, &buf);
  v6 = *(v35 + 24);
  _Block_object_dispose(&v34, 8);
  if (v6)
  {
    v32 = 0;
    v7 = sub_100028258(v2, 0);
    if (v7)
    {
      v8 = v7;
      cf[0] = 0;
      if (sub_10002836C(v7, &v32, cf))
      {
        v9 = cf[0];
        if (cf[0])
        {
          cf[0] = 0;
          CFRelease(v9);
        }

        if (v4)
        {
          *v4 = v8;
        }

        v10 = sub_1000027AC("#SecDB");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "#SecDB starting maintenance", &buf, 2u);
        }

        if (*(v8 + 40))
        {
          goto LABEL_55;
        }

        v11 = *(v8 + 16);
        v12 = *(v11 + 136);
        if (!v12)
        {
          v13 = 0;
          goto LABEL_56;
        }

        v34 = 0;
        *(v11 + 144) = 0;
        v13 = (*(v12 + 16))(v12, v11, v8, v32, v11 + 144, &v34);
        *(v2 + 128) = v13;
        if ((v13 & 1) == 0)
        {
          v14 = sub_1000027AC("SecError");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v34;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "opened block failed: %@", &buf, 0xCu);
          }
        }

        if (!v3 || (*(v8 + 40) & 1) != 0 || *v3)
        {
          if (v34)
          {
            v15 = sub_1000027AC("SecError");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v34;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "opened block failed: error (%@) is being released and lost", &buf, 0xCu);
            }

            v16 = v34;
            if (v34)
            {
              v34 = 0;
              CFRelease(v16);
            }
          }
        }

        else
        {
          *v3 = v34;
        }

        if (*(v8 + 40))
        {
LABEL_55:
          v13 = sub_100027D48(v8, 0, v3);
        }

LABEL_56:
        v31 = sub_1000027AC("#SecDB");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "#SecDB ending maintenance", &buf, 2u);
          if (!v13)
          {
LABEL_59:
            CFRelease(v8);
            if (v4)
            {
              *v4 = 0;
            }

            goto LABEL_26;
          }
        }

        else if (!v13)
        {
          goto LABEL_59;
        }

        CFArrayAppendValue(*(v2 + 40), v8);
        goto LABEL_59;
      }

      v26 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = cf[0];
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Unable to create database: %@", &buf, 0xCu);
      }

      if (cf[0])
      {
        Domain = CFErrorGetDomain(cf[0]);
        if (CFEqual(Domain, @"com.apple.utilities.sqlite3"))
        {
          Code = CFErrorGetCode(cf[0]);
          v30 = Code == 11 || Code == 26;
          *(v8 + 40) = v30;
        }
      }

      LOBYTE(v13) = 0;
      if (!v3 || (*(v8 + 40) & 1) != 0)
      {
        goto LABEL_26;
      }

      if (!*v3)
      {
        LOBYTE(v13) = 0;
        *v3 = cf[0];
        goto LABEL_26;
      }
    }
  }

  else
  {
    v17 = *__error();
    v18 = __error();
    sub_100029B54(v17, kCFErrorDomainPOSIX, v19, v3, v20, @"Unable to process corruption marker: %{darwin.errno}d", *v18);
  }

  LOBYTE(v13) = 0;
LABEL_26:
  *(*(*(a1 + 48) + 8) + 24) = v13;
  *(*(*(a1 + 40) + 8) + 24) = v13;
  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    return;
  }

  v2 = *(a1 + 64);
LABEL_28:
  v21 = 40;
  if (*(a1 + 88))
  {
    v21 = 48;
  }

  v22 = *(v2 + v21);
  if (CFArrayGetCount(v22) && !*(*(*(a1 + 56) + 8) + 24))
  {
    v23 = *(a1 + 32);
    ValueAtIndex = CFArrayGetValueAtIndex(v22, 0);
    if ((*(v23 + 16))(v23, ValueAtIndex))
    {
      v25 = *(*(*(a1 + 56) + 8) + 24);
      if (v25)
      {
        CFRetain(v25);
      }
    }

    CFArrayRemoveValueAtIndex(v22, 0);
  }
}

BOOL sub_1000050FC(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    *v2 = a2;
  }

  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

sqlite3_stmt *sub_10000512C(uint64_t a1, const __CFString *a2, CFStringRef *a3, CFTypeRef *a4)
{
  v12.location = 0;
  v12.length = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (a2)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = sub_100005620;
    v13[3] = &unk_100082548;
    v13[4] = &v14;
    v13[5] = a1;
    v13[6] = a4;
    v13[7] = &v12;
    sub_1000054FC(a2, v13);
    v7 = v15[3];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v14, 8);
  if (v12.length >= 1)
  {
    v8 = CFGetAllocator(a2);
    v9 = CFStringCreateWithSubstring(v8, a2, v12);
    v10 = v9;
    if (a3)
    {
      *a3 = v9;
    }

    else
    {
      sub_100026CFC(2, a4, @"prepare_v2: %@ unused sql: %@", a2, v9);
      if (v10)
      {
        CFRelease(v10);
      }

      sub_100006318(v7, a4);
      return 0;
    }
  }

  return v7;
}

void sub_10000526C(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  CFRetain(a1);
  if (a2)
  {
    dispatch_semaphore_wait(*(a1 + 120), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    pthread_mutex_lock((a1 + 56));
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 0x40000000;
  v21 = sub_1000050FC;
  v22 = &unk_1000822A0;
  v23 = &v33;
  v24 = a3;
  v8 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100004BDC;
  block[3] = &unk_1000822C8;
  block[8] = a1;
  block[9] = a3;
  block[10] = a4;
  v19 = a2;
  block[6] = &v25;
  block[7] = &v33;
  block[4] = v20;
  block[5] = &v29;
  dispatch_sync(v8, block);
  v9 = v34;
  if (*(v30 + 24) == 1 && !v34[3])
  {
    v17 = 0;
    v10 = sub_100028258(a1, a2);
    v11 = (v21)(v20, v10);
    v9 = v34;
    if (v11)
    {
      v12 = sub_10002836C(v34[3], &v17, a4);
      v9 = v34;
      if ((v12 & 1) == 0)
      {
        v13 = v34[3];
        if (v13)
        {
          v34[3] = 0;
          CFRelease(v13);
          v9 = v34;
        }
      }
    }
  }

  v14 = v9[3];
  if (v14 && (v26[3] & 1) == 0 && *(*(v14 + 16) + 136) && (*(v14 + 24) & 1) == 0)
  {
    v15 = *(a1 + 24);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 0x40000000;
    v16[2] = sub_10001801C;
    v16[3] = &unk_1000822F0;
    v16[4] = &v33;
    v16[5] = a1;
    v16[6] = a4;
    dispatch_sync(v15, v16);
    v14 = v34[3];
  }

  if (a3)
  {
    *a3 = v14;
  }

  if (!v14)
  {
    if (a2)
    {
      dispatch_semaphore_signal(*(a1 + 120));
    }

    else
    {
      pthread_mutex_unlock((a1 + 56));
    }

    CFRelease(a1);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
}

void sub_1000054FC(const __CFString *a1, uint64_t a2)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    v6 = strlen(CStringPtr);
    v7 = *(a2 + 16);

    v7(a2, v5, v6);
  }

  else
  {
    usedBufLen = 0;
    Length = CFStringGetLength(a1);
    v12.location = 0;
    v12.length = Length;
    CFStringGetBytes(a1, v12, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_1000266C4;
    v9[3] = &unk_100082008;
    v9[6] = 0;
    v9[7] = Length;
    v9[8] = usedBufLen;
    v9[4] = a2;
    v9[5] = a1;
    sub_10002ACF4(usedBufLen + 1, v9);
  }
}

uint64_t sub_100005620(void *a1, char *zSql, unint64_t nByte)
{
  v33 = 0;
  v7 = a1[5];
  v6 = a1[6];
  if (qword_100092B00 != -1)
  {
    dispatch_once(&qword_100092B00, &stru_100081F78);
  }

  if (byte_100092AF8 == 1)
  {
    __s = 0;
    asprintf(&__s, "%s%s", "EXPLAIN QUERY PLAN ", zSql);
    v8 = sub_1000027AC("item");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = zSql;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EXPLAIN QUERY PLAN for %s:", &buf, 0xCu);
    }

    v9 = *(v7 + 64);
    pzTail = 0;
    ppStmt = 0;
    v10 = strlen(__s);
    v11 = sqlite3_prepare_v2(v9, __s, v10, &ppStmt, &pzTail);
    if (v11)
    {
      v12 = v11;
      v13 = sub_1000027AC("item");
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:
        free(__s);
        goto LABEL_27;
      }

      LODWORD(buf) = 67109120;
      DWORD1(buf) = v12;
      v14 = "Unable to prepare query: %d";
      p_buf = &buf;
LABEL_25:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, p_buf, 8u);
      goto LABEL_26;
    }

    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    cf = 0;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 0x40000000;
    v41 = sub_100028194;
    v42 = &unk_100082520;
    v43 = ppStmt;
    v44 = Mutable;
    sub_100005D40(v7, ppStmt, &cf, &buf);
    CStringPtr = CFStringGetCStringPtr(Mutable, 0x8000100u);
    v18 = sub_1000027AC("item");
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (CStringPtr)
    {
      if (v19)
      {
        *v38 = 136315138;
        v39 = CStringPtr;
        v20 = "query plan: %s";
        v21 = v18;
        v22 = 12;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, v38, v22);
      }
    }

    else if (v19)
    {
      *v38 = 0;
      v20 = "Failed to get query plan";
      v21 = v18;
      v22 = 2;
      goto LABEL_14;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (cf)
    {
      v23 = sub_1000027AC("item");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 138412290;
        v39 = cf;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to show plan: %@", v38, 0xCu);
      }

      v24 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v24);
      }
    }

    v25 = sqlite3_finalize(ppStmt);
    if (!v25)
    {
      goto LABEL_26;
    }

    v26 = v25;
    v13 = sub_1000027AC("item");
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *v38 = 67109120;
    LODWORD(v39) = v26;
    v14 = "Unable to finalize query: %d";
    p_buf = v38;
    goto LABEL_25;
  }

LABEL_27:
  v27 = *(v7 + 64);
  if (nByte >> 31)
  {
    result = sub_100026D4C(18, *(v7 + 64), v6, @"prepare_v2: sql bigger than INT_MAX");
LABEL_29:
    v29 = 0;
  }

  else
  {
    for (i = 0; ; ++i)
    {
      *&buf = 0;
      result = sqlite3_prepare_v2(v27, zSql, nByte, &buf, &v33);
      if (!result)
      {
        break;
      }

      result = sub_1000275F0(v7, result, @"preparev2", i, v6);
      if ((result & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v29 = buf;
  }

  *(*(a1[4] + 8) + 24) = v29;
  v31 = a1[7];
  if (v31)
  {
    v32 = v33 - zSql;
    if (v33 > zSql && v33 < &zSql[nByte])
    {
      *v31 = v32;
      v31[1] = nByte - v32;
    }
  }

  return result;
}

BOOL sub_100005A5C(sqlite3_stmt *a1, uint64_t a2, const char *a3, unint64_t a4, CFTypeRef *a5)
{
  if (a4 >> 31)
  {
    return sub_100005AD8(18, a1, a5, @"bind_text[%d]: text bigger than INT_MAX", a2);
  }

  v9 = sqlite3_bind_text(a1, a2, a3, a4, 0xFFFFFFFFFFFFFFFFLL);
  return sub_100005AD8(v9, a1, a5, @"bind_text[%d]", a2);
}

BOOL sub_100005AD8(uint64_t a1, sqlite3_stmt *a2, CFTypeRef *a3, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1 && a3)
  {
    v7 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
    v8 = sqlite3_db_handle(a2);
    v9 = sqlite3_sql(a2);
    v10 = sqlite3_extended_errcode(v8);
    v11 = sqlite3_errmsg(v8);
    if (v10 == a1)
    {
      sub_100026CFC(a1, a3, @"%@: [%d] %s sql: %s", v7, a1, v11, v9, v13, va);
    }

    else
    {
      sub_100026CFC(a1, a3, @"%@: [%d->%d] %s sql: %s", v7, a1, v10, v11, v9, va);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return a1 == 0;
}

uint64_t sub_100005BE0(uint64_t a1, sqlite3_stmt *pStmt, CFTypeRef *a3)
{
  v6 = 0;
  while (1)
  {
    if (*(a1 + 24) == 1 && !sqlite3_stmt_readonly(pStmt))
    {
      v7 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = sqlite3_sql(pStmt);
        *buf = 136315138;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_SecDbStep: SecDbConnection is readonly but we're about to write: %s", buf, 0xCu);
      }
    }

    v9 = sqlite3_step(pStmt);
    if (v9 == 100)
    {
      break;
    }

    if (v9 == 101)
    {
      sqlite3_reset(pStmt);
      return 2;
    }

    if (!sub_1000275F0(a1, v9, @"step", v6++, a3))
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_100005D40(uint64_t a1, sqlite3_stmt *pStmt, CFTypeRef *a3, uint64_t a4)
{
  while (1)
  {
    v8 = sub_100005BE0(a1, pStmt, a3);
    if (v8 != 1)
    {
      return v8 != 0;
    }

    if (!a4)
    {
      break;
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v13 = sub_100006104;
    v14 = &unk_100082278;
    v15 = a4;
    v16 = &v17;
    v9 = v12;
    v10 = objc_autoreleasePoolPush();
    v13(v9);
    objc_autoreleasePoolPop(v10);

    LOBYTE(v9) = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
    if (v9)
    {
      return 1;
    }
  }

  sub_100026CFC(1, a3, @"SecDbStep SQLITE_ROW returned without a row handler");
  return 0;
}

uint64_t sub_100005E88()
{
  if (sub_100003140())
  {
    if (qword_100092BB8 != -1)
    {
      dispatch_once(&qword_100092BB8, &stru_100082690);
    }

    if (byte_100092BC0 != 1)
    {
      return 1;
    }
  }

  if (qword_100092BC8 != -1)
  {
    dispatch_once(&qword_100092BC8, &stru_1000826B0);
  }

  return 0;
}

void sub_100005F7C(void *a1)
{
  v1 = a1;
  if (sub_100005E88())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100034638;
    block[3] = &unk_100083DF8;
    v3 = v1;
    if (qword_100092C60 != -1)
    {
      dispatch_once(&qword_100092C60, block);
    }

    dispatch_source_merge_data(qword_100092C50, 1uLL);
  }
}

void sub_10000603C(uint64_t a1)
{
  if (qword_100092C30)
  {
    v2 = *(qword_100092C30 + 184);
    if (v2)
    {
      Value = CFDictionaryGetValue(v2, *(a1 + 32));
      if (Value)
      {
        if ((v4 = Value, v5 = CFGetTypeID(Value), v5 == CFNumberGetTypeID()) && CFNumberGetType(v4) == kCFNumberSInt64Type || (v6 = CFGetTypeID(v4), v6 == CFNumberGetTypeID()) && CFNumberGetType(v4) == kCFNumberSInt32Type)
        {
          v7 = (*(*(a1 + 40) + 8) + 40);

          objc_storeStrong(v7, v4);
        }
      }
    }
  }
}

void sub_100006130(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(v2 + 16))();
  }

  dispatch_suspend(*(a1 + 8));
  v3 = dispatch_time(0, 1000000000 * *(a1 + 24));
  v4 = *a1;
  v5 = *(a1 + 8);

  dispatch_after_f(v3, v4, v5, j__dispatch_resume);
}

void sub_1000061A8(uint64_t *a1, const void *a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1[1], a1[3]);
  Value = CFDictionaryGetValue(ValueAtIndex[4], a2);
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFStringGetTypeID())
    {
      v8 = *(*a1 + 200);
      if (v8)
      {
        if (*(v8 + 16) >= 1)
        {
          v9 = *(v8 + 136);
          if (v9)
          {
            v10 = *(v9 + 16);
          }
        }
      }

      if ((SecPolicyCheckCertSSLHostname() & 1) == 0)
      {
        sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
      }

      if (sub_100003140())
      {
        v11 = objc_autoreleasePoolPush();
        if ((sub_100006980(*a1) & 3) != 1)
        {
          ++qword_100092EF8;
          v12 = +[TrustAnalytics logger];
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_10005625C;
          v13[3] = &unk_1000854B8;
          v13[4] = a1;
          v13[5] = v6;
          [v12 trustd_logDetailedEventforEventNamed:@"PinningEvent" attributesCallback:v13];
        }

        objc_autoreleasePoolPop(v11);
      }
    }
  }
}

BOOL sub_100006318(sqlite3_stmt *a1, CFTypeRef *a2)
{
  v4 = sqlite3_db_handle(a1);
  v5 = sqlite3_finalize(a1);
  return !v5 || sub_100026D4C(v5, v4, a2, @"finalize: %p", a1);
}

void sub_100006380(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(v2 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10000643C;
  block[3] = &unk_100082310;
  block[4] = a1;
  block[5] = v2;
  v6 = v3;
  dispatch_sync(v4, block);
  if (v3 == 1)
  {
    dispatch_semaphore_signal(*(v2 + 120));
  }

  else
  {
    pthread_mutex_unlock((v2 + 56));
  }

  CFRelease(a1);
  CFRelease(v2);
}

void sub_10000643C(uint64_t a1)
{
  if (*(*(a1 + 32) + 48) == 1)
  {
    v2 = sub_1000027AC("SecWarning");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecDbConnectionRelease: IO failure reported in connection, throwing away currently idle caches", &v20, 2u);
    }

    CFArrayRemoveAllValues(*(*(a1 + 40) + 40));
    CFArrayRemoveAllValues(*(*(a1 + 40) + 48));
  }

  else
  {
    Count = CFArrayGetCount(*(*(a1 + 40) + 48));
    v4 = CFArrayGetCount(*(*(a1 + 40) + 40)) + Count;
    v5 = 40;
    if (*(a1 + 48))
    {
      v5 = 48;
    }

    v6 = *(*(a1 + 40) + v5);
    v7 = CFArrayGetCount(v6);
    if (*(a1 + 48))
    {
      v8 = 5;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(*(a1 + 40) + 166);
    if (v7 >= v8 || v4 >= v9)
    {
      if (v9 < 6)
      {
        v17 = sub_1000027AC("dbconn");
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v18 = "rw";
        if (*(a1 + 48))
        {
          v18 = "ro";
        }

        v19 = *(*(a1 + 40) + 166);
        v20 = 136315394;
        v21 = v18;
        v22 = 1024;
        v23 = v19;
        v13 = "releasing %s connection rather than storing in size %d cache";
        v14 = v17;
        v15 = 18;
      }

      else
      {
        v11 = sub_1000027AC("SecError");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        if (*(a1 + 48))
        {
          v12 = "ro";
        }

        else
        {
          v12 = "rw";
        }

        v20 = 136315138;
        v21 = v12;
        v13 = "dbconn: did not expect to run out of room in the %s cache when releasing connection";
        v14 = v11;
        v15 = 12;
      }

      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v20, v15);
      return;
    }

    v16 = *(a1 + 32);

    CFArrayAppendValue(v6, v16);
  }
}

uint64_t sub_1000066A8(uint64_t a1)
{
  if (CFArrayGetCount(*(a1 + 160)))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 160), 0);
    CFArrayRemoveValueAtIndex(*(a1 + 160), 0);
LABEL_3:
    sub_100003F3C(a1, ValueAtIndex);
    v3 = sub_100012B10;
LABEL_4:
    *(a1 + 248) = v3;
    return 1;
  }

  if (*(a1 + 176) == 1)
  {
    Count = CFArrayGetCount(*(a1 + 152));
    if (Count)
    {
      v6 = Count - 1;
      v7 = CFArrayGetValueAtIndex(*(a1 + 152), Count - 1);
      if (sub_1000128D8(a1, v7))
      {
        v8 = *(a1 + 144);
        v9 = *(a1 + 168) + 1;
        *(a1 + 168) = v9;
        CFArrayInsertValueAtIndex(v8, v9, v7);
      }

      CFArrayRemoveValueAtIndex(*(a1 + 152), v6);
      return 1;
    }
  }

  v10 = *(a1 + 168);
  if (v10 < 0)
  {
    v11 = CFArrayGetCount(*(a1 + 88));
    v12 = *(a1 + 80);
    if (v12 >= v11)
    {
      if (*(a1 + 176))
      {
        if (*(a1 + 177))
        {
          v3 = sub_1000169B4;
          goto LABEL_4;
        }

        *(a1 + 177) = 1;
      }

      else
      {
        *(a1 + 176) = 1;
      }
    }

    else
    {
      *(a1 + 80) = v12 + 1;
    }

    v15 = CFArrayGetCount(*(a1 + 144)) - 1;
LABEL_37:
    *(a1 + 168) = v15;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 144), v10);
  if (*(a1 + 177) == 1)
  {
    --*(a1 + 168);
    goto LABEL_3;
  }

  if (CFSetGetCount(*(a1 + 136)) >= 101)
  {
    v13 = sub_1000027AC("trust");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = CFSetGetCount(*(a1 + 136));
      v25 = 134217984;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "not building any more paths, already have %ld", &v25, 0xCu);
    }

    v15 = -1;
    goto LABEL_37;
  }

  v16 = ValueAtIndex[3];
  v17 = CFArrayGetCount(*(a1 + 72));
  if (v16 >= *(a1 + 80) + v17)
  {
    v15 = *(a1 + 168) - 1;
    goto LABEL_37;
  }

  v18 = 88;
  if (v16 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v18 = 72;
    v19 = 0;
  }

  v20 = CFArrayGetValueAtIndex(*(a1 + v18), v16 - v19);
  ValueAtIndex[3] = v16 + 1;
  v21 = ValueAtIndex[2];
  if (v21 >= 1)
  {
    v22 = ValueAtIndex[v21 + 16];
    if (v22)
    {
      v23 = *(v22 + 16);
    }
  }

  v24 = *v20;

  return v24();
}

uint64_t sub_100006980(uint64_t a1)
{
  v2 = sub_100006A50(a1);
  if (([(__SecTask *)v2 hasPrefix:@"com.apple.Safari"]& 1) != 0 || ([(__SecTask *)v2 hasPrefix:@"com.apple.mobilesafari"]& 1) != 0 || ([(__SecTask *)v2 hasPrefix:@"com.apple.WebKit.Networking"]& 1) != 0)
  {
    v3 = 1;
  }

  else if (([(__SecTask *)v2 hasPrefix:@"com.apple.mail"]& 1) != 0 || ([(__SecTask *)v2 hasPrefix:@"com.apple.mobilemail"]& 1) != 0)
  {
    v3 = 2;
  }

  else if (([(__SecTask *)v2 hasPrefix:@"com.apple.CaptiveNetworkAssistant"]& 1) != 0)
  {
    v3 = 3;
  }

  else if (sub_10005BF24(a1))
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  return v3;
}

__SecTask *sub_100006A50(uint64_t a1)
{
  result = sub_10005BE8C(a1);
  if (result)
  {
    v2 = result;
    v3 = SecTaskCopySigningIdentifier(result, 0);
    CFRelease(v2);
    return v3;
  }

  return result;
}

void sub_100006A90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  if (v5 != v4)
  {
    if (!v4 || (CFRetain(*(a2 + 40)), (v5 = *(a2 + 56)) != 0))
    {
      CFRelease(v5);
    }

    *(a2 + 56) = v4;
  }

  v6 = *(a2 + 8);
  Count = CFArrayGetCount(v6);
  if (Count >= 1)
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
      *(a2 + 16) = qword_100092E20;
      *(a2 + 24) = i;
      CFDictionaryApplyFunction(ValueAtIndex[4], sub_100006C64, a2);
    }
  }

  v11 = *(a2 + 64);
  *(a2 + 48) = v11;
  v12 = *(a2 + 56);
  v13 = *(a2 + 40);
  if (v13 != v12)
  {
    if (!v12 || (CFRetain(*(a2 + 56)), (v13 = *(a2 + 40)) != 0))
    {
      CFRelease(v13);
    }

    *(a2 + 40) = v12;
    v11 = *(a2 + 64);
  }

  *(*(*(a1 + 32) + 8) + 24) &= (v11 < 8) & ((0x17u >> v11) ^ 1);
}

uint64_t sub_100006BE8(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = *(a1 + 48);
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 40);
    if (v8)
    {
      *v8 = v9;
    }

    result = sub_10000B794(a2, v9, *(a1 + 48));
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

void sub_100006C64(void *key, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 64);
  v6 = v5 > 7;
  v7 = (1 << v5) & 0xE8;
  v8 = v6 || v7 == 0;
  if (!v8 && !*(a3 + 56))
  {
    return;
  }

  Value = CFDictionaryGetValue(*(a3 + 16), key);
  if (Value)
  {

    Value(a3, key);
    return;
  }

  v10 = *(a3 + 16);
  if (v10 == qword_100092E20)
  {
    if (CFDictionaryContainsKey(qword_100092E28, key))
    {
      return;
    }

    v11 = sub_1000027AC("SecWarning");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v12 = 138412290;
    v13 = key;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "policy: unknown policy key %@, skipping", &v12, 0xCu);
    return;
  }

  if (v10 != qword_100092E28)
  {
    *(a3 + 64) = 7;
    return;
  }

  if (!CFDictionaryContainsKey(qword_100092E20, key))
  {
    v11 = sub_1000027AC("SecWarning");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = key;
      goto LABEL_19;
    }
  }
}

uint64_t sub_100006E14(uint64_t a1, __CFArray *a2, int a3)
{
  if (qword_100092E40 != -1)
  {
    dispatch_once(&qword_100092E40, &stru_100084050);
  }

  if (off_1000927D0(off_1000927C0, a2, a1))
  {
    return 1;
  }

  if (qword_100092AE0 != -1)
  {
    dispatch_once(&qword_100092AE0, &stru_100081EF8);
  }

  if ((byte_100092AD8 & 1) != 0 || (IsValid = 1, (sub_100008B24(a2, 1) & 1) == 0))
  {
    v7 = qword_100092E30;
    v36.length = CFArrayGetCount(qword_100092E30);
    v36.location = 0;
    if (CFArrayContainsValue(v7, v36, a2))
    {
      return 1;
    }

    if (a2 && qword_100092E38)
    {
      if (CFEqual(qword_100092E38, a2))
      {
        return 1;
      }
    }

    else if (qword_100092E38 == a2)
    {
      return 1;
    }

    IsValid = SecCertificateIsValid();
    if (IsValid && a3)
    {
      if (!SecIsInternalRelease())
      {
        return 1;
      }

      if (qword_100092AD0 != -1)
      {
        dispatch_once(&qword_100092AD0, &stru_100081EB8);
      }

      if (byte_100092AC8 != 1)
      {
        return 1;
      }

      if (sub_10000E860(*a1, a2) == 8)
      {
        return 1;
      }

      if ((sub_10005BF24(*a1) & 1) == 0)
      {
        v9 = sub_100006A50(*a1);
        if (!v9)
        {
          return 1;
        }

        v10 = v9;
        HasPrefix = CFStringHasPrefix(v9, @"com.apple.");
        CFRelease(v10);
        if (!HasPrefix)
        {
          return 1;
        }
      }

      SecCertificateNotValidAfter();
      SecCertificateNotValidBefore();
      if (SecCertificateIsValid())
      {
        return 1;
      }

      SecCertificateNotValidAfter();
      v13 = CFDateCreate(0, v12);
      v14 = sub_10000E860(*a1, a2);
      v15 = sub_100054FC0(v14);
      CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
      Name = SecPolicyGetName();
      v17 = SecCertificateCopyData(a2);
      Length = CFDataGetLength(v17);
      Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
      BytePtr = CFDataGetBytePtr(v17);
      v21 = CFDataGetLength(v17);
      if (v21 >= 1)
      {
        v22 = v21;
        do
        {
          v23 = *BytePtr++;
          CFStringAppendFormat(Mutable, 0, @"%02X", v23);
          --v22;
        }

        while (v22);
      }

      v24 = sub_100006A50(*a1);
      v25 = sub_1000027AC("earlyExpiration");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413314;
        v27 = v13;
        v28 = 2112;
        v29 = v24;
        v30 = 2112;
        v31 = Name;
        v32 = 2112;
        v33 = v15;
        v34 = 2112;
        v35 = Mutable;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "WARNING: Upcoming anchor expiration: %@. Evaluated by %@ against %@ using %@.\n%@", buf, 0x34u);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      return 0;
    }
  }

  return IsValid;
}

NSObject *sub_1000071FC(NSObject *result)
{
  if (result)
  {
    if (HIDWORD(result[4].isa) == 2)
    {
      v2 = geteuid();
    }

    else
    {
      v2 = 282;
    }

    return sub_100008190(v2);
  }

  return result;
}

BOOL sub_10000724C()
{
  NormalizedSubjectContent = SecCertificateGetNormalizedSubjectContent();
  v1 = sub_100002A58();
  if (v1)
  {
    v2 = v1;
    v3 = sub_100007B0C(NormalizedSubjectContent);
    if (v3 && (v4 = sub_10000CB3C(v3)) != 0)
    {
      v5 = v4;
      Length = SecCertificateGetLength();
      BytePtr = SecCertificateGetBytePtr();
      Count = CFArrayGetCount(v5);
      if (Count < 1)
      {
        v11 = 0;
      }

      else
      {
        v9 = Count;
        v10 = 0;
        v11 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, v10);
          if (ValueAtIndex)
          {
            v13 = ValueAtIndex;
            v14 = CFGetTypeID(ValueAtIndex);
            if (v14 == CFDataGetTypeID())
            {
              v15 = CFDataGetLength(v13);
              v16 = CFDataGetBytePtr(v13);
              if (Length >= 1 && v15 == Length && !memcmp(BytePtr, v16, Length))
              {
                break;
              }
            }
          }

          v11 = ++v10 < v9;
        }

        while (v9 != v10);
      }

      CFRelease(v5);
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    return 0;
  }

  return v11;
}

void sub_100007390(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    if (*(v4 + 16) >= 1)
    {
      v5 = *(v4 + 136);
      if (v5)
      {
        v6 = *(v5 + 16);
      }
    }
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  Value = CFDictionaryGetValue(ValueAtIndex[4], a2);
  v9 = SecPolicyCheckCertExtendedKeyUsageFiltered();
  if ((v9 & 1) == 0)
  {
    sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
  }

  if (*a1)
  {
    v10 = *(*a1 + 272);
  }

  else
  {
    v10 = 0;
  }

  v11 = SecPolicyCheckCertExtendedKeyUsageFiltered();
  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (v12 == 1 && (v11 & 1) == 0)
  {
    *(v10 + 9) = 1;
  }

  v13 = SecCertificateCopyExtendedKeyUsage();
  v14 = v13;
  if (v10 && v13)
  {
    if (CFArrayGetCount(v13) >= 2)
    {
      *(v10 + 10) = 1;
    }

    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    CFRelease(v14);
  }

  if (Value && (v15 = CFGetTypeID(Value), v15 == CFDataGetTypeID()) && CFDataGetLength(Value) == 8)
  {
    BytePtr = CFDataGetBytePtr(Value);
    v17 = memcmp(BytePtr, &unk_10006879A, 8uLL) != 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(*a1 + 200);
  if (v18)
  {
    v19 = *(v18 + 16);
    if (v19 >= 3 && !v17)
    {
      v20 = 2 - v19;
      v21 = 18;
      do
      {
        v22 = *(*a1 + 200);
        if (v22)
        {
          if (*(v22 + 16) > v21 - 17)
          {
            v23 = *(v22 + 8 * v21);
            if (v23)
            {
              v24 = *(v23 + 16);
            }
          }
        }

        v25 = SecCertificateCopyExtendedKeyUsage();
        if (v25)
        {
          v26 = v25;
          if (CFArrayGetCount(v25) && (SecPolicyCheckCertExtendedKeyUsage() & 1) == 0 && (SecPolicyCheckCertExtendedKeyUsage() & 1) == 0)
          {
            sub_100012178(a1, a2, v21 - 17, kCFBooleanFalse, 0, 0);
          }

          CFRelease(v26);
        }

        ++v21;
      }

      while (v20 + v21 != 18);
    }
  }
}

uint64_t sub_100007610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count <= 0)
  {
    v10 = *(v15 + 24);
  }

  else
  {
    v7 = 0;
    v8 = Count - 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v7);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 0x40000000;
      v13[2] = sub_100006BE8;
      v13[3] = &unk_100085A20;
      v13[6] = a2;
      v13[7] = a3;
      v13[8] = a1;
      v13[4] = &v14;
      v13[5] = ValueAtIndex;
      sub_1000029CC(a1, v13);
      v10 = *(v15 + 24);
      if (v10)
      {
        break;
      }
    }

    while (v8 != v7++);
  }

  _Block_object_dispose(&v14, 8);
  return v10 & 1;
}

uint64_t sub_100007738(uint64_t a1, __CFArray *a2, uint64_t a3)
{
  v4 = sub_100039694(a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFArrayGetTypeID() && (!a3 || !CFArrayGetValueAtIndex(*(a3 + 8), 0) ? (OidString = kSecPolicyAppleX509Basic) : (OidString = SecPolicyGetOidString()), (v8 = sub_10005BB30(v5, OidString)) != 0))
  {
    CFRelease(v8);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v5);
  return v9;
}

__CFArray *sub_1000077E0(const void *a1, const void *a2, const void *a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v7 = CFGetTypeID(a2);
  if (v7 == CFDataGetTypeID())
  {
    Length = CFDataGetLength(a2);
    v9 = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
    BytePtr = CFDataGetBytePtr(a2);
    v11 = CFDataGetLength(a2);
    if (v11 >= 1)
    {
      v12 = v11;
      do
      {
        v13 = *BytePtr++;
        CFStringAppendFormat(v9, 0, @"%02X", v13);
        --v12;
      }

      while (v12);
    }

    if (v9)
    {
      v14 = CFGetTypeID(v9);
      if (v14 == CFStringGetTypeID())
      {
        v15 = sub_100007A30();
        if (v15)
        {
          v16 = v15;
          v17 = CFGetTypeID(v15);
          if (v17 == CFDictionaryGetTypeID())
          {
            v18 = CFGetTypeID(a1);
            if (v18 == CFStringGetTypeID())
            {
              Value = CFDictionaryGetValue(v16, a1);
              if (Value)
              {
                v20 = Value;
                CFRetain(Value);
                CFGetTypeID(v20);
                CFArrayGetTypeID();
                CFRelease(v16);
                v21 = CFGetTypeID(v20);
                if (v21 == CFArrayGetTypeID())
                {
                  Count = CFArrayGetCount(v20);
                  if (Count >= 1)
                  {
                    v23 = Count;
                    for (i = 0; i != v23; ++i)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
                      if (ValueAtIndex)
                      {
                        v26 = ValueAtIndex;
                        v27 = CFGetTypeID(ValueAtIndex);
                        if (v27 == CFDictionaryGetTypeID())
                        {
                          v28 = CFDictionaryGetValue(v26, a3);
                          if (v28)
                          {
                            v29 = v28;
                            v30 = CFGetTypeID(v28);
                            if (v30 == CFStringGetTypeID() && CFStringCompare(v29, v9, 0) == kCFCompareEqualTo)
                            {
                              CFArrayAppendValue(Mutable, v26);
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v16 = v20;
              }
            }
          }

          CFRelease(v16);
        }
      }

      CFRelease(v9);
    }
  }

  if (CFArrayGetCount(Mutable) <= 0 && Mutable)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t sub_100007A30()
{
  v0 = qword_100092C10;
  if (!qword_100092C10)
  {
    if (qword_100092C38 != -1)
    {
      dispatch_once(&qword_100092C38, &stru_1000827E0);
    }

    v0 = qword_100092C10;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007C1C;
  block[3] = &unk_100083638;
  block[4] = &v4;
  dispatch_sync(v0, block);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

const __CFData *sub_100007B0C(const __CFData *a1)
{
  Value = a1;
  if (!a1)
  {
    return Value;
  }

  v2 = sub_100002A58();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = v2[11];
  if (!v4)
  {
    CFRelease(v2);
    return 0;
  }

  CFRetain(v2[11]);
  CFRelease(v3);
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  BytePtr = CFDataGetBytePtr(Value);
  Length = CFDataGetLength(Value);
  CC_SHA1(BytePtr, Length, v9);
  v7 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v9, 20, kCFAllocatorNull);
  Value = CFDictionaryGetValue(v4, v7);
  CFRelease(v4);
  if (v7)
  {
    CFRelease(v7);
  }

  return Value;
}

void *sub_100007C1C(void *result)
{
  if (qword_100092C30)
  {
    v1 = result;
    v2 = *(qword_100092C30 + 80);
    if (v2)
    {
      result = CFRetain(*(qword_100092C30 + 80));
    }

    *(*(v1[4] + 8) + 24) = v2;
  }

  return result;
}

void sub_100007C68(uint64_t a1, const __CFArray *cf)
{
  if (cf)
  {
    v3 = cf;
    v4 = 0;
  }

  else
  {
    v4 = CFArrayCreate(kCFAllocatorDefault, 0, 0, &kCFTypeArrayCallBacks);
    v3 = v4;
    if (!v4)
    {
      return;
    }
  }

  v5 = *(a1 + 136);
  CFRetain(v3);
  *(v5 + 24) = v3;
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t sub_100007D00(NSObject *a1, uint64_t a2, _BYTE *a3, void *a4, __CFString **a5)
{
  if (a3)
  {
    *a3 = 0;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = sub_1000071FC(a1);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = SecCertificateCopySHA256Digest();
  v9 = v22[3];
  if (!v9)
  {
    v19 = @"failed to get cert sha256 digest";
LABEL_32:
    sub_10001C2D4(-108, a5, v19);
LABEL_33:
    *(v30 + 24) = 0;
    if (!a1)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  if (CFDataGetLength(v9) <= 0)
  {
    v19 = @"cert digest of bad length";
    goto LABEL_32;
  }

  if (!a1 || !a1[1].isa)
  {
    sub_10001C2D4(-50, a5, @"ts is NULL");
    goto LABEL_33;
  }

  if (v26[3])
  {
    isa = a1->isa;
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1000082A8;
    block[3] = &unk_100085DD0;
    block[4] = &v29;
    block[5] = &v21;
    block[6] = &v25;
    block[7] = a1;
    block[8] = a5;
    block[9] = a3;
    block[10] = a4;
    dispatch_sync(isa, block);
  }

  else
  {
    sub_10001C2D4(-26276, a5, @"failed to get uuid");
    *(v30 + 24) = 0;
  }

LABEL_9:
  v11 = a1[5].isa;
  if (v11 && (a3 && !*a3 || a4 && !*a4) && CFSetContainsValue(*(v11 + 1), v22[3]))
  {
    if (a3)
    {
      *a3 = 1;
    }

    if (a4)
    {
      v12 = a1[5].isa;
      v13 = *(v12 + 3);
      if (v13)
      {
        CFRetain(*(v12 + 3));
      }

      *a4 = v13;
    }

    *(v30 + 24) = 1;
    if (a5)
    {
      v14 = *a5;
      if (*a5)
      {
        *a5 = 0;
        CFRelease(v14);
      }
    }
  }

LABEL_24:
  v15 = v26[3];
  if (v15)
  {
    v26[3] = 0;
    CFRelease(v15);
  }

  v16 = v22[3];
  if (v16)
  {
    v22[3] = 0;
    CFRelease(v16);
  }

  v17 = *(v30 + 24);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return v17;
}

uint64_t sub_100007F74(CFTypeRef cf2, __CFString **a2)
{
  if (!cf2)
  {
    v6 = 0;
    goto LABEL_7;
  }

  if (!CFEqual(@"user", cf2))
  {
    if (CFEqual(@"admin", cf2))
    {
      if (qword_100092F78 != -1)
      {
        dispatch_once(&qword_100092F78, &stru_100085BE8);
      }

      v4 = &qword_100092F80;
      goto LABEL_16;
    }

    if (CFEqual(@"system", cf2))
    {
      if (qword_100092F88 != -1)
      {
        dispatch_once(&qword_100092F88, &stru_100085C28);
      }

      v4 = &qword_100092F90;
      goto LABEL_16;
    }

    v6 = cf2;
LABEL_7:
    sub_10001C2D4(-50, a2, @"unknown domain: %@", v6);
    return 0;
  }

  if (qword_100092F68 != -1)
  {
    dispatch_once(&qword_100092F68, &stru_100085BA8);
  }

  v4 = &qword_100092F70;
LABEL_16:
  result = *v4;
  if (*v4)
  {
    return result;
  }

  sub_10001C2D4(-26276, a2, @"unable to initialize trust store for %@ domain", cf2);
  return 0;
}

uint64_t sub_1000080B8(uint64_t a1, uint64_t a2, _BYTE *a3, __CFString **a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a1 && *(a1 + 36) == 1)
  {
    if (a3)
    {
      if (qword_100092AF0 != -1)
      {
        dispatch_once(&qword_100092AF0, &stru_100081F38);
      }

      if (byte_100092AE8)
      {
        v5 = off_1000927A8;
      }

      else
      {
        v5 = off_1000927D8;
      }

      *a3 = v5[2]();
    }

    return 1;
  }

  else
  {

    return sub_100007D00(a1, a2, a3, 0, a4);
  }
}

NSObject *sub_100008190(uid_t a1)
{
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  v2 = mbr_uid_to_uuid(a1, v8);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v10 = a1;
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "failed to get UUID for user(%d) - %d", buf, 0xEu);
    }

    v5 = 0;
  }

  else
  {
    v6 = [[NSData alloc] initWithBytes:v8 length:16];
    v4 = v6;
    if (v6)
    {
      v4 = v6;
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void sub_1000082A8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*(v2 + 33))
  {
    v3 = *(v2 + 24);
    BytePtr = CFDataGetBytePtr(*(*(*(a1 + 40) + 8) + 24));
    Length = CFDataGetLength(*(*(*(a1 + 40) + 8) + 24));
    if (Length >> 31)
    {
LABEL_5:
      v10 = 18;
LABEL_6:
      v11 = sub_100005AD8(v10, *(*(a1 + 56) + 24), *(a1 + 64), @"sqlite3_bind_blob failed");
LABEL_7:
      v12 = 0;
      v13 = 0;
      *(*(*(a1 + 32) + 8) + 24) = v11;
      goto LABEL_8;
    }

    v6 = sqlite3_bind_blob(v3, 1, BytePtr, Length, 0);
    if (v6)
    {
      goto LABEL_35;
    }

    v7 = *(*(a1 + 56) + 24);
    v8 = CFDataGetBytePtr(*(*(*(a1 + 48) + 8) + 24));
    v9 = CFDataGetLength(*(*(*(a1 + 48) + 8) + 24));
    if (v9 >> 31)
    {
      goto LABEL_5;
    }

    v6 = sqlite3_bind_blob(v7, 2, v8, v9, 0);
    if (v6)
    {
LABEL_35:
      v10 = v6;
      goto LABEL_6;
    }

    v15 = sqlite3_step(*(*(a1 + 56) + 24));
    LODWORD(v10) = v15;
    v12 = 0;
    if (!v15 || v15 == 101)
    {
      v13 = 0;
      goto LABEL_8;
    }

    if (v15 != 100)
    {
      v11 = sub_100005AD8(v15, *(*(a1 + 56) + 24), *(a1 + 64), @"sqlite3_step failed");
      goto LABEL_7;
    }

    v16 = *(a1 + 72);
    if (v16)
    {
      *v16 = 1;
    }

    if (*(a1 + 80))
    {
      v17 = sqlite3_column_blob(*(*(a1 + 56) + 24), 0);
      v18 = sqlite3_column_bytes(*(*(a1 + 56) + 24), 0);
      v13 = CFDataCreate(0, v17, v18);
      if (v13)
      {
        v19 = CFPropertyListCreateWithData(0, v13, 0, 0, *(a1 + 64));
        v12 = v19;
        if (v19)
        {
          v20 = CFGetTypeID(v19);
          if (v20 == CFArrayGetTypeID())
          {
            **(a1 + 80) = CFRetain(v12);
LABEL_31:
            LODWORD(v10) = 100;
            goto LABEL_8;
          }
        }
      }

      else
      {
        v12 = 0;
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
      goto LABEL_31;
    }

    v12 = 0;
    v13 = 0;
    goto LABEL_31;
  }

  v12 = 0;
  v13 = 0;
  LODWORD(v10) = 0;
  *(*(*(a1 + 32) + 8) + 24) = 1;
LABEL_8:
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v14 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v21[0] = 67109120;
      v21[1] = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to query for cert in trust store: %d", v21, 8u);
    }

    sub_100054DC0(4, 3, v10);
  }

  sqlite3_reset(*(*(a1 + 56) + 24));
  sqlite3_clear_bindings(*(*(a1 + 56) + 24));
  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

void sub_1000085B0(uint64_t a1, const void *a2)
{
  v4 = sub_100002A58();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 24);
    if (v6)
    {
      CFRetain(*(v4 + 24));
      CFRelease(v5);
      v7 = *(*a1 + 200);
      if (v7)
      {
        if (*(v7 + 16) >= 1)
        {
          v8 = *(v7 + 136);
          if (v8)
          {
            v9 = *(v8 + 16);
          }
        }
      }

      v10 = SecCertificateCopyPublicKeySHA1Digest();
      if (v10)
      {
        v11 = v10;
        if (CFSetContainsValue(v6, v10))
        {
          sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
        }

        CFRelease(v11);
      }
    }

    else
    {
      v6 = v4;
    }

    CFRelease(v6);
  }
}

void sub_1000086A0(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    if (*(v4 + 16) >= 1)
    {
      v5 = *(v4 + 136);
      if (v5)
      {
        v6 = *(v5 + 16);
        if (v6)
        {
          v7 = *(v5 + 16);
          NormalizedIssuerContent = SecCertificateGetNormalizedIssuerContent();
          if (NormalizedIssuerContent)
          {
            v9 = NormalizedIssuerContent;
            if (CFDataGetLength(NormalizedIssuerContent) == 151)
            {
              BytePtr = CFDataGetBytePtr(v9);
              if (!memcmp(&unk_10006C822, BytePtr, 0x97uLL))
              {
                v11 = SecCertificateCopySerialNumberData(v6, 0);
                if (v11)
                {
                  v12 = v11;
                  Length = CFDataGetLength(v11);
                  v14 = CFDataGetBytePtr(v12);
                  if (Length >= 1)
                  {
                    while (!*v14)
                    {
                      ++v14;
                      if (Length-- <= 1)
                      {
                        goto LABEL_32;
                      }
                    }

                    if (Length == 16)
                    {
                      v20 = &qword_10006C8B9;
                      v21 = 9;
                      while (*v20 != *v14 || v20[1] != *(v14 + 1))
                      {
                        v20 += 2;
                        if (!--v21)
                        {
                          goto LABEL_32;
                        }
                      }

                      sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
                      goto LABEL_22;
                    }
                  }

LABEL_32:
                  CFRelease(v12);
                }
              }
            }
          }
        }
      }
    }
  }

  v16 = sub_100002A58();
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v12 = *(v16 + 16);
  if (v12)
  {
    CFRetain(*(v16 + 16));
    CFRelease(v17);
    v18 = SecCertificateCopyPublicKeySHA1Digest();
    if (v18)
    {
      v19 = v18;
      if (CFSetContainsValue(v12, v18))
      {
        sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
      }

      CFRelease(v19);
    }
  }

  else
  {
    v12 = v16;
  }

LABEL_22:

  CFRelease(v12);
}

uint64_t sub_100008888(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  result = CFDictionaryGetValue(ValueAtIndex[4], a2);
  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      v9 = *(*a1 + 200);
      if (v9)
      {
        if ((i & 0x8000000000000000) == 0 && *(v9 + 16) > i)
        {
          v10 = *(v9 + 8 * i + 136);
          if (v10)
          {
            v11 = *(v10 + 16);
          }
        }
      }

      result = SecPolicyCheckCertWeakSignature();
      if ((result & 1) == 0)
      {
        result = sub_100012178(a1, a2, i, kCFBooleanFalse, 0, 0);
        if (!result)
        {
          break;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100008978(uint64_t result, const void *a2)
{
  v2 = *(*result + 200);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3 >= 1)
    {
      v5 = result;
      v6 = 0;
LABEL_4:
      if (v6 < 0 || *(v2 + 16) <= v6 || (v7 = *(v2 + 8 * v6 + 136)) == 0 || (result = *(v7 + 16)) == 0 || (result = SecCertificateIsWeakKey(), !result) || (result = sub_100012178(v5, a2, v6, kCFBooleanFalse, 0, 0), result))
      {
        while (++v6 < v3)
        {
          v2 = *(*v5 + 200);
          if (v2)
          {
            goto LABEL_4;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100008A40(uint64_t result, const void *a2)
{
  v2 = *(*result + 200);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3 >= 1)
    {
      v5 = result;
      v6 = 0;
      v7 = *(*result + 120);
      while (1)
      {
        v8 = 0;
        if (v2 && (v6 & 0x8000000000000000) == 0)
        {
          if (*(v2 + 16) > v6 && (v9 = *(v2 + 8 * v6 + 136)) != 0)
          {
            v8 = *(v9 + 16);
          }

          else
          {
            v8 = 0;
          }
        }

        result = sub_100006E14(v5, v8, 0);
        if ((result & 1) == 0)
        {
          result = sub_100012178(v5, a2, v6, kCFBooleanFalse, 0, 0);
          if (!result)
          {
            break;
          }
        }

        if (++v6 >= v3)
        {
          break;
        }

        v2 = *(*v5 + 200);
      }
    }
  }

  return result;
}

uint64_t sub_100008B24(uint64_t a1, char a2)
{
  v3 = SecCertificateCopySHA256Digest();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (qword_100092BA0 != -1)
  {
    dispatch_once(&qword_100092BA0, &stru_100082608);
  }

  if (!qword_100092BA8)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(qword_100092BA8, v4);
  v6 = Value;
  if (Value)
  {
    v7 = CFGetTypeID(Value);
    if (v7 == CFBooleanGetTypeID())
    {
      v8 = CFBooleanGetValue(v6);
      v6 = v8 != 0;
      if (a2)
      {
        v9 = v8;
        v10 = SecIsInternalRelease() | ((a2 & 2) >> 1);
        if (v9)
        {
          v6 = 1;
        }

        else
        {
          v6 = v10;
        }
      }

      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_11:
  CFRelease(v4);
  return v6;
}

CFURLRef sub_100008BFC(uint64_t a1)
{
  if (qword_100092C78 != -1)
  {
    dispatch_once(&qword_100092C78, &stru_100082A80);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = @"trustd/";
    goto LABEL_6;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = [NSString stringWithFormat:@"trustd/%@", a1];
LABEL_6:
  v3 = sub_100009020(@"private/var/protected/", v2);

  return v3;
}

uint64_t sub_100008C98(uint64_t a1, uint64_t a2)
{
  if (qword_100092DD8 != -1)
  {
    dispatch_once(&qword_100092DD8, &stru_100083920);
  }

  v4 = sub_100008DD0();
  v5 = sub_100008E00(a1, a2, "CA Revocation Additions", byte_100092DD0, &dword_100092DD4, v4, &stru_1000838B8, &stru_1000838D8);

  return v5;
}

CFURLRef sub_100008D3C(uint64_t a1)
{
  if (qword_100092C80 != -1)
  {
    dispatch_once(&qword_100092C80, &stru_100082AC0);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = @"private/";
    goto LABEL_6;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = [NSString stringWithFormat:@"private/%@", a1];
LABEL_6:
  v3 = sub_100008BFC(v2);

  return v3;
}

CFURLRef sub_100008DD0()
{
  v0 = sub_100008D3C(@"CARevocation.plist");

  return v0;
}

uint64_t sub_100008E00(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int *a5, void *a6, void *a7, void *a8)
{
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (sub_100003140())
  {
    v18 = objc_autoreleasePoolPush();
    if (qword_100092C70 != -1)
    {
      dispatch_once(&qword_100092C70, &stru_100082A60);
    }

    if (byte_100092C68 & 1) == 0 && (check = 0, v19 = notify_check(*a5, &check), v19 | check) || (v20 = atomic_load(a4), (v20))
    {
      v27 = 0;
      v21 = v16[2](v16, v15, &v27);
      v22 = v27;
      if (v21 && [v21 count])
      {
        if (a1)
        {
          v23 = [v21 objectForKeyedSubscript:a1];
        }

        else
        {
          v23 = v17[2](v17, v21, a2);
        }

        v24 = v23;
      }

      else
      {
        v25 = sub_1000027AC("config");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          check = 136446466;
          v29 = a3;
          v30 = 2112;
          v31 = v22;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "skipping further reads. no %{public}s found: %@", &check, 0x16u);
        }

        v24 = 0;
        atomic_store(0, a4);
      }
    }

    else
    {
      v24 = 0;
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

CFURLRef sub_100009020(const __CFString *a1, uint64_t a2)
{
  v4 = CFURLCreateWithFileSystemPath(0, @"/", kCFURLPOSIXPathStyle, 1u);
  if (a2)
  {
    v5 = kCFAllocatorDefault;
    Copy = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%@", a1, a2);
  }

  else
  {
    if (!a1)
    {
      goto LABEL_10;
    }

    v5 = kCFAllocatorDefault;
    Copy = CFStringCreateCopy(kCFAllocatorDefault, a1);
  }

  v7 = Copy;
  if (v4 && Copy)
  {
    v8 = CFURLCreateCopyAppendingPathComponent(v5, v4, Copy, a2 == 0);
    CFRelease(v7);
LABEL_11:
    CFRelease(v4);
    return v8;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

LABEL_10:
  v8 = 0;
  if (v4)
  {
    goto LABEL_11;
  }

  return v8;
}

BOOL sub_10000910C(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (!v1)
  {
    return 1;
  }

  v2 = *(v1 + 16);
  if (v2 < 2)
  {
    return 1;
  }

  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = sub_100015F54(a1);
    if (*(a1 + 213) != 1 || (v7 = *(v6 + 64), v7 <= 7) && ((0x17u >> v7) & 1) == 0)
    {
      v8 = *(a1 + 200);
      if (v8)
      {
        v9 = *(v8 + 16);
        if (v9 >= 1)
        {
          v10 = 0;
          for (i = 0; i != v9; ++i)
          {
            if (*(v1 + 88) > i)
            {
              v12 = *(v1 + 80);
              if (v12)
              {
                sub_100013C34(v12 + v10);
              }
            }

            v10 += 40;
          }
        }
      }

      return 1;
    }

    sub_10001C550(v1);
  }

  v95 = v5;
  v13 = 0;
  v14 = 0;
  *(v1 + 80) = malloc_type_calloc(0x28uLL, v2, 0x80DB4902uLL);
  *(v1 + 88) = v2;
  v96 = v1 + 136;
  atomic_store(v2, (a1 + 208));
  key = kSecCARevocationAdditionsKey;
  do
  {
    if (*(v1 + 88) <= v14)
    {
      goto LABEL_111;
    }

    v15 = *(v1 + 80);
    if (!v15)
    {
      goto LABEL_111;
    }

    v16 = (v15 + v13);
    *v16 = a1;
    v16[1] = v14;
    *&context = _NSConcreteStackBlock;
    *(&context + 1) = 0x40000000;
    v102 = sub_100053AAC;
    v103 = &unk_100085338;
    v104 = &qword_100092EB8;
    if (qword_100092EB0 != -1)
    {
      dispatch_once(&qword_100092EB0, &context);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v18 = Instance;
      Instance[2] = a1;
      Instance[3] = v16;
      Instance[7] = v14;
      if (a1)
      {
        v19 = *(a1 + 200);
        if (v19)
        {
          if (*(v19 + 16) > v14 + 1)
          {
            v20 = v19 + 8 * v14;
            v21 = *(v20 + 136);
            if (v21)
            {
              v22 = *(v21 + 16);
            }

            else
            {
              v22 = 0;
            }

            v24 = *(v20 + 144);
            if (v24)
            {
              v25 = *(v24 + 16);
            }

            else
            {
              v25 = 0;
            }

            v18[4] = sub_100012B7C(v22, v25);
          }
        }
      }

      *(v15 + v13 + 16) = v18;
      v23 = (v15 + v13 + 16);
      *(v15 + v13 + 32) = 0;
    }

    else
    {
      v23 = (v15 + 40 * v14 + 16);
      *(v15 + v13 + 16) = 0;
      sub_10001C4EC(v15 + v13);
      *(v15 + v13 + 32) = 1;
      sub_100013C34(v15 + v13);
      atomic_fetch_add((*(v15 + v13) + 208), 0xFFFFFFFF);
    }

    if (*(v1 + 16) > v14)
    {
      v26 = *(v96 + 8 * v14);
      if (v26)
      {
        v27 = *(v26 + 16);
      }
    }

    if (SecCertificateHasOCSPNoCheckMarkerExtension())
    {
      if (a1)
      {
        v28 = *(a1 + 272);
        if (v28)
        {
          *(v28 + 46) = 1;
        }
      }

      *(v15 + v13 + 32) = 1;
      sub_100013C34(v15 + v13);
      atomic_fetch_add((*(v15 + v13) + 208), 0xFFFFFFFF);
    }

    v29 = v15 + v13;
    if (*(v15 + v13 + 32))
    {
      goto LABEL_111;
    }

    if (sub_100003140())
    {
      v30 = *v16;
      if ((*(*v16 + 179) & 1) == 0 && (*(v30 + 192) != 1 || (v31 = **(v30 + 184)) != 0 && (!CFArrayGetValueAtIndex(*(v31 + 8), 0) || (Name = SecPolicyGetName()) == 0 || !CFEqual(Name, @"OCSPSigner"))))
      {
        if (qword_100092E78 != -1)
        {
          dispatch_once(&qword_100092E78, &stru_100084278);
        }

        dispatch_source_merge_data(qword_100092E80, 1uLL);
        v33 = *(*v16 + 200);
        if (v33)
        {
          v34 = *(v33 + 16);
          if (v34)
          {
            v35 = v16[1];
            if (v34 <= v35 + 1)
            {
              if (v34 == v35 + 1)
              {
                if (*(v33 + 48) == 1)
                {
                  v37 = *(v33 + 40);
                }

                else
                {
                  v37 = -1;
                }

                v36 = 0;
                v39 = 0;
                if (v37 == v35)
                {
                  goto LABEL_72;
                }

LABEL_66:
                v40 = 0;
                if (v35 < 0 || v34 <= v35)
                {
                  goto LABEL_71;
                }

                v41 = *(v33 + 8 * v35 + 136);
                if (v41)
                {
                  v40 = *(v41 + 16);
LABEL_71:
                  v39 = sub_100011B2C(v40, v36);
                  v33 = *(*v16 + 200);
LABEL_72:
                  v42 = 0;
                  if (v33 && v34 >= 1)
                  {
                    if (*(v33 + 16) >= v34 && (v43 = *(v33 + 8 * (v34 - 1) + 136)) != 0)
                    {
                      v42 = *(v43 + 16);
                    }

                    else
                    {
                      v42 = 0;
                    }
                  }

                  if (v39)
                  {
                    if (v42)
                    {
                      v44 = v42;
                      v89 = v39;
                      v91 = SecCertificateCopySHA256Digest();
                      v45 = off_1000927D0(off_1000927C0, v44, 0);
                      v39 = v89;
                      if (v45)
                      {
                        *(v89 + 54) = 0;
                      }

                      if (qword_100092AE0 != -1)
                      {
                        dispatch_once(&qword_100092AE0, &stru_100081EF8);
                        v39 = v89;
                      }

                      if ((byte_100092AD8 & 1) == 0)
                      {
                        if (sub_100008B24(v44, 0))
                        {
                          v39 = v89;
                          *(v89 + 54) = 0;
                        }

                        else
                        {
                          v39 = v89;
                        }
                      }
                    }

                    else
                    {
                      v91 = 0;
                    }

                    v46 = *(v39 + 40);
                    if (v46)
                    {
                      *(v39 + 40) = 0;
                      v47 = v39;
                      CFRelease(v46);
                      v39 = v47;
                    }

                    *(v39 + 40) = v91;
                    v48 = *(v15 + v13 + 24);
                    *(v15 + v13 + 24) = v39;
                    if (v48)
                    {
                      CFRelease(v48);
                    }

                    sub_100015868(v15 + v13);
                  }

                  goto LABEL_94;
                }

LABEL_70:
                v40 = 0;
                goto LABEL_71;
              }
            }

            else
            {
              if (v35 < -1)
              {
                v36 = 0;
                goto LABEL_70;
              }

              v38 = *(v33 + 8 * (v35 + 1) + 136);
              if (v38)
              {
                v36 = *(v38 + 16);
                goto LABEL_66;
              }
            }

            v36 = 0;
            goto LABEL_66;
          }
        }
      }
    }

LABEL_94:
    if (v14 + 1 >= v2)
    {
      goto LABEL_111;
    }

    v49 = *v23;
    v50 = *(*v23 + 16);
    v51 = *(v50 + 96);
    if (v51)
    {
      CFRetain(*(v50 + 96));
      *&context = _NSConcreteStackBlock;
      *(&context + 1) = 0x40000000;
      v102 = sub_100020834;
      v103 = &unk_100085380;
      v104 = v49;
      v110.length = CFArrayGetCount(v51);
      v110.location = 0;
      CFArrayApplyFunction(v51, v110, sub_100053D38, &context);
      CFRelease(v51);
    }

    if (sub_100003140())
    {
      v52 = *(*v23 + 32);
      if (v52)
      {
        if (*(*v16 + 212) == 1)
        {
          Current = CFAbsoluteTimeGetCurrent();
          v54 = *(*v23 + 32);
          v97 = 0;
          v98 = &v97;
          v99 = 0x2000000000;
          v100 = 0;
          *&context = _NSConcreteStackBlock;
          *(&context + 1) = 0x40000000;
          v102 = sub_10003A74C;
          v103 = &unk_100083228;
          v104 = &v97;
          v105 = v54;
          v106 = 0;
          v107 = Current + -300.0;
        }

        else
        {
          v97 = 0;
          v98 = &v97;
          v99 = 0x2000000000;
          v100 = 0;
          *&context = _NSConcreteStackBlock;
          *(&context + 1) = 0x40000000;
          v102 = sub_100011378;
          v103 = &unk_100083200;
          v104 = &v97;
          v105 = v52;
          v106 = 0;
        }

        sub_100010E60(&context);
        v55 = v98[3];
        _Block_object_dispose(&v97, 8);
        sub_100013CE0(*v23, v55, 0, 1, 0.0);
        if (*v16)
        {
          if (*(*v23 + 88) == 1)
          {
            v56 = *(*v16 + 272);
            if (v56)
            {
              *(v56 + 47) = 1;
            }
          }
        }
      }
    }

    if ((*(v29 + 32) & 1) != 0 || *(*v23 + 88) == 1)
    {
      *(v29 + 32) = 1;
      sub_100013C34(v16);
LABEL_109:
      v57 = *v16;
LABEL_110:
      atomic_fetch_add((v57 + 208), 0xFFFFFFFF);
      goto LABEL_111;
    }

    v58 = *(*v23 + 40);
    v59 = *(v1 + 72);
    if (!v59)
    {
      v92 = *(*v23 + 40);
      v60 = sub_100008C98(0, 0);
      v59 = -1;
      *(v1 + 72) = -1;
      if (v60)
      {
        v61 = v60;
        v97 = 0;
        v98 = &v97;
        v99 = 0x2000000000;
        LOBYTE(v100) = 0;
        Value = CFDictionaryGetValue(v60, key);
        if (Value)
        {
          v63 = Value;
          *&context = _NSConcreteStackBlock;
          *(&context + 1) = 0x40000000;
          v102 = sub_100038FF0;
          v103 = &unk_100083130;
          v104 = &v97;
          v105 = v1;
          v111.length = CFArrayGetCount(Value);
          v111.location = 0;
          CFArrayApplyFunction(v63, v111, sub_1000390FC, &context);
        }

        if (*(v98 + 24) == 1)
        {
          v64 = sub_1000027AC("ocsp");
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            v86 = *(v1 + 72);
            *buf = 134217984;
            v109 = v86;
            _os_log_debug_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "key-based CA revocation applies at index %lld", buf, 0xCu);
          }
        }

        CFRelease(v61);
        _Block_object_dispose(&v97, 8);
        v59 = *(v1 + 72);
      }

      v58 = v92;
    }

    if (*(a1 + 213))
    {
      if (!v95)
      {
        goto LABEL_139;
      }
    }

    else if ((*(a1 + 178) & 1) == 0)
    {
      goto LABEL_139;
    }

    if (*(v1 + 65) & 1) != 0 || (*(*v96 + 40))
    {
      v65 = 0;
    }

    else
    {
      if (*(a1 + 216) | v58)
      {
        v66 = 1;
      }

      else
      {
        v66 = v14 < v59;
      }

      v65 = !v66;
    }

    if ((*(v29 + 32) & 1) != 0 || v65)
    {
LABEL_139:
      sub_100013C34(v16);
      v57 = a1;
      goto LABEL_110;
    }

    v67 = *v16;
    if (*v16)
    {
      v68 = *(v67 + 272);
    }

    else
    {
      v68 = 0;
    }

    v90 = v68;
    v69 = *(v67 + 200);
    if (v69)
    {
      v70 = v16[1];
      if ((v70 & 0x8000000000000000) == 0 && *(v69 + 16) > v70)
      {
        v71 = *(v69 + 8 * v70 + 136);
        if (v71)
        {
          v72 = *(v71 + 16);
        }
      }
    }

    v73 = *v23;
    v93 = objc_autoreleasePoolPush();
    OCSPResponders = SecCertificateGetOCSPResponders();
    v75 = OCSPResponders;
    if (OCSPResponders)
    {
      CFRetain(OCSPResponders);
    }

    v76 = [v75 count];
    if (v76 >= 0xB)
    {
      v77 = v76;
      v78 = sub_1000027AC("rvc");
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(context) = 134217984;
        *(&context + 4) = v77;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "too may OCSP responder entries (%ld)", &context, 0xCu);
      }

      *(v73 + 88) = 1;
      objc_autoreleasePoolPop(v93);
      goto LABEL_109;
    }

    if (qword_100092DB0 != -1)
    {
      dispatch_once(&qword_100092DB0, &stru_100083728);
    }

    v79 = *(v73 + 16);
    if (v79)
    {
      v80 = *(v79 + 32);
      if (v80)
      {
        CFRetain(*(v79 + 32));
      }
    }

    else
    {
      v80 = 0;
    }

    v88 = [qword_100092DA0 sessionForAuditToken:{v80, v80}];
    v81 = [[TrustURLSessionContext alloc] initWithContext:v73 uris:v75];
    v82 = v81;
    v83 = *(v73 + 16);
    if (v83)
    {
      v84 = *(v83 + 280);
    }

    else
    {
      v84 = 0;
    }

    [(TrustURLSessionContext *)v81 setAttribution:v84];
    v85 = [qword_100092DA8 fetchNext:v88 context:v82];

    objc_autoreleasePoolPop(v93);
    if (!v90 || (v85 & 1) != 0)
    {
      if (v85)
      {
        goto LABEL_109;
      }
    }

    else
    {
      *(v90 + 48) = 1;
    }

LABEL_111:
    ++v14;
    v13 += 40;
  }

  while (v2 != v14);
  return atomic_fetch_add((a1 + 208), 0xFFFFFFFF) == 1;
}

BOOL sub_100009C84(uint64_t a1)
{
  v2 = sub_100005E88();
  v3 = 0;
  if (a1 && v2)
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
    v3 = ValueAtIndex != 0;
    if (ValueAtIndex)
    {
      v6 = ValueAtIndex;
      Name = SecPolicyGetName();
      if (Name && kSecPolicyNameSSLServer)
      {
        if (CFEqual(Name, kSecPolicyNameSSLServer))
        {
          return v3;
        }
      }

      else if (Name == kSecPolicyNameSSLServer)
      {
        return v3;
      }

      v8 = *(v6 + 4);
      if (!v8 || !CFDictionaryGetValue(v8, kSecPolicyCheckSSLHostname) && !CFDictionaryGetValue(v8, kSecPolicyCheckCTRequired))
      {
        return 0;
      }
    }
  }

  return v3;
}

void sub_100009D40(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    do
    {
      v3 = v2[2];
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  free(a1);
}

uint64_t sub_100009D8C(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(a1 + 232) = Mutable;
  if (!Mutable)
  {
    goto LABEL_96;
  }

  v3 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  Current = CFAbsoluteTimeGetCurrent();
  v5 = CFDateCreate(0, Current + -4500.0);
  CFArrayAppendValue(v3, v5);
  v6 = *(a1 + 224);
  v7 = CFArrayCreateMutable(0, *(v6 + 16), &kCFTypeArrayCallBacks);
  context = _NSConcreteStackBlock;
  v90 = 0x40000000;
  v91 = sub_100016B80;
  v92 = &unk_1000830C0;
  v93 = v7;
  LOBYTE(v96) = 0;
  v8 = *(v6 + 16);
  v9 = v8 < 1;
  v10 = v8 - 1;
  if (!v9)
  {
    v11 = (v6 + 136);
    do
    {
      v12 = v10;
      v13 = *v11++;
      v91(&context, *(v13 + 16), &v96);
      if (v96)
      {
        break;
      }

      v10 = v12 - 1;
    }

    while (v12);
  }

  v102.length = CFArrayGetCount(v7);
  v102.location = 0;
  CFArrayAppendArray(v3, v7, v102);
  v14 = *(a1 + 224);
  v15 = CFArrayCreateMutable(0, *(v14 + 88), &kCFTypeArrayCallBacks);
  if (*(v14 + 88) >= 1)
  {
    v16 = 0;
    v17 = 16;
    do
    {
      v18 = *(v14 + 80);
      if (v18 && (v19 = *(v18 + v17)) != 0)
      {
        v20 = *(v19 + 64);
      }

      else
      {
        v20 = -1.79769313e308;
      }

      v21 = CFDateCreate(0, v20);
      if (v21)
      {
        v22 = v21;
        CFArrayAppendValue(v15, v21);
        CFRelease(v22);
      }

      ++v16;
      v17 += 40;
    }

    while (v16 < *(v14 + 88));
  }

  v103.length = CFArrayGetCount(v15);
  v103.location = 0;
  CFArrayAppendArray(v3, v15, v103);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v96 = 0;
  v97 = &v96;
  v98 = 0x2000000000;
  v99 = 0xFFEFFFFFFFFFFFFFLL;
  v23 = CFAbsoluteTimeGetCurrent();
  context = _NSConcreteStackBlock;
  v90 = 0x40000000;
  v91 = sub_100016BE4;
  v92 = &unk_100085B40;
  v94 = v23;
  v93 = &v96;
  v100.length = CFArrayGetCount(v3);
  v100.location = 0;
  CFArrayApplyFunction(v3, v100, sub_10005BDE0, &context);
  if (v3)
  {
    CFRelease(v3);
  }

  v24 = v97[3];
  _Block_object_dispose(&v96, 8);
  v25 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v26 = CFAbsoluteTimeGetCurrent();
  v27 = CFDateCreate(0, v26 + 4500.0);
  CFArrayAppendValue(v25, v27);
  v28 = *(a1 + 224);
  v29 = CFArrayCreateMutable(0, *(v28 + 16), &kCFTypeArrayCallBacks);
  context = _NSConcreteStackBlock;
  v90 = 0x40000000;
  v91 = sub_100016C30;
  v92 = &unk_1000830E0;
  v93 = v29;
  LOBYTE(v96) = 0;
  v30 = *(v28 + 16);
  v9 = v30 < 1;
  v31 = v30 - 1;
  if (!v9)
  {
    v32 = (v28 + 136);
    do
    {
      v33 = v31;
      v34 = *v32++;
      v91(&context, *(v34 + 16), &v96);
      if (v96)
      {
        break;
      }

      v31 = v33 - 1;
    }

    while (v33);
  }

  v104.length = CFArrayGetCount(v29);
  v104.location = 0;
  CFArrayAppendArray(v25, v29, v104);
  v35 = *(a1 + 224);
  v36 = CFArrayCreateMutable(0, *(v35 + 88), &kCFTypeArrayCallBacks);
  if (*(v35 + 88) >= 1)
  {
    v37 = 0;
    v38 = 16;
    do
    {
      v39 = *(v35 + 80);
      v40 = 0.0;
      if (v39)
      {
        v41 = *(v39 + v38);
        if (v41)
        {
          v40 = *(v41 + 72);
        }
      }

      v42 = CFDateCreate(0, v40);
      if (v42)
      {
        v43 = v42;
        CFArrayAppendValue(v36, v42);
        CFRelease(v43);
      }

      ++v37;
      v38 += 40;
    }

    while (v37 < *(v35 + 88));
  }

  v105.length = CFArrayGetCount(v36);
  v105.location = 0;
  CFArrayAppendArray(v25, v36, v105);
  if (v36)
  {
    CFRelease(v36);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  v96 = 0;
  v97 = &v96;
  v98 = 0x2000000000;
  v99 = 0x7FEFFFFFFFFFFFFFLL;
  v44 = CFAbsoluteTimeGetCurrent();
  context = _NSConcreteStackBlock;
  v90 = 0x40000000;
  v91 = sub_10001C7E4;
  v92 = &unk_100085B68;
  v94 = v44;
  v93 = &v96;
  v101.length = CFArrayGetCount(v25);
  v101.location = 0;
  CFArrayApplyFunction(v25, v101, sub_10005BDE0, &context);
  if (v25)
  {
    CFRelease(v25);
  }

  v45 = v97[3];
  _Block_object_dispose(&v96, 8);
  v46 = CFDateCreate(0, v24);
  v47 = CFDateCreate(0, v45);
  CFDictionarySetValue(*(a1 + 232), kSecTrustInfoResultNotBefore, v46);
  CFDictionarySetValue(*(a1 + 232), kSecTrustInfoResultNotAfter, v47);
  if (v46)
  {
    CFRelease(v46);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (!*(a1 + 232))
  {
    goto LABEL_96;
  }

  v48 = *(a1 + 224);
  if (v48)
  {
    if (*(v48 + 65) == 1)
    {
      if (sub_10000B13C(a1))
      {
        v49 = *(a1 + 224);
        if (v49[10])
        {
          if (sub_10001C61C(v49) != 0.0)
          {
            CFDictionarySetValue(*(a1 + 232), kSecTrustInfoExtendedValidationKey, kCFBooleanTrue);
            CFDictionarySetValue(*(a1 + 232), kSecTrustExtendedValidation, kCFBooleanTrue);
            v50 = *(a1 + 200);
            if (v50)
            {
              if (*(v50 + 16) >= 1)
              {
                v51 = *(v50 + 136);
                if (v51)
                {
                  v52 = *(v51 + 16);
                }
              }
            }

            v53 = SecCertificateCopyCompanyName();
            if (v53)
            {
              v54 = v53;
              CFDictionarySetValue(*(a1 + 232), kSecTrustInfoCompanyNameKey, v53);
              CFDictionarySetValue(*(a1 + 232), kSecTrustOrganizationName, v54);
              CFRelease(v54);
            }
          }
        }
      }
    }

    if (!*(a1 + 232))
    {
      goto LABEL_96;
    }
  }

  if (sub_10000B13C(a1))
  {
    v55 = *(a1 + 224);
    if (v55[10])
    {
      v56 = sub_10001C61C(v55);
      if (v56 != 0.0)
      {
        v57 = CFDateCreate(kCFAllocatorDefault, v56);
        CFDictionarySetValue(*(a1 + 232), kSecTrustInfoRevocationValidUntilKey, v57);
        CFDictionarySetValue(*(a1 + 232), kSecTrustRevocationValidUntilDate, v57);
        CFRelease(v57);
        goto LABEL_64;
      }

      v66 = *(a1 + 224);
      if (v66 && (*(v66 + 65) & 1) != 0)
      {
        v58 = &kCFBooleanFalse;
        goto LABEL_65;
      }

      if (sub_10001C730(v66))
      {
LABEL_64:
        v58 = &kCFBooleanTrue;
LABEL_65:
        v59 = *v58;
        CFDictionarySetValue(*(a1 + 232), kSecTrustInfoRevocationKey, *v58);
        CFDictionarySetValue(*(a1 + 232), kSecTrustRevocationChecked, v59);
      }
    }
  }

  if (*(a1 + 232))
  {
    if ((sub_10000B13C(a1) & 1) == 0)
    {
      v60 = *(a1 + 224);
      if (*(v60 + 80))
      {
        v61 = *(v60 + 16);
        if (v61 >= 1)
        {
          v62 = v60 + 136;
          v63 = v62;
          v64 = v61;
          while (!*(*v63 + 32))
          {
            v63 += 8;
            if (!--v64)
            {
              goto LABEL_84;
            }
          }

          while (1)
          {
            v65 = *(*v62 + 32);
            if (v65)
            {
              break;
            }

            v62 += 8;
            if (!--v61)
            {
              v65 = 0;
              break;
            }
          }

          CFDictionarySetValue(*(a1 + 232), kSecTrustRevocationReason, v65);
        }
      }
    }

LABEL_84:
    if (*(a1 + 232))
    {
      v67 = *(a1 + 224);
      if (v67)
      {
        if (*(v67 + 66) != 1)
        {
          goto LABEL_90;
        }

        v68 = sub_10000B13C(a1);
        v69 = *(a1 + 232);
        if (v68)
        {
          CFDictionarySetValue(v69, kSecTrustInfoCertificateTransparencyKey, kCFBooleanTrue);
          v69 = *(a1 + 232);
        }

        if (v69)
        {
LABEL_90:
          v70 = *(a1 + 224);
          if (v70 && *(v70 + 67) == 1 && sub_10000B13C(a1))
          {
            v71 = SecFrameworkCopyLocalizedString();
            if (v71)
            {
              v72 = v71;
              CFDictionarySetValue(*(a1 + 232), kSecTrustInfoQCStatementsKey, v71);
              CFRelease(v72);
            }

            CFDictionarySetValue(*(a1 + 232), kSecTrustInfoQWACValidationKey, kCFBooleanTrue);
          }
        }
      }
    }
  }

LABEL_96:
  if (sub_10000B13C(a1))
  {
    if (!sub_100003140())
    {
      goto LABEL_118;
    }

    v73 = objc_autoreleasePoolPush();
    v74 = *(a1 + 224);
    if (*(v74 + 49))
    {
      v75 = *(v74 + 16);
      if (v75 >= 1 && (v76 = *(v74 + 8 * v75 + 128)) != 0)
      {
        v77 = *(v76 + 16);
      }

      else
      {
        v77 = 0;
      }

      v79 = sub_10000E860(a1, v77);
      if ((v79 & 4) != 0)
      {
        v80 = sub_100015F54(a1);
        if (sub_100055054(*(v80 + 8)) != 8)
        {
          v81 = +[TrustAnalytics logger];
          context = _NSConcreteStackBlock;
          v90 = 3221225472;
          v91 = sub_1000551FC;
          v92 = &unk_100085568;
          v93 = v77;
          v94 = *&a1;
          v95 = v80;
          [v81 trustd_logDetailedEventforEventNamed:@"HardcodedAnchorEvent" attributesCallback:&context];
        }
      }

      if ((v79 & 3) == 2)
      {
        if (!qword_100092C10 && qword_100092C38 != -1)
        {
          dispatch_once(&qword_100092C38, &stru_1000827E0);
        }

        sub_100005F7C(qword_100092C08);
        v96 = 0;
        v97 = &v96;
        v98 = 0x2020000000;
        v99 = 0;
        context = _NSConcreteStackBlock;
        v90 = 3221225472;
        v91 = sub_100018BE0;
        v92 = &unk_100083638;
        v93 = &v96;
        dispatch_sync(qword_100092C10, &context);
        v82 = *(v97 + 3);
        _Block_object_dispose(&v96, 8);
        v83 = SecCertificateCopySHA256Digest();
        v84 = [v82 containsObject:v83];
        if (v83 && (v84 & 1) == 0 && [v83 length] == 32)
        {
          ++qword_100092EE8;
          v85 = +[TrustAnalytics logger];
          context = _NSConcreteStackBlock;
          v90 = 3221225472;
          v91 = sub_10005547C;
          v92 = &unk_100085590;
          v93 = v83;
          v94 = *&a1;
          [v85 trustd_logDetailedEventforEventNamed:@"SystemRootUsageEvent" attributesCallback:&context];
        }
      }
    }
  }

  else
  {
    if (!sub_100003140())
    {
      goto LABEL_118;
    }

    v73 = objc_autoreleasePoolPush();
    v78 = +[TrustAnalytics logger];
    context = _NSConcreteStackBlock;
    v90 = 3221225472;
    v91 = sub_1000556B4;
    v92 = &unk_100085498;
    v93 = a1;
    [v78 trustd_logDetailedEventforEventNamed:@"TrustFailureEvent" attributesCallback:&context];
  }

  objc_autoreleasePoolPop(v73);
LABEL_118:
  if (sub_100003140())
  {
    v86 = objc_autoreleasePoolPush();
    ++qword_100092F00;
    v87 = +[TrustAnalytics logger];
    context = _NSConcreteStackBlock;
    v90 = 3221225472;
    v91 = sub_100056498;
    v92 = &unk_100085498;
    v93 = a1;
    [v87 trustd_logDetailedEventforEventNamed:@"TrustEvaluationEvent" attributesCallback:&context];

    objc_autoreleasePoolPop(v86);
  }

  *(a1 + 248) = 0;
  return 0;
}

uint64_t sub_10000AA08(uint64_t a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3, CFMutableDictionaryRef *a4, _BYTE *a5, _BYTE *a6)
{
  v9 = *(*a1 + 200);
  if (v9)
  {
    if (*(v9 + 16) >= 1)
    {
      v10 = *(v9 + 136);
      if (v10)
      {
        v11 = *(v10 + 16);
      }
    }
  }

  v12 = SecCertificateCopySignedCertificateTimestamps();
  v13 = *(*a1 + 104);
  if (v13)
  {
    CFRetain(*(*a1 + 104));
  }

  v14 = sub_10000B234(a1);
  v15 = *(*a1 + 200);
  v63 = a6;
  v64 = a5;
  v66 = v13;
  if (!v15 || v15[2] < 2 || ((v16 = v15[17]) == 0 ? (v17 = 0) : (v17 = *(v16 + 16)), (v18 = v15[18]) == 0))
  {
    Mutable = 0;
    goto LABEL_26;
  }

  Mutable = 0;
  if (v17 && *(v18 + 16))
  {
    v20 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
    v21 = SecCertificateCopyPrecertTBS();
    v22 = v21;
    if (v20)
    {
      v23 = v21 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      Mutable = 0;
      if (!v20)
      {
LABEL_22:
        if (v22)
        {
          CFRelease(v22);
        }

        goto LABEL_26;
      }
    }

    else if (CFDataGetLength(v21) < 1)
    {
      Mutable = 0;
    }

    else
    {
      Length = CFDataGetLength(v20);
      v25 = CFDataGetLength(v22);
      Mutable = CFDataCreateMutable(kCFAllocatorDefault, Length + v25 + 3);
      v26 = CFDataGetLength(v20);
      v27 = CFDataGetLength(v22);
      CFDataSetLength(Mutable, v26 + v27 + 3);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      v29 = v14;
      BytePtr = CFDataGetBytePtr(v20);
      v31 = CFDataGetLength(v20);
      memcpy(MutableBytePtr, BytePtr, v31);
      v32 = &MutableBytePtr[CFDataGetLength(v20)];
      v33 = CFDataGetLength(v22);
      *v32 = BYTE2(v33);
      v32[1] = BYTE1(v33);
      v32[2] = v33;
      v34 = CFDataGetBytePtr(v22);
      v35 = CFDataGetLength(v22);
      v36 = v32 + 3;
      v14 = v29;
      memcpy(v36, v34, v35);
    }

    CFRelease(v20);
    goto LABEL_22;
  }

LABEL_26:
  v37 = *(*a1 + 200);
  if (v37)
  {
    if (*(v37 + 16) >= 1)
    {
      v38 = *(v37 + 136);
      if (v38)
      {
        v39 = *(v38 + 16);
      }
    }
  }

  v40 = Mutable;
  if (SecCertificateGetLength() < 0)
  {
    v42 = 0;
  }

  else
  {
    v41 = SecCertificateGetLength();
    v42 = CFDataCreateMutable(kCFAllocatorDefault, v41 + 3);
    v43 = SecCertificateGetLength();
    CFDataSetLength(v42, v43 + 3);
    v44 = v12;
    v45 = v14;
    v46 = CFDataGetMutableBytePtr(v42);
    v47 = SecCertificateGetLength();
    *v46 = BYTE2(v47);
    v46[1] = BYTE1(v47);
    v46[2] = v47;
    v48 = SecCertificateGetBytePtr();
    v49 = SecCertificateGetLength();
    v50 = v46 + 3;
    v14 = v45;
    v12 = v44;
    memcpy(v50, v48, v49);
  }

  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x2020000000;
  SecCertificateNotValidAfter();
  v79[3] = v51;
  v52 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v53 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v54 = *(*a1 + 120);
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  if (v53)
  {
    if (!v52 || (!v12 || CFArrayGetCount(v12) <= 0) && (!v66 || CFArrayGetCount(v66) <= 0) && (!v14 || CFArrayGetCount(v14) < 1))
    {
      goto LABEL_54;
    }

    if (a2 && CFDictionaryGetCount(a2) >= 1)
    {
      v55 = (v54 + kCFAbsoluteTimeIntervalSince1970);
      v56 = 1000 * v55;
      if (v12 && v40)
      {
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_1000106E0;
        v70[3] = &unk_100083558;
        v70[6] = v40;
        v70[7] = 1000 * v55;
        v70[8] = a2;
        v70[9] = v53;
        v70[10] = v52;
        v70[4] = v79;
        v70[5] = &v71;
        v57 = v70;
        v80.length = CFArrayGetCount(v12);
        v80.location = 0;
        CFArrayApplyFunction(v12, v80, sub_10003A9CC, v57);
      }

      if (v66 && v42)
      {
        v69[0] = _NSConcreteStackBlock;
        v69[1] = 3221225472;
        v69[2] = sub_10003AA88;
        v69[3] = &unk_100083580;
        v69[6] = v42;
        v69[7] = v56;
        v69[8] = a2;
        v69[9] = v52;
        v69[4] = v79;
        v69[5] = &v75;
        v58 = v69;
        v81.length = CFArrayGetCount(v66);
        v81.location = 0;
        CFArrayApplyFunction(v66, v81, sub_10003A9CC, v58);
      }

      if (v14 && v42)
      {
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = sub_10003AB00;
        v68[3] = &unk_100083580;
        v68[6] = v42;
        v68[7] = v56;
        v68[8] = a2;
        v68[9] = v52;
        v68[4] = v79;
        v68[5] = &v75;
        v59 = v68;
        v82.length = CFArrayGetCount(v14);
        v82.location = 0;
        CFArrayApplyFunction(v14, v82, sub_10003A9CC, v59);
      }
    }

    if (CFDictionaryGetCount(v52) >= 1)
    {
      CFRetain(v52);
      *a3 = v52;
      CFRetain(v53);
      *a4 = v53;
      *v63 = *(v72 + 24);
      *v64 = *(v76 + 24);
      v60 = 1;
    }

    else
    {
LABEL_54:
      v60 = 0;
    }

    CFRelease(v53);
    if (v52)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v60 = 0;
    if (v52)
    {
LABEL_56:
      CFRelease(v52);
    }
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(v79, 8);
  return v60;
}

void sub_10000B0DC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B13C(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100016B4C;
  v3[3] = &unk_100085B18;
  v3[4] = &v4;
  sub_1000029CC(a1, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL DEROidCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    return v4 == *(a2 + 8) && memcmp(*a1, *a2, v4) == 0;
  }

  return result;
}

CFMutableArrayRef sub_10000B234(uint64_t a1)
{
  v1 = *(*a1 + 96);
  if (!v1)
  {
    return 0;
  }

  CFRetain(*(*a1 + 96));
  v3 = *(*a1 + 200);
  if (!v3 || v3[2] < 2 || ((v4 = v3[17]) == 0 ? (v5 = 0) : (v5 = *(v4 + 16)), (v6 = v3[18]) == 0 || !v5 || (v7 = *(v6 + 16)) == 0))
  {
    CFRelease(v1);
    return 0;
  }

  v8 = sub_100012B7C(v5, v7);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v10 = Mutable;
  if (Mutable)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000197C8;
    v12[3] = &unk_1000835A0;
    v12[4] = v8;
    v12[5] = Mutable;
    v13.length = CFArrayGetCount(v1);
    v13.location = 0;
    CFArrayApplyFunction(v1, v13, sub_10003A9CC, v12);
    if (!CFArrayGetCount(v10))
    {
      CFRelease(v10);
      v10 = 0;
    }
  }

  CFRelease(v1);
  if (v8)
  {
    sub_10001CA20(v8);
  }

  return v10;
}

void sub_10000B398(uint64_t a1, int a2)
{
  __chkstk_darwin();
  v6 = (&v16 - v5);
  if ((v7 & 1) == 0)
  {
    memset(&v16 - v5, 170, 8 * v4);
  }

  v8 = 0;
  LOBYTE(v9) = 0;
  *v6 = a1;
  do
  {
    while (1)
    {
      while (1)
      {
        v10 = v6[v8];
        v11 = *v10;
        v12 = (*v10)[4];
        if ((v9 & 1) != 0 || v8 >= a2)
        {
          break;
        }

        if (v12)
        {
          LOBYTE(v9) = 0;
          v6[++v8] = *v10 + 4;
          if (v8 < 0)
          {
            return;
          }
        }

        else
        {
LABEL_13:
          v15 = *(v11 + 40);
          *(v11 + 40) = 0;
          sub_100009D40(*v10);
          *v10 = v15;
          v9 = v15 == 0;
          v8 -= v9;
          if (v8 < 0)
          {
            return;
          }
        }
      }

      if (!v12)
      {
        goto LABEL_13;
      }

      v14 = *(v11 + 40);
      v13 = v11 + 40;
      if (!v14)
      {
        break;
      }

      LOBYTE(v9) = 0;
      v6[v8] = v13;
      if (v8 < 0)
      {
        return;
      }
    }

    --v8;
    LOBYTE(v9) = 1;
  }

  while ((v8 & 0x80000000) == 0);
}

void sub_10000B4D4(uint64_t a1, const __CFArray *a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 144), *(a1 + 168));
  v5 = ValueAtIndex;
  if (ValueAtIndex)
  {
    v6 = ValueAtIndex[2] - 1;
    if (!a2)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v6 = -1;
    if (!a2)
    {
      goto LABEL_31;
    }
  }

  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v8 = Count;
    for (i = 0; i != v8; ++i)
    {
      v10 = CFArrayGetValueAtIndex(a2, i);
      v11 = sub_1000132A0(v5, v10);
      if (v11 == -1)
      {
        v24 = 0;
        v18 = sub_100007610(a1, v10, &v24);
        if (v24 && (v19 = *(v24 + 8)) != 0)
        {
          v20 = v19();
          v21 = sub_100002B2C(v5, v10, v20);
          if (v20)
          {
            CFRelease(v20);
          }
        }

        else
        {
          v21 = sub_100002B2C(v5, v10, 0);
        }

        if (v21)
        {
          if (!CFSetContainsValue(*(a1 + 136), v21))
          {
            CFSetAddValue(*(a1 + 136), v21);
            if (v18)
            {
              sub_100013360(v21);
            }

            if (sub_1000128D8(a1, v21))
            {
              v22 = *(a1 + 144);
              v23 = *(a1 + 168) + 1;
              *(a1 + 168) = v23;
              CFArrayInsertValueAtIndex(v22, v23, v21);
            }
          }

          CFRelease(v21);
        }
      }

      else if (v11 == v6 && (*(v5 + 40) & 0x8000000000000000) != 0)
      {
        v12 = *(v5 + 16);
        v13 = v12 < 1;
        v14 = v12 - 1;
        *(v5 + 40) = v14;
        if (!v13 && (*(v5 + 48) & 1) == 0)
        {
          v15 = *(v5 + 136 + 8 * v14);
          v25 = 0;
          v16 = *(v15 + 16);
          if (SecCertificateIsSelfSigned())
          {
            v17 = 1;
          }

          else
          {
            v17 = v25 == 0;
          }

          if (v17)
          {
            *(v5 + 40) = -1;
          }

          else
          {
            *(v5 + 48) = 1;
          }
        }
      }
    }
  }

LABEL_31:
  *(a1 + 248) = sub_1000066A8;
  sub_100004890(a1);
}

uint64_t sub_10000B6E0(void *a1, const void *a2, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 0;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
    if (ValueAtIndex)
    {
      v10 = ValueAtIndex;
      v11 = CFGetTypeID(ValueAtIndex);
      if (v11 == CFDictionaryGetTypeID())
      {
        v12 = sub_10000EB24(v10);
        if (sub_10000EB98(a1, a2, v10))
        {
          break;
        }
      }
    }

    if (v7 == ++v8)
    {
      return 0;
    }
  }

  return v12;
}

BOOL sub_10000B794(void *a1, uint64_t a2, const void *a3)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = v6(a2, a3);
  }

  else
  {
    v7 = 0;
  }

  IsSelfSigned = SecCertificateIsSelfSigned();
  v9 = IsSelfSigned == 0;
  if (IsSelfSigned)
  {
    goto LABEL_9;
  }

  if (!*(a2 + 8))
  {
    v10 = sub_1000027AC("trust");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 8))
      {
        v15 = "";
      }

      else
      {
        v15 = " source";
      }

      *buf = 136315138;
      v17 = v15;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "unrestricted anchor%s", buf, 0xCu);
      if (v7)
      {
        goto LABEL_15;
      }

      return v9;
    }

LABEL_9:
    if (!v7)
    {
      return v9;
    }

    goto LABEL_15;
  }

  if (v7)
  {
    CFArrayGetCount(v7);
    v11 = sub_10000B6E0(a1, a3, v7);
    if (v11 == 2)
    {
      v12 = sub_1000027AC("trust");
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v14 = "complex trust settings anchor";
    }

    else
    {
      if (v11 != 3)
      {
        v9 = 0;
        goto LABEL_15;
      }

      v12 = sub_1000027AC("trust");
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
LABEL_14:
        v9 = 1;
LABEL_15:
        CFRelease(v7);
        return v9;
      }

      *buf = 0;
      v14 = "complex trust settings denied anchor";
    }

    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, v14, buf, 2u);
    goto LABEL_14;
  }

  return 0;
}

BOOL sub_10000B9A8(uint64_t a1, const void *a2)
{
  v2 = *(*a1 + 200);
  if (v2 && (v18 = *(v2 + 16), v18 >= 1))
  {
    v5 = 0;
    v6 = 1;
    while (1)
    {
      v7 = *(*(*(*a1 + 200) + 8 * v5 + 136) + 24);
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        break;
      }

LABEL_12:
      v6 = ++v5 < v18;
      if (v5 == v18)
      {
        return v6;
      }
    }

    v9 = Count;
    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
      if (ValueAtIndex)
      {
        v12 = ValueAtIndex;
        v13 = CFGetTypeID(ValueAtIndex);
        if (v13 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v12, @"kSecTrustSettingsPolicyOptions");
          if (Value)
          {
            v15 = Value;
            v16 = CFGetTypeID(Value);
            if (v16 == CFDictionaryGetTypeID())
            {
              if (CFDictionaryContainsKey(v15, a2))
              {
                break;
              }
            }
          }
        }
      }

      if (v9 == ++v10)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

void sub_10000BAD8(void *a1)
{
  v1 = a1;
  v2 = *(*a1 + 200);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  if (*(v2 + 49))
  {
    v4 = *(*(v2 + 136 + 8 * (v3 - 1)) + 24);
    if (CFArrayGetCount(v4))
    {
      if (v2)
      {
        v5 = v3 < 1;
      }

      else
      {
        v5 = 1;
      }

      if (v5 || *(v2 + 16) < v3 || (v6 = *(v2 + 136 + 8 * (v3 - 1))) == 0)
      {
        v7 = 0;
      }

      else
      {
        v7 = *(v6 + 16);
      }

      v8 = sub_10000B6E0(v1, v7, v4) - 1 < 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v2 + 16);
  if (v9 >= 1 && (v10 = *(v2 + 8 * v9 + 128)) != 0)
  {
    v11 = *(v10 + 16);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*v1 + 120);
  if (!v8)
  {
    buf[0] = 0;
    if (v3 >= 1 && v9 >= v3 && v2 != 0)
    {
      v17 = *(v2 + 8 * (v3 - 1) + 136);
      if (v17)
      {
        v18 = *(v17 + 16);
      }
    }

    SecCertificateIsSelfSigned();
    if (!sub_100012178(v1, kSecPolicyCheckMissingIntermediate, v3 - 1, kCFBooleanFalse, 1, 0))
    {
      return;
    }

    SecCertificateGetPermittedSubtrees();
    goto LABEL_35;
  }

  --v3;
  v13 = *(*v1 + 120);
  if ((sub_100006E14(v1, v11, 1) & 1) == 0 && (sub_100012178(v1, kSecPolicyCheckTemporalValidity, v3, kCFBooleanFalse, 0, 0) & 1) == 0)
  {
    return;
  }

  PermittedSubtrees = SecCertificateGetPermittedSubtrees();
  if (!PermittedSubtrees)
  {
LABEL_35:
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    goto LABEL_36;
  }

  Mutable = CFArrayCreateMutableCopy(0, 0, PermittedSubtrees);
LABEL_36:
  v19 = Mutable;
  ExcludedSubtrees = SecCertificateGetExcludedSubtrees();
  if (ExcludedSubtrees)
  {
    v21 = v8;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, ExcludedSubtrees);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  }

  v23 = MutableCopy;
  if (!v19)
  {
    sub_100012178(v1, kSecPolicyCheckNameConstraints, 0, kCFBooleanFalse, 1, 0);
    if (v23)
    {
      goto LABEL_231;
    }

    return;
  }

  if (!MutableCopy)
  {
    v104 = &kSecPolicyCheckNameConstraints;
LABEL_229:
    sub_100012178(v1, *v104, 0, kCFBooleanFalse, 1, 0);
    goto LABEL_230;
  }

  theArray = v19;
  if (*(v2 + 64) == 2)
  {
    goto LABEL_135;
  }

  if (*(v2 + 64))
  {
    goto LABEL_134;
  }

  v25 = (v2 + 56);
  v24 = *(v2 + 56);
  *(v2 + 64) = 1;
  if (v24)
  {
    sub_100018B84((v2 + 56));
  }

  v26 = malloc_type_malloc(0x38uLL, 0x107004060FBFCD3uLL);
  v26[2] = 0u;
  *(v26 + 6) = 0;
  *v26 = oidAnyPolicy;
  v26[1] = 0u;
  v27 = malloc_type_malloc(0x18uLL, 0x1030040D5FA72FAuLL);
  v27[1].data = 0;
  *v27 = oidAnyPolicy;
  *(v26 + 3) = v27;
  *(v2 + 56) = v26;
  v28 = *(v2 + 16);
  if (v28 >> 31)
  {
    goto LABEL_134;
  }

  v29 = v28 - v8 + 1;
  v119 = (v28 - v8);
  if (v28 - v8 < 1)
  {
    goto LABEL_119;
  }

  v30 = 1;
  cf1 = v28 - v8 + 1;
  v108 = cf1;
  v105 = v8;
  while (1)
  {
    v31 = v119 - v30;
    if ((v119 - v30) >= 0 && *(v2 + 16) > v31)
    {
      v32 = *(v2 + 136 + 8 * v31);
      if (v32)
      {
        v120 = *(v32 + 16);
      }
    }

    v106 = v119 - v30;
    v112 = sub_100016450(v2, v31);
    v110 = v29;
    v117 = v30;
    if (*(v2 + 56))
    {
      CertificatePolicies = SecCertificateGetCertificatePolicies();
      if (CertificatePolicies)
      {
        v34 = CertificatePolicies;
        v35 = *(CertificatePolicies + 8);
        if (v35)
        {
          v36 = 0;
          v37 = v30 - 1;
          v38 = *(CertificatePolicies + 8);
          do
          {
            v39 = (*(v34 + 16) + v36);
            *&v122 = 0xAAAAAAAAAAAAAAAALL;
            *(&v122 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v122 = *v39;
            *buf = v122;
            v124 = v39 + 1;
            if (!DEROidCompare(&v122, &oidAnyPolicy) && (sub_10000FAF4(*v25, v37, sub_10000FBEC) & 1) == 0)
            {
              sub_10000FAF4(*v25, v37, sub_10000FCEC);
            }

            v36 += 32;
            --v38;
          }

          while (v38);
          if (cf1 || v119 > v117 && v112)
          {
            v40 = 0;
            do
            {
              v41 = *(v34 + 16);
              memset(buf, 170, sizeof(buf));
              *buf = *(v41 + v40);
              if (DEROidCompare(buf, &oidAnyPolicy))
              {
                sub_10000FAF4(*v25, v37, sub_10001D964);
              }

              v40 += 32;
              --v35;
            }

            while (v35);
          }

          sub_10000B398(v2 + 56, v37);
          v19 = theArray;
          v30 = v117;
          v8 = v105;
        }

        else
        {
          sub_10000B398(v2 + 56, v30 - 1);
        }

        v29 = v110;
LABEL_75:
        if (*v25)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      }

      sub_10000B398(v2 + 56, v30 - 1);
      if (*v25)
      {
        sub_100018B84((v2 + 56));
        goto LABEL_75;
      }
    }

LABEL_76:
    if (!v29)
    {
      v54 = sub_1000027AC("policy");
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_134;
      }

      *buf = 67109120;
      *&buf[4] = v106;
      v55 = "policy tree failure on cert %u";
LABEL_117:
      v56 = v54;
      v57 = 8;
      goto LABEL_133;
    }

LABEL_77:
    if (v119 == v30)
    {
      v28 = *(v2 + 16);
LABEL_119:
      if (v28 >= 1)
      {
        v58 = *(v2 + 136);
        if (v58)
        {
          v59 = *(v58 + 16);
        }
      }

      if (v29)
      {
        v60 = v29 - 1;
      }

      else
      {
        v60 = 0;
      }

      PolicyConstraints = SecCertificateGetPolicyConstraints();
      if (PolicyConstraints && *(PolicyConstraints + 2) == 1 && !*(PolicyConstraints + 4))
      {
        v60 = 0;
      }

      if (*v25 || v60)
      {
        *(v2 + 64) = 2;
        goto LABEL_135;
      }

      v62 = sub_1000027AC("policy");
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_134;
      }

      *buf = 0;
      v55 = "policy tree failure on leaf";
      v56 = v62;
      v57 = 2;
LABEL_133:
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, v55, buf, v57);
      goto LABEL_134;
    }

    PolicyMappings = SecCertificateGetPolicyMappings();
    if (!PolicyMappings)
    {
      goto LABEL_91;
    }

    v43 = PolicyMappings;
    if (*PolicyMappings != 1)
    {
      goto LABEL_91;
    }

    v44 = *(PolicyMappings + 8);
    if (v44)
    {
      break;
    }

LABEL_85:
    v47 = *v25;
    if (v108)
    {
      v8 = v105;
      v29 = v110;
      if (v47 && (sub_10000FAF4(v47, v117, sub_1000395B4) & 1) == 0)
      {
        sub_10000FAF4(*v25, v117, sub_1000391B4);
      }
    }

    else
    {
      v8 = v105;
      v29 = v110;
      if (v47)
      {
        sub_10000FAF4(v47, v117, sub_100039114);
        sub_10000B398(v2 + 56, v117 - 1);
      }
    }

LABEL_91:
    if (!v112)
    {
      if (v29)
      {
        --v29;
      }

      else
      {
        v29 = 0;
      }

      v48 = v108 - 1;
      if (!v108)
      {
        v48 = 0;
      }

      v108 = v48;
      v49 = cf1 - 1;
      if (!cf1)
      {
        v49 = 0;
      }

      cf1 = v49;
    }

    v50 = SecCertificateGetPolicyConstraints();
    if (v50)
    {
      if (*(v50 + 2) == 1 && *(v50 + 4) < v29)
      {
        v29 = *(v50 + 4);
      }

      if (*(v50 + 8) == 1)
      {
        v51 = v108;
        if (*(v50 + 12) < v108)
        {
          v51 = *(v50 + 12);
        }

        v108 = v51;
      }
    }

    InhibitAnyPolicySkipCerts = SecCertificateGetInhibitAnyPolicySkipCerts();
    if (InhibitAnyPolicySkipCerts)
    {
      v53 = cf1;
      if (*(InhibitAnyPolicySkipCerts + 4) < cf1)
      {
        v53 = *(InhibitAnyPolicySkipCerts + 4);
      }

      cf1 = v53;
    }

    v30 = v117 + 1;
  }

  v45 = 16;
  while (1)
  {
    v46 = *(v43 + 16) + v45;
    if (DEROidCompare(v46 - 16, &oidAnyPolicy) || DEROidCompare(v46, &oidAnyPolicy))
    {
      break;
    }

    v45 += 32;
    if (!--v44)
    {
      goto LABEL_85;
    }
  }

  v54 = sub_1000027AC("policy");
  v8 = v105;
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v106;
    v55 = "policy mapping anyPolicy failure %u";
    goto LABEL_117;
  }

LABEL_134:
  if (sub_100012178(v1, kSecPolicyCheckPolicyConstraints, 0, kCFBooleanFalse, 1, 0))
  {
LABEL_135:
    BasicConstraints = SecCertificateGetBasicConstraints();
    if (BasicConstraints)
    {
      v64 = v8;
    }

    else
    {
      v64 = 0;
    }

    if (v64 && *(BasicConstraints + 3) == 1)
    {
      if (*(BasicConstraints + 4) >= v3)
      {
        v65 = v3;
      }

      else
      {
        v65 = *(BasicConstraints + 4);
      }
    }

    else
    {
      v65 = v3;
    }

    if (v3 >= 1)
    {
      v66 = kSecPolicyCheckTemporalValidity;
      v67 = kCFBooleanFalse;
      cf1a = kSecPolicyCheckWeakKeySize;
      v113 = kSecPolicyCheckWeakSignature;
      v118 = kSecPolicyCheckNameConstraints;
      v68 = v3 + 16;
      v107 = kSecPolicyCheckBasicConstraintsPathLen;
      v111 = kSecPolicyCheckCriticalExtensions;
      v69 = v65;
      while (1)
      {
        v70 = 0;
        v71 = v68 - 17;
        v72 = *(*v1 + 200);
        if (v72 && (v71 & 0x8000000000000000) == 0)
        {
          if (*(v72 + 16) > v71 && (v73 = *(v72 + 8 * v68)) != 0)
          {
            v70 = *(v73 + 16);
          }

          else
          {
            v70 = 0;
          }
        }

        v121 = sub_100016450(v72, v68 - 17);
        if ((sub_100006E14(v1, v70, 0) & 1) == 0 && !sub_100012178(v1, v66, v68 - 17, v67, 0, 0) || SecCertificateIsWeakKey() && !sub_100012178(v1, cf1a, v68 - 17, v67, 0, 0) || (SecPolicyCheckCertWeakSignature() & 1) == 0 && !sub_100012178(v1, v113, v68 - 17, v67, 0, 0))
        {
          goto LABEL_230;
        }

        v74 = v121;
        if (v68 == 17)
        {
          v74 = 0;
        }

        if (!v74)
        {
          LOBYTE(v122) = 0;
          Count = CFArrayGetCount(v23);
          if (Count)
          {
            if (Count < 1024)
            {
              if (sub_10002B004(v70, v23, &v122, 0) || v122 == 1)
              {
                v77 = sub_1000027AC("policy");
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "name in excluded subtrees", buf, 2u);
                }

                if (!sub_100012178(v1, v118, v68 - 17, v67, 1, 0))
                {
                  goto LABEL_230;
                }
              }
            }

            else
            {
              v76 = sub_1000027AC("policy");
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "excluded subtrees too large", buf, 2u);
              }

              if ((sub_100012178(v1, v118, v68 - 17, v67, 1, 0) & 1) == 0)
              {
                goto LABEL_230;
              }
            }
          }

          v78 = CFArrayGetCount(v19);
          if (v78)
          {
            break;
          }
        }

LABEL_182:
        if (v68 == 17)
        {
          goto LABEL_227;
        }

        v83 = SecCertificateGetPermittedSubtrees();
        if (v83)
        {
          v84 = v83;
          LOBYTE(v122) = 0;
          v85 = SecCertificateCopyExtensionValue();
          if (v85)
          {
            CFRelease(v85);
          }

          v86 = CFArrayGetCount(v19);
          v87 = CFArrayGetCount(v84);
          if (v87 <= 1023 && v87 + v86 < 1024)
          {
            v67 = kCFBooleanFalse;
            if ((sub_10002BEA0(v84) & 1) == 0 && v122 == 1 && !sub_100012178(v1, v118, v68 - 17, kCFBooleanFalse, 1, 0))
            {
              goto LABEL_230;
            }

            v109 = v69;
            v88 = v66;
            v89 = v1;
            v90 = v23;
            v91 = CFArrayGetCount(v84);
            if (!CFArrayGetCount(v19))
            {
              v126.location = 0;
              v126.length = v91;
              CFArrayAppendArray(v19, v84, v126);
              v23 = v90;
              v1 = v89;
              v66 = v88;
              v69 = v109;
              goto LABEL_203;
            }

            v92 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
            *buf = v19;
            *&buf[8] = v92;
            v125.location = 0;
            v125.length = v91;
            CFArrayApplyFunction(v84, v125, sub_10002BB84, buf);
            v93 = CFArrayGetCount(v92);
            if (v92)
            {
              v94.length = v93;
              if (v93)
              {
                v19 = theArray;
                v94.location = 0;
                CFArrayAppendArray(theArray, v92, v94);
                v23 = v90;
                goto LABEL_201;
              }
            }

            v19 = theArray;
            v23 = v90;
            if (v92)
            {
LABEL_201:
              CFRelease(v92);
            }

            v1 = v89;
            v66 = v88;
            v69 = v109;
            v67 = kCFBooleanFalse;
            goto LABEL_203;
          }

          v95 = sub_1000027AC("policy");
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "permitted subtrees too large", buf, 2u);
          }

          v67 = kCFBooleanFalse;
          if ((sub_100012178(v1, v118, v68 - 17, kCFBooleanFalse, 1, 0) & 1) == 0)
          {
            goto LABEL_230;
          }
        }

LABEL_203:
        v96 = SecCertificateGetExcludedSubtrees();
        if (v96)
        {
          v97 = v96;
          LOBYTE(v122) = 0;
          v98 = SecCertificateCopyExtensionValue();
          if (v98)
          {
            CFRelease(v98);
          }

          v99 = CFArrayGetCount(v23);
          v100 = CFArrayGetCount(v97);
          if (v100 > 1023 || (v101 = v100, v100 + v99 >= 1024))
          {
            v102 = sub_1000027AC("policy");
            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "excluded subtrees too large", buf, 2u);
            }

            v19 = theArray;
            if ((sub_100012178(v1, v118, v68 - 17, kCFBooleanFalse, 1, 0) & 1) == 0)
            {
              goto LABEL_230;
            }
          }

          else
          {
            v19 = theArray;
            if ((sub_10002BEA0(v97) & 1) == 0 && v122 == 1 && !sub_100012178(v1, v118, v68 - 17, kCFBooleanFalse, 1, 0))
            {
              goto LABEL_230;
            }

            v127.location = 0;
            v127.length = v101;
            CFArrayAppendArray(v23, v97, v127);
          }

          v67 = kCFBooleanFalse;
        }

        if (!v121)
        {
          if (v69)
          {
            --v69;
          }

          else if (!sub_100012178(v1, v107, v68 - 17, v67, 1, 0))
          {
            goto LABEL_230;
          }
        }

        v103 = SecCertificateGetBasicConstraints();
        if (v103 && *(v103 + 3) == 1 && *(v103 + 4) < v69)
        {
          v69 = *(v103 + 4);
        }

        if (SecCertificateHasUnknownCriticalExtension() && !sub_100012178(v1, v111, v68 - 17, v67, 1, 0))
        {
          goto LABEL_230;
        }

        --v68;
      }

      if (v78 < 1024)
      {
        if (!sub_10002B004(v70, v19, &v122, 1) && (v122 & 1) != 0)
        {
          goto LABEL_182;
        }

        v82 = sub_1000027AC("policy");
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v80 = v82;
          v81 = "name not in permitted subtrees";
LABEL_180:
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, v81, buf, 2u);
        }
      }

      else
      {
        v79 = sub_1000027AC("policy");
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v80 = v79;
          v81 = "permitted subtrees too large";
          goto LABEL_180;
        }
      }

      if ((sub_100012178(v1, v118, v68 - 17, v67, 1, 0) & 1) == 0)
      {
        goto LABEL_230;
      }

      goto LABEL_182;
    }

LABEL_227:
    if (SecCertificateHasUnknownCriticalExtension())
    {
      v104 = &kSecPolicyCheckCriticalExtensions;
      goto LABEL_229;
    }
  }

LABEL_230:
  CFRelease(v19);
  if (v23)
  {
LABEL_231:
    CFRelease(v23);
  }
}

__CFArray *sub_10000CB3C(const __CFArray *a1)
{
  v2 = sub_100002A58();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = v2[12];
  if (!v4)
  {
    CFRelease(v2);
    return 0;
  }

  Count = CFArrayGetCount(a1);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      valuePtr = 0;
      if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr))
      {
        v9 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, (v4 + valuePtr + 8), *(v4 + valuePtr + 4), kCFAllocatorNull);
        if (v9)
        {
          v10 = v9;
          CFArrayAppendValue(Mutable, v9);
          CFRelease(v10);
        }
      }
    }
  }

  CFRelease(v3);
  return Mutable;
}

void sub_10000CC60(uint64_t a1)
{
  v2 = *(*a1 + 200);
  *(a1 + 24) = 0;
  sub_100016360(a1, kSecPolicyCheckIdLinkage);
  v3 = *(a1 + 64);
  v4 = v3 > 7;
  v5 = (1 << v3) & 0xE8;
  v6 = v4 || v5 == 0;
  if (v6 || *(a1 + 56))
  {
    sub_10000BAD8(a1);
  }

  Count = CFArrayGetCount(*(a1 + 8));
  v8 = *(a1 + 24);
  if (v8 >= Count)
  {
LABEL_15:
    v205 = v2;
    *(a1 + 24) = 0;
    v14 = *(*a1 + 200);
    if (v14)
    {
      v15 = *(v14 + 16);
      if (v15 >= 1)
      {
        v16 = 0;
        v17 = kSecPolicyCheckUsageConstraints;
        do
        {
          v18 = *(*a1 + 200);
          v19 = *(v18 + 8 * v16 + 136);
          if (*(v18 + 16) <= v16 || v19 == 0)
          {
            v21 = 0;
          }

          else
          {
            v21 = *(v19 + 16);
          }

          v22 = sub_10000B6E0(a1, v21, *(v19 + 24));
          if (v22 == 3)
          {
            sub_100012178(a1, v17, v16, kCFBooleanFalse, 1, 0);
          }

          else if (v22 <= 2)
          {
            v23 = *(a1 + 64);
            v4 = v23 > 7;
            v24 = (1 << v23) & 0xE8;
            if (v4 || v24 == 0)
            {
              v26 = *a1;
              v211.length = CFArrayGetCount(*(*a1 + 72));
              v211.location = 0;
              if (CFArrayContainsValue(*(v26 + 72), v211, off_1000927F0))
              {
                if (off_100092800())
                {
                  *(a1 + 64) = 1;
                }
              }
            }
          }

          ++v16;
        }

        while (v15 != v16);
      }
    }

    if (qword_100092E50 != -1)
    {
      dispatch_once(&qword_100092E50, &stru_100084090);
    }

    v27 = *(*a1 + 200);
    if (v27)
    {
      v28 = *(v27 + 16);
      if (v28 >= 1)
      {
        v29 = kSecPolicyCheckBlackListedKey;
        v30 = v28 + 15;
        do
        {
          v31 = *(*a1 + 200);
          if (v31)
          {
            if (*(v31 + 16) >= v28)
            {
              v32 = *(v31 + 8 * (v28 - 1) + 136);
              if (v32)
              {
                v33 = *(v32 + 16);
              }
            }
          }

          v34 = SecCertificateCopySHA256Digest();
          if (v34)
          {
            v35 = v34;
            v36 = CFSetContainsValue(qword_100092E48, v34);
            v37 = 0;
            if (v28 >= 2 && v36)
            {
              v38 = v30;
              while (1)
              {
                v39 = v38 - 17;
                v40 = *(*a1 + 200);
                if (v40)
                {
                  if ((v39 & 0x8000000000000000) == 0 && *(v40 + 16) > v39)
                  {
                    v41 = *(v40 + 8 * v38);
                    if (v41)
                    {
                      if (*(v41 + 16))
                      {
                        SecCertificateNotValidBefore();
                        if (v42 >= 502243200.0)
                        {
                          break;
                        }
                      }
                    }
                  }
                }

                --v38;
                if (v39 <= 0)
                {
                  v37 = 0;
                  goto LABEL_57;
                }
              }

              v37 = 1;
              sub_100012178(a1, v29, v28 - 1, kCFBooleanFalse, 1, 0);
            }

LABEL_57:
            CFRelease(v35);
          }

          else
          {
            v37 = 0;
          }

          if (v28 < 2)
          {
            break;
          }

          --v30;
          --v28;
        }

        while (!v37);
      }
    }

    v43 = v205;
    if (!v205)
    {
      LOBYTE(v71) = 0;
      goto LABEL_265;
    }

    v44 = *(v205 + 16);
    if (v44 >= 2)
    {
      v45 = kSecPolicyCheckGrayListedKey;
      v46 = kSecPolicyCheckBlackListedKey;
      v47 = 1 - v44;
      v48 = 18;
      do
      {
        v49 = v48 - 17;
        v50 = sub_100002A58();
        if (v50)
        {
          v51 = v50;
          v52 = *(v50 + 24);
          if (v52)
          {
            CFRetain(*(v50 + 24));
            CFRelease(v51);
            v53 = *(*a1 + 200);
            if (!v53)
            {
              goto LABEL_75;
            }

            if (*(v53 + 16) > v49)
            {
              v54 = *(v53 + 8 * v48);
              if (v54)
              {
                v55 = *(v54 + 16);
              }
            }

            if (v49 != *(v53 + 16) - 1 || (*(v53 + 49) & 1) == 0)
            {
LABEL_75:
              v56 = SecCertificateCopyPublicKeySHA1Digest();
              if (v56)
              {
                v57 = v56;
                if (CFSetContainsValue(v52, v56))
                {
                  v58 = *(*a1 + 200);
                  if (!v58 || (*(v58 + 68) & 1) == 0)
                  {
                    sub_100012178(a1, v45, v48 - 17, kCFBooleanFalse, 1, 0);
                  }
                }

                CFRelease(v57);
              }
            }
          }

          else
          {
            v52 = v50;
          }

          CFRelease(v52);
        }

        v59 = sub_100002A58();
        if (v59)
        {
          v60 = v59;
          v61 = *(v59 + 16);
          if (v61)
          {
            CFRetain(*(v59 + 16));
            CFRelease(v60);
            v62 = *(*a1 + 200);
            if (!v62)
            {
              goto LABEL_91;
            }

            if (*(v62 + 16) > v49)
            {
              v63 = *(v62 + 8 * v48);
              if (v63)
              {
                v64 = *(v63 + 16);
              }
            }

            if (v49 != *(v62 + 16) - 1 || (*(v62 + 49) & 1) == 0)
            {
LABEL_91:
              v65 = SecCertificateCopyPublicKeySHA1Digest();
              if (v65)
              {
                v66 = v65;
                if (CFSetContainsValue(v61, v65))
                {
                  v67 = *(*a1 + 200);
                  if (!v67 || (*(v67 + 68) & 1) == 0)
                  {
                    sub_100012178(a1, v46, v48 - 17, kCFBooleanFalse, 1, 0);
                  }
                }

                CFRelease(v66);
              }
            }
          }

          else
          {
            v61 = v59;
          }

          CFRelease(v61);
        }

        ++v48;
      }

      while (v47 + v48 != 18);
    }

    v43 = v205;
    if ((*(v205 + 104) & 1) == 0)
    {
      v68 = *(v205 + 136);
      if (*(v68 + 40) != 1)
      {
        LOBYTE(v71) = 0;
        goto LABEL_257;
      }

      v69 = *(a1 + 64);
      v70 = *(a1 + 56);
      if (v70)
      {
        v203 = sub_100047AE8(v70);
      }

      else
      {
        v203 = 0;
      }

      v72 = *(*a1 + 200);
      if (!v72)
      {
        goto LABEL_254;
      }

      v73 = *(v72 + 16);
      v206 = 0;
      if (!v73)
      {
        goto LABEL_254;
      }

      cf1 = kSecPolicyCheckExtendedValidation;
      if (v73 >= 1)
      {
        v74 = *(v72 + 136);
        if (v74)
        {
          v75 = *(v74 + 16);
        }
      }

      SecCertificateNotValidBefore();
      if (v73 > 2 || v76 <= 489024000.0)
      {
        if (v73 < 1)
        {
          goto LABEL_254;
        }
      }

      else
      {
        v77 = sub_100012178(a1, cf1, 0, kCFBooleanFalse, 1, 0);
        if (v73 < 1 || (v77 & 1) != 0)
        {
          goto LABEL_254;
        }
      }

      v78 = 0;
      v79 = 0;
      while (1)
      {
        v80 = *(*a1 + 200);
        if (v80)
        {
          if (*(v80 + 16) > v79)
          {
            v81 = *(v80 + 8 * v79 + 136);
            if (v81)
            {
              v82 = *(v81 + 16);
            }
          }
        }

        v83 = sub_10001D314();
        v84 = v83;
        if (!v79)
        {
          if (!v83)
          {
LABEL_143:
            v206 = v84;
            if (!v84)
            {
              goto LABEL_211;
            }

            goto LABEL_215;
          }

          v100 = v83;
          while (!DEROidCompare(v100, &oidAnyPolicy))
          {
            v100 = *(v100 + 16);
            if (!v100)
            {
              goto LABEL_143;
            }
          }

          goto LABEL_208;
        }

        if (v79 >= v73 - 1)
        {
          SHA1Digest = SecCertificateGetSHA1Digest();
          if (!v78)
          {
LABEL_150:
            v105 = sub_1000027AC("ev");
            if (!os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_205;
            }

            LOWORD(buf[0]) = 0;
            v106 = v105;
            v107 = "anchor not in plist";
            goto LABEL_152;
          }

          v102 = SHA1Digest;
          while (1)
          {
            v103 = sub_100003364();
            if (v103)
            {
              v104 = v103;
              v212.length = CFArrayGetCount(v103);
              v212.location = 0;
              if (CFArrayContainsValue(v104, v212, v102))
              {
                break;
              }
            }

            v78 = v78[2];
            if (!v78)
            {
              goto LABEL_150;
            }
          }

          SecCertificateNotValidBefore();
          if (v120 >= 178761600.0 && SecCertificateVersion() <= 2)
          {
            v146 = sub_1000027AC("ev");
            if (!os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_205;
            }

            LOWORD(buf[0]) = 0;
            v106 = v146;
            v107 = "Anchor issued after October 2006 and is not v3";
            goto LABEL_152;
          }

          if (SecCertificateVersion() >= 3)
          {
            SecCertificateNotValidBefore();
            if (v121 >= 178761600.0)
            {
              BasicConstraints = SecCertificateGetBasicConstraints();
              if (BasicConstraints && (*(BasicConstraints + 2) & 1) != 0)
              {
                KeyUsage = SecCertificateGetKeyUsage();
                if ((~KeyUsage & 0x60) == 0)
                {
                  goto LABEL_197;
                }

                v148 = KeyUsage;
                v149 = sub_1000027AC("ev");
                if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                {
                  buf[0] = 67109120;
                  buf[1] = v148;
                  v106 = v149;
                  v107 = "Anchor has invalid key usage %u";
                  v108 = 8;
LABEL_153:
                  _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, v107, buf, v108);
                }

LABEL_205:
                v130 = sub_1000027AC("ev");
                if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 0;
                  _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "anchor certificate is not ev", valuePtr, 2u);
                }

                if (sub_100012178(a1, cf1, v79, kCFBooleanFalse, 1, 0))
                {
                  v150 = v206;
                  if (v206)
                  {
                    do
                    {
                      v151 = v150[2];
                      free(v150);
                      v150 = v151;
                    }

                    while (v151);
                  }

LABEL_252:
                  if (v84)
                  {
                    do
                    {
                      v152 = v84[2];
                      free(v84);
                      v84 = v152;
                    }

                    while (v152);
                  }

LABEL_254:
                  v71 = (*(a1 + 64) > 7u) | (0x17u >> *(a1 + 64));
                  *(a1 + 64) = v69;
                  v153 = *(a1 + 56);
                  if (v153)
                  {
                    CFRelease(v153);
                  }

                  *(a1 + 56) = v203;
                  v43 = v205;
                  v68 = *(v205 + 136);
LABEL_257:
                  if (*(v68 + 41) == 1)
                  {
                    v154 = *(a1 + 64);
                    v155 = *(a1 + 56);
                    if (v155)
                    {
                      v156 = sub_100047AE8(v155);
                    }

                    else
                    {
                      v156 = 0;
                    }

                    sub_1000457E4(a1, kSecPolicyCheckQWAC);
                    v157 = (*(a1 + 64) > 7u) | (0x17u >> *(a1 + 64));
                    *(a1 + 64) = v154;
                    v158 = *(a1 + 56);
                    if (v158)
                    {
                      CFRelease(v158);
                    }

                    *(a1 + 56) = v156;
                    if (v157)
                    {
                      v43[67] = 1;
                    }
                  }

LABEL_265:
                  v159 = *(*a1 + 112);
                  if (v159)
                  {
                    CFRetain(*(*a1 + 112));
                  }

                  else
                  {
                    v159 = sub_100016504();
                  }

                  *valuePtr = 0;
                  values[0] = 0;
                  LOBYTE(v206) = 0;
                  v207 = 0;
                  *buf = 0;
                  v160 = *(*a1 + 200);
                  *(v160 + 66) = 0;
                  v161 = sub_10000AA08(a1, v159, valuePtr, values, &v206, &v207);
                  v162 = *valuePtr;
                  if (v161)
                  {
                    if (sub_10000F718(a1, *valuePtr, values[0], v206, v207, buf))
                    {
                      *(v160 + 66) = 1;
                    }

                    sub_10000F584(a1, v162, buf[0]);
                  }

                  if (v162)
                  {
                    CFRelease(v162);
                  }

                  if (values[0])
                  {
                    CFRelease(values[0]);
                  }

                  if (v159)
                  {
                    CFRelease(v159);
                  }

                  if ((v71 & 1) != 0 && (v43 && (v43[66] & 1) != 0 || (sub_1000165EC(@"CTKillSwitch") & 1) != 0 || !sub_10000FD40(5184000.0)))
                  {
                    v43[65] = 1;
                  }

                  goto LABEL_284;
                }

LABEL_208:
                if (v84)
                {
                  do
                  {
                    v131 = v84[2];
                    free(v84);
                    v84 = v131;
                  }

                  while (v131);
                }

                goto LABEL_210;
              }

              v147 = sub_1000027AC("ev");
              if (!os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_205;
              }

              LOWORD(buf[0]) = 0;
              v106 = v147;
              v107 = "Anchor has invalid basic constraints";
LABEL_152:
              v108 = 2;
              goto LABEL_153;
            }
          }

LABEL_197:
          *buf = 2048;
          v124 = CFNumberCreate(0, kCFNumberCFIndexType, buf);
          if (!v124)
          {
            goto LABEL_205;
          }

          v125 = v124;
          *buf = 256;
          v126 = CFNumberCreate(0, kCFNumberCFIndexType, buf);
          if (!v126)
          {
            CFRelease(v125);
            goto LABEL_205;
          }

          v127 = v126;
          *valuePtr = kSecAttrKeyTypeRSA;
          *&valuePtr[8] = kSecAttrKeyTypeEC;
          values[0] = v125;
          values[1] = v126;
          v128 = CFDictionaryCreate(0, valuePtr, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v128)
          {
            if (SecCertificateIsAtLeastMinKeySize())
            {
              v129 = 1;
              goto LABEL_202;
            }

            v145 = sub_1000027AC("ev");
            if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf[0]) = 0;
              _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "Anchor's public key is too weak for EV", buf, 2u);
            }
          }

          v129 = 0;
LABEL_202:
          CFRelease(v125);
          CFRelease(v127);
          if (v128)
          {
            CFRelease(v128);
          }

          if ((v129 & 1) == 0)
          {
            goto LABEL_205;
          }

          goto LABEL_208;
        }

        CertificatePolicies = SecCertificateGetCertificatePolicies();
        if (!CertificatePolicies || !*(CertificatePolicies + 8))
        {
          v133 = sub_1000027AC("ev");
          if (!os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_236;
          }

          *valuePtr = 0;
          v134 = v133;
          v135 = "SubCA missing certificate policies";
          goto LABEL_223;
        }

        CRLDistributionPoints = SecCertificateGetCRLDistributionPoints();
        if (!CRLDistributionPoints || CFArrayGetCount(CRLDistributionPoints) <= 0)
        {
          v136 = sub_1000027AC("ev");
          if (!os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_236;
          }

          *valuePtr = 0;
          v134 = v136;
          v135 = "SubCA missing CRLDP";
          goto LABEL_223;
        }

        v87 = SecCertificateGetBasicConstraints();
        if (!v87 || (*(v87 + 2) & 1) == 0)
        {
          v137 = sub_1000027AC("ev");
          if (!os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_236;
          }

          *valuePtr = 0;
          v134 = v137;
          v135 = "SubCA has invalid basic constraints";
LABEL_223:
          v138 = 2;
LABEL_224:
          _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, v135, valuePtr, v138);
          goto LABEL_236;
        }

        v88 = SecCertificateGetKeyUsage();
        if ((~v88 & 0x60) == 0)
        {
          break;
        }

        v139 = v88;
        v140 = sub_1000027AC("ev");
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 67109120;
          *&valuePtr[4] = v139;
          v134 = v140;
          v135 = "SubCA has invalid key usage %u";
          v138 = 8;
          goto LABEL_224;
        }

LABEL_236:
        v144 = sub_1000027AC("ev");
        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 0;
          _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "subordinate certificate is not ev", valuePtr, 2u);
        }

        if (sub_100012178(a1, cf1, v79, kCFBooleanFalse, 1, 0))
        {
          v201 = v206;
          if (v206)
          {
            do
            {
              v202 = v201[2];
              free(v201);
              v201 = v202;
            }

            while (v202);
          }

          goto LABEL_252;
        }

LABEL_159:
        if (v84)
        {
          v111 = v84;
          do
          {
            v112 = DEROidCompare(v111, &oidAnyPolicy);
            if (v112)
            {
              break;
            }

            v111 = *(v111 + 16);
          }

          while (v111);
        }

        else
        {
          v112 = 0;
        }

        v113 = v206;
        if (!v206)
        {
          goto LABEL_208;
        }

        v114 = v206;
        while (!DEROidCompare(v114, &oidAnyPolicy))
        {
          v114 = v114[2];
          if (!v114)
          {
            if (v113)
            {
              v115 = v112;
            }

            else
            {
              v115 = 1;
            }

            if ((v115 & 1) == 0)
            {
              v116 = &v206;
              do
              {
                if (v84)
                {
                  v117 = v84;
                  while (!DEROidCompare(v117, v113))
                  {
                    v117 = *(v117 + 16);
                    if (!v117)
                    {
                      goto LABEL_178;
                    }
                  }

                  v116 = v113 + 2;
                }

                else
                {
LABEL_178:
                  *v116 = v113[2];
                  v113[2] = 0;
                  do
                  {
                    v118 = v113[2];
                    free(v113);
                    v113 = v118;
                  }

                  while (v118);
                }

                v113 = *v116;
              }

              while (*v116);
            }

            goto LABEL_208;
          }
        }

        if (!v112)
        {
          do
          {
            v119 = v113[2];
            free(v113);
            v113 = v119;
          }

          while (v119);
          v206 = 0;
          if (v84)
          {
            for (i = 0; ; i = v200)
            {
              v200 = malloc_type_malloc(0x18uLL, 0x1030040D5FA72FAuLL);
              v200[2] = i;
              *v200 = *v84;
            }
          }

          goto LABEL_211;
        }

        if (v84)
        {
          while (1)
          {
            if (v113)
            {
              v197 = v113;
              while (!DEROidCompare(v197, v84))
              {
                v197 = *(v197 + 16);
                if (!v197)
                {
                  goto LABEL_364;
                }
              }
            }

            else
            {
LABEL_364:
              v198 = malloc_type_malloc(0x18uLL, 0x1030040D5FA72FAuLL);
              v198[2] = v113;
              *v198 = *v84;
              v113 = v198;
            }
          }
        }

LABEL_210:
        v84 = v206;
        if (!v206)
        {
LABEL_211:
          v132 = sub_1000027AC("ev");
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 0;
            _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "valid_policies set is empty: chain not ev", valuePtr, 2u);
          }

          if (sub_100012178(a1, cf1, v79, kCFBooleanFalse, 1, 0))
          {
            goto LABEL_254;
          }

          v84 = 0;
        }

LABEL_215:
        ++v79;
        v78 = v84;
        if (v79 == v73)
        {
          goto LABEL_252;
        }
      }

      *valuePtr = 256;
      v89 = CFNumberCreate(0, kCFNumberCFIndexType, valuePtr);
      if (!v89)
      {
        goto LABEL_236;
      }

      v90 = v89;
      Mutable = CFDictionaryCreateMutable(0, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (!Mutable)
      {
        v141 = v90;
LABEL_235:
        CFRelease(v141);
        goto LABEL_236;
      }

      v92 = Mutable;
      CFDictionaryAddValue(Mutable, kSecAttrKeyTypeEC, v90);
      SecCertificateNotValidBefore();
      if (v93 >= 315532800.0 && (SecCertificateNotValidAfter(), v94 >= 410227200.0))
      {
        *valuePtr = 2048;
        v109 = CFNumberCreate(0, kCFNumberCFIndexType, valuePtr);
        if (v109)
        {
          v96 = v109;
          CFDictionaryAddValue(v92, kSecAttrKeyTypeRSA, v109);
          if ((SecCertificateIsAtLeastMinKeySize() & 1) == 0)
          {
            v143 = sub_1000027AC("ev");
            if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 0;
              v98 = v143;
              v99 = "SubCA's public key is too small for issuance after 2010 or expiration after 2013";
              goto LABEL_232;
            }

LABEL_233:
            CFRelease(v96);
            goto LABEL_234;
          }

LABEL_156:
          SecCertificateNotValidBefore();
          if (v110 <= 473299200.0 || SecCertificateGetSignatureHashAlgorithm() > 4)
          {
            CFRelease(v96);
            CFRelease(v90);
            CFRelease(v92);
            goto LABEL_159;
          }

          v142 = sub_1000027AC("ev");
          if (!os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_233;
          }

          *valuePtr = 0;
          v98 = v142;
          v99 = "SubCA was issued with SHA-1 after 2015";
          goto LABEL_232;
        }
      }

      else
      {
        *valuePtr = 1024;
        v95 = CFNumberCreate(0, kCFNumberCFIndexType, valuePtr);
        if (v95)
        {
          v96 = v95;
          CFDictionaryAddValue(v92, kSecAttrKeyTypeRSA, v95);
          if ((SecCertificateIsAtLeastMinKeySize() & 1) == 0)
          {
            v97 = sub_1000027AC("ev");
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 0;
              v98 = v97;
              v99 = "SubCA's public key is too small for issuance before 2011 or expiration before 2014";
LABEL_232:
              _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, v99, valuePtr, 2u);
              goto LABEL_233;
            }

            goto LABEL_233;
          }

          goto LABEL_156;
        }
      }

LABEL_234:
      CFRelease(v90);
      v141 = v92;
      goto LABEL_235;
    }

LABEL_284:
    v163 = *(*a1 + 200);
    *(v163 + 104) = 1;
    if (sub_100009C84(a1))
    {
      v164 = *(v163 + 16);
      v165 = *(v163 + 128);
      if (v165 <= 0.0)
      {
        v166 = *(*a1 + 200);
        if (v166)
        {
          if (*(v166 + 16) >= 1)
          {
            v167 = *(v166 + 136);
            if (v167)
            {
              v168 = *(v167 + 16);
            }
          }
        }

        SecCertificateNotValidBefore();
        v165 = v169;
      }

      if (v164 >= 1)
      {
        v170 = 0;
        v171 = 0;
        v172 = 3.15569088e10;
        while (1)
        {
          if (*(v163 + 88) > v171)
          {
            v173 = *(v163 + 80);
            if (v173)
            {
              v174 = (v173 + v170);
              v175 = *(v173 + v170 + 24);
              if (v175)
              {
                if (*(v175 + 56) == 1)
                {
                  v176 = *(v175 + 72);
                  if (v176)
                  {
                    AbsoluteTime = CFDateGetAbsoluteTime(v176);
                    if (AbsoluteTime < v172)
                    {
                      v172 = AbsoluteTime;
                    }

                    if (v165 > v172)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }

          ++v171;
          v170 += 40;
          if (v164 == v171)
          {
            goto LABEL_302;
          }
        }

        v196 = sub_1000027AC("rvc");
        if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 134218240;
          *&valuePtr[4] = v165;
          *&valuePtr[12] = 2048;
          *&valuePtr[14] = v172;
          _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_DEFAULT, "certificate issuance time (%f) is later than allowed value (%f)", valuePtr, 0x16u);
        }

        sub_100053B7C(v174);
      }
    }

LABEL_302:
    if ((*(v163 + 66) & 1) == 0)
    {
      v178 = *(v163 + 120);
      if (v178 >= 1 && sub_100009C84(a1))
      {
        v179 = *(*a1 + 112);
        if (v179)
        {
          CFRetain(*(*a1 + 112));
        }

        if ((sub_1000165EC(@"CTKillSwitch") & 1) == 0)
        {
          if (!sub_10000FD40(5184000.0) && !v179)
          {
            goto LABEL_316;
          }

          if (v178 == 1)
          {
            v180 = 0;
          }

          else
          {
            v180 = 6;
          }

          sub_100012178(a1, kSecPolicyCheckCTRequired, 0, kCFBooleanFalse, 1, v180);
        }

        if (v179)
        {
          CFRelease(v179);
        }
      }
    }

LABEL_316:
    sub_10000E374(a1);
    v181 = *a1;
    v182 = *(*a1 + 200);
    if (!v182)
    {
      return;
    }

    if (*(v182 + 105) == 1)
    {
      v183 = *(v182 + 112);
      if (v183 < 0)
      {
        return;
      }
    }

    else
    {
      v184 = *(v182 + 16);
      v183 = v184 - 1;
      if (v184 >= 1)
      {
        v185 = *(v182 + 88);
        if (v185 >= v184)
        {
          v186 = *(v182 + 80) + 40 * v183;
        }

        else
        {
          v186 = 0;
        }

        v187 = 0;
        v188 = 40 * v184 - 80;
        if (v186)
        {
          goto LABEL_325;
        }

LABEL_334:
        while (v183)
        {
          while (1)
          {
            v186 = v185 >= v183 ? *(v182 + 80) + v188 : 0;
            v188 -= 40;
            --v183;
            if (!v186)
            {
              break;
            }

LABEL_325:
            v189 = *(v186 + 24);
            if (v187)
            {
              if (v189)
              {
LABEL_329:
                v187 = *(v189 + 52);
                if (v183 || (*(v189 + 52) & 1) == 0)
                {
                  goto LABEL_334;
                }

                v190 = *(v182 + 136);
                if (!v190)
                {
                  goto LABEL_344;
                }

                v191 = *(v190 + 16);
                if (!v191)
                {
                  goto LABEL_344;
                }

                v192 = *(v190 + 16);
                if (!SecCertificateIsCA() || (sub_100053914(v191) & 1) != 0)
                {
                  goto LABEL_344;
                }

                v183 = 0;
              }

              else
              {
                ++v183;
              }

              v194 = sub_1000027AC("validupdate");
              if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 134217984;
                *&valuePtr[4] = v183;
                _os_log_impl(&_mh_execute_header, v194, OS_LOG_TYPE_DEFAULT, "CA at index %ld violates known-intermediate constraint", valuePtr, 0xCu);
              }

              if (v181)
              {
                v195 = *(v181 + 272);
                if (v195)
                {
                  *(v195 + 74) = 1;
                }
              }

              goto LABEL_345;
            }

            if (v189)
            {
              goto LABEL_329;
            }

            v187 = 0;
            if (!v183)
            {
              goto LABEL_344;
            }
          }
        }

LABEL_344:
        v183 = -1;
      }

LABEL_345:
      *(v182 + 112) = v183;
      *(v182 + 105) = 1;
      if (v183 < 0)
      {
        return;
      }
    }

    if (*(v182 + 88) <= v183)
    {
      v193 = 0;
    }

    else
    {
      v193 = (*(v182 + 80) + 40 * v183);
    }

    sub_100053B7C(v193);
    return;
  }

  v9 = Count;
  while (1)
  {
    *(a1 + 16) = qword_100092E28;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), v8);
    CFDictionaryApplyFunction(ValueAtIndex[4], sub_100006C64, a1);
    v11 = *(a1 + 64);
    v4 = v11 > 7;
    v12 = (1 << v11) & 0xE8;
    v13 = v4 || v12 == 0;
    if (!v13 && !*(a1 + 56))
    {
      break;
    }

    v8 = *(a1 + 24) + 1;
    *(a1 + 24) = v8;
    if (v8 >= v9)
    {
      goto LABEL_15;
    }
  }
}

uint64_t sub_10000E268(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, __CFArray *))
{
  NormalizedIssuerContent = SecCertificateGetNormalizedIssuerContent();
  v7 = sub_100007B0C(NormalizedIssuerContent);
  if (v7 && (v8 = sub_10000CB3C(v7)) != 0)
  {
    v9 = v8;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    Count = CFArrayGetCount(v9);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
        if (ValueAtIndex)
        {
          v15 = SecCertificateCreateWithData(kCFAllocatorDefault, ValueAtIndex);
          if (v15)
          {
            v16 = v15;
            CFArrayAppendValue(Mutable, v15);
            CFRelease(v16);
          }
        }
      }
    }

    CFRelease(v9);
    a4(a3, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    a4(a3, 0);
  }

  return 1;
}

void sub_10000E374(uint64_t a1)
{
  v2 = *(*a1 + 200);
  v3 = *(*a1 + 112);
  if (v3)
  {
    CFRetain(*(*a1 + 112));
  }

  if (!v2 || *(v2 + 104) != 1 || (sub_1000165EC(@"CTKillSwitch") & 1) != 0)
  {
    goto LABEL_54;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  Name = SecPolicyGetName();
  if (Name && kSecPolicyNameSSLServer)
  {
    if (!CFEqual(Name, kSecPolicyNameSSLServer))
    {
LABEL_54:
      if (v3)
      {
        CFRelease(v3);
      }

      return;
    }
  }

  else if (Name != kSecPolicyNameSSLServer)
  {
    goto LABEL_54;
  }

  v6 = *(ValueAtIndex + 4);
  v7 = kSecPolicyCheckSystemTrustedCTRequired;
  Value = CFDictionaryGetValue(v6, kSecPolicyCheckSystemTrustedCTRequired);
  if (!Value || CFEqual(Value, kCFBooleanFalse))
  {
    goto LABEL_54;
  }

  if (sub_10000FD40(5184000.0) || v3)
  {
    v9 = *(*a1 + 200);
    if (v9)
    {
      if (*(v9 + 16) >= 1)
      {
        v10 = *(v9 + 136);
        if (v10)
        {
          v11 = *(v10 + 16);
        }
      }
    }

    SecCertificateNotValidBefore();
    if (v12 < 561340800.0)
    {
      goto LABEL_54;
    }

    v13 = *(*a1 + 120);
    if (!SecCertificateIsValid())
    {
      goto LABEL_54;
    }

    v14 = *(*a1 + 200);
    if (v14 && (v15 = *(v14 + 16), v15 >= 1) && (v16 = *(v14 + 8 * v15 + 128)) != 0)
    {
      v17 = *(v16 + 16);
    }

    else
    {
      v17 = 0;
    }

    if (!*(v14 + 49))
    {
      goto LABEL_54;
    }

    v18 = off_1000927D0(off_1000927C0, v17, a1);
    if (qword_100092AE0 != -1)
    {
      dispatch_once(&qword_100092AE0, &stru_100081EF8);
    }

    if ((byte_100092AD8 & 1) == 0)
    {
      v19 = sub_100003B94(0);
      v20 = sub_100003AB8(v19);
      v21 = v20;
      if (v18)
      {
        if (!v20)
        {
          sub_100045FC0(v17, a1, @"TestCTRequiredSystemRoot");
          goto LABEL_54;
        }

        v18 = 1;
      }

      else
      {
        if (!v20)
        {
          v18 = 0;
          goto LABEL_38;
        }

        v18 = (v20[2])(v20, v17, a1);
      }

      sub_10000E934(v21);
    }

LABEL_38:
    if (!sub_100045FC0(v17, a1, @"TestCTRequiredSystemRoot") || (v18 & 1) != 0 || (*(v2 + 66) & 1) != 0)
    {
      goto LABEL_54;
    }

    v22 = sub_10003F814(0, 0);
    if (!v22)
    {
LABEL_53:
      sub_100012178(a1, v7, 0, kCFBooleanFalse, 0, 0);
      goto LABEL_54;
    }

    v23 = v22;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2000000000;
    v42 = 0;
    v24 = CFDictionaryGetValue(v22, kSecCTExceptionsDomainsKey);
    if (v24)
    {
      v25 = v24;
      v26 = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
      v27 = CFDictionaryGetValue(v26[4], kSecPolicyCheckSSLHostname);
      if (v27)
      {
        context[0] = _NSConcreteStackBlock;
        context[1] = 0x40000000;
        context[2] = sub_100046330;
        context[3] = &unk_100083FC0;
        context[4] = &v39;
        context[5] = v27;
        v43.length = CFArrayGetCount(v25);
        v43.location = 0;
        CFArrayApplyFunction(v25, v43, sub_100046810, context);
      }
    }

    if (*(v40 + 24) == 1)
    {
      v28 = sub_1000027AC("policy");
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_52;
      }

      *buf = 0;
      v29 = "domain-based CT exception applied";
    }

    else
    {
      v30 = CFDictionaryGetValue(v23, kSecCTExceptionsCAsKey);
      if (v30)
      {
        v31 = v30;
        *buf = 0;
        v35 = buf;
        v36 = 0x2000000000;
        v37 = *(*a1 + 200);
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 0x40000000;
        v33[2] = sub_100046408;
        v33[3] = &unk_100083FE8;
        v33[4] = &v39;
        v33[5] = buf;
        v44.length = CFArrayGetCount(v30);
        v44.location = 0;
        CFArrayApplyFunction(v31, v44, sub_100046810, v33);
        _Block_object_dispose(buf, 8);
      }

      if (*(v40 + 24) != 1 || (v28 = sub_1000027AC("policy"), !os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG)))
      {
LABEL_52:
        CFRelease(v23);
        v32 = *(v40 + 24);
        _Block_object_dispose(&v39, 8);
        if (v32)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }

      *buf = 0;
      v29 = "key-based CT exceptions applied";
    }

    _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, v29, buf, 2u);
    goto LABEL_52;
  }
}