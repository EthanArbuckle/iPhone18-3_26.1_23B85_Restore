void sub_1000014E0(id a1, void *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {
    xpc_retain(a2);
    xpc_connection_set_finalizer_f(a2, sub_100007A88);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_1000015E8;
    handler[3] = &unk_100028E48;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_resume(a2);
  }

  else if (type == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(a2, _xpc_error_key_description);
    v5 = sub_1000027A4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100018F3C(string, v5);
    }
  }
}

void sub_1000015E8(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    if (lockdown_copy_checkin_info())
    {
      sub_1000016A8(*(a1 + 32), object);
    }

    else
    {
      sub_10000C08C(0);
      CFRelease(0);
    }
  }

  else if (type == &_xpc_type_error && sub_1000027F8(object))
  {
    xpc_connection_cancel(*(a1 + 32));
    v5 = *(a1 + 32);

    xpc_release(v5);
  }
}

void sub_1000016A8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v100 = objc_autoreleasePoolPush();
  string = xpc_dictionary_get_string(v4, "MessageType");
  v98 = v3;
  v99 = v4;
  if (!string)
  {
    v7 = sub_1000027A4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100019950();
    }

LABEL_14:

    goto LABEL_145;
  }

  v6 = string;
  if (!strcmp(string, "Ping"))
  {
    v8 = v3;
    reply = xpc_dictionary_create_reply(v4);
    xpc_dictionary_set_string(reply, "Payload", "pong!");
    xpc_dictionary_set_uint64(reply, "Status", 0);
    xpc_connection_send_message(v8, reply);

    goto LABEL_145;
  }

  if (!strcmp(v6, "Install"))
  {
    v10 = v3;
    v11 = v4;
    *&length = 0;
    data = xpc_dictionary_get_data(v11, "Profile", &length);
    if (data)
    {
      v13 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, data, length, kCFAllocatorNull);
      if (v13)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = MISProfileCreateWithData();
        v16 = v15;
        if (v15)
        {
          v17 = MISProvisioningProfileValidateSignature(v15);
          if (!v17)
          {
            if (MISProvisioningProfileIsForBetaDeployment(v16) && !sub_10000A798(v10))
            {
              v90 = sub_1000027A4();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                sub_10001981C();
              }

              v17 = -402620385;
            }

            else
            {
              v17 = sub_100007C2C(v16);
            }
          }
        }

        else
        {
          v68 = sub_1000027A4();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            sub_100019858();
          }

          v17 = -402620406;
        }

        objc_autoreleasePoolPop(v14);
        v36 = v17;
      }

      else
      {
        v50 = sub_1000027A4();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          sub_100019894();
        }

        v13 = 0;
        v36 = -402620406;
      }
    }

    else
    {
      v35 = sub_1000027A4();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1000198D0();
      }

      v13 = 0;
      v36 = -402620403;
    }

    v69 = xpc_dictionary_create_reply(v11);
    xpc_dictionary_set_uint64(v69, "Status", v36);
    xpc_connection_send_message(v10, v69);
    if (v13)
    {
      CFRelease(v13);
    }
  }

  else if (!strcmp(v6, "Remove"))
  {
    v18 = v3;
    v19 = v4;
    v20 = xpc_dictionary_get_string(v19, "ProfileID");
    if (v20)
    {
      v21 = CFStringCreateWithCString(kCFAllocatorDefault, v20, 0x8000100u);
      if (v21)
      {
        v22 = v21;
        sub_100007E54(v21);
        v23 = 0;
      }

      else
      {
        v66 = sub_1000027A4();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          sub_100019760();
        }

        v22 = 0;
        v23 = -402620406;
      }
    }

    else
    {
      v49 = sub_1000027A4();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_10001979C();
      }

      v22 = 0;
      v23 = -402620403;
    }

    v67 = xpc_dictionary_create_reply(v19);

    xpc_dictionary_set_uint64(v67, "Status", v23);
    xpc_connection_send_message(v18, v67);

    if (v22)
    {
      CFRelease(v22);
    }
  }

  else
  {
    if (strcmp(v6, "CopyAll"))
    {
      if (strcmp(v6, "CopySingle"))
      {
        if (strcmp(v6, "CopyMatching"))
        {
          if (!strcmp(v6, "Trust"))
          {
            sub_10000932C(v3, v4);
            goto LABEL_145;
          }

          if (!strcmp(v6, "Migrate"))
          {
            sub_1000097F4(v3, v4);
            goto LABEL_145;
          }

          if (!strcmp(v6, "AddMonotonicTimeOffset"))
          {
            sub_1000098F4(v3, v4);
            goto LABEL_145;
          }

          if (!strcmp(v6, "AddRTCResetCountOffset"))
          {
            sub_100009B24(v3, v4);
            goto LABEL_145;
          }

          v7 = sub_1000027A4();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            sub_100019570();
          }

          goto LABEL_14;
        }

        connection = v3;
        original = v4;
        xdict = xpc_dictionary_get_dictionary(original, "Payload");
        if (!xdict)
        {
          empty = 0;
          v73 = -402620415;
LABEL_142:
          v89 = xpc_dictionary_create_reply(original);
          xpc_dictionary_set_uint64(v89, "Status", v73);
          if (xdict)
          {
            xpc_dictionary_set_value(v89, "Payload", empty);
          }

          xpc_connection_send_message(connection, v89);

          goto LABEL_145;
        }

        context = objc_autoreleasePoolPush();
        v96 = [NSMutableArray arrayWithCapacity:0];
        v111 = 0;
        v51 = xpc_dictionary_get_data(xdict, "Cert", &v111);
        xarray = xpc_dictionary_get_array(xdict, "Predicates");
        v93 = 0;
        if (v51 && v111)
        {
          v93 = [NSData dataWithBytes:v51 length:?];
        }

        if (xarray)
        {
          applier[0] = _NSConcreteStackBlock;
          applier[1] = 3221225472;
          applier[2] = sub_10000A928;
          applier[3] = &unk_100028F78;
          v110 = v96;
          xpc_array_apply(xarray, applier);
        }

        empty = xpc_array_create_empty();
        v53 = sub_1000027A4();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = sub_100004260(v93);
          LODWORD(length) = 138543362;
          *(&length + 4) = v54;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Copying profiles for cert %{public}@", &length, 0xCu);
        }

        v55 = sub_1000027A4();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          LODWORD(length) = 138543362;
          *(&length + 4) = v96;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Copying profiles for %{public}@", &length, 0xCu);
        }

        if ([v96 count])
        {
          v107 = 0uLL;
          v108 = 0uLL;
          v105 = 0uLL;
          v106 = 0uLL;
          v56 = sub_100002760();
          v57 = [v56 findProfilesMatchingPredicates:v96 withCertificate:v93];

          v58 = [v57 countByEnumeratingWithState:&v105 objects:&length count:16];
          if (v58)
          {
            v59 = *v106;
            do
            {
              for (i = 0; i != v58; i = i + 1)
              {
                if (*v106 != v59)
                {
                  objc_enumerationMutation(v57);
                }

                v61 = *(*(&v105 + 1) + 8 * i);
                v62 = sub_1000027A4();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                {
                  v63 = [v61 UUID];
                  v64 = [v61 Name];
                  *buffer = 138543618;
                  *&buffer[4] = v63;
                  *&buffer[12] = 2114;
                  *&buffer[14] = v64;
                  _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Sending %{public}@ - %{public}@", buffer, 0x16u);
                }

                v65 = sub_10000A980(v61);
                xpc_array_append_value(empty, v65);
              }

              v58 = [v57 countByEnumeratingWithState:&v105 objects:&length count:16];
            }

            while (v58);
LABEL_141:

            objc_autoreleasePoolPop(context);
            v73 = 0;
            goto LABEL_142;
          }
        }

        else
        {
          v107 = 0uLL;
          v108 = 0uLL;
          v105 = 0uLL;
          v106 = 0uLL;
          v74 = sub_100002760();
          v57 = [v74 findProfilesWithCertificate:v93];

          v75 = [v57 countByEnumeratingWithState:&v105 objects:&length count:16];
          if (v75)
          {
            v76 = *v106;
            do
            {
              for (j = 0; j != v75; j = j + 1)
              {
                if (*v106 != v76)
                {
                  objc_enumerationMutation(v57);
                }

                v78 = *(*(&v105 + 1) + 8 * j);
                v79 = sub_1000027A4();
                if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                {
                  v80 = [v78 UUID];
                  v81 = [v78 Name];
                  *buffer = 138543618;
                  *&buffer[4] = v80;
                  *&buffer[12] = 2114;
                  *&buffer[14] = v81;
                  _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Sending %{public}@ - %{public}@", buffer, 0x16u);
                }

                v82 = sub_10000A980(v78);
                xpc_array_append_value(empty, v82);
              }

              v75 = [v57 countByEnumeratingWithState:&v105 objects:&length count:16];
            }

            while (v75);
            goto LABEL_141;
          }
        }

        v83 = sub_1000027A4();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *buffer = 0;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "Couldn't find a profile matching these predicates:", buffer, 2u);
        }

        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v57 = v96;
        v84 = [v57 countByEnumeratingWithState:&v101 objects:buffer count:16];
        if (v84)
        {
          v85 = *v102;
          do
          {
            for (k = 0; k != v84; k = k + 1)
            {
              if (*v102 != v85)
              {
                objc_enumerationMutation(v57);
              }

              v87 = *(*(&v101 + 1) + 8 * k);
              v88 = sub_1000027A4();
              if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v113 = v87;
                _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Predicate: %{public}@", buf, 0xCu);
              }
            }

            v84 = [v57 countByEnumeratingWithState:&v101 objects:buffer count:16];
          }

          while (v84);
        }

        goto LABEL_141;
      }

      v37 = v3;
      v38 = v4;
      *&length = 0;
      *(&length + 1) = &length;
      v118 = 0x3032000000;
      v119 = sub_10000A83C;
      v120 = sub_10000A84C;
      v121 = 0;
      v39 = xpc_dictionary_get_string(v38, "ProfileID");
      if (v39)
      {
        v40 = CFStringCreateWithCString(kCFAllocatorDefault, v39, 0x8000100u);
        if (CFStringGetLength(v40) == 36)
        {
          CFStringGetCString(v40, buffer, 37, 0x8000100u);
          v41 = 0;
          v42 = 0;
          do
          {
            v43 = buffer[v41];
            v44 = (v43 - 58) > 0xFFFFFFF5 || (v43 - 71) > 0xFFFFFFF9;
            if (!v44 && (v43 - 97) >= 6 && v43 != 45)
            {
              break;
            }

            v42 = v41++ > 0x22;
          }

          while (v41 != 36);
          if (v42)
          {
            v45 = xpc_dictionary_get_BOOL(v38, "ForceXML");
            v46 = sub_100002760();
            *buffer = _NSConcreteStackBlock;
            *&buffer[8] = 3221225472;
            *&buffer[16] = sub_10000A854;
            *&buffer[24] = &unk_100028F50;
            *&v115 = &length;
            [v46 queryCMSBlobForProfile:v40 forcingXML:v45 handler:buffer];

            if (*(*(&length + 1) + 40))
            {
              v47 = 0;
              v48 = 1;
LABEL_108:
              v71 = xpc_dictionary_create_reply(v38);
              xpc_dictionary_set_uint64(v71, "Status", v47);
              if (v48)
              {
                xpc_dictionary_set_value(v71, "Payload", *(*(&length + 1) + 40));
              }

              xpc_connection_send_message(v37, v71);
              if (v40)
              {
                CFRelease(v40);
              }

              _Block_object_dispose(&length, 8);
              goto LABEL_145;
            }

            v70 = sub_1000027A4();
            v47 = -402620406;
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              sub_100019668();
            }

LABEL_107:

            v48 = 0;
            goto LABEL_108;
          }
        }

        v70 = sub_1000027A4();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          sub_1000195F8();
        }
      }

      else
      {
        v70 = sub_1000027A4();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          sub_1000196A4();
        }

        v40 = 0;
      }

      v47 = -402620403;
      goto LABEL_107;
    }

    v24 = v3;
    v25 = v4;
    v26 = xpc_array_create_empty();
    if (v26)
    {
      v115 = 0u;
      v116 = 0u;
      memset(buffer, 0, sizeof(buffer));
      v27 = sub_100002760();
      v28 = [v27 allProfiles];

      v29 = [v28 countByEnumeratingWithState:buffer objects:&length count:16];
      if (v29)
      {
        v30 = **&buffer[16];
        while (2)
        {
          for (m = 0; m != v29; ++m)
          {
            if (**&buffer[16] != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = [*(*&buffer[8] + 8 * m) UUID];
            v33 = v32;
            v34 = xpc_string_create([v32 UTF8String]);

            if (!v34)
            {
              v29 = -402620382;
              goto LABEL_114;
            }

            xpc_array_append_value(v26, v34);
          }

          v29 = [v28 countByEnumeratingWithState:buffer objects:&length count:16];
          LODWORD(v34) = 1;
          if (v29)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        LODWORD(v34) = 1;
      }
    }

    else
    {
      v28 = sub_1000027A4();
      v29 = -402620406;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100019724();
      }

      LODWORD(v34) = 0;
    }

LABEL_114:

    v72 = xpc_dictionary_create_reply(v25);
    xpc_dictionary_set_uint64(v72, "Status", v29);
    if (v34)
    {
      xpc_dictionary_set_value(v72, "Payload", v26);
    }

    xpc_connection_send_message(v24, v72);
  }

LABEL_145:
  objc_autoreleasePoolPop(v100);
}

id sub_100002760()
{
  if (qword_10002DB48 != -1)
  {
    sub_1000194EC();
  }

  v1 = qword_10002DB40;

  return v1;
}

id sub_1000027A4()
{
  if (qword_10002DB58 != -1)
  {
    sub_10001A044();
  }

  if (qword_10002DB50)
  {
    v1 = qword_10002DB50;
  }

  else
  {
    v1 = &_os_log_default;
  }

  return v1;
}

BOOL sub_1000027F8(xpc_object_t xdict)
{
  if (xdict != &_xpc_error_connection_invalid)
  {
    xpc_dictionary_get_string(xdict, _xpc_error_key_description);
    v2 = sub_1000027A4();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100019500();
    }
  }

  return xdict == &_xpc_error_connection_invalid;
}

uint64_t sub_10000287C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000028B4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000028F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002904()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000294C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000295C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002994()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000029E0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002A30()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002A70()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 36, 7);
}

uint64_t sub_100002AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001A698();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100002B9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10001A698();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_100002C58()
{
  if (v0[3])
  {

    sub_100010300(v0[4], v0[5]);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002C9C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

CFArrayRef sub_100002D14(__CFReadStream *a1, int a2)
{
  error = 0;
  if (!a1)
  {
    v8 = sub_1000027A4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000181F0(v8);
    }

    goto LABEL_16;
  }

  if (!CFReadStreamOpen(a1))
  {
    if (a2)
    {
      goto LABEL_17;
    }

    v8 = sub_1000027A4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "CreateMISAuthListWithStream: open stream failed (may be non-existing)";
      v10 = v8;
      v11 = OS_LOG_TYPE_INFO;
      v12 = 2;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, v12);
    }

LABEL_16:

    goto LABEL_17;
  }

  v4 = CFPropertyListCreateWithStream(0, a1, 0, 0, 0, &error);
  if (!v4)
  {
    v8 = sub_1000027A4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = error;
      v9 = "CreateMISAuthListWithStream: authList parse failed (malformed?), error %{public}@";
      v10 = v8;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFArrayGetTypeID())
  {
    goto LABEL_18;
  }

  v7 = sub_1000027A4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CreateMISAuthListWithStream: plist root has wrong type", buf, 2u);
  }

  CFRelease(v5);
LABEL_17:
  v5 = 0;
LABEL_18:
  if (error)
  {
    CFRelease(error);
  }

  if (!v5 && a2)
  {
    return CFArrayCreate(0, 0, 0, &kCFTypeArrayCallBacks);
  }

  return v5;
}

CFArrayRef sub_100002F00(uint64_t a1, int a2)
{
  v3 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:a1];
  v4 = CFReadStreamCreateWithFile(0, [NSURL fileURLWithPath:v3]);
  v5 = sub_100002D14(v4, a2);
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

BOOL sub_100002F80(const __CFArray *a1, void *a2)
{
  v3 = a2;
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    v6 = 1;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    for (i = 0; i != v5; v6 = i >= v5)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v9 = CFGetTypeID(ValueAtIndex);
      if (v9 == CFStringGetTypeID())
      {
        if (!v3[2](v3, ValueAtIndex))
        {
          break;
        }
      }

      else
      {
        v10 = sub_1000027A4();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "authListIterate: row with unknown type", v12, 2u);
        }
      }

      ++i;
    }
  }

  return v6;
}

BOOL sub_1000030B0(const __CFArray *a1, void *a2)
{
  v3 = a2;
  Count = CFArrayGetCount(a1);
  v27 = v3;
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      v9 = CFGetTypeID(ValueAtIndex);
      if (v9 != CFDictionaryGetTypeID())
      {
        break;
      }

      v10 = CFArrayGetValueAtIndex(a1, v7);
      Value = CFDictionaryGetValue(v10, @"cdhash");
      v12 = CFDictionaryGetValue(v10, @"upp-uuid");
      v13 = CFDictionaryGetValue(v10, @"teamid");
      v14 = CFDictionaryGetValue(v10, @"type");
      v15 = CFDictionaryGetValue(v10, @"grace");
      if (!Value || (v16 = v15, v17 = CFGetTypeID(Value), v17 != CFStringGetTypeID()) || !v12 || (v18 = CFGetTypeID(v12), v18 != CFStringGetTypeID()) || !v13 || (v19 = CFGetTypeID(v13), v19 != CFStringGetTypeID()) || !v14 || (v20 = CFGetTypeID(v14), v20 != CFNumberGetTypeID()))
      {
        v22 = sub_1000027A4();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v23 = buf;
          v24 = v22;
          v25 = "indeterminateListIterate: malformed row";
LABEL_21:
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, v23, 2u);
        }

        goto LABEL_22;
      }

      if (!v16 || (v21 = CFGetTypeID(v16), v21 != CFNumberGetTypeID()))
      {
        valuePtr = 0;
        v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      }

      if (((v27)[2](v27, Value, v12, v13, v14, v16) & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_23:
      v6 = ++v7 >= v5;
      if (v5 == v7)
      {
        goto LABEL_26;
      }
    }

    v22 = sub_1000027A4();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 0;
      v23 = &v30;
      v24 = v22;
      v25 = "indeterminateListIterate: row with unknown type";
      goto LABEL_21;
    }

LABEL_22:

    goto LABEL_23;
  }

  v6 = 1;
LABEL_26:

  return v6;
}

BOOL sub_100003340(const __CFArray *a1, void *a2)
{
  v3 = a2;
  Count = CFArrayGetCount(a1);
  v25 = v3;
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      v9 = CFGetTypeID(ValueAtIndex);
      if (v9 == CFDictionaryGetTypeID())
      {
        v10 = CFArrayGetValueAtIndex(a1, v7);
        Value = CFDictionaryGetValue(v10, @"upp-uuid");
        v12 = CFDictionaryGetValue(v10, @"cdhash");
        v13 = CFDictionaryGetValue(v10, @"teamid");
        v14 = CFDictionaryGetValue(v10, @"wholeProfile");
        if (Value && (v15 = v14, v16 = CFGetTypeID(Value), v16 == CFStringGetTypeID()) && v12 && (v17 = CFGetTypeID(v12), v17 == CFStringGetTypeID()) && v13 && (v18 = CFGetTypeID(v13), v18 == CFStringGetTypeID()) && v15 && (v19 = CFGetTypeID(v15), v19 == CFNumberGetTypeID()))
        {
          valuePtr = 0;
          if (CFNumberGetValue(v15, kCFNumberIntType, &valuePtr))
          {
            if (!(v25)[2](v25, Value, v12, v13, valuePtr != 0))
            {
              goto LABEL_26;
            }

            goto LABEL_21;
          }

          v20 = sub_1000027A4();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v26 = 0;
            v21 = &v26;
            v22 = v20;
            v23 = "rejectionListIterate: could not convert wholeProfile";
            goto LABEL_19;
          }
        }

        else
        {
          v20 = sub_1000027A4();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v21 = buf;
            v22 = v20;
            v23 = "rejectionListIterate: malformed row";
            goto LABEL_19;
          }
        }
      }

      else
      {
        v20 = sub_1000027A4();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 0;
          v21 = &v29;
          v22 = v20;
          v23 = "rejectionListIterate: row with unknown type";
LABEL_19:
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, v21, 2u);
        }
      }

LABEL_21:
      v6 = ++v7 >= v5;
      if (v5 == v7)
      {
        goto LABEL_26;
      }
    }
  }

  v6 = 1;
LABEL_26:

  return v6;
}

id sub_1000035D0()
{
  v0 = [NSMutableArray alloc];
  v1 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"AGP.plist"];
  v2 = [v0 initWithContentsOfFile:v1];

  v14 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [v9 objectForKey:@"upp-uuid"];
          v11 = [v9 objectForKey:@"grace"];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            [v14 setObject:v11 forKeyedSubscript:v10];
          }

          else
          {
            v12 = sub_1000027A4();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v20 = v9;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "bad or incomplete graces row: %{public}@", buf, 0xCu);
            }
          }
        }

        else
        {
          v9 = sub_1000027A4();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v20 = v8;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "graces row is not a dictionary, but %{public}@", buf, 0xCu);
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  return v14;
}

uint64_t MISProvisioningProfileIsAppleInternalProfile()
{
  v0 = MISProvisioningProfileGetTeamIdentifier();
  if ([v0 caseInsensitiveCompare:@"243LU875E5"])
  {
    v1 = sub_10000394C();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

const void *MISProvisioningProfileGetTeamIdentifier()
{
  Value = MISProfileGetValue();
  if (!Value)
  {
    return 0;
  }

  v1 = Value;
  if (CFArrayGetCount(Value) != 1)
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(v1, 0);
}

uint64_t sub_10000394C()
{
  Value = MISProfileGetValue();
  if (!Value)
  {
    return 0;
  }

  v1 = Value;
  v2 = CFGetTypeID(Value);
  if (v2 != CFBooleanGetTypeID())
  {
    return 0;
  }

  return CFBooleanGetValue(v1);
}

uint64_t MISProvisioningProfileIncludesDevice(uint64_t a1, const __CFString *a2)
{
  if (sub_10000394C())
  {
    return 1;
  }

  Value = MISProfileGetValue();
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFArrayGetTypeID())
  {
    return 0;
  }

  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    return 0;
  }

  v8 = Count;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
    v3 = 1;
    if (CFStringCompare(ValueAtIndex, a2, 1uLL) == kCFCompareEqualTo)
    {
      break;
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  return v3;
}

BOOL MISProvisioningProfileIncludesPlatform(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  Value = MISProfileGetValue();
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v6);
      if (Count < 1)
      {
        return 0;
      }

      else
      {
        v9 = Count;
        v10 = 0;
        v11 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
          if (ValueAtIndex && (v13 = ValueAtIndex, v14 = CFGetTypeID(ValueAtIndex), v14 == CFStringGetTypeID()))
          {
            if (CFStringCompare(v13, a2, 1uLL) == kCFCompareEqualTo)
            {
              return v11;
            }
          }

          else
          {
            v15 = sub_1000027A4();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *v18 = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Encountered a null or non-string platform identifier.", v18, 2u);
            }
          }

          v11 = ++v10 < v9;
        }

        while (v9 != v10);
      }

      return v11;
    }

    else
    {
      v16 = sub_1000027A4();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Encountered a non-array value for 'Platforms'.", buf, 2u);
      }

      return 0;
    }
  }

  return a3;
}

void *MISProvisioningProfileGetDeveloperCertificatesHashes(void *a1)
{
  v1 = [a1 certs];

  return v1;
}

uint64_t MISXMLProvisioningProfileGetDeveloperCertificates()
{
  if (MISProfileIsDEREncoded())
  {
    return 0;
  }

  return MISProfileGetValue();
}

uint64_t MISProvisioningProfileGetVersion()
{
  v0 = MISProfileGetValue();
  if (objc_opt_respondsToSelector())
  {
    v1 = [v0 intValue];
  }

  else
  {
    v1 = 0xFFFFFFFFLL;
  }

  return v1;
}

void *MISProvisioningProfileGetEntitlements(void *a1)
{
  v1 = [a1 entitlements];

  return v1;
}

uint64_t MISProvisioningProfileCheckValidity(uint64_t a1, const __CFString *a2, const __CFDate *a3)
{
  v6 = MISProfileValidateSignature();
  if (!v6)
  {
    v6 = 3892346898;
    if (MISProvisioningProfileGetVersion() != 1)
    {
      return 3892346896;
    }

    if (!a2 || MISProvisioningProfileIncludesDevice(a1, a2))
    {
      v7 = sub_100003F78();
      if (sub_10001826C(v7, a1, @"OSX", 0))
      {
        v8 = sub_100003F78();
        v9 = sub_100003F78();
        v10 = sub_100003F64(v9);
        v11 = sub_10001826C(v8, a1, v10, 0);

        if (!v11)
        {
          v12 = sub_1000027A4();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_100018234(v12, v13, v14, v15, v16, v17, v18, v19);
          }

          return v6;
        }
      }

      else
      {
      }

      if (a3 && (Value = MISProfileGetValue()) != 0 && CFDateCompare(a3, Value, 0) != kCFCompareLessThan)
      {
        return 3892346897;
      }

      else
      {
        return 0;
      }
    }
  }

  return v6;
}

uint64_t MISProvisioningProfileIsForBetaDeployment(void *a1)
{
  v1 = [a1 entitlements];

  if (!v1)
  {
    return 0;
  }

  v2 = CFGetTypeID(v1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return MISEntitlementDictionaryAllowsEntitlementValue(v1, @"beta-reports-active", kCFBooleanTrue);
}

void sub_100003F48(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

const __CFString *sub_100003F64(uint64_t a1)
{
  if (a1)
  {
    return @"iOS";
  }

  else
  {
    return 0;
  }
}

id sub_100003F78()
{
  if (qword_10002DB10 != -1)
  {
    sub_100018308();
  }

  v1 = qword_10002DB18;

  return v1;
}

CFDataRef sub_10000401C(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  if (Length)
  {
    return 0;
  }

  Typed = CFAllocatorAllocateTyped();
  if (!CFStringGetCString(a1, Typed, Length | 1, 0x600u))
  {
    goto LABEL_28;
  }

  v4 = Length >> 1;
  v5 = CFAllocatorAllocateTyped();
  v6 = v5;
  if (v4 >= 1)
  {
    v7 = (Typed + 1);
    v8 = v5;
    v9 = v4;
    do
    {
      v10 = *(v7 - 1);
      v11 = v10 - 48;
      v12 = v10 - 97;
      v13 = (v10 - 71);
      v14 = v10 - 55;
      v15 = v13 >= 0xFA;
      v16 = v13 < 0xFA;
      if (!v15)
      {
        v14 = 0;
      }

      v17 = v10 - 87;
      v18 = v12 > 5;
      v19 = v12 > 5 && v16;
      if (v18)
      {
        v17 = v14;
      }

      if (v11 < 0xA)
      {
        v19 = 0;
        v17 = v11;
      }

      v20 = 16 * v17;
      v21 = *v7;
      v22 = v21 - 48;
      v23 = v21 - 97;
      v24 = (v21 - 71);
      v25 = v21 - 55;
      v15 = v24 >= 0xFA;
      v26 = v24 < 0xFA;
      if (!v15)
      {
        v25 = 0;
      }

      v27 = v21 - 87;
      v28 = v23 > 5;
      v29 = v23 > 5 && v26;
      if (v28)
      {
        v27 = v25;
      }

      if (v22 < 0xA)
      {
        v29 = 0;
        v27 = v22;
      }

      *v8 = v27 + v20;
      if (v19 || v29)
      {
        goto LABEL_27;
      }

      ++v8;
      v7 += 2;
    }

    while (--v9);
  }

  v30 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v5, v4, kCFAllocatorDefault);
  if (!v30 && v6)
  {
LABEL_27:
    CFAllocatorDeallocate(kCFAllocatorDefault, v6);
LABEL_28:
    v30 = 0;
  }

  if (Typed)
  {
    CFAllocatorDeallocate(kCFAllocatorDefault, Typed);
  }

  return v30;
}

const __CFString *sub_1000041B4(const __CFData *a1)
{
  if (!a1)
  {
    return @"NULL";
  }

  Length = CFDataGetLength(a1);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
  BytePtr = CFDataGetBytePtr(a1);
  v5 = CFDataGetLength(a1);
  if (v5 >= 1)
  {
    v6 = v5;
    do
    {
      v7 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, @"%02x", v7);
      --v6;
    }

    while (v6);
  }

  return Mutable;
}

__CFString *sub_100004260(const __CFData *a1)
{
  v1 = sub_1000041B4(a1);

  return v1;
}

uint64_t MISArrayAllowsEntitlementValue(const __CFArray *a1, const __CFString *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6 - 1);
      v8 = CFGetTypeID(ValueAtIndex);
      if (v8 != CFStringGetTypeID())
      {
        break;
      }

      Length = CFStringGetLength(ValueAtIndex);
      v10 = Length - 1;
      if (Length < 1)
      {
        HasPrefix = 0;
      }

      else if (CFStringGetCharacterAtIndex(ValueAtIndex, v10) == 42)
      {
        v14.location = 0;
        v14.length = v10;
        v11 = CFStringCreateWithSubstring(kCFAllocatorDefault, ValueAtIndex, v14);
        HasPrefix = CFStringHasPrefix(a2, v11);
        CFRelease(v11);
      }

      else
      {
        HasPrefix = CFStringCompare(ValueAtIndex, a2, 0) == kCFCompareEqualTo;
      }

      if (v6 < v5)
      {
        ++v6;
        if (!HasPrefix)
        {
          continue;
        }
      }

      return HasPrefix;
    }
  }

  return 0;
}

uint64_t MISEntitlementDictionaryAllowsEntitlementValue(const __CFDictionary *a1, const void *a2, const __CFString *a3)
{
  if (!a3)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  values = Value;
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  if (CFEqual(Value, @"*") != 1)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFBooleanGetTypeID())
    {
      return CFEqual(v5, a3);
    }

    v9 = CFGetTypeID(v5);
    if (v9 == CFStringGetTypeID())
    {
      v10 = CFGetTypeID(a3);
      if (v10 == CFStringGetTypeID())
      {
        v11 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
        v6 = MISArrayAllowsEntitlementValue(v11, a3);
        CFRelease(v11);
        return v6;
      }
    }

    else
    {
      v12 = CFGetTypeID(v5);
      if (v12 == CFArrayGetTypeID())
      {
        v13 = CFGetTypeID(a3);
        if (v13 == CFStringGetTypeID())
        {
          return MISArrayAllowsEntitlementValue(v5, a3);
        }

        v14 = CFGetTypeID(a3);
        if (v14 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(a3);
          if (Count < 1)
          {
            return 1;
          }

          v16 = Count;
          v17 = 1;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a3, v17 - 1);
            v19 = CFGetTypeID(ValueAtIndex);
            if (v19 != CFStringGetTypeID())
            {
              break;
            }

            v20 = MISArrayAllowsEntitlementValue(v5, ValueAtIndex);
            v6 = v20;
            if (v17 < v16)
            {
              ++v17;
              if (v20 == 1)
              {
                continue;
              }
            }

            return v6;
          }
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10000476C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@predicate");
  sqlite3_bind_text(a2, v5, [*(a1 + 40) UTF8String], -1, 0);
  v6 = sqlite3_bind_parameter_index(a2, "@wildcard");
  v7 = *(a1 + 48);

  return sqlite3_bind_int(a2, v6, v7);
}

void sub_100004A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004A3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004A54(uint64_t a1)
{
  v2 = [*(a1 + 32) readSetting:@"databaseSchemaVersion"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (!v5)
  {
    v8 = sub_1000027A4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MISQL: null version, potential erase or upgrade", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"1"];
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE profiles(uuid TEXT NOT NULL PRIMARY KEY withBind:team_id TEXT NOT NULL withResults:{install_time TEXT DEFAULT CURRENT_TIMESTAMP, name TEXT NOT NULL, expires INTEGER, is_for_all_devices INTEGER, is_apple_internal INTEGER, is_local INTEGER, is_beta INTEGER, cms_blob BLOB NOT NULL)", 0, 0}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_1000027A4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100018360(a1 + 48);
      }

      goto LABEL_73;
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE certificates(pk INTEGER PRIMARY KEY AUTOINCREMENT withBind:leaf BLOB UNIQUE NOT NULL)" withResults:{0, 0}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_1000027A4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000183D4(a1 + 48);
      }

      goto LABEL_73;
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE UNIQUE INDEX certificate_leaf_index ON certificates (leaf)" withBind:0 withResults:0];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_1000027A4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100018448(a1 + 48);
      }

      goto LABEL_73;
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE certificate_provisioning_cache(pk INTEGER PRIMARY KEY AUTOINCREMENT withBind:uuid TEXT NOT NULL withResults:{leaf_pk INTEGER NOT NULL, UNIQUE(uuid, leaf_pk), CONSTRAINT fk_certificate_leaf  FOREIGN KEY (leaf_pk)  REFERENCES certificates(pk)  ON DELETE CASCADE, CONSTRAINT fk_cert_profile_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_1000027A4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000184BC(a1 + 48);
      }

      goto LABEL_73;
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE entitlements_provisioning_cache(pk INTEGER PRIMARY KEY AUTOINCREMENT withBind:uuid TEXT NOT NULL withResults:{predicate TEXT NOT NULL, wildcard INTEGER NOT NULL, UNIQUE(uuid, predicate), CONSTRAINT fk_predicate_profile_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_1000027A4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100018530(a1 + 48);
      }

      goto LABEL_73;
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE UNIQUE INDEX entitlements_cache_index ON entitlements_provisioning_cache (uuid withBind:predicate)" withResults:{0, 0}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_1000027A4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000185A4(a1 + 48);
      }

      goto LABEL_73;
    }

    v79 = *(*(a1 + 40) + 8);
    v80 = *(v79 + 40);
    *(v79 + 40) = @"1";

    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  if ([v5 isEqualToString:@"1"])
  {
    v6 = sub_1000027A4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "MISQL: performing database migration 1 -> 2", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"2"];
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"ALTER TABLE profiles ADD COLUMN is_der INTEGER DEFAULT (0)" withBind:0 withResults:0];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_1000027A4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100018618(a1 + 48);
      }

      goto LABEL_73;
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE xml_profiles_cache(uuid TEXT NOT NULL PRIMARY KEY withBind:cms_blob BLOB NOT NULL withResults:{CONSTRAINT fk_xml_profile_cache_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_1000027A4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10001868C(a1 + 48);
      }

      goto LABEL_73;
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = @"2";
  }

  if ([*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"2"])
  {
    v11 = sub_1000027A4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "MISQL: performing database migration 2 -> 3", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"3"];
    [*(a1 + 32) findProfilesMatchingEntitlements:&off_10002AE58 withCertificate:0];
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v7 = v177 = 0u;
    v12 = [v7 countByEnumeratingWithState:&v174 objects:v187 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v175;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v175 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v16 = *(*(&v174 + 1) + 8 * i);
          if (![v16 ProvisionsAllDevices] && !objc_msgSend(v16, "AppleInternal"))
          {
            v17 = *(a1 + 32);
            v173[0] = _NSConcreteStackBlock;
            v173[1] = 3221225472;
            v173[2] = sub_100006324;
            v173[3] = &unk_100028C48;
            v173[4] = v16;
            *(*(*(a1 + 48) + 8) + 24) = [v17 executeQuery:@"UPDATE profiles SET is_beta = 1 WHERE uuid = @uuid" withBind:v173 withResults:0];
            if (*(*(*(a1 + 48) + 8) + 24))
            {
              v21 = sub_1000027A4();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                sub_100018700(a1 + 48);
              }

              goto LABEL_73;
            }
          }
        }

        v13 = [v7 countByEnumeratingWithState:&v174 objects:v187 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = @"3";
  }

  if ([*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"3"])
  {
    v20 = sub_1000027A4();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "MISQL: performing database migration 3 -> 4", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"4"];
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS trusted_team_ids(team_id TEXT PRIMARY KEY withBind:signature BLOB)" withResults:{0, 0}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_1000027A4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100018774(a1 + 48);
      }

      goto LABEL_73;
    }

    v22 = *(*(a1 + 40) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = @"4";
  }

  if ([*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"4"])
  {
    v24 = sub_1000027A4();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "MISQL: performing database migration 4 -> 5", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"5"];
    v25 = objc_opt_new();
    v26 = *(a1 + 32);
    v171[0] = _NSConcreteStackBlock;
    v171[1] = 3221225472;
    v171[2] = sub_1000063B4;
    v171[3] = &unk_100028C70;
    v7 = v25;
    v172 = v7;
    *(*(*(a1 + 48) + 8) + 24) = [v26 executeQuery:@"SELECT team_id withBind:signature FROM trusted_team_ids" withResults:{0, v171}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v27 = sub_1000027A4();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000187E8(a1 + 48);
      }

LABEL_71:

      v39 = v172;
      goto LABEL_72;
    }

    v124 = a1 + 48;
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v27 = v7;
    v28 = [v27 countByEnumeratingWithState:&v167 objects:v186 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v168;
      while (2)
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v168 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v167 + 1) + 8 * j);
          v33 = *(a1 + 32);
          v166[0] = _NSConcreteStackBlock;
          v166[1] = 3221225472;
          v166[2] = sub_100006434;
          v166[3] = &unk_100028C48;
          v166[4] = v32;
          *(*(*(a1 + 48) + 8) + 24) = [v33 executeQuery:@"UPDATE trusted_team_ids SET signature = NULL WHERE team_id = ?1" withBind:v166 withResults:0];
          if (*(*(*(a1 + 48) + 8) + 24))
          {
            v38 = sub_1000027A4();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_10001885C(v124);
            }

            goto LABEL_71;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v167 objects:v186 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    v34 = *(*(a1 + 40) + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = @"5";
  }

  if ([*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"5"])
  {
    v36 = sub_1000027A4();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "MISQL: performing database migration 5 -> 6", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"6"];
    v37 = a1 + 48;
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS team_id_info(team_id TEXT NOT NULL withBind:team_name TEXT NOT NULL withResults:{PRIMARY KEY (team_id))", 0, 0}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = sub_1000027A4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000188D0(a1 + 48);
      }

      goto LABEL_73;
    }

    v42 = objc_opt_new();
    v43 = *(a1 + 32);
    v164[0] = _NSConcreteStackBlock;
    v164[1] = 3221225472;
    v164[2] = sub_100006484;
    v164[3] = &unk_100028C70;
    v7 = v42;
    v165 = v7;
    *(*(*(a1 + 48) + 8) + 24) = [v43 executeQuery:@"SELECT profiles.team_id withBind:profiles.cms_blob withResults:{profiles.uuid FROM profiles", 0, v164}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v44 = sub_1000027A4();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_100018944(a1 + 48);
      }

LABEL_107:

      v39 = v165;
      goto LABEL_72;
    }

    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v44 = v7;
    v45 = [v44 countByEnumeratingWithState:&v160 objects:v185 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v161;
      while (2)
      {
        for (k = 0; k != v46; k = k + 1)
        {
          if (*v161 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v160 + 1) + 8 * k);
          v50 = [v44 objectForKeyedSubscript:v49];
          v51 = *(a1 + 32);
          v158[0] = _NSConcreteStackBlock;
          v158[1] = 3221225472;
          v158[2] = sub_1000065B4;
          v158[3] = &unk_100028C98;
          v158[4] = v49;
          v52 = v50;
          v159 = v52;
          *(*(*(a1 + 48) + 8) + 24) = [v51 executeQuery:@"INSERT INTO team_id_info VALUES (@team_id withBind:@team_name)" withResults:{v158, 0}];
          if (*(*(*(a1 + 48) + 8) + 24))
          {
            v61 = sub_1000027A4();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              sub_1000189B8(v37);
            }

            goto LABEL_107;
          }
        }

        v46 = [v44 countByEnumeratingWithState:&v160 objects:v185 count:16];
        if (v46)
        {
          continue;
        }

        break;
      }
    }

    v53 = *(*(a1 + 40) + 8);
    v54 = *(v53 + 40);
    *(v53 + 40) = @"6";
  }

  if (![*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"6"])
  {
    goto LABEL_130;
  }

  v55 = sub_1000027A4();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "MISQL: performing database migration 6 -> 7", buf, 2u);
  }

  [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"7"];
  v56 = a1 + 48;
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS signing_identities(pk INTEGER PRIMARY KEY AUTOINCREMENT withBind:uuid TEXT NOT NULL withResults:{signing_identity TEXT NOT NULL, UNIQUE(uuid, signing_identity), CONSTRAINT fk_signing_identity_profile_uuid  FOREIGN KEY (uuid)  REFERENCES profiles(uuid)   ON DELETE CASCADE)", 0, 0}];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v7 = sub_1000027A4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100018A2C(a1 + 48);
    }

    goto LABEL_73;
  }

  v156[0] = _NSConcreteStackBlock;
  v156[1] = 3221225472;
  v156[2] = sub_10000665C;
  v156[3] = &unk_100028CC0;
  v7 = objc_opt_new();
  v157 = v7;
  v57 = objc_retainBlock(v156);
  v58 = *(a1 + 32);
  v154[0] = _NSConcreteStackBlock;
  v154[1] = 3221225472;
  v154[2] = sub_100006928;
  v154[3] = &unk_100028CE8;
  v59 = v57;
  v155 = v59;
  *(*(*(a1 + 48) + 8) + 24) = [v58 executeQuery:@"SELECT uuid withBind:cms_blob FROM profiles WHERE is_der = 0 AND (is_for_all_devices = 1 OR is_local = 1)" withResults:{0, v154}];
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v62 = *(a1 + 32);
    v152[0] = _NSConcreteStackBlock;
    v152[1] = 3221225472;
    v152[2] = sub_1000069D0;
    v152[3] = &unk_100028CE8;
    v63 = v59;
    v153 = v63;
    *(*(*(a1 + 48) + 8) + 24) = [v62 executeQuery:@"SELECT xml_profiles_cache.uuid withBind:xml_profiles_cache.cms_blob FROM xml_profiles_cache LEFT JOIN profiles ON profiles.uuid = xml_profiles_cache.uuid WHERE profiles.is_for_all_devices = 1 OR profiles.is_local = 1" withResults:{0, v152}];
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v64 = sub_1000027A4();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_100018B14(v56);
      }

LABEL_146:

      goto LABEL_147;
    }

    v125 = v63;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v65 = v7;
    v118 = [v65 countByEnumeratingWithState:&v148 objects:v184 count:16];
    if (v118)
    {
      v66 = *v149;
      v122 = v65;
      v116 = *v149;
      do
      {
        v67 = 0;
        do
        {
          if (*v149 != v66)
          {
            objc_enumerationMutation(v65);
          }

          v120 = v67;
          v68 = *(*(&v148 + 1) + 8 * v67);
          v144 = 0u;
          v145 = 0u;
          v146 = 0u;
          v147 = 0u;
          v69 = [v65 objectForKeyedSubscript:v68];
          v70 = [v69 countByEnumeratingWithState:&v144 objects:v183 count:16];
          if (v70)
          {
            v71 = v70;
            v72 = *v145;
            while (2)
            {
              for (m = 0; m != v71; m = m + 1)
              {
                if (*v145 != v72)
                {
                  objc_enumerationMutation(v69);
                }

                v74 = *(*(&v144 + 1) + 8 * m);
                v75 = *(a1 + 32);
                v143[0] = _NSConcreteStackBlock;
                v143[1] = 3221225472;
                v143[2] = sub_100006A78;
                v143[3] = &unk_100028C98;
                v143[4] = v68;
                v143[5] = v74;
                *(*(*(a1 + 48) + 8) + 24) = [v75 executeQuery:@"INSERT OR IGNORE INTO signing_identities VALUES (NULL withBind:@uuid withResults:{@signing_identity)", v143, 0}];
                if (*(*(*(a1 + 48) + 8) + 24))
                {
                  v81 = sub_1000027A4();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                  {
                    sub_100018B88(v56);
                  }

                  v64 = v122;
                  v63 = v125;
                  goto LABEL_146;
                }
              }

              v71 = [v69 countByEnumeratingWithState:&v144 objects:v183 count:16];
              if (v71)
              {
                continue;
              }

              break;
            }
          }

          v67 = v120 + 1;
          v65 = v122;
          v66 = v116;
        }

        while ((v120 + 1) != v118);
        v118 = [v122 countByEnumeratingWithState:&v148 objects:v184 count:16];
      }

      while (v118);
    }

    v76 = *(*(a1 + 40) + 8);
    v77 = *(v76 + 40);
    *(v76 + 40) = @"7";

LABEL_130:
    if ([*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"7"])
    {
      v78 = sub_1000027A4();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "MISQL: performing database migration 7 -> 8", buf, 2u);
      }

      [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"8"];
      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS online_auth( uuid TEXT NOT NULL withBind:cdhash BLOB NOT NULL withResults:{grace_period INT NOT NULL, last_success_monotonic_time INT NOT NULL, last_success_reset_count INT NOT NULL, is_rejected INT NOT NULL DEFAULT (0), is_rejected_by_whole_profile INT NOT NULL DEFAULT (0), PRIMARY KEY (uuid, cdhash), CONSTRAINT fk_online_auth_profile_uuid    FOREIGN KEY (uuid)    REFERENCES profiles(uuid)    ON DELETE CASCADE)", 0, 0}];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v7 = sub_1000027A4();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_100018BFC(a1 + 48);
        }

        goto LABEL_73;
      }

      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS banned_profile_uuids( uuid TEXT NOT NULL)" withBind:0 withResults:0];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v7 = sub_1000027A4();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_100018C70(a1 + 48);
        }

        goto LABEL_73;
      }

      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) executeQuery:@"CREATE TABLE IF NOT EXISTS banned_cdhashes( cdhash BLOB NOT NULL)" withBind:0 withResults:0];
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v7 = sub_1000027A4();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_100018CE4(a1 + 48);
        }

        goto LABEL_73;
      }

      v82 = *(*(a1 + 40) + 8);
      v83 = *(v82 + 40);
      *(v82 + 40) = @"8";
    }

    if (![*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"8"])
    {
      return 1;
    }

    v84 = sub_1000027A4();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_INFO, "MISQL: performing database migration 8 -> 9", buf, 2u);
    }

    [*(a1 + 32) setSetting:@"databaseSchemaVersion" toValue:@"9"];
    v85 = objc_opt_new();
    v86 = *(a1 + 32);
    v141[0] = _NSConcreteStackBlock;
    v141[1] = 3221225472;
    v141[2] = sub_100006B20;
    v141[3] = &unk_100028C70;
    v7 = v85;
    v142 = v7;
    v87 = [v86 executeQuery:@"SELECT uuid withBind:predicate FROM entitlements_provisioning_cache WHERE predicate LIKE 'string%' || x'1f' || '*' AND wildcard = 1" withResults:{0, v141}];
    v88 = a1 + 48;
    *(*(*(a1 + 48) + 8) + 24) = v87;
    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      v115 = a1 + 48;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v90 = v7;
      v91 = [v90 countByEnumeratingWithState:&v137 objects:v182 count:16];
      if (v91)
      {
        v92 = *v138;
        v117 = v90;
        v113 = *v138;
        do
        {
          v93 = 0;
          v114 = v91;
          do
          {
            if (*v138 != v92)
            {
              v94 = v93;
              objc_enumerationMutation(v90);
              v93 = v94;
            }

            v119 = v93;
            v95 = *(*(&v137 + 1) + 8 * v93);
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v136 = 0u;
            obj = [v90 objectForKeyedSubscript:v95];
            v123 = [obj countByEnumeratingWithState:&v133 objects:v181 count:16];
            if (v123)
            {
              v126 = *v134;
              do
              {
                for (n = 0; n != v123; n = n + 1)
                {
                  if (*v134 != v126)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v97 = *(*(&v133 + 1) + 8 * n);
                  v98 = [v97 rangeOfString:off_10002D860];
                  if (v98 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v99 = [v97 substringFromIndex:v98];
                    v100 = [NSString stringWithFormat:@"BOOL%@", v99];
                    v180[0] = v100;
                    v121 = v99;
                    v101 = [NSString stringWithFormat:@"number%@", v99];
                    v180[1] = v101;
                    v102 = [NSArray arrayWithObjects:v180 count:2];

                    v131 = 0u;
                    v132 = 0u;
                    v129 = 0u;
                    v130 = 0u;
                    v103 = v102;
                    v104 = [v103 countByEnumeratingWithState:&v129 objects:v179 count:16];
                    if (v104)
                    {
                      v105 = v104;
                      v106 = *v130;
                      while (2)
                      {
                        for (ii = 0; ii != v105; ii = ii + 1)
                        {
                          if (*v130 != v106)
                          {
                            objc_enumerationMutation(v103);
                          }

                          v108 = *(*(&v129 + 1) + 8 * ii);
                          v109 = *(a1 + 32);
                          v128[0] = _NSConcreteStackBlock;
                          v128[1] = 3221225472;
                          v128[2] = sub_100006BF4;
                          v128[3] = &unk_100028C98;
                          v128[4] = v95;
                          v128[5] = v108;
                          *(*(*(a1 + 48) + 8) + 24) = [v109 executeQuery:@"INSERT OR IGNORE INTO entitlements_provisioning_cache (uuid withBind:predicate withResults:{wildcard) VALUES (?1, ?2, 1)", v128, 0}];
                          if (*(*(*(a1 + 48) + 8) + 24))
                          {
                            v112 = sub_1000027A4();
                            if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
                            {
                              sub_100018DCC(v115);
                            }

                            v89 = v117;
                            goto LABEL_184;
                          }
                        }

                        v105 = [v103 countByEnumeratingWithState:&v129 objects:v179 count:16];
                        if (v105)
                        {
                          continue;
                        }

                        break;
                      }
                    }
                  }
                }

                v90 = v117;
                v123 = [obj countByEnumeratingWithState:&v133 objects:v181 count:16];
              }

              while (v123);
            }

            v93 = v119 + 1;
            v92 = v113;
          }

          while ((v119 + 1) != v114);
          v91 = [v90 countByEnumeratingWithState:&v137 objects:v182 count:16];
        }

        while (v91);
      }

      v110 = *(*(a1 + 40) + 8);
      v111 = *(v110 + 40);
      *(v110 + 40) = @"9";

      v40 = 1;
      v7 = v90;
      goto LABEL_74;
    }

    v89 = sub_1000027A4();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      sub_100018D58(v88);
    }

LABEL_184:

    v39 = v142;
    goto LABEL_72;
  }

  v60 = sub_1000027A4();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    sub_100018AA0(v56);
  }

LABEL_147:
  v39 = v157;
LABEL_72:

LABEL_73:
  v40 = 0;
LABEL_74:

  return v40;
}

void sub_100006324(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v6 = [*(a1 + 32) UUID];
  v5 = v6;
  sqlite3_bind_text(a2, v4, [v6 UTF8String], -1, 0);
}

void sub_1000063B4(uint64_t a1, sqlite3_stmt *a2)
{
  v5 = sub_10000FC3C(a2, 0);
  v4 = sub_10000FCF4(a2, 1);
  if (![v4 length])
  {
    [*(a1 + 32) addObject:v5];
  }
}

uint64_t sub_100006434(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, 1, v3, -1, 0);
}

void sub_100006484(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = sub_10000FC3C(a2, 0);
  v8 = [*(a1 + 32) objectForKey:v7];

  if (!v8)
  {
    v9 = sub_10000FCF4(a2, 1);
    v10 = sub_10000FC3C(a2, 2);
    v11 = MISProfileCreateWithData();
    if (v11)
    {
      v12 = v11;
      v13 = MISProvisioningProfileGetTeamName();
      [*(a1 + 32) setObject:v13 forKeyedSubscript:v7];
      CFRelease(v12);
    }

    else
    {
      v14 = sub_1000027A4();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100018E40();
      }
    }
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t sub_1000065B4(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@team_id");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@team_name");
  v6 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, v5, v6, -1, 0);
}

void sub_10000665C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = MISProfileCreateWithData();
    if (v8)
    {
      v9 = v8;
      v10 = MISXMLProvisioningProfileGetDeveloperCertificates();
      CFRelease(v9);
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          v15 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = SecCertificateCreateWithData(0, *(*(&v22 + 1) + 8 * v15));
            if (v16)
            {
              v17 = v16;
              v18 = SecCertificateCopySubjectSummary(v16);
              CFRelease(v17);
              if (v18)
              {
                v19 = [*(a1 + 32) objectForKeyedSubscript:v5];

                if (!v19)
                {
                  v20 = objc_opt_new();
                  [*(a1 + 32) setObject:v20 forKeyedSubscript:v5];
                }

                v21 = [*(a1 + 32) objectForKeyedSubscript:v5];
                [v21 addObject:v18];
              }

              else
              {
                v21 = sub_1000027A4();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v27 = v5;
                  _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Migration: Unable to get signing identity from %@", buf, 0xCu);
                }
              }
            }

            else
            {
              v18 = sub_1000027A4();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v27 = v5;
                _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Migration: Couldn't create SecCertificate for %@", buf, 0xCu);
              }
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v11 = sub_1000027A4();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100018EB4();
      }
    }
  }
}

void sub_100006928(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v8 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_10000FC3C(a2, 0);
  v7 = sub_10000FCF4(a2, 1);
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v5);
}

void sub_1000069D0(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v8 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_10000FC3C(a2, 0);
  v7 = sub_10000FCF4(a2, 1);
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_100006A78(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@signing_identity");
  v6 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, v5, v6, -1, 0);
}

void sub_100006B20(uint64_t a1, sqlite3_stmt *a2)
{
  v8 = sub_10000FC3C(a2, 0);
  v4 = sub_10000FC3C(a2, 1);
  v5 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (!v5)
  {
    v6 = objc_opt_new();
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];
  }

  v7 = [*(a1 + 32) objectForKeyedSubscript:v8];
  [v7 addObject:v4];
}

uint64_t sub_100006BF4(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0);
  v4 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, 2, v4, -1, 0);
}

BOOL sub_100006D5C(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if ([v2 isProfileInstalled:MISProvisioningProfileGetUUID()])
  {
    return 1;
  }

  *(*(a1[5] + 8) + 24) = [*(a1[4] + 56) insertProfile:a1[6]];
  return *(*(a1[5] + 8) + 24) == 0;
}

void sub_100006F04(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"profile_cms_blob"];
  v6 = sub_10000FCF4(a2, [v5 intValue]);

  [*(a1 + 32) addObject:v6];
}

void sub_100006F90(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"blob"];
  v6 = sub_10000FCF4(a2, [v5 intValue]);

  [*(a1 + 32) addObject:v6];
}

void sub_10000701C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [BoxedMISProfile fromSQLStatement:a2 withMap:a3];
  [v3 addObject:v4];
}

id sub_1000073A8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 0;
  if (a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  return [*(a1 + 32) appendFormat:@"(%lu, @p%lu)", a3, a3];
}

id sub_100007400(uint64_t a1, sqlite3_stmt *a2)
{
  if (*(a1 + 32))
  {
    v4 = sqlite3_bind_parameter_index(a2, "@cert");
    sqlite3_bind_blob(a2, v4, [*(a1 + 32) bytes], objc_msgSend(*(a1 + 32), "length"), 0);
  }

  v5 = sqlite3_bind_parameter_index(a2, "@totalPredicates");
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) count]);
  sqlite3_bind_int64(a2, v5, [v6 longLongValue]);

  result = [*(a1 + 40) count];
  if (result)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = [NSString stringWithFormat:@"@p%u", v9];
      v11 = sqlite3_bind_parameter_index(a2, [v10 UTF8String]);
      v12 = [*(a1 + 40) objectAtIndexedSubscript:v8];
      sqlite3_bind_text(a2, v11, [v12 UTF8String], -1, 0);

      v8 = (v9 + 1);
      result = [*(a1 + 40) count];
      v9 = v8;
    }

    while (result > v8);
  }

  return result;
}

void sub_100007584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [BoxedMISProfile fromSQLStatement:a2 withMap:a3];
  [v3 addObject:v4];
}

uint64_t sub_100007744(uint64_t result, sqlite3_stmt *a2)
{
  if (*(result + 32))
  {
    v3 = result;
    v4 = sqlite3_bind_parameter_index(a2, "@cert");
    v5 = [*(v3 + 32) bytes];
    v6 = [*(v3 + 32) length];

    return sqlite3_bind_blob(a2, v4, v5, v6, 0);
  }

  return result;
}

void sub_1000077CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [BoxedMISProfile fromSQLStatement:a2 withMap:a3];
  [v3 addObject:v4];
}

void sub_1000078BC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

const char *sub_1000078DC(uint64_t a1)
{
  v2 = *(*(*a1 + 8) + 24);

  return sqlite3_errstr(v2);
}

void start()
{
  signal(15, 1);
  v0 = sub_1000079D8();
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100007A10;
  handler[3] = &unk_100028DA8;
  handler[4] = v1;
  dispatch_source_set_event_handler(v1, handler);
  dispatch_resume(v1);
  sub_1000081A0();
  v2 = sub_1000079D8();
  mach_service = xpc_connection_create_mach_service("com.apple.misagent", v2, 1uLL);
  xpc_connection_set_event_handler(mach_service, &stru_100028DE8);
  xpc_connection_resume(mach_service);
  dispatch_main();
}

uint64_t sub_1000079D8()
{
  if (qword_10002DB28 != -1)
  {
    sub_100018F28();
  }

  return qword_10002DB20;
}

void sub_100007A2C(id a1)
{
  qword_10002DB20 = dispatch_workloop_create_inactive("com.apple.misagent.worker");
  dispatch_set_qos_class_fallback();
  dispatch_workloop_set_scheduler_priority();
  v1 = qword_10002DB20;

  dispatch_activate(v1);
}

void sub_100007A88()
{
  v0 = sub_1000027A4();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "XPC connection has been town down", v1, 2u);
  }
}

uint64_t sub_100007AE8(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100007B94;
  v3[3] = &unk_100028E70;
  v3[4] = &v4;
  v3[5] = a1;
  dispatch_sync(&_dispatch_main_q, v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t sub_100007B94(uint64_t a1)
{
  if (MISProvisioningProfileIsForBetaDeployment(*(a1 + 40)))
  {
    v2 = sub_1000027A4();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Attempt to install a Beta profile over lockdown connection.", v4, 2u);
    }

    result = 3892346911;
  }

  else
  {
    result = sub_100007C2C(*(a1 + 40));
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100007C2C(uint64_t a1)
{
  v2 = sub_100009D54(a1);
  v3 = sub_1000027A4();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v8 = 67109120;
      LODWORD(UUID) = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "attempt to install invalid profile: 0x%x", &v8, 8u);
    }
  }

  else
  {
    if (v4)
    {
      v8 = 138543362;
      UUID = MISProvisioningProfileGetUUID();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Installing provisioning profile: %{public}@", &v8, 0xCu);
    }

    v5 = sub_100002760();
    if ([v5 insertProfile:a1])
    {
      v2 = 3892346906;
    }

    else
    {
      v2 = 0;
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"MISProvisioningProfileInstalled", 0, 0, 0);
  }

  return v2;
}

uint64_t sub_100007D74(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100007E20;
  v3[3] = &unk_100028E70;
  v3[4] = &v4;
  v3[5] = a1;
  dispatch_sync(&_dispatch_main_q, v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100007E54(uint64_t a1)
{
  v2 = sub_1000027A4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing provisioning profile: %{public}@", buf, 0xCu);
  }

  v3 = sub_100002760();
  v7 = 0;
  [v3 removeProfileWithUuid:a1 error:&v7];
  v4 = v7;

  if (v4)
  {
    v5 = sub_1000027A4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100018FB4();
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"MISProvisioningProfileRemoved", 0, 0, 0);
}

uint64_t sub_100007F74(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100008020;
  v3[3] = &unk_100028E70;
  v3[4] = &v4;
  v3[5] = a1;
  dispatch_sync(&_dispatch_main_q, v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100008020(uint64_t a1)
{
  v2 = *(a1 + 40);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v4 = Mutable;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = sub_100002760();
    v6 = [v5 allCMSBlobs];

    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          CFArrayAppendValue(v4, *(*(&v13 + 1) + 8 * v10));
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    v11 = 0;
    *v2 = v4;
  }

  else
  {
    v12 = sub_1000027A4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100019024();
    }

    v11 = -402620406;
  }

  *(*(*(a1 + 32) + 8) + 24) = v11;
}

uint64_t sub_1000081A0()
{
  if (qword_10002DB38 != -1)
  {
    sub_100019060();
  }

  dispatch_semaphore_wait(qword_10002DB30, 0xFFFFFFFFFFFFFFFFLL);
  v0 = sub_100002760();
  v1 = [v0 readSetting:@"databaseSchemaVersion"];
  v2 = [v1 isEqual:off_10002D858];

  if ((v2 & 1) == 0)
  {
    v3 = sub_100002760();
    [v3 migrate];
  }

  v4 = sub_100002760();
  v5 = +[NSFileManager defaultManager];
  v6 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"UserTrustedUpps.plist"];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    *&v93 = 0;
    *(&v93 + 1) = &v93;
    *&v94 = 0x2020000000;
    DWORD2(v94) = 0;
    v8 = sub_1000027A4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Migration: Starting migration from legacy user trust plist", buf, 2u);
    }

    v9 = sub_100002F00(@"UserTrustedUpps.plist", 1);
    *buf = _NSConcreteStackBlock;
    v106 = 3221225472;
    v107 = sub_10000A11C;
    v108 = &unk_100028ED8;
    v109 = &v93;
    sub_100002F80(v9, buf);
    v10 = +[NSFileManager defaultManager];
    v11 = @"UserTrustedUpps.plist";
    v12 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:v11];

    *v117 = 0;
    [v10 removeItemAtPath:v12 error:v117];
    v13 = *v117;
    if (v13)
    {
      v14 = sub_1000027A4();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100019074();
      }

      *(*(&v93 + 1) + 24) = -402620405;
    }

    v15 = sub_1000027A4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(&v93 + 1) + 24);
      *v112 = 67109120;
      *&v112[4] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Migration: Finished migration from legacy user trust plist: %d", v112, 8u);
    }

    v17 = *(*(&v93 + 1) + 24);
    _Block_object_dispose(&v93, 8);
  }

  else
  {
    v17 = 0;
  }

  v18 = +[NSFileManager defaultManager];
  v19 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"UserTrust.db"];
  v20 = [v18 fileExistsAtPath:v19];

  if (v20)
  {
    v21 = sub_1000027A4();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Migration: Starting migration from legacy user trust DB", buf, 2u);
    }

    v22 = objc_opt_new();
    *v112 = 0;
    v23 = [v22 getUserTrustedUUIDsAndReturnError:v112];
    v24 = *v112;
    if (v24)
    {
      v25 = v24;
      v26 = sub_1000027A4();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000190B0();
      }

      v17 = 3892346914;
    }

    else
    {
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v27 = v23;
      v28 = [v27 countByEnumeratingWithState:&v93 objects:buf count:16];
      if (v28)
      {
        v30 = 0;
        v17 = 0;
        v31 = *v94;
        *&v29 = 138543362;
        v91 = v29;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v94 != v31)
            {
              objc_enumerationMutation(v27);
            }

            v33 = *(*(&v93 + 1) + 8 * i);

            v34 = sub_100002760();
            v101 = 0;
            v35 = [v34 getTeamIDForProfileUUID:v33 error:&v101];
            v30 = v101;

            if (v30)
            {
              v36 = sub_1000027A4();
              v17 = 3892346914;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *v117 = v91;
                *&v117[4] = v33;
                _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Migration: Error fetching team ID for profile UUID %{public}@", v117, 0xCu);
              }
            }

            else
            {
              v36 = [v22 getAuxiliarySignatureWithTeamId:v35];
              v37 = sub_1000027A4();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *v117 = 138543618;
                *&v117[4] = v35;
                *&v117[12] = 2114;
                *&v117[14] = v36;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Migration: Trusting team ID %{public}@ with signature %{public}@", v117, 0x16u);
              }

              v38 = sub_100002760();
              *v120 = 0;
              [v38 createTrustedTeamIDEntryWithTeamID:v35 signature:v36 error:v120];
              v30 = *v120;

              if (v30)
              {
                v39 = sub_1000027A4();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  *v117 = 138543618;
                  *&v117[4] = v35;
                  *&v117[12] = 2114;
                  *&v117[14] = v36;
                  _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Migration: Error trusting team ID %{public}@ with signature %{public}@", v117, 0x16u);
                }

                v17 = 3892346914;
              }
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v93 objects:buf count:16];
        }

        while (v28);
      }

      else
      {
        v17 = 0;
      }

      v22 = +[NSFileManager defaultManager];
      v40 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"UserTrust.db"];
      *v117 = 0;
      [v22 removeItemAtPath:v40 error:v117];
      v41 = *v117;

      if (v41)
      {
        v42 = sub_1000027A4();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_100019120();
        }

        v17 = 3892346891;
      }

      v43 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:{@"UserTrust.db-shm", v91}];
      v100 = v41;
      [v22 removeItemAtPath:v43 error:&v100];
      v44 = v100;

      if (v44)
      {
        v45 = sub_1000027A4();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          sub_10001915C();
        }

        v17 = 3892346891;
      }

      v46 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"UserTrust.db-wal"];
      v99 = v44;
      [v22 removeItemAtPath:v46 error:&v99];
      v25 = v99;

      if (v25)
      {
        v47 = sub_1000027A4();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_100019198();
        }

        v17 = 3892346891;
      }

      v23 = sub_1000027A4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v111 = 67109120;
        *&v111[4] = v17;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Migration: Finished migration from legacy user trust DB: %d", v111, 8u);
      }
    }
  }

  if (v17)
  {
    v48 = sub_1000027A4();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_1000191D4();
    }
  }

  v49 = +[NSFileManager defaultManager];
  v50 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"Indeterminates.plist"];
  if (([v49 fileExistsAtPath:v50] & 1) == 0)
  {
    v51 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"AGP.plist"];
    if (([v49 fileExistsAtPath:v51] & 1) == 0)
    {
      v52 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"Rejections.plist"];
      if (([v49 fileExistsAtPath:v52] & 1) == 0)
      {
        v53 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"AuthListBannedUpps.plist"];
        if (([v49 fileExistsAtPath:v53] & 1) == 0)
        {
          v90 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:@"AuthListBannedCdHashes.plist"];
          v92 = [v49 fileExistsAtPath:v90];

          if ((v92 & 1) == 0)
          {
            goto LABEL_120;
          }

          goto LABEL_68;
        }
      }
    }
  }

LABEL_68:
  v101 = 0;
  v102 = &v101;
  v103 = 0x2020000000;
  v104 = 0;
  v54 = sub_1000027A4();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    *v120 = 138543362;
    *&v120[4] = @"Indeterminates.plist";
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Migration: Starting migration of %{public}@", v120, 0xCu);
  }

  v55 = sub_10000309C();
  if (v55)
  {
    v56 = sub_1000035D0();
    *buf = _NSConcreteStackBlock;
    v106 = 3221225472;
    v107 = sub_10000A248;
    v108 = &unk_100028F00;
    v57 = v56;
    v109 = v57;
    v110 = &v101;
    sub_1000030B0(v55, buf);
  }

  v58 = sub_1000027A4();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *v120 = 138543362;
    *&v120[4] = @"Rejections.plist";
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Migration: Starting migration of %{public}@", v120, 0xCu);
  }

  v59 = sub_10000332C();
  if (v59)
  {
    *&v93 = _NSConcreteStackBlock;
    *(&v93 + 1) = 3221225472;
    *&v94 = sub_10000A464;
    *(&v94 + 1) = &unk_100028F28;
    *&v95 = &v101;
    sub_100003340(v59, &v93);
  }

  v60 = sub_1000027A4();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    *v120 = 138543362;
    *&v120[4] = @"AuthListBannedUpps.plist";
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Migration: Starting migration of %{public}@", v120, 0xCu);
  }

  v61 = sub_100002F00(@"AuthListBannedUpps.plist", 0);
  if (v61)
  {
    *v117 = _NSConcreteStackBlock;
    *&v117[8] = 3221225472;
    *&v117[16] = sub_10000A624;
    v118 = &unk_100028ED8;
    v119 = &v101;
    sub_100002F80(v61, v117);
  }

  v62 = sub_1000027A4();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    *v120 = 138543362;
    *&v120[4] = @"AuthListBannedCdHashes.plist";
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Migration: Starting migration of %{public}@", v120, 0xCu);
  }

  v63 = sub_100002F00(@"AuthListBannedCdHashes.plist", 0);
  if (v63)
  {
    *v112 = _NSConcreteStackBlock;
    v113 = 3221225472;
    v114 = sub_10000A6DC;
    v115 = &unk_100028ED8;
    v116 = &v101;
    sub_100002F80(v63, v112);
  }

  v64 = +[NSFileManager defaultManager];
  v65 = @"Indeterminates.plist";
  v66 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:v65];

  if ([v64 fileExistsAtPath:v66])
  {
    v100 = 0;
    [v64 removeItemAtPath:v66 error:&v100];
    v67 = v100;
    if (v67)
    {
      v68 = sub_1000027A4();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        sub_100019248();
      }

      *(v102 + 6) = -402620405;
    }
  }

  else
  {
    v67 = 0;
  }

  v69 = @"AGP.plist";
  v70 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:v69];

  if ([v64 fileExistsAtPath:v70])
  {
    v99 = v67;
    [v64 removeItemAtPath:v70 error:&v99];
    v71 = v99;

    if (v71)
    {
      v72 = sub_1000027A4();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        sub_1000192B8();
      }

      *(v102 + 6) = -402620405;
    }
  }

  else
  {
    v71 = v67;
  }

  v73 = @"Rejections.plist";
  v74 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:v73];

  if ([v64 fileExistsAtPath:v74])
  {
    *v111 = v71;
    [v64 removeItemAtPath:v74 error:v111];
    v75 = *v111;

    if (v75)
    {
      v76 = sub_1000027A4();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        sub_100019328();
      }

      *(v102 + 6) = -402620405;
    }
  }

  else
  {
    v75 = v71;
  }

  v77 = @"AuthListBannedUpps.plist";
  v78 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:v77];

  if ([v64 fileExistsAtPath:v78])
  {
    v98 = v75;
    [v64 removeItemAtPath:v78 error:&v98];
    v79 = v98;

    if (v79)
    {
      v80 = sub_1000027A4();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        sub_100019398();
      }

      *(v102 + 6) = -402620405;
    }
  }

  else
  {
    v79 = v75;
  }

  v81 = @"AuthListBannedCdHashes.plist";
  v82 = [@"/private/var/db/MobileIdentityData" stringByAppendingPathComponent:v81];

  if ([v64 fileExistsAtPath:v82])
  {
    v97 = v79;
    [v64 removeItemAtPath:v82 error:&v97];
    v83 = v97;

    if (v83)
    {
      v84 = sub_1000027A4();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        sub_100019408();
      }

      *(v102 + 6) = -402620405;
    }
  }

  else
  {
    v83 = v79;
  }

  v85 = sub_1000027A4();
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    v86 = *(v102 + 6);
    *v120 = 67109120;
    *&v120[4] = v86;
    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Migration: Finished online auth migration: %d", v120, 8u);
  }

  v87 = *(v102 + 6);
  _Block_object_dispose(&v101, 8);
  if (v87)
  {
    v88 = sub_1000027A4();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      sub_100019478();
    }

    v17 = v87;
  }

LABEL_120:
  dispatch_semaphore_signal(qword_10002DB30);
  return v17;
}

void sub_100009274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000092F4(id a1)
{
  qword_10002DB30 = dispatch_semaphore_create(1);

  _objc_release_x1();
}

void sub_10000932C(void *a1, void *a2)
{
  v3 = a2;
  length = 0;
  v4 = a1;
  if (sub_10000A798(v4))
  {
    v5 = xpc_dictionary_get_dictionary(v3, "Payload");
    if (v5)
    {
      v6 = v5;
      v7 = xpc_dictionary_get_BOOL(v5, "Trust");
      string = xpc_dictionary_get_string(v6, "ProfileID");
      v9 = xpc_dictionary_get_string(v6, "TeamID");
      data = xpc_dictionary_get_data(v6, "AuxiliarySignature", &length);
      if (!(string | v9))
      {
        v11 = sub_1000027A4();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100019A48();
        }

LABEL_16:
        v12 = -402620415;

        goto LABEL_44;
      }

      v13 = data;
      if (string && v9)
      {
        v11 = sub_1000027A4();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100019A0C();
        }

        goto LABEL_16;
      }

      if (string)
      {
        string = [NSString stringWithUTF8String:string];
      }

      if (v9)
      {
        v9 = [NSString stringWithUTF8String:v9];
      }

      if (length)
      {
        v14 = [NSData alloc];
        v15 = [v14 initWithBytes:v13 length:length];
        if (v9)
        {
LABEL_23:
          v16 = sub_1000027A4();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v33 = v9;
            v34 = 1024;
            *v35 = v7;
            *&v35[4] = 2114;
            *&v35[6] = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting trust for teamID = %{public}@, trust = %d, auxiliary signature = %{public}@", buf, 0x1Cu);
          }

          v17 = sub_100002760();
          v18 = v17;
          if (v7)
          {
            v30 = 0;
            v19 = &v30;
            [v17 createTrustedTeamIDEntryWithTeamID:v9 signature:v15 error:&v30];
          }

          else
          {
            v29 = 0;
            v19 = &v29;
            [v17 deleteTrustedWithTeamID:v9 error:&v29];
          }

          goto LABEL_35;
        }
      }

      else
      {
        v15 = 0;
        if (v9)
        {
          goto LABEL_23;
        }
      }

      if (!string)
      {
        goto LABEL_39;
      }

      v20 = sub_1000027A4();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v33 = string;
        v34 = 1024;
        *v35 = v7;
        *&v35[4] = 2114;
        *&v35[6] = v15;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Setting trust for profileUUID = %{public}@, trust = %d, auxiliary signature = %{public}@", buf, 0x1Cu);
      }

      v21 = sub_100002760();
      v18 = v21;
      if (v7)
      {
        v28 = 0;
        v19 = &v28;
        [v21 createTrustedTeamIDEntryWithProfileUUID:string signature:v15 error:&v28];
      }

      else
      {
        v27 = 0;
        v19 = &v27;
        [v21 deleteTrustedWithProfileUUID:string error:&v27];
      }

LABEL_35:
      v22 = *v19;

      if (v22)
      {
        v23 = sub_1000027A4();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138544386;
          v33 = v22;
          v34 = 2114;
          *v35 = string;
          *&v35[8] = 2114;
          *&v35[10] = v9;
          v36 = 2114;
          v37 = v15;
          v38 = 1024;
          v39 = v7;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Error setting user trust: error = %{public}@, profileUUID = %{public}@, team = %{public}@, signature = %{public}@, trust = %d", buf, 0x30u);
        }

        v12 = -402620382;
        goto LABEL_40;
      }

LABEL_39:
      v12 = 0;
LABEL_40:
      if (v7)
      {
        v24 = @"MISUPPTrustSet";
      }

      else
      {
        v24 = @"MISUPPTrustRevoked";
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, v24, 0, 0, 0);

      goto LABEL_44;
    }

    v6 = sub_1000027A4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100019A84();
    }

    v12 = -402620403;
  }

  else
  {
    v6 = sub_1000027A4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000199D0();
    }

    v12 = -402620371;
  }

LABEL_44:

  reply = xpc_dictionary_create_reply(v3);
  xpc_dictionary_set_uint64(reply, "Status", v12);
  xpc_connection_send_message(v4, reply);
}

void sub_1000097F4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  int64 = xpc_dictionary_get_int64(v3, "MigrationPhase");
  if (!int64)
  {
    goto LABEL_4;
  }

  if (int64 == 1)
  {
    v6 = sub_10000FB00();
    v7 = sub_100002760();
    [v7 setSetting:@"deviceUDID" toValue:v6];

LABEL_4:
    v8 = sub_1000081A0();
    goto LABEL_8;
  }

  v9 = sub_1000027A4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100019AC0();
  }

  v8 = -402620415;
LABEL_8:
  reply = xpc_dictionary_create_reply(v3);

  xpc_dictionary_set_uint64(reply, "Status", v8);
  xpc_connection_send_message(v4, reply);
}

void sub_1000098F4(void *a1, void *a2)
{
  v3 = a2;
  length = 0;
  v4 = a1;
  v5 = sub_10000FACC();
  v6 = sub_10000FC30();
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    int64 = xpc_dictionary_get_int64(v3, "Offset");
    data = xpc_dictionary_get_data(v3, "CDHash", &length);
    if (length)
    {
      v10 = data;
      v11 = [NSData alloc];
      v12 = [v11 initWithBytes:v10 length:length];
    }

    else
    {
      v12 = 0;
    }

    v15 = sub_100002760();
    v18 = 0;
    [v15 addMonotonicTimeOffset:int64 cdHash:v12 error:&v18];
    v14 = v18;

    if (!v14)
    {
      v13 = 0;
      goto LABEL_13;
    }

    v16 = sub_1000027A4();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v21 = v14;
      v22 = 2048;
      v23 = int64;
      v24 = 2114;
      v25 = v12;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error adding monotonic time offset: error = %{public}@, offset = %ld, cdHash = %{public}@", buf, 0x20u);
    }

    v13 = -402620382;
  }

  else
  {
    v13 = -402620415;
    v14 = sub_1000027A4();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100019B30();
    }

    v12 = 0;
  }

LABEL_13:
  reply = xpc_dictionary_create_reply(v3);
  xpc_dictionary_set_uint64(reply, "Status", v13);
  xpc_connection_send_message(v4, reply);
}

void sub_100009B24(void *a1, void *a2)
{
  v3 = a2;
  length = 0;
  v4 = a1;
  v5 = sub_10000FACC();
  v6 = sub_10000FC30();
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    int64 = xpc_dictionary_get_int64(v3, "Offset");
    data = xpc_dictionary_get_data(v3, "CDHash", &length);
    if (length)
    {
      v10 = data;
      v11 = [NSData alloc];
      v12 = [v11 initWithBytes:v10 length:length];
    }

    else
    {
      v12 = 0;
    }

    v15 = sub_100002760();
    v18 = 0;
    [v15 addRTCResetCountOffset:int64 cdHash:v12 error:&v18];
    v14 = v18;

    if (!v14)
    {
      v13 = 0;
      goto LABEL_13;
    }

    v16 = sub_1000027A4();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v21 = v14;
      v22 = 2048;
      v23 = int64;
      v24 = 2114;
      v25 = v12;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error adding RTC reset count offset: error = %{public}@, offset = %ld, cdHash = %{public}@", buf, 0x20u);
    }

    v13 = -402620382;
  }

  else
  {
    v13 = -402620415;
    v14 = sub_1000027A4();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100019B6C();
    }

    v12 = 0;
  }

LABEL_13:
  reply = xpc_dictionary_create_reply(v3);
  xpc_dictionary_set_uint64(reply, "Status", v13);
  xpc_connection_send_message(v4, reply);
}

uint64_t sub_100009D54(uint64_t a1)
{
  v2 = sub_10000AB24();
  if (v2)
  {
    v3 = v2;
    Current = j__CFAbsoluteTimeGetCurrent();
    v5 = CFDateCreate(kCFAllocatorDefault, Current);
    v6 = MISProvisioningProfileCheckValidity(a1, v3, v5);
    CFRelease(v5);
    CFRelease(v3);
    return v6;
  }

  else
  {
    v8 = sub_1000027A4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100019BA8();
    }

    return 3892346881;
  }
}

void sub_100009E00(id a1)
{
  v1 = [@"/Library/MobileDevice/ProvisioningProfiles" stringByAppendingPathComponent:@"mis.db"];
  v2 = [NSURL fileURLWithPath:v1];

  v3 = [(SQLDB *)MISDBManager databaseWithURL:v2];
  v4 = qword_10002DB40;
  qword_10002DB40 = v3;

  v5 = [@"/Library/MobileDevice/ProvisioningProfiles" fileSystemRepresentation];
  v6 = opendir(v5);
  if (v6)
  {
    v7 = v6;
    for (i = readdir(v6); i; i = readdir(v7))
    {
      if (i->d_type == 8)
      {
        d_name = i->d_name;
        v10 = [NSString stringWithUTF8String:i->d_name];
        if ([v10 length] == 36)
        {
          v11 = snprintf(__str, 0x400uLL, "%s/%s", v5, d_name);
          v12 = sub_100009FB4(v11, __str);

          if (!v12)
          {
            break;
          }
        }

        else
        {
        }
      }
    }

    closedir(v7);
  }

  else if (*__error() != 2)
  {
    __error();
    v13 = sub_1000027A4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100019BE4();
    }
  }
}

uint64_t sub_100009FB4(uint64_t a1, const char *a2)
{
  v3 = CFStringCreateWithFileSystemRepresentation(kCFAllocatorDefault, a2);
  if (v3)
  {
    v4 = v3;
    v5 = MISProfileCreateWithFile();
    CFRelease(v4);
    if (v5)
    {
      if (!sub_100009D54(v5) && ![qword_10002DB40 insertProfile:v5])
      {
        v6 = +[NSFileManager defaultManager];
        v7 = [NSString stringWithUTF8String:a2];
        v13 = 0;
        [v6 removeItemAtPath:v7 error:&v13];
        v8 = v13;

        v9 = sub_1000027A4();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
        if (v8)
        {
          if (v10)
          {
            sub_100019C20();
          }
        }

        else if (v10)
        {
          sub_100019C90();
        }
      }

      CFRelease(v5);
    }
  }

  else
  {
    v11 = sub_1000027A4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100019D00();
    }
  }

  return 1;
}

uint64_t sub_10000A11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000027A4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Migration: Trusting profile UUID %{public}@", buf, 0xCu);
  }

  v5 = sub_100002760();
  v9 = 0;
  [v5 createTrustedTeamIDEntryWithProfileUUID:a2 signature:0 error:&v9];
  v6 = v9;

  if (v6)
  {
    v7 = sub_1000027A4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100019D70();
    }

    *(*(*(a1 + 32) + 8) + 24) = -402620382;
  }

  return 1;
}

uint64_t sub_10000A248(uint64_t a1, const __CFString *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = sub_100002760();
  v11 = [v10 isProfileInstalled:v9];

  if (v11)
  {
    v12 = sub_10000401C(a2);
    j__TMGetKernelMonotonicClock();
    v14 = v13;
    v15 = j__TMGetRTCResetCount();
    v16 = [*(a1 + 32) objectForKey:v9];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = &off_10002AE80;
    }

    LOBYTE(v23) = 0;
    v18 = -[MISOnlineAuthEntry initWithProfileUUID:cdHash:gracePeriod:lastSuccessMonotonicTime:lastSuccessResetCount:isRejected:isRejectedByWholeProfile:]([MISOnlineAuthEntry alloc], "initWithProfileUUID:cdHash:gracePeriod:lastSuccessMonotonicTime:lastSuccessResetCount:isRejected:isRejectedByWholeProfile:", v9, v12, [v17 intValue], v14 - (86400 * (objc_msgSend(v17, "intValue") - objc_msgSend(a6, "intValue"))), v15, 0, v23);
    v19 = sub_100002760();
    v24 = 0;
    [v19 createOnlineAuthEntry:v18 error:&v24];
    v20 = v24;

    if (v20)
    {
      v21 = sub_1000027A4();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_100019DE0();
      }

      *(*(*(a1 + 40) + 8) + 24) = -402620382;
    }
  }

  else
  {
    v12 = sub_1000027A4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Found indeterminate entry for profile %{public}@, but not installed, skipping", buf, 0xCu);
    }
  }

  return 1;
}

uint64_t sub_10000A464(uint64_t a1, void *a2, const __CFString *a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = sub_100002760();
  v10 = [v9 isProfileInstalled:v8];

  if (v10)
  {
    v11 = sub_10000401C(a3);
    v12 = sub_100002760();
    v16 = 0;
    [v12 rejectEntryWithProfileUUID:v8 cdHash:v11 isRejectedByWholeProfile:a5 error:&v16];
    v13 = v16;

    if (v13)
    {
      v14 = sub_1000027A4();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v18 = v8;
        v19 = 2114;
        v20 = v11;
        v21 = 1024;
        v22 = a5;
        v23 = 2114;
        v24 = v13;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Migration: Error rejecting (%{public}@, %{public}@, %d), %{public}@", buf, 0x26u);
      }

      *(*(*(a1 + 32) + 8) + 24) = -402620382;
    }
  }

  else
  {
    v11 = sub_1000027A4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Profile %{public}@ is rejected but not installed, skipping", buf, 0xCu);
    }
  }

  return 1;
}

uint64_t sub_10000A624(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002760();
  v8 = 0;
  [v4 banProfileUUID:v3 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = sub_1000027A4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100019E54();
    }

    *(*(*(a1 + 32) + 8) + 24) = -402620382;
  }

  return 1;
}

uint64_t sub_10000A6DC(uint64_t a1, const __CFString *a2)
{
  v3 = sub_10000401C(a2);
  v4 = sub_100002760();
  v8 = 0;
  [v4 banCDHash:v3 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = sub_1000027A4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100019EC8();
    }

    *(*(*(a1 + 32) + 8) + 24) = -402620382;
  }

  return 1;
}

BOOL sub_10000A798(void *a1)
{
  v1 = a1;
  v2 = xpc_connection_copy_entitlement_value();
  xpc_connection_get_pid(v1);

  if (v2 != &_xpc_BOOL_true)
  {
    v3 = sub_1000027A4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100019F3C();
    }
  }

  return v2 == &_xpc_BOOL_true;
}

uint64_t sub_10000A83C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000A854(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = a3;
  v12 = [v5 objectForKeyedSubscript:@"profile_cms_blob"];
  v6 = sqlite3_column_blob(a2, [v12 intValue]);
  v7 = [v5 objectForKeyedSubscript:@"profile_cms_blob"];

  v8 = sqlite3_column_bytes(a2, [v7 intValue]);
  v9 = xpc_data_create(v6, v8);
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

uint64_t sub_10000A928(uint64_t a1, int a2, xpc_object_t xstring)
{
  v3 = *(a1 + 32);
  v4 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(xstring)];
  [v3 addObject:v4];

  return 1;
}

id sub_10000A980(void *a1)
{
  v1 = a1;
  empty = xpc_array_create_empty();
  v3 = [v1 UUID];
  xpc_array_set_string(empty, 0xFFFFFFFFFFFFFFFFLL, [v3 UTF8String]);

  v4 = [v1 TeamID];
  xpc_array_set_string(empty, 0xFFFFFFFFFFFFFFFFLL, [v4 UTF8String]);

  v5 = [v1 Name];
  xpc_array_set_string(empty, 0xFFFFFFFFFFFFFFFFLL, [v5 UTF8String]);

  v6 = [v1 Expires];
  [v6 timeIntervalSinceReferenceDate];
  xpc_array_set_date(empty, 0xFFFFFFFFFFFFFFFFLL, v7);

  xpc_array_set_BOOL(empty, 0xFFFFFFFFFFFFFFFFLL, [v1 ProvisionsAllDevices] != 0);
  xpc_array_set_BOOL(empty, 0xFFFFFFFFFFFFFFFFLL, [v1 AppleInternal] != 0);
  xpc_array_set_BOOL(empty, 0xFFFFFFFFFFFFFFFFLL, [v1 Local] != 0);
  LODWORD(v6) = [v1 Beta];

  xpc_array_set_BOOL(empty, 0xFFFFFFFFFFFFFFFFLL, v6 != 0);

  return empty;
}

const void *sub_10000AB24()
{
  v0 = sub_10000FB00();
  if (!v0)
  {
    v4 = sub_1000027A4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001A000(v4);
    }

    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 != CFStringGetTypeID())
  {
    v3 = sub_1000027A4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100019FBC(v3);
    }

    CFRelease(v1);
    return 0;
  }

  return v1;
}

void sub_10000ABD0(id a1)
{
  qword_10002DB50 = os_log_create("com.apple.mis", "mis");

  _objc_release_x1();
}

uint64_t sub_10000B254(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  return 1;
}

void sub_10000B9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B9C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000B9D8(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, 1, v3, -1, 0);
}

uint64_t sub_10000BA28(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sub_10000FC3C(a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

uint64_t sub_10000BB40(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0);
  v4 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, 2, v4, -1, 0);
}

uint64_t sub_10000BC58(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, 1, v3, -1, 0);
}

void sub_10000BE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000BE28(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sub_10000FCB4(a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

void sub_10000BF18(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void sub_10000BF68(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t sub_10000BF88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    v6 = *a1;
    v7 = lockdown_send();
    if (v7 == -1)
    {
      break;
    }

    a2 += v7;
    v3 -= v7;
    if (!v3)
    {
      return 0;
    }
  }

  return *__error() | 0xC000u;
}

uint64_t sub_10000C000(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    v6 = *a1;
    v7 = lockdown_recv();
    if (v7 <= 0)
    {
      break;
    }

    a2 += v7;
    v3 -= v7;
    if (!v3)
    {
      return 0;
    }
  }

  if (v7 == -1)
  {
    return *__error() | 0xC000u;
  }

  else
  {
    return 3892346892;
  }
}

uint64_t sub_10000C08C(const void *a1)
{
  v10 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kLockdownCheckinConnectionInfoKey, a1);
  v3 = secure_lockdown_checkin();
  if (v3)
  {
    v4 = v3;
    v5 = sub_1000027A4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001A2BC(v4, v5);
    }
  }

  else
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2000000000;
    v9[3] = os_transaction_create();
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10000C1D8;
    block[3] = &unk_100029030;
    block[4] = v9;
    block[5] = v10;
    dispatch_async(global_queue, block);
    _Block_object_dispose(v9, 8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 1;
}

void sub_10000C1D8(uint64_t a1)
{
    ;
  }

  v2 = *(a1 + 40);
  lockdown_disconnect();
  v3 = *(*(*(a1 + 32) + 8) + 24);

  os_release(v3);
}

void sub_10000C258(void *a1, void *a2)
{
  v3 = a2;
  v4 = [NSMutableString stringWithString:off_10002D860];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000C3D8;
  v6[3] = &unk_100029058;
  v7 = v3;
  v5 = v3;
  sub_10000C31C(a1, v4, v6);
}

void sub_10000C31C(void *a1, void *a2, void *a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C3E8;
  v7[3] = &unk_100029080;
  v8 = a2;
  v9 = a3;
  v5 = v9;
  v6 = v8;
  [a1 enumerateKeysAndObjectsUsingBlock:v7];
}

void sub_10000C3E8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  *a4 = 0;
  v7 = *(a1 + 32);
  v8 = a3;
  [v7 appendString:v9];
  [*(a1 + 32) appendString:off_10002D860];
  sub_10000C4AC(*(a1 + 32), v8, *(a1 + 40));

  [*(a1 + 32) deleteCharactersInRange:{objc_msgSend(*(a1 + 32), "length") + ~objc_msgSend(v9, "length"), objc_msgSend(v9, "length") + 1}];
}

void sub_10000C4AC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_10000C31C(v6, v5, v7);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [NSString stringWithFormat:@"%@%@%@", @"string", v5, v6];
        v7[2](v7, v8);

        if (![v6 isEqual:@"*"])
        {
          goto LABEL_16;
        }

        v9 = [NSString stringWithFormat:@"%@%@%@", @"BOOL", v5, v6];
        v7[2](v7, v9);

        v10 = [NSString stringWithFormat:@"%@%@%@", @"number", v5, v6];
        v7[2](v7, v10);
      }

      else
      {
        v11 = CFGetTypeID(v6);
        if (v11 == CFBooleanGetTypeID())
        {
          if (CFEqual(v6, kCFBooleanTrue))
          {
            v12 = @"true";
          }

          else
          {
            v12 = @"false";
          }

          v10 = [NSString stringWithFormat:@"%@%@%@", @"BOOL", v5, v12];
          v7[2](v7, v10);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            abort();
          }

          v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%@%lld", @"number", v5, [v6 longLongValue]);
          v7[2](v7, v10);
        }
      }

      goto LABEL_16;
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000C7B0;
    v13[3] = &unk_1000290A8;
    v14 = v5;
    v15 = v7;
    [v6 enumerateObjectsUsingBlock:v13];
  }

LABEL_16:
}

uint64_t sub_10000D318(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, v4, v5, -1, 0);
}

uint64_t sub_10000D3A8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, v4, v5, -1, 0);
}

void sub_10000D4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D4FC(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"profile_cms_blob"];
  v6 = sub_10000FCF4(a2, [v5 intValue]);

  *(*(*(a1 + 32) + 8) + 24) = MISProfileCreateWithData();
}

uint64_t sub_10000D700(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  v5 = [*(a1 + 32) UTF8String];

  return sqlite3_bind_text(a2, v4, v5, -1, 0);
}

void sub_10000D770(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v5 = [a3 objectForKeyedSubscript:@"profile_uuid"];
  v6 = sub_10000FC3C(a2, [v5 intValue]);

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) isEqualToString:v6];
}

uint64_t sub_10000DACC(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@signing_identity");
  v6 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, v5, v6, -1, 0);
}

uint64_t sub_10000E28C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@cms_blob");
  v6 = [*(a1 + 40) bytes];
  v7 = [*(a1 + 40) length];

  return sqlite3_bind_blob(a2, v5, v6, v7, 0);
}

uint64_t sub_10000E340(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@team_id");
  sqlite3_bind_text(a2, v5, [*(a1 + 40) UTF8String], -1, 0);
  v6 = sqlite3_bind_parameter_index(a2, "@name");
  sqlite3_bind_text(a2, v6, [*(a1 + 48) UTF8String], -1, 0);
  v7 = sqlite3_bind_parameter_index(a2, "@expires");
  [*(a1 + 56) timeIntervalSince1970];
  sqlite3_bind_int64(a2, v7, v8);
  v9 = sqlite3_bind_parameter_index(a2, "@is_for_all_devices");
  sqlite3_bind_int(a2, v9, *(a1 + 72));
  v10 = sqlite3_bind_parameter_index(a2, "@is_apple_internal");
  sqlite3_bind_int(a2, v10, *(a1 + 73));
  v11 = sqlite3_bind_parameter_index(a2, "@is_local");
  sqlite3_bind_int(a2, v11, *(a1 + 74));
  v12 = sqlite3_bind_parameter_index(a2, "@is_beta");
  sqlite3_bind_int(a2, v12, *(a1 + 75));
  v13 = sqlite3_bind_parameter_index(a2, "@cms_blob");
  sqlite3_bind_blob(a2, v13, [*(a1 + 64) bytes], objc_msgSend(*(a1 + 64), "length"), 0);
  v14 = sqlite3_bind_parameter_index(a2, "@is_der");
  v15 = *(a1 + 76);

  return sqlite3_bind_int(a2, v14, v15);
}

uint64_t sub_10000E530(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@uuid");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@leaf_pk");
  v6 = [*(a1 + 40) longLongValue];

  return sqlite3_bind_int64(a2, v5, v6);
}

void sub_10000E5CC(void *a1, void *a2)
{
  if (!*(*(a1[6] + 8) + 24))
  {
    v4 = a1[4];
    v5 = a2;
    v6 = [v4 Entitlements];
    LODWORD(v4) = [v6 insertEntitlement:v5 forProfile:a1[5]];

    *(*(a1[6] + 8) + 24) = v4;
  }
}

uint64_t sub_10000E660(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@team_id");
  sqlite3_bind_text(a2, v4, [*(a1 + 32) UTF8String], -1, 0);
  v5 = sqlite3_bind_parameter_index(a2, "@team_name");
  v6 = [*(a1 + 40) UTF8String];

  return sqlite3_bind_text(a2, v5, v6, -1, 0);
}

uint64_t sub_10000E910(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000E928(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@cert");
  v5 = [*(a1 + 32) bytes];
  v6 = [*(a1 + 32) length];

  return sqlite3_bind_blob(a2, v4, v5, v6, 0);
}

uint64_t sub_10000E9A4(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_bind_parameter_index(a2, "@cert");
  v5 = [*(a1 + 32) bytes];
  v6 = [*(a1 + 32) length];

  return sqlite3_bind_blob(a2, v4, v5, v6, 0);
}

void sub_10000EA20(uint64_t a1, sqlite3_stmt *a2, void *a3)
{
  v8 = [a3 objectForKeyedSubscript:@"pk"];
  v5 = sub_10000FCB4(a2, [v8 intValue]);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t sub_10000F62C(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void **))
{
  theDict = 0;
  v8 = sub_10000F908(a1, &theDict);
  if (v8)
  {
    return v8;
  }

  v9 = theDict;
  Value = CFDictionaryGetValue(theDict, @"ProfileType");
  if (Value)
  {
    if (CFStringCompare(Value, @"Provisioning", 0) == kCFCompareEqualTo)
    {
      v19 = CFDictionaryGetValue(v9, @"MessageType");
      if (v19)
      {
        v20 = v19;
        if (CFStringCompare(v19, @"Install", 0))
        {
          if (CFStringCompare(v20, @"Remove", 0))
          {
            if (CFStringCompare(v20, @"CopyAll", 0) == kCFCompareEqualTo)
            {
              keys[0] = 0;
              v12 = a4(keys);
              Mutable = 0;
              if (!v12 && keys[0])
              {
                Count = CFArrayGetCount(keys[0]);
                Mutable = CFArrayCreateMutable(kCFAllocatorDefault, Count, &kCFTypeArrayCallBacks);
                if (Mutable && Count >= 1)
                {
                  for (i = 0; i != Count; ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(keys[0], i);
                    CFArrayAppendValue(Mutable, ValueAtIndex);
                  }
                }

                CFRelease(keys[0]);
              }

              goto LABEL_5;
            }

            goto LABEL_4;
          }

          if (CFDictionaryGetValue(v9, @"ProfileID"))
          {
            v12 = a3();
LABEL_33:
            Mutable = 0;
            goto LABEL_5;
          }
        }

        else if (CFDictionaryGetValue(v9, @"Profile"))
        {
          v24 = MISProfileCreateWithData();
          Mutable = v24;
          if (!v24)
          {
            v12 = -402620413;
            goto LABEL_5;
          }

          v12 = a2(v24);
          CFRelease(Mutable);
          goto LABEL_33;
        }
      }
    }
  }

LABEL_4:
  Mutable = 0;
  v12 = -402620403;
LABEL_5:
  valuePtr = v12;
  v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  *keys = *off_100029168;
  v29 = @"Payload";
  values[0] = @"Response";
  values[1] = v13;
  values[2] = Mutable;
  if (Mutable)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v15 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, v14, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v15)
  {
    v16 = v15;
    v17 = sub_10000FA10(a1, v15);
    CFRelease(v16);
  }

  else
  {
    v17 = -402620406;
  }

  CFRelease(v13);
  if (v12)
  {
    v8 = v12;
  }

  else
  {
    v8 = v17;
  }

  CFRelease(v9);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

uint64_t sub_10000F908(uint64_t *a1, void *a2)
{
  LODWORD(length) = 0;
  v4 = sub_10000C000(a1, &length, 4);
  if (!v4)
  {
    v4 = 3892346890;
    v5 = bswap32(length);
    LODWORD(length) = v5;
    v6 = malloc_type_malloc(v5, 0xC93E52F7uLL);
    if (v6)
    {
      v7 = v6;
      v8 = sub_10000C000(a1, v6, length);
      if (!v8)
      {
        v9 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v7, length, kCFAllocatorNull);
        v8 = 3892346890;
        if (v9)
        {
          v10 = v9;
          v11 = CFPropertyListCreateWithData(kCFAllocatorDefault, v9, 0, 0, 0);
          *a2 = v11;
          if (v11)
          {
            v8 = 0;
          }

          else
          {
            v8 = 3892346890;
          }

          CFRelease(v10);
        }
      }

      free(v7);
      return v8;
    }
  }

  return v4;
}

uint64_t sub_10000FA10(uint64_t *a1, const void *a2)
{
  Data = CFPropertyListCreateData(kCFAllocatorDefault, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (!Data)
  {
    return 3892346890;
  }

  v4 = Data;
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(v4);
  v9 = bswap32(Length);
  v7 = sub_10000BF88(a1, &v9, 4);
  if (!v7)
  {
    v7 = sub_10000BF88(a1, BytePtr, Length);
  }

  CFRelease(v4);
  return v7;
}

id sub_10000FACC()
{
  v0 = MGCopyAnswer();

  return v0;
}

uint64_t sub_10000FB00()
{
  v0 = sub_10000FACC();
  v1 = [v0 isEqualToString:@"Internal"];
  if ((MGGetBoolAnswer() & 1) == 0 && v1 && os_parse_boot_arg_string())
  {
    v2 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
    v3 = sub_1000027A4();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Using emulated device UDID: %{public}@\n", &v5, 0xCu);
    }
  }

  else
  {
    v2 = MGCopyAnswer();
  }

  return v2;
}

id sub_10000FC3C(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_text(a1, a2);
  if (v2)
  {
    v2 = [NSString stringWithUTF8String:v2];
  }

  return v2;
}

id sub_10000FC7C(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_int64(a1, a2);

  return [NSDate dateWithTimeIntervalSince1970:v2];
}

NSNumber *sub_10000FCB4(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_int64(a1, a2);

  return [NSNumber numberWithLongLong:v2];
}

NSData *sub_10000FCF4(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_blob(a1, a2);
  v5 = sqlite3_column_bytes(a1, a2);

  return [NSData dataWithBytes:v4 length:v5];
}

sqlite3 *sub_10000FD58(void *a1, int a2)
{
  ppDb = 0;
  if (a2)
  {
    v2 = 65537;
  }

  else
  {
    v2 = 65542;
  }

  v3 = [a1 path];
  v4 = sqlite3_open_v2([v3 UTF8String], &ppDb, v2, 0);

  if (v4)
  {
    v5 = sub_1000027A4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001A334(v4, v5);
    }
  }

  return ppDb;
}

uint64_t sub_10000FE10(const char *a1, int a2)
{
  if (!a1)
  {
    sub_10001A52C();
  }

  v3 = open(a1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v3 == -1)
  {
    v6 = sub_1000027A4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001A4AC();
    }

    return 0;
  }

  else
  {
    v4 = v3;
    if (fstat(v3, &v9) < 0)
    {
      v7 = sub_1000027A4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10001A42C();
      }
    }

    else
    {
      if ((v9.st_mode & 0x1FF) == a2 || (fchmod(v4, a2) & 0x80000000) == 0)
      {
        v5 = 1;
        if (v4 < 0)
        {
          return v5;
        }

        goto LABEL_16;
      }

      v7 = sub_1000027A4();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10001A3AC();
      }
    }

    v5 = 0;
    if ((v4 & 0x80000000) == 0)
    {
LABEL_16:
      close(v4);
    }
  }

  return v5;
}

uint64_t sub_10000FF6C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001A658();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62 == 2)
  {
    v8 = *(a1 + 16);
  }

  sub_100010198(a1, a2);
  sub_10001A668();
  sub_1000101EC();
  sub_10001A7F8();
  if (v23)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    v19 = xmmword_10001D2B0;
    do
    {
      v11 = v22;
      sub_100010244(&qword_10002D8D0, &qword_10001D2C0);
      v12 = swift_allocObject();
      *(v12 + 16) = v19;
      *(v12 + 56) = &type metadata for UInt8;
      *(v12 + 64) = &protocol witness table for UInt8;
      *(v12 + 32) = v11;
      v13 = sub_10001A708();
      v15 = v14;
      v20 = v9;
      v21 = v10;

      v24._countAndFlagsBits = v13;
      v24._object = v15;
      sub_10001A738(v24);

      v9 = v20;
      v10 = v21;
      sub_10001A7F8();
    }

    while (v23 != 1);
  }

  (*(v18 + 8))(v7, v4);
  return v9;
}

uint64_t sub_100010198(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1000101EC()
{
  result = qword_10002D8C8;
  if (!qword_10002D8C8)
  {
    sub_10001A658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D8C8);
  }

  return result;
}

uint64_t sub_100010244(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_10001028C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100010244(&qword_10002D8D8, "pp");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100010300(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100010358(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000103D4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10001A6C8();
  sub_10001056C(v3, a2);
  sub_100010358(v3, a2);
  return sub_10001A6B8();
}

uint64_t sub_100010458(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_10001A6C8();

  return sub_100010358(v3, a2);
}

Swift::String __swiftcall MISError.hexString()()
{
  sub_100010518();
  v3._countAndFlagsBits = sub_10001A768();
  sub_10001A738(v3);

  v0 = 30768;
  v1 = 0xE200000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

unint64_t sub_100010518()
{
  result = qword_10002D8E0;
  if (!qword_10002D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D8E0);
  }

  return result;
}

uint64_t *sub_10001056C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100010624(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1000106B8(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1000106EC(uint64_t a1, unint64_t a2, int a3)
{
  if (a2 >> 60 == 15)
  {
    v5 = (*(*v3 + 88))();

    return sqlite3_bind_null(v5, a3);
  }

  else
  {

    sub_1000115C8(a1, a2);
    sub_10001131C(a1, a2, v3, a3);

    return sub_1000115DC(a1, a2);
  }
}

uint64_t sub_1000107CC(const void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = (*(*a3 + 88))();
  if (a1)
  {
    v8 = a2 - a1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v8 <= 0x7FFFFFFF)
  {
    if (qword_10002DB68 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  v11 = v7;
  swift_once();
  v7 = v11;
LABEL_7:
  v9 = qword_10002DC98;

  return sqlite3_bind_blob(v7, a4, a1, v8, v9);
}

_BYTE *sub_1000108B0(int a1)
{
  v3 = *(*v1 + 88);
  v4 = v3();
  result = sqlite3_column_blob(v4, a1);
  if (result)
  {
    v6 = result;
    v7 = v3();
    v8 = sqlite3_column_bytes(v7, a1);
    return sub_1000116A8(v6, v8);
  }

  return result;
}

uint64_t sub_10001093C(uint64_t a1, int a2)
{
  result = sub_10001A688();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = v5;
  v7 = (*(*v2 + 88))(result);

  return sqlite3_bind_int64(v7, a2, v6);
}

uint64_t sub_1000109F8(int a1)
{
  v3 = (*(*v1 + 88))();
  v4.n128_f64[0] = sqlite3_column_int64(v3, a1);

  return Date.init(timeIntervalSince1970:)(v4);
}

uint64_t sub_100010A68(sqlite3_int64 a1, int a2)
{
  v5 = (*(*v2 + 88))();

  return sqlite3_bind_int64(v5, a2, a1);
}

sqlite3_int64 sub_100010AD0(int a1)
{
  v3 = (*(*v1 + 88))();

  return sqlite3_column_int64(v3, a1);
}

uint64_t sub_100010B28(char a1, int a2)
{
  v5 = (*(*v2 + 88))();

  return sqlite3_bind_int64(v5, a2, a1 & 1);
}

uint64_t sub_100010BE4(uint64_t result, uint64_t a2, int a3)
{
  if (a2)
  {
    v6 = result;

    return sub_100010C40(v6, a2, v3, a3);
  }

  return result;
}

uint64_t sub_100010C40(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *v12 = a1;
    v13 = a2 & 0xFFFFFFFFFFFFFFLL;
    v6 = (*(*a3 + 88))();
    if (qword_10002DB68 != -1)
    {
      v10 = v6;
      swift_once();
      v6 = v10;
    }

    v7 = qword_10002DC98;
    v8 = v12;
    goto LABEL_10;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_12:
    sub_10001A818();
  }

  v5 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v6 = (*(*a3 + 88))();
  if (qword_10002DB68 != -1)
  {
    v11 = v6;
    swift_once();
    v6 = v11;
  }

  v7 = qword_10002DC98;
  v8 = (v5 + 32);
LABEL_10:
  sqlite3_bind_text(v6, a4, v8, -1, v7);
}

const unsigned __int8 *sub_100010DC8(int a1)
{
  v3 = (*(*v1 + 88))();
  result = sqlite3_column_text(v3, a1);
  if (result)
  {
    return sub_10001A748();
  }

  return result;
}

uint64_t sub_100010E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v18 = sub_10001A6E8();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v24 = sub_100011758;
  v25 = v10;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1000110AC;
  v23 = &unk_100029208;
  v11 = _Block_copy(&aBlock);
  sub_1000028F4(a3);

  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = v9;
  v24 = sub_100011800;
  v25 = v12;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100011100;
  v23 = &unk_100029258;
  v13 = _Block_copy(&aBlock);
  sub_1000028F4(a5);

  v14 = [v19 executeQuery:v18 withBind:v11 withResults:v13];
  _Block_release(v13);
  _Block_release(v11);

  if (v14)
  {
    sub_1000118B0();
    swift_allocError();
    *v15 = v14;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
LABEL_5:
    swift_willThrow();
  }

  swift_beginAccess();
  if (*(v9 + 16))
  {
    swift_errorRetain();
    goto LABEL_5;
  }
}

uint64_t sub_1000110AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100011100(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1000119F8();
  v5 = sub_10001A6D8();

  v4(a2, v5);
}

void sub_100011190(void (*a1)(uint64_t))
{
  v3 = v1;
  v5 = [v1 transactionSemaphore];
  sub_10001A7C8();

  v6 = sub_100010E34(0xD000000000000011, 0x80000001000215D0, 0, 0, 0, 0);
  if (!v2)
  {
    a1(v6);
    sub_100010E34(0xD000000000000012, 0x8000000100021610, 0, 0, 0, 0);
    v7 = [v3 transactionSemaphore];
    sub_10001A7D8();
  }
}

uint64_t sub_10001131C(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v6 = BYTE6(a2);
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v26, 0, 14);
      a1 = (*(*a3 + 88))();
      if (qword_10002DB68 == -1)
      {
LABEL_25:
        v9 = qword_10002DC98;
        v10 = a4;
        v11 = 0;
LABEL_26:
        sqlite3_bind_blob(a1, v10, v26, v11, v9);
      }

LABEL_29:
      v25 = a1;
      swift_once();
      a1 = v25;
      goto LABEL_25;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    a1 = sub_10001A568();
    v14 = a1;
    if (a1)
    {
      a1 = sub_10001A588();
      if (__OFSUB__(v12, a1))
      {
        __break(1u);
        goto LABEL_31;
      }

      v14 += v12 - a1;
    }

    v15 = __OFSUB__(v13, v12);
    v16 = v13 - v12;
    if (!v15)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v26[0] = a1;
    LOWORD(v26[1]) = a2;
    BYTE2(v26[1]) = BYTE2(a2);
    BYTE3(v26[1]) = BYTE3(a2);
    BYTE4(v26[1]) = BYTE4(a2);
    BYTE5(v26[1]) = BYTE5(a2);
    a1 = (*(*a3 + 88))();
    v8 = v6;
    if (qword_10002DB68 != -1)
    {
      v24 = a1;
      swift_once();
      a1 = v24;
    }

    v9 = qword_10002DC98;
    v10 = a4;
    v11 = v8;
    goto LABEL_26;
  }

  v17 = a1;
  v16 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v14 = sub_10001A568();
  if (v14)
  {
    v18 = sub_10001A588();
    if (!__OFSUB__(v17, v18))
    {
      v14 += v17 - v18;
      goto LABEL_17;
    }

LABEL_31:
    __break(1u);
  }

LABEL_17:
  v19 = sub_10001A578();
  if (v19 >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v19;
  }

  v21 = &v14[v20];
  if (v14)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  sub_1000107CC(v14, v22, a3, a4);
}

uint64_t sub_1000115C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010198(a1, a2);
  }

  return a1;
}

uint64_t sub_1000115DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010300(a1, a2);
  }

  return a1;
}

uint64_t sub_1000115F0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000116A8(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1000115F0(a1, &a1[a2]);
  }

  v3 = sub_10001A598();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_10001A558();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_10001A628();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_100011758(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 24);
    type metadata accessor for SQLStatement();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;

    v2(v5);

    return sub_10000294C(v2);
  }

  return result;
}

uint64_t sub_1000117E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011800(uint64_t result)
{
  v2 = v1[2];
  if (v2)
  {
    v3 = result;
    v4 = v1[3];
    v5 = v1[4];
    type metadata accessor for SQLStatement();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;

    v2(v6);

    return sub_10000294C(v2);
  }

  return result;
}

unint64_t sub_1000118B0()
{
  result = qword_10002D8E8;
  if (!qword_10002D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D8E8);
  }

  return result;
}

__n128 sub_100011910(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100011924(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001196C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1000119F8()
{
  result = qword_10002D9F8;
  if (!qword_10002D9F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002D9F8);
  }

  return result;
}

uint64_t sub_100011A44(const char *a1)
{
  v3 = *(v1 + 24);
  v4 = (*(**(v1 + 16) + 88))();
  if (qword_10002DB68 != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  return sqlite3_bind_text(v4, v3, a1, -1, qword_10002DC98);
}

uint64_t sub_100011B00(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_10001A6C8() - 8) + 64);
  __chkstk_darwin();
  v6 = *(v2 + OBJC_IVAR____TtC8misagent25LegacyUserTrustOperations_utdb);
  v7 = sub_100017084(a1, a2);
  if (!v8)
  {
    return 0;
  }

  v11 = v9;
  v12 = v7;
  v13 = v10;
  v14 = v8;
  sub_100010198(v9, v10);
  sub_1000125DC(v12, v14, v11, v13);
  return v11;
}

id sub_100011FB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyUserTrustOperations();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100011FF4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000120C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001264C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100012590(v11);
  return v7;
}

unint64_t sub_1000120C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000121CC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10001A838();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000121CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100012218(a1, a2);
  sub_100012348(&off_100029310);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100012218(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001028C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10001A838();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10001A758();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001028C(v10, 0);
        result = sub_10001A808();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100012348(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100012434(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100012434(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100010244(&qword_10002D8D8, "pp");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100012528(uint64_t a1)
{
  v2 = sub_100010244(&qword_10002DA08, &unk_10001D3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012590(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_1000125DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100010300(a3, a4);
  }
}

uint64_t sub_10001264C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000126A8(void *a1)
{
  v3 = [a1 teamID];
  v4 = sub_10001A6F8();
  v6 = v5;

  v7 = sub_100017878(v4, v6);
  if (v1)
  {
  }

  v9 = v7;

  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    v11 = a1;
    sub_100010E34(0xD000000000000073, 0x80000001000217C0, sub_100012F7C, v10, 0, 0);
  }

  else
  {
    sub_100013188();
    swift_allocError();
    *v12 = 0xD000000000000048;
    *(v12 + 8) = 0x8000000100021840;
    *(v12 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1000127F4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1000126A8(v1);
}

void sub_100012974(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = sub_10001A6E8();
  v13 = 0;
  v8 = [a1 getTeamIDForProfileUUID:v7 error:&v13];

  v9 = v13;
  if (v8)
  {
    if (a5 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = sub_10001A638().super.isa;
    }

    v12 = [objc_allocWithZone(MISTrustedTeamIDEntry) initWithTeamID:v8 signature:isa];

    sub_1000126A8(v12);
  }

  else
  {
    v11 = v9;
    sub_10001A5B8();

    swift_willThrow();
  }
}

char *sub_100012E70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100010244(&qword_10002DA38, &qword_10001D3E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100012F7C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = [v4 teamID];
  v6 = sub_10001A6F8();
  v8 = v7;

  (*(*a1 + 184))(v6, v8, 1);

  v9 = [v4 signature];
  if (v9)
  {
    v10 = v9;
    v11 = sub_10001A648();
    v13 = v12;

    v14 = v13;
    v15 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v15 != 2)
      {
        sub_100010300(v11, v13);
        return (*(*a1 + 120))(0, 0xF000000000000000, 2);
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      result = sub_100010300(v11, v14);
      if (!__OFSUB__(v16, v17))
      {
        if (v16 == v17)
        {
          return (*(*a1 + 120))(0, 0xF000000000000000, 2);
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    else
    {
      if (!v15)
      {
        sub_100010300(v11, v13);
        if (!BYTE6(v13))
        {
          return (*(*a1 + 120))(0, 0xF000000000000000, 2);
        }

        goto LABEL_12;
      }

      result = sub_100010300(v11, v13);
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
        if (HIDWORD(v11) != v11)
        {
          goto LABEL_12;
        }

        return (*(*a1 + 120))(0, 0xF000000000000000, 2);
      }
    }

    __break(1u);
    return result;
  }

LABEL_12:
  v19 = [v4 signature];
  if (v19)
  {
    v20 = v19;
    v21 = sub_10001A648();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  (*(*a1 + 120))(v21, v23, 2);

  return sub_1000115DC(v21, v23);
}

unint64_t sub_100013188()
{
  result = qword_10002DA40;
  if (!qword_10002DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DA40);
  }

  return result;
}

uint64_t sub_100013210(uint64_t a1, id a2)
{
  v4 = [a2 profileUUID];
  v5 = sub_10001A6F8();
  v7 = v6;

  (*(*a1 + 184))(v5, v7, 1);

  v8 = [a2 cdHash];
  v9 = sub_10001A648();
  v11 = v10;

  (*(*a1 + 120))(v9, v11, 2);
  sub_100010300(v9, v11);
  v12 = [a2 gracePeriod];
  v13 = *(*a1 + 152);
  v13(v12, 3);
  v13([a2 lastSuccessMonotonicTime], 4);
  v13([a2 lastSuccessResetCount], 5);
  v13([a2 isRejected], 6);
  return (v13)([a2 isRejectedByWholeProfile], 7);
}

uint64_t sub_1000134D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = *(*a1 + 152);
  v15(a2, 1);
  v15(a3, 2);
  (*(*a1 + 184))(a4, a5, 3);
  (*(*a1 + 120))(a6, a7, 4);
  return (v15)(a8, 5);
}

uint64_t sub_100013740(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    v9 = 0xD000000000000024;
  }

  else
  {
    v9 = 0xD000000000000085;
  }

  if (a5)
  {
    v10 = "ted_by_whole_profile = 0";
  }

  else
  {
    v10 = ", cdhash) DO NOTHING";
  }

  sub_10001A828(216);
  v13._countAndFlagsBits = 0xD0000000000000D6;
  v13._object = 0x8000000100021C90;
  sub_10001A738(v13);
  v14._object = (v10 | 0x8000000000000000);
  v14._countAndFlagsBits = v9;
  sub_10001A738(v14);

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;

  sub_100010198(a3, a4);
  sub_100010E34(0, 0xE000000000000000, sub_1000165D4, v11, 0, 0);
}

id sub_100013994(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v12 = sub_10001A6C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v17 = sub_10001A6E8();
  isa = sub_10001A638().super.isa;
  v33 = 0;
  v31 = a5;
  LODWORD(v6) = [v6 recordIndeterminateEntryWithProfileUUID:v17 cdHash:isa onConflictDoNothing:a5 & 1 error:&v33];

  v19 = v33;
  if (v6)
  {

    return v19;
  }

  else
  {
    v32 = v33;
    v21 = v33;
    sub_10001A5B8();

    swift_willThrow();
    v22 = sub_1000103B0();
    v23 = *(v13 + 16);
    v32 = v12;
    v23(v16, v22, v12);

    sub_100010198(a3, a4);
    v24 = sub_10001A6A8();
    v25 = sub_10001A7B8();

    sub_100010300(a3, a4);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v26 = 136446722;
      *(v26 + 4) = sub_100011FF4(v30, a2, &v33);
      *(v26 + 12) = 2082;
      v27 = sub_10000FF6C(a3, a4);
      v29 = sub_100011FF4(v27, v28, &v33);

      *(v26 + 14) = v29;
      *(v26 + 22) = 1024;
      *(v26 + 24) = v31 & 1;
      _os_log_impl(&_mh_execute_header, v24, v25, "Error recording indeterminate entry %{public}s, %{public}s, %{BOOL}d", v26, 0x1Cu);
      swift_arrayDestroy();
    }

    return (*(v13 + 8))(v16, v32);
  }
}

id sub_100013EA0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10001A6C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10001A6E8();
  v24 = 0;
  LODWORD(v4) = [v4 setGracePeriodWithProfileUUID:v13 gracePeriod:a3 error:&v24];

  v14 = v24;
  if (v4)
  {

    return v14;
  }

  else
  {
    v23 = v24;
    v16 = v24;
    sub_10001A5B8();

    swift_willThrow();
    v17 = sub_1000103B0();
    (*(v9 + 16))(v12, v17, v8);

    v18 = sub_10001A6A8();
    v19 = sub_10001A7B8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      LODWORD(v23) = a3;
      v21 = v20;
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136446466;
      *(v21 + 4) = sub_100011FF4(a1, a2, &v24);
      *(v21 + 12) = 1024;
      *(v21 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error setting grace period for %{public}s, %d", v21, 0x12u);
      sub_100012590(v22);
    }

    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1000141CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  (*(*a1 + 184))(a2, a3, 1);
  (*(*a1 + 120))(a4, a5, 2);
  return (*(*a1 + 152))(a6 & 1, 3);
}

void sub_1000145F0(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 192))(0);
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = (*(*a1 + 128))(1);
  if (v6 >> 60 != 15)
  {
    v7 = v5;
    v8 = v6;
    v9 = *(*a1 + 160);
    v10 = v9(2);
    if (v10 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else
    {
      v11 = v10;
      if (v10 <= 0x7FFFFFFF)
      {
        v21 = v9(3);
        v20 = v9(4);
        v12 = v9(5) != 0;
        v13 = v9(6) != 0;
        v14 = objc_allocWithZone(MISOnlineAuthEntry);
        v15 = sub_10001A6E8();

        isa = sub_10001A638().super.isa;
        LOBYTE(v19) = v13;
        v17 = [v14 initWithProfileUUID:v15 cdHash:isa gracePeriod:v11 lastSuccessMonotonicTime:v21 lastSuccessResetCount:v20 isRejected:v12 isRejectedByWholeProfile:v19];

        sub_1000115DC(v7, v8);
        swift_beginAccess();
        v18 = *(a2 + 16);
        *(a2 + 16) = v17;

        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
}

void *sub_1000147F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *(*(sub_10001A6C8() - 8) + 64);
  __chkstk_darwin();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;

  sub_100010198(a3, a4);

  sub_100010E34(0xD0000000000000D0, 0x8000000100021F90, sub_1000165D4, v10, sub_1000165EC, v9);

  swift_beginAccess();
  v11 = *(v9 + 16);
  v12 = v11;

  return v11;
}

void sub_100014BCC(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 192))(0);
  if (v4)
  {
    v5 = (*(*a1 + 128))(1);
    if (v6 >> 60 != 15)
    {
      v7 = v5;
      v8 = v6;
      v9 = *(*a1 + 160);
      v10 = (*a1 + 160);
      v11 = v9(2);
      if (v11 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else
      {
        v12 = v11;
        if (v11 <= 0x7FFFFFFF)
        {
          v21 = v9(3);
          v22 = a2;
          v13 = v9(4);
          v14 = v9(5) != 0;
          v15 = v9(6) != 0;
          v16 = objc_allocWithZone(MISOnlineAuthEntry);
          v17 = sub_10001A6E8();

          isa = sub_10001A638().super.isa;
          LOBYTE(v20) = v15;
          v19 = [v16 initWithProfileUUID:v17 cdHash:isa gracePeriod:v12 lastSuccessMonotonicTime:v21 lastSuccessResetCount:v13 isRejected:v14 isRejectedByWholeProfile:v20];

          sub_1000115DC(v7, v8);
          swift_beginAccess();
          v10 = v19;
          sub_10001A778();
          if (*((*(v22 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v22 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_6:
            sub_10001A7A8();
            swift_endAccess();

            return;
          }

LABEL_9:
          sub_10001A798();
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100014E28()
{
  v0 = *(*(sub_10001A6C8() - 8) + 64);
  __chkstk_darwin();
  v1 = swift_allocObject();
  *(v1 + 16) = &_swiftEmptyArrayStorage;

  sub_100010E34(0xD0000000000000B0, 0x8000000100022070, 0, 0, sub_100016604, v1);

  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_100015108(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_10001A6C8() - 8) + 64);
  __chkstk_darwin();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_100010E34(0xD00000000000006ALL, 0x8000000100022130, sub_1000131DC, v6, sub_10001661C, v5);

  swift_beginAccess();
  v7 = *(v5 + 16);

  return v7;
}

id sub_100015560(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_10001A6C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001A6E8();
  isa = sub_10001A638().super.isa;
  v32 = 0;
  LODWORD(v5) = [v5 deleteOnlineAuthEntryWithProfileUUID:v15 cdHash:isa error:&v32];

  v17 = v32;
  if (v5)
  {

    return v17;
  }

  else
  {
    v31 = v32;
    v19 = v32;
    v20 = sub_10001A5B8();

    swift_willThrow();
    v21 = sub_1000103B0();
    (*(v11 + 16))(v14, v21, v10);

    sub_100010198(a3, a4);
    v22 = sub_10001A6A8();
    v23 = sub_10001A7B8();

    sub_100010300(a3, a4);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v31 = v10;
      v25 = v24;
      v26 = swift_slowAlloc();
      v30[1] = v20;
      v32 = v26;
      *v25 = 136446466;
      *(v25 + 4) = sub_100011FF4(a1, a2, &v32);
      *(v25 + 12) = 2082;
      v27 = sub_10000FF6C(a3, a4);
      v29 = sub_100011FF4(v27, v28, &v32);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error deleting online auth entry %{public}s, %{public}s", v25, 0x16u);
      swift_arrayDestroy();

      return (*(v11 + 8))(v14, v31);
    }

    else
    {

      return (*(v11 + 8))(v14, v10);
    }
  }
}

id sub_100015A68(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_10001A6C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_10001A638().super.isa;
  v24 = 0;
  LODWORD(v3) = [v3 deleteOnlineAuthEntryWithCdHash:isa error:&v24];

  v12 = v24;
  if (v3)
  {

    return v12;
  }

  else
  {
    v23 = v24;
    v14 = v24;
    sub_10001A5B8();

    swift_willThrow();
    v15 = sub_1000103B0();
    (*(v7 + 16))(v10, v15, v6);
    sub_100010198(a1, a2);
    v16 = sub_10001A6A8();
    v17 = sub_10001A7B8();
    sub_100010300(a1, a2);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136446210;
      v20 = sub_10000FF6C(a1, a2);
      v22 = sub_100011FF4(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error deleting online auth entry %{public}s", v18, 0xCu);
      sub_100012590(v19);
    }

    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t MISDBManager.addMonotonicTimeOffset(_:cdHash:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (a3 >> 60 == 15)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0x8000000100022270;
  }

  sub_10001A828(88);
  v10._countAndFlagsBits = 0xD000000000000056;
  v10._object = 0x8000000100022210;
  sub_10001A738(v10);
  v11._countAndFlagsBits = v6;
  v11._object = v7;
  sub_10001A738(v11);

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1000115C8(a2, a3);
  sub_100010E34(0, 0xE000000000000000, sub_100016258, v8, 0, 0);
}

uint64_t MISDBManager.addRTCResetCountOffset(_:cdHash:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (a3 >> 60 == 15)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0x8000000100022270;
  }

  sub_10001A828(82);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x8000000100022290;
  sub_10001A738(v10);
  v11._countAndFlagsBits = v6;
  v11._object = v7;
  sub_10001A738(v11);

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1000115C8(a2, a3);
  sub_100010E34(0, 0xE000000000000000, sub_1000165D8, v8, 0, 0);
}

uint64_t sub_100016078(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, void *, unint64_t))
{
  v7 = a4;
  if (a4)
  {
    v10 = a1;
    v11 = v7;
    v7 = sub_10001A648();
    v13 = v12;
  }

  else
  {
    v14 = a1;
    v13 = 0xF000000000000000;
  }

  a6(a3, v7, v13);

  sub_1000115DC(v7, v13);
  return 1;
}

uint64_t sub_1000161D4(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 160))(0);
  result = swift_beginAccess();
  *(v2 + 16) = v3;
  return result;
}

uint64_t sub_10001625C()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_100010300(*(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000162A4(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  (*(*a1 + 152))(v1[2], 1);
  return (*(*a1 + 120))(v3, v4, 2);
}

uint64_t sub_100016330(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  (*(*a1 + 184))(v1[2], v1[3], 1);
  return (*(*a1 + 120))(v3, v4, 2);
}

unint64_t sub_1000163BC()
{
  result = qword_10002DA48;
  if (!qword_10002DA48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002DA48);
  }

  return result;
}

uint64_t sub_100016408()
{
  sub_100010300(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100016490(uint64_t a1)
{
  v3 = v1[3];

  sub_100010300(v1[4], v1[5]);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000164EC(uint64_t a1)
{
  v3 = *(v1 + 32);
  (*(*a1 + 184))(*(v1 + 16), *(v1 + 24), 1);
  return (*(*a1 + 152))(v3, 2);
}

uint64_t sub_100016574(uint64_t a1)
{
  v3 = v1[5];

  sub_100010300(v1[6], v1[7]);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t type metadata accessor for LegacyUserTrustedProfileEntry()
{
  result = qword_10002DBF0;
  if (!qword_10002DBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016684(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100010198(a3, a4);
  }
}

uint64_t sub_1000166D0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1000166EC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000166F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100016740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000167B8()
{
  sub_10001A698();
  if (v0 <= 0x3F)
  {
    sub_10001683C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001683C()
{
  if (!qword_10002DAA8)
  {
    v0 = sub_10001A7E8();
    if (!v1)
    {
      atomic_store(v0, &qword_10002DAA8);
    }
  }
}

void sub_1000168C0(int a1)
{
  v23 = a1;
  v1 = sub_10001A5C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(sub_100010244(&qword_10002DAD8, "Rq") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v22 - v7;
  v9 = sub_10001A618();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001A6E8();
  v15 = sub_100017078();
  v16 = [v15 stringByAppendingPathComponent:v14];

  v17 = v16;
  if (v17)
  {
    sub_10001A6F8();

    (*(v10 + 56))(v8, 1, 1, v9);
    (*(v2 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v1);
    sub_10001A608();
    sub_10001A5D8(v18);
    v20 = v19;
    (*(v10 + 8))(v13, v9);
    v21 = type metadata accessor for LegacyUserTrustDB();
    v24.receiver = v22;
    v24.super_class = v21;
    objc_msgSendSuper2(&v24, "initWithDatabaseURL:asReadOnly:", v20, v23 & 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100016DC4()
{
  v1 = v0;
  v2 = sub_10001A618();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 dbURL];
  sub_10001A5E8();

  sub_10001A5F8();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v9 = sub_10001A728();

  sub_10000FF4C((v9 + 32));

  v10 = [v1 shmURL];
  sub_10001A5E8();

  sub_10001A5F8();
  v8(v6, v2);
  v11 = sub_10001A728();

  sub_10000FF4C((v11 + 32));

  v12 = [v1 walURL];
  sub_10001A5E8();

  sub_10001A5F8();
  v8(v6, v2);
  v13 = sub_10001A728();

  sub_10000FF4C((v13 + 32));
}

id sub_100017044()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyUserTrustDB();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100017084(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  v6 = v5 + 16;
  *(v5 + 32) = 0u;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_100010E34(0xD000000000000046, 0x8000000100022460, sub_1000131DC, v7, sub_1000172C8, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
    sub_100016684(v6, *(v5 + 24), *(v5 + 32), *(v5 + 40));
  }

  return v6;
}

uint64_t sub_1000171E0()
{
  v1 = swift_allocObject();
  *(v1 + 16) = &_swiftEmptyArrayStorage;
  v2 = v1 + 16;

  sub_100010E34(0xD000000000000026, 0x80000001000224B0, 0, 0, sub_1000173C8, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

void sub_1000172C8(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*a1 + 192))(0);
  v6 = v5;
  v7 = (*(*a1 + 128))(1);
  if (v6)
  {
    if (v8 >> 60 != 15)
    {
      v9 = nullsub_1(v4, v6, v7, v8);
      v11 = v10;
      v13 = v12;
      v15 = v14;
      swift_beginAccess();
      v16 = v2[2];
      v17 = v2[3];
      v18 = v2[4];
      v19 = v2[5];
      v2[2] = v9;
      v2[3] = v11;
      v2[4] = v13;
      v2[5] = v15;
      sub_1000125DC(v16, v17, v18, v19);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000173C8(uint64_t a1)
{
  v2 = v1;
  result = (*(*a1 + 192))(0);
  if (v4)
  {
    v5 = sub_10001A718();
    v7 = v6;

    swift_beginAccess();
    v8 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_100012E70(0, *(v8 + 2) + 1, 1, v8);
      *(v2 + 16) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_100012E70((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = v5;
    *(v12 + 5) = v7;
    *(v2 + 16) = v8;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000174F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 + 16;
  *(v5 + 24) = 0xE000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = a1;
  v8[4] = a2;
  swift_bridgeObjectRetain_n();

  sub_100010E34(0xD00000000000002CLL, 0x8000000100022500, sub_1000131DC, v7, sub_100017670, v8);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  return v6;
}

uint64_t sub_100017670(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = (*(*a1 + 192))(0);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    swift_beginAccess();
    v9 = *(v3 + 24);
    *(v3 + 16) = v7;
    *(v3 + 24) = v8;
  }

  else
  {
    sub_10001A828(37);

    v12._countAndFlagsBits = v2;
    v12._object = v4;
    sub_10001A738(v12);
    sub_100013188();
    swift_allocError();
    *v11 = 0xD000000000000023;
    *(v11 + 8) = 0x8000000100022620;
    *(v11 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100017878(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_100010E34(0xD000000000000030, 0x8000000100022530, sub_1000131DC, v7, sub_1000161BC, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6;
}

uint64_t sub_1000179A8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  sub_100010E34(0xD00000000000002CLL, 0x80000001000225C0, sub_1000131DC, v8, sub_100017FD4, v7);
  if (v3)
  {
  }

  swift_beginAccess();
  v10 = *(v7 + 24);
  if (!v10)
  {
    sub_1000118B0();
    swift_allocError();
    *v12 = xmmword_10001D500;
    *(v12 + 16) = xmmword_10001D510;
    *(v12 + 32) = 1;
LABEL_6:
    swift_willThrow();
  }

  v22 = *(v7 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  sub_100010E34(0xD000000000000027, 0x80000001000225F0, sub_1000131DC, v11, 0, 0);

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v22;
  *(v14 + 24) = v10;

  sub_100010E34(0xD000000000000030, 0x8000000100022530, sub_1000131DC, v14, sub_10001661C, v13);

  swift_beginAccess();
  v15 = *(v13 + 16);

  if (v15)
  {
  }

  v16 = sub_10001A6E8();
  v23 = 0;
  v17 = [a1 deleteTrustedWithTeamID:v16 error:&v23];

  v18 = v23;
  if (!v17)
  {
    v21 = v23;

    sub_10001A5B8();

    goto LABEL_6;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v22;
  *(v19 + 24) = v10;
  v20 = v18;
  sub_100010E34(0xD00000000000002BLL, 0x8000000100022570, sub_1000131DC, v19, 0, 0);
}

uint64_t sub_100017ECC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

__n128 sub_100017F18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100017F2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100017F74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100017FD4(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 192))(0);
  v5 = v4;
  swift_beginAccess();
  v6 = *(v2 + 24);
  *(v2 + 16) = v3;
  *(v2 + 24) = v5;
}

id sub_100018078()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for LegacyUserTrustDB();
  result = objc_msgSendSuper2(&v8, "setupSchema");
  if (result)
  {
    v2 = result;
    v3 = [v0 readSetting:@"databaseSchemaVersion"];
    if (!v3)
    {
      v4 = sub_10001A6E8();
      [v0 executeQuery:v4 withBind:0 withResults:0];

      v5 = sub_10001A6E8();
      [v0 executeQuery:v5 withBind:0 withResults:0];

      v6 = @"databaseSchemaVersion";
      v7 = sub_10001A6E8();
      [v0 setSetting:v6 toValue:v7];

      v3 = v7;
    }

    return v2;
  }

  return result;
}

BOOL sub_10001826C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v9 = [(__CFString *)v7 isEqualToString:@"xrOS"];
  v10 = MISProvisioningProfileIncludesPlatform(a2, v8, a4);
  if (!v9)
  {
    goto LABEL_6;
  }

  if (!v10)
  {
    v10 = MISProvisioningProfileIncludesPlatform(a2, @"visionOS", a4);
LABEL_6:
    v11 = v10;
    goto LABEL_7;
  }

  v11 = 1;
LABEL_7:

  return v11;
}

void sub_100018360(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create profiles table: %s", v3, v4, v5, v6, v7);
}

void sub_1000183D4(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create certificates table: %s", v3, v4, v5, v6, v7);
}

void sub_100018448(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create certificates index: %s", v3, v4, v5, v6, v7);
}

void sub_1000184BC(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create certificates provisioning cache: %s", v3, v4, v5, v6, v7);
}

void sub_100018530(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create entitlements provisioning cache: %s", v3, v4, v5, v6, v7);
}

void sub_1000185A4(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create entitlements index: %s", v3, v4, v5, v6, v7);
}

void sub_100018618(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't add is_der to the profiles table: %s", v3, v4, v5, v6, v7);
}

void sub_10001868C(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create the xml profiles table: %s", v3, v4, v5, v6, v7);
}

void sub_100018700(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't update is_beta column: %s", v3, v4, v5, v6, v7);
}

void sub_100018774(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create the trusted team IDs table: %s", v3, v4, v5, v6, v7);
}

void sub_1000187E8(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Error searching for zero length signatures: %s", v3, v4, v5, v6, v7);
}

void sub_10001885C(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't replace signature with nil: %s", v3, v4, v5, v6, v7);
}

void sub_1000188D0(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create the team ID info table: %s", v3, v4, v5, v6, v7);
}

void sub_100018944(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't fetch trusted team ID info: %s", v3, v4, v5, v6, v7);
}

void sub_1000189B8(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't insert team ID info: %s", v3, v4, v5, v6, v7);
}

void sub_100018A2C(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create the signing identities table: %s", v3, v4, v5, v6, v7);
}

void sub_100018AA0(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't fetch trusted signing identities from profiles: %s", v3, v4, v5, v6, v7);
}

void sub_100018B14(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't fetch trusted signing identities from xml_profiles_cache: %s", v3, v4, v5, v6, v7);
}

void sub_100018B88(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't insert into signing identities: %s", v3, v4, v5, v6, v7);
}

void sub_100018BFC(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create the online auth table: %s", v3, v4, v5, v6, v7);
}

void sub_100018C70(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create the banned profile UUIDs table: %s", v3, v4, v5, v6, v7);
}

void sub_100018CE4(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't create the banned cdhashes table: %s", v3, v4, v5, v6, v7);
}

void sub_100018D58(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't fetch single asterisk wildcard predicates: %s", v3, v4, v5, v6, v7);
}

void sub_100018DCC(uint64_t a1)
{
  sub_1000078DC(a1);
  sub_1000078FC();
  sub_1000078BC(&_mh_execute_header, v1, v2, "Couldn't insert new types for single asterisk wildcard predicates: %s", v3, v4, v5, v6, v7);
}

void sub_100018F3C(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "listener connection error: %s\n", &v2, 0xCu);
}

void sub_100018FB4()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019024()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019074()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000190B0()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019120()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001915C()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019198()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019248()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000192B8()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019328()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019398()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019408()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019500()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000195F8()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019668()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019724()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019760()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001981C()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019858()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019894()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000199D0()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019A0C()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019A48()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019A84()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019AC0()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019B30()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019B6C()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019BA8()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019BE4()
{
  sub_10000AAF8();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019C20()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019C90()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019D00()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019D70()
{
  sub_1000078FC();
  sub_10000AAEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019DE0()
{
  sub_1000078FC();
  sub_10000AB14();
  sub_10000AB04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019E54()
{
  sub_1000078FC();
  sub_10000AB14();
  sub_10000AB04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100019EC8()
{
  sub_1000078FC();
  sub_10000AB14();
  sub_10000AB04();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001A09C(sqlite3 **a1)
{
  sqlite3_errmsg(*a1);
  sqlite3_errcode(*a1);
  sub_10000BF38();
  sub_10000BF68(&_mh_execute_header, v2, v3, "SQL error '%{public}s' (%1d)", v4, v5, v6, v7, v8);
}

void sub_10001A244(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 1024;
  *&v3[14] = a2;
  sub_10000BF18(&_mh_execute_header, a2, a3, "Unable to table row count for %{public}@: %d", *v3, *&v3[8], *&v3[16]);
}

void sub_10001A2BC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "secure_lockdown_checkin failed: %d\n", v2, 8u);
}

void sub_10001A334(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error opening DB: %d", v2, 8u);
}

void sub_10001A3AC()
{
  v0 = *__error();
  sub_10000FF54();
  sub_10000BF68(&_mh_execute_header, v1, v2, "unable to set filesystem permissions on db: %d, %s", v3, v4, v5, v6, v7);
}

void sub_10001A42C()
{
  v0 = *__error();
  sub_10000FF54();
  sub_10000BF68(&_mh_execute_header, v1, v2, "unable to check filesystem permissions on db: %d, %s", v3, v4, v5, v6, v7);
}

void sub_10001A4AC()
{
  v0 = *__error();
  sub_10000FF54();
  sub_10000BF68(&_mh_execute_header, v1, v2, "unable to open file to update permissions: %d, %s", v3, v4, v5, v6, v7);
}