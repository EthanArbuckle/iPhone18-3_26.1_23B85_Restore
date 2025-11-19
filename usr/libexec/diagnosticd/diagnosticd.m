void sub_100000E80(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    return;
  }

  v4 = *(a1 + 32);
  uint64 = xpc_dictionary_get_uint64(object, "action");
  if (uint64 - 1 < 2)
  {
    return;
  }

  v6 = uint64;
  if (uint64 == 6)
  {
    v20 = voucher_adopt();
    os_release(v20);

    sub_1000014C4(v4, object);
    return;
  }

  if (uint64 != 3)
  {
    v21 = xpc_copy_description(object);
    sub_100004AE0(3, "Unimplemented action %lld [%s]", v6, v21);

    free(v21);
    return;
  }

  string = xpc_dictionary_get_string(object, "simulator_device");
  pid = xpc_connection_get_pid(v4);
  memset(buffer, 0, 64);
  proc_name(pid, buffer, 0x40u);
  *__str = 0;
  v33[0] = 0;
  data = xpc_dictionary_get_data(object, "stream_filter", v33);
  v10 = 0;
  if (data && v33[0])
  {
    v11 = [[NSData alloc] initWithBytes:data length:v33[0]];
    v12 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v10 = 0;
LABEL_21:

      goto LABEL_23;
    }

    v13 = sub_1000059B4(v12, 0);

    if (v13)
    {
      v10 = v13;
      v11 = [v10 objectForKeyedSubscript:@"pid"];
      v14 = [v10 count];

      if (v14 == 1 && [v11 count] == 1)
      {
        v15 = [NSNumber numberWithInt:pid];
        v16 = [v15 stringValue];
        v17 = [v11 objectForKeyedSubscript:v16];

        if (v17)
        {
          v18 = pid;
          v19 = "allowing peer %s (%d) to see itself";
          sub_100004AE0(5, "allowing peer %s (%d) to see itself");
LABEL_28:
          snprintf(__str, 0x400uLL, v19, buffer, v18);
          sub_100006810(__str);
          v22 = _os_trace_calloc_typed();
          *(v22 + 80) = 1;
          *(v22 + 16) = xpc_dictionary_get_uint64(object, "flags");
          *(v22 + 88) = v4;
          *(v22 + 64) = v10;
          *(v22 + 20) = xpc_dictionary_get_uint64(object, "types");
          *(v22 + 56) = xpc_connection_get_pid(v4);
          if (string)
          {
            v23 = strdup(string);
          }

          else
          {
            v23 = 0;
          }

          *(v22 + 24) = v23;
          v24 = *(v22 + 16);
          if ((v24 & 0x100) != 0)
          {
            v25 = 9;
          }

          else
          {
            v25 = 8;
          }

          if ((v24 & 0x20) != 0)
          {
            v26 = 11;
          }

          else
          {
            v26 = v25;
          }

          xpc_connection_set_context(v4, v22);
          xpc_connection_set_finalizer_f(v4, sub_100007F20);
          xpc_retain(v4);
          *__str = _NSConcreteStackBlock;
          v33[0] = 0x40000000;
          v33[1] = sub_1000087B0;
          v33[2] = &unk_100010FD0;
          v33[3] = v22;
          v33[4] = v4;
          xpc_connection_set_event_handler(v4, __str);
          if (qword_100014730 != -1)
          {
            dispatch_once(&qword_100014730, &stru_100010F90);
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 0x40000000;
          block[2] = sub_1000088FC;
          block[3] = &unk_100010FF0;
          block[4] = v22;
          dispatch_barrier_sync(qword_100014738, block);
          sub_100006F00(v22, v26);
          reply = xpc_dictionary_create_reply(object);
          if (reply)
          {
            v28 = reply;
            xpc_connection_send_message(v4, reply);
            xpc_release(v28);
          }

          return;
        }

        goto LABEL_23;
      }

      goto LABEL_21;
    }

    v10 = 0;
  }

LABEL_23:
  if ((_os_trace_peer_is_admin() & 1) != 0 || string)
  {
    v18 = pid;
    v19 = "allowing %s (%d) access to stream due to admin status";
    sub_100004AE0(5, "allowing %s (%d) access to stream due to admin status");
    goto LABEL_28;
  }

  if (sub_100008724())
  {
    v18 = pid;
    v19 = "allowing %s (%d) entitled access to stream";
    sub_100004AE0(5, "allowing %s (%d) entitled access to stream");
    goto LABEL_28;
  }

  if (os_variant_is_darwinos() && sub_100008724())
  {
    v18 = pid;
    v19 = "allowing %s (%d) darwinOS entitled access to stream";
    sub_100004AE0(5, "allowing %s (%d) darwinOS entitled access to stream");
    goto LABEL_28;
  }

  sub_100004AE0(5, "streaming limited to admin group %s (%d)", buffer, pid);
  snprintf(__str, 0x400uLL, "streaming limited to admin group %s (%d)", buffer, pid);
  sub_100006810(__str);
  sub_100004AE0(3, "denying stream client (insufficient access) %s (%d)", buffer, pid);
  v29 = xpc_dictionary_create_reply(object);
  if (v29)
  {
    v30 = v29;
    xpc_dictionary_set_uint64(v29, "error", 1uLL);
    xpc_connection_send_message(v4, v30);
    xpc_release(v30);
  }

  xpc_connection_cancel(v4);
}

void sub_1000014C4(uint64_t a1, uint64_t a2)
{
  if (qword_1000146F0 != -1)
  {
    dispatch_once(&qword_1000146F0, &stru_100010D90);
  }

  if (qword_100014730 != -1)
  {
    dispatch_once(&qword_100014730, &stru_100010F90);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100001598;
  v4[3] = &unk_100010E30;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_sync(qword_100014738, v4);
}

void sub_100001598(uint64_t a1)
{
  v1 = off_1000142A8;
  if (!off_1000142A8)
  {
    return;
  }

  while (1)
  {
    v3 = *(v1 + 20);
    if (v3 == 1)
    {
      if (!*(v1 + 11))
      {
        goto LABEL_54;
      }

      goto LABEL_9;
    }

    if (v3 != 2)
    {
      break;
    }

    if (!*(v1 + 12))
    {
      goto LABEL_54;
    }

LABEL_9:
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (*(v1 + 3))
    {
      string = xpc_dictionary_get_string(*(a1 + 40), "SIMULATOR_UDID");
      if (!string || strcmp(string, *(v1 + 3)))
      {
        goto LABEL_54;
      }
    }

    version = _os_activity_stream_entry_get_version();
    if (version == 2)
    {
      length = 0;
      data = xpc_dictionary_get_data(v4, "entryData", &length);
      LOWORD(v8) = 0;
      if (length && data)
      {
        v8 = *(data + 52);
      }
    }

    else
    {
      if (version != 1)
      {
        goto LABEL_57;
      }

      LOWORD(v8) = xpc_dictionary_get_uint64(v4, "traceid");
    }

    v10 = *(v1 + 5);
    if (!v10)
    {
      if (v8 - 3 > 1)
      {
        goto LABEL_36;
      }

LABEL_31:
      if (BYTE1(v8) == 2)
      {
        if ((*(v1 + 16) & 0x20) != 0)
        {
          goto LABEL_36;
        }
      }

      else if (BYTE1(v8) != 1 || (*(v1 + 8) & 0x120) != 0)
      {
        goto LABEL_36;
      }

      goto LABEL_54;
    }

    if ((v10 & 1) != 0 && v8 == 2 || (v10 & 8) != 0 && v8 == 6 || (v10 & 0x10) != 0 && v8 == 8)
    {
LABEL_36:
      v11 = *(v1 + 8);
      if (!v11 || (!v5 ? (pid = 0, euid = 0) : (pid = xpc_connection_get_pid(v5), euid = xpc_connection_get_euid(v5), v11 = *(v1 + 8)), sub_1000019A8(v11, v4, pid, euid, 0, 0)))
      {
        if (*(v1 + 13) >= dword_100014438)
        {
          ++*(v1 + 5);
          if ((*(v1 + 48) & 1) == 0 && *(v1 + 20) == 1)
          {
            v17 = *(v1 + 11);
            v18 = xpc_dictionary_create(0, 0, 0);
            xpc_dictionary_set_uint64(v18, "action", 0xCuLL);
            xpc_connection_send_message(v17, v18);
            xpc_release(v18);
            *(v1 + 48) = 1;
          }
        }

        else
        {
          *(v1 + 48) = 0;
          v14 = *(v1 + 20);
          if (v14 == 2)
          {
            v19 = *(v1 + 4) + 1;
            *(v1 + 4) = v19;
            v20 = v19 & 0x7F;
            v21 = v20 == 0;
            if (!v20)
            {
              atomic_fetch_add_explicit(v1 + 13, 1u, memory_order_relaxed);
            }

            xpc_retain(*(a1 + 40));
            if (qword_100014710 != -1)
            {
              dispatch_once(&qword_100014710, &stru_100010E70);
            }

            block[0] = _NSConcreteStackBlock;
            block[1] = 0x40000000;
            block[2] = sub_100007C4C;
            block[3] = &unk_100010E10;
            v22 = *(a1 + 40);
            block[4] = v1;
            block[5] = v22;
            v24 = v21;
            dispatch_async(qword_100014718, block);
          }

          else if (v14 == 1)
          {
            xpc_connection_send_message(*(v1 + 11), *(a1 + 40));
            v15 = *(v1 + 4) + 1;
            *(v1 + 4) = v15;
            if ((v15 & 0x7F) == 0)
            {
              atomic_fetch_add_explicit(v1 + 13, 1u, memory_order_relaxed);
              v16 = *(v1 + 11);
              barrier[0] = _NSConcreteStackBlock;
              barrier[1] = 0x40000000;
              barrier[2] = sub_100001CB0;
              barrier[3] = &unk_100010DF0;
              barrier[4] = v1;
              xpc_connection_send_barrier(v16, barrier);
            }
          }
        }
      }

      goto LABEL_54;
    }

    if ((v10 & 4) != 0 && v8 == 4 || (v10 & 2) != 0 && v8 == 3)
    {
      goto LABEL_31;
    }

LABEL_54:
    v1 = *v1;
    if (!v1)
    {
      return;
    }
  }

  if (v3)
  {
    goto LABEL_9;
  }

  _os_assert_log();
  _os_crash();
  __break(1u);
LABEL_57:
  qword_100014448 = "BUG IN LIBTRACE: Nope. Invalid stream object version";
  qword_100014478 = -1;
  __break(1u);
}

uint64_t sub_1000019A8(void *a1, void *a2, uint64_t a3, uint64_t a4, int8x16_t *a5, uint64_t a6)
{
  v11 = a1;
  v12 = a2;
  v13 = objc_autoreleasePoolPush();
  v14 = [v11 objectForKeyedSubscript:@"logicalExp"];
  if (!v14)
  {
    v19 = sub_100001CC4(v11, v12, a3, a4, a5, a6);
    goto LABEL_41;
  }

  v15 = v12;
  v32 = [v14 objectForKeyedSubscript:@"subfilters"];
  if (![v32 count])
  {
    goto LABEL_34;
  }

  v30 = v12;
  v16 = [v14 objectForKey:@"operator"];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 unsignedIntegerValue];
  }

  else
  {
    v18 = 2;
  }

  v28 = v14;
  v29 = v13;
  v31 = v11;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v32;
  v20 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v20)
  {
    v33 = 0;
    v34 = 1;
    goto LABEL_31;
  }

  v21 = v20;
  v22 = *v38;
  if (a5)
  {
    v23 = &v36;
  }

  else
  {
    v23 = 0;
  }

  v33 = 0;
  v34 = 1;
  while (2)
  {
    for (i = 0; i != v21; i = i + 1)
    {
      if (*v38 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v37 + 1) + 8 * i);
      v36 = 0uLL;
      v26 = sub_1000019A8(v25, v15, a3, a4, v23, a6);
      switch(v18)
      {
        case 1:
          if (a5)
          {
            v34 &= v26;
            goto LABEL_23;
          }

          if (v26)
          {
            continue;
          }

          v19 = 0;
LABEL_39:
          v12 = v30;
          v11 = v31;
          v14 = v28;
          v13 = v29;

          goto LABEL_40;
        case 2:
          if (a5)
          {
            v33 |= v26;
LABEL_23:
            *a5 = vorrq_s8(*a5, v36);
            continue;
          }

          if ((v26 & 1) == 0)
          {
            continue;
          }

          v19 = 1;
          goto LABEL_39;
        case 0:
          if (a5)
          {
            *a5 = vorrq_s8(*a5, vextq_s8(v36, v36, 8uLL));
          }

          v19 = v26 ^ 1;
          goto LABEL_39;
      }
    }

    v21 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_31:

  v14 = v28;
  if (v18)
  {
    v12 = v30;
    v11 = v31;
    v13 = v29;
    v19 = v34;
    if (v18 != 1)
    {
      v19 = v33;
      if (v18 != 2)
      {
LABEL_34:
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 0;
    v12 = v30;
    v11 = v31;
    v13 = v29;
  }

LABEL_40:

LABEL_41:
  objc_autoreleasePoolPop(v13);

  return v19 & 1;
}

uint64_t sub_100001CC4(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v10 = a1;
  v96 = v10;
  v97 = a2;
  if (a3 == -1)
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    v11 = [v10 objectForKeyedSubscript:@"pid"];
    if (v11)
    {
      v12 = [NSNumber numberWithInt:a3];
      v13 = [v12 stringValue];

      if (a5)
      {
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v103 = v11;
        v14 = v11;
        v15 = [v14 countByEnumeratingWithState:&v129 objects:v139 count:16];
        if (v15)
        {
          v16 = v15;
          LOBYTE(v17) = 0;
          v18 = *v130;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v130 != v18)
              {
                objc_enumerationMutation(v14);
              }

              v20 = *(*(&v129 + 1) + 8 * i);
              v21 = [v14 objectForKeyedSubscript:v20];
              v22 = [v13 isEqualToString:v20];
              v23 = [v21 unsignedLongLongValue];
              if (v22)
              {
                v24 = 0;
              }

              else
              {
                v24 = 1;
              }

              LOBYTE(v17) = v22 | v17;
              a5[v24] |= v23;
            }

            v16 = [v14 countByEnumeratingWithState:&v129 objects:v139 count:16];
          }

          while (v16);
        }

        else
        {
          LOBYTE(v17) = 0;
        }

        v10 = v96;
        a4 = a4;
        v11 = v103;
      }

      else
      {
        v25 = [v11 objectForKeyedSubscript:v13];

        if (v25)
        {
          goto LABEL_86;
        }

        LOBYTE(v17) = 0;
      }
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  if (a4 == -1)
  {
    goto LABEL_39;
  }

  v11 = [v10 objectForKeyedSubscript:@"uid"];
  if (v11)
  {
    v26 = [NSNumber numberWithUnsignedInt:a4];
    v13 = [v26 stringValue];

    if (a5)
    {
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v106 = v11;
      v27 = v11;
      v28 = [v27 countByEnumeratingWithState:&v125 objects:v138 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v126;
        do
        {
          for (j = 0; j != v29; j = j + 1)
          {
            if (*v126 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v125 + 1) + 8 * j);
            v33 = [v27 objectForKeyedSubscript:v32];
            v34 = [v13 isEqualToString:v32];
            v35 = [v33 unsignedLongLongValue];
            if (v34)
            {
              v36 = 0;
            }

            else
            {
              v36 = 1;
            }

            LOBYTE(v17) = v34 | v17;
            a5[v36] |= v35;
          }

          v29 = [v27 countByEnumeratingWithState:&v125 objects:v138 count:16];
        }

        while (v29);
      }

      v10 = v96;
      v11 = v106;
      goto LABEL_37;
    }

    v70 = [v11 objectForKeyedSubscript:v13];

    if (!v70)
    {
LABEL_37:

      goto LABEL_38;
    }

LABEL_86:

    v17 = 1;
    goto LABEL_130;
  }

LABEL_38:

LABEL_39:
  v37 = v97;
  string = xpc_dictionary_get_string(v37, "procpath");
  v98 = v37;
  if (!string)
  {
    version = _os_activity_stream_entry_get_version();
    if (version != 2)
    {
      if (version == 1)
      {
        goto LABEL_46;
      }

      qword_100014448 = "BUG IN LIBTRACE: Nope. Invalid stream object version";
      qword_100014478 = -1;
      __break(1u);
    }

    length = 0;
    data = xpc_dictionary_get_data(v37, "entryData", &length);
    if (length)
    {
      string = &data[*(data + 28) + 236];
      goto LABEL_40;
    }

LABEL_46:

    string = 0;
    v39 = 0;
    v104 = 1;
    goto LABEL_47;
  }

LABEL_40:

  v39 = strrchr(string, 47);
  v104 = 0;
LABEL_47:
  __s1 = string;
  if (v39)
  {
    string = v39 + 1;
  }

  v42 = [v10 objectForKeyedSubscript:@"process"];
  v95 = v42;
  if (v42)
  {
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v43 = v42;
    v44 = [v43 countByEnumeratingWithState:&v121 objects:v137 count:{16, v95}];
    if (!v44)
    {
      goto LABEL_63;
    }

    v45 = v44;
    v46 = *v122;
    while (1)
    {
      for (k = 0; k != v45; k = k + 1)
      {
        if (*v122 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v121 + 1) + 8 * k);
        v49 = v43;
        v50 = [v43 objectForKeyedSubscript:v48];
        v51 = [v50 unsignedLongLongValue];

        if (string && sub_100002734(string, [v48 UTF8String], v51, a6))
        {
          v17 = 1;
          v52 = a5;
          if (!a5)
          {
            v10 = v96;
            v67 = v49;
            goto LABEL_129;
          }
        }

        else
        {
          v52 = a5 + 1;
          if (!a5)
          {
            goto LABEL_61;
          }
        }

        *v52 |= v51;
LABEL_61:
        v43 = v49;
      }

      v45 = [v49 countByEnumeratingWithState:&v121 objects:v137 count:16];
      if (!v45)
      {
LABEL_63:

        v10 = v96;
        break;
      }
    }
  }

  v53 = [v10 objectForKeyedSubscript:{@"processImagePath", v95}];
  v67 = v53;
  if (!v53)
  {
    goto LABEL_79;
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v54 = v53;
  v55 = v53;
  v56 = [v55 countByEnumeratingWithState:&v117 objects:v136 count:16];
  if (!v56)
  {
    goto LABEL_78;
  }

  v57 = v56;
  v58 = *v118;
  v107 = v55;
  do
  {
    for (m = 0; m != v57; m = m + 1)
    {
      if (*v118 != v58)
      {
        objc_enumerationMutation(v55);
      }

      v60 = *(*(&v117 + 1) + 8 * m);
      v61 = [v55 objectForKeyedSubscript:v60];
      v62 = [v61 unsignedLongLongValue];

      if ((v104 & 1) != 0 || !sub_100002734(__s1, [v60 UTF8String], v62, a6))
      {
        v63 = a5 + 1;
        if (!a5)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v17 = 1;
        v63 = a5;
        if (!a5)
        {
          v10 = v96;
          v67 = v54;
          goto LABEL_128;
        }
      }

      *v63 |= v62;
LABEL_76:
      v55 = v107;
    }

    v57 = [v107 countByEnumeratingWithState:&v117 objects:v136 count:16];
  }

  while (v57);
LABEL_78:

  v10 = v96;
  v67 = v54;
LABEL_79:
  v64 = v98;
  result = _os_activity_stream_entry_get_version();
  if (result == 2)
  {
    length = 0;
    v68 = xpc_dictionary_get_data(v64, "entryData", &length);
    if (length && (v69 = *(v68 + 180)) != 0)
    {
      v66 = &v68[v69 + 236];
    }

    else
    {
      v66 = 0;
    }
  }

  else
  {
    if (result != 1)
    {
      qword_100014448 = "BUG IN LIBTRACE: Nope. Invalid stream object version";
      qword_100014478 = -1;
      __break(1u);
      goto LABEL_132;
    }

    v66 = xpc_dictionary_get_string(v64, "subsystem");
  }

  v71 = [v10 objectForKeyedSubscript:@"subsystem"];
  v107 = v71;
  if (!v71)
  {
    goto LABEL_103;
  }

  v99 = v64;
  __s1a = v67;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v72 = v71;
  v73 = [v72 countByEnumeratingWithState:&v113 objects:v135 count:16];
  if (!v73)
  {
    goto LABEL_102;
  }

  v74 = v73;
  v75 = *v114;
  v105 = v72;
  while (2)
  {
    v76 = 0;
    while (2)
    {
      if (*v114 != v75)
      {
        objc_enumerationMutation(v72);
      }

      v77 = *(*(&v113 + 1) + 8 * v76);
      v78 = [v72 objectForKeyedSubscript:v77];
      v79 = [v78 unsignedLongLongValue];

      if (v66 && sub_100002734(v66, [v77 UTF8String], v79, a6))
      {
        v17 = 1;
        v80 = a5;
        if (!a5)
        {
          v10 = v96;
          v67 = __s1a;
          goto LABEL_127;
        }

LABEL_99:
        *v80 |= v79;
      }

      else
      {
        v80 = a5 + 1;
        if (a5)
        {
          goto LABEL_99;
        }
      }

      v76 = v76 + 1;
      v72 = v105;
      if (v74 != v76)
      {
        continue;
      }

      break;
    }

    v74 = [v105 countByEnumeratingWithState:&v113 objects:v135 count:16];
    if (v74)
    {
      continue;
    }

    break;
  }

LABEL_102:

  v10 = v96;
  v64 = v99;
  v67 = __s1a;
LABEL_103:
  v81 = v64;
  result = _os_activity_stream_entry_get_version();
  if (result != 2)
  {
    if (result == 1)
    {
      v82 = xpc_dictionary_get_string(v81, "category");
      goto LABEL_110;
    }

LABEL_132:
    qword_100014448 = "BUG IN LIBTRACE: Nope. Invalid stream object version";
    qword_100014478 = -1;
    __break(1u);
    return result;
  }

  length = 0;
  v83 = xpc_dictionary_get_data(v81, "entryData", &length);
  if (length && (v84 = *(v83 + 188)) != 0)
  {
    v82 = &v83[v84 + 236];
  }

  else
  {
    v82 = 0;
  }

LABEL_110:

  v85 = [v10 objectForKeyedSubscript:@"category"];
  v105 = v85;
  if (!v85)
  {
    goto LABEL_125;
  }

  v86 = v67;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v87 = v85;
  v88 = [v87 countByEnumeratingWithState:&v109 objects:v134 count:16];
  if (!v88)
  {
    goto LABEL_124;
  }

  v89 = v88;
  __s1b = *v110;
  while (2)
  {
    v90 = 0;
    while (2)
    {
      if (*v110 != __s1b)
      {
        objc_enumerationMutation(v87);
      }

      v91 = *(*(&v109 + 1) + 8 * v90);
      v92 = [v87 objectForKeyedSubscript:v91];
      v93 = [v92 unsignedLongLongValue];

      if (v82 && sub_100002734(v82, [v91 UTF8String], v93, a6))
      {
        if (!a5)
        {

          v17 = 1;
          v10 = v96;
          v67 = v86;
          goto LABEL_127;
        }

        LOBYTE(v17) = 1;
        v94 = a5;
LABEL_121:
        *v94 |= v93;
      }

      else
      {
        v94 = a5 + 1;
        if (a5)
        {
          goto LABEL_121;
        }
      }

      if (v89 != ++v90)
      {
        continue;
      }

      break;
    }

    v89 = [v87 countByEnumeratingWithState:&v109 objects:v134 count:16];
    if (v89)
    {
      continue;
    }

    break;
  }

LABEL_124:

  v10 = v96;
  v67 = v86;
LABEL_125:
  v17 = (a5 != 0) & v17;
LABEL_127:

LABEL_128:
LABEL_129:

LABEL_130:
  return v17;
}

BOOL sub_100002734(char *__s1, char *__s2, char a3, int a4)
{
  v4 = __s2;
  v5 = __s1;
  if (a4)
  {
    if (strcasestr(__s1, __s2))
    {
      return 1;
    }

    __s1 = v4;
    __s2 = v5;
  }

  else if ((a3 & 1) == 0)
  {
    return strcmp(__s1, __s2) == 0;
  }

  return strcasestr(__s1, __s2) != 0;
}

uint64_t sub_1000027A4(uint64_t a1)
{
  v2[0] = 0x83EF6AC599EFF6A0;
  v2[1] = a1 != 0;
  v2[2] = a1;
  memset(&v2[3], 0, 24);
  return sub_100002A7C(v2);
}

uint64_t sub_1000027F0(void *a1, const char *a2, uint64_t a3)
{
  dictionary = xpc_dictionary_get_dictionary(a1, a2);
  if (dictionary)
  {
    v5 = dictionary;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v15 = _os_trace_calloc_typed();
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_100003078;
    applier[3] = &unk_1000109F8;
    applier[7] = &v20;
    applier[8] = 20;
    applier[4] = a3;
    applier[5] = &v12;
    applier[6] = &v16;
    if (xpc_dictionary_apply(v5, applier))
    {
      ++v21[3];
      v6 = v13[3];
      v7 = v17[3];
      v8 = (*(a3 + 16))(a3);
    }

    else
    {
      v8 = 0;
    }

    free(v13[3]);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);
    return v8;
  }

  else
  {
    v9 = *(a3 + 16);

    return v9(a3, 1, 0, 0);
  }
}

BOOL sub_1000029A0(id a1, unint64_t a2, oslogdarwin_streamprefsvalue_s *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = 0x2B8FCFC795D2A138;
    v7 = 3;
    memset(v8, 0, sizeof(v8));
    v9 = a3;
    v10 = a4;
    v11 = 0;
    v12 = 0;
    return sub_100002A7C(&v6);
  }

  else if (a2 == 1)
  {

    return sub_100002A20();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100002A20()
{
  v1[0] = 0;
  v1[1] = 0;
  v2 = 0x2B8FCFC795D2A138;
  v3 = 3;
  memset(v4, 0, sizeof(v4));
  v5 = v1;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  return sub_100002A7C(&v2);
}

uint64_t sub_100002A7C(unsigned __int8 *a1)
{
  if (qword_100014590 != -1)
  {
    dispatch_once(&qword_100014590, &stru_100010990);
  }

  v2 = qword_100014588;
  if (!qword_100014588)
  {
    v4 = 0;
    return v4 & 1;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 0x40000000;
  v17 = sub_100002F88;
  v18 = &unk_100010A20;
  v19 = &v20;
  v3 = *a1;
  if (*a1 == 0x4E9FB3A19A8A7C1DLL || v3 == 0x2B8FCFC795D2A138)
  {
    *&v24 = 0;
    *(&v24 + 1) = &v24;
    v25 = 0x2000000000uLL;
    *&v40 = _NSConcreteStackBlock;
    *(&v40 + 1) = 0x40000000;
    *&v41 = sub_100008CF8;
    *(&v41 + 1) = &unk_100011040;
    *&v42 = &v24;
    sub_1000089FC(a1 + 8, &v40);
    v5 = *(*(&v24 + 1) + 24);
    _Block_object_dispose(&v24, 8);
  }

  else if (v3 == 0x83EF6AC599EFF6A0)
  {
    a1[8];
  }

  v29 = 0;
  v28 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = *v2;
  if (tb_client_connection_message_construct())
  {
    goto LABEL_21;
  }

  tb_message_precheck_encoding();
  tb_message_raw_encode_u64();
  v7 = *a1;
  tb_message_raw_encode_u64();
  v8 = *a1;
  if (*a1 == 0x4E9FB3A19A8A7C1DLL || v8 == 0x2B8FCFC795D2A138)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2000000000;
    v39 = 0;
    sub_100008994(a1 + 8);
    tb_message_raw_encode_u64();
    v30 = _NSConcreteStackBlock;
    v31 = 0x40000000;
    v32 = sub_100008D10;
    v33 = &unk_100011068;
    v34 = &v36;
    v35 = &v24;
    sub_1000089FC(a1 + 8, &v30);
    v10 = *(v37 + 6);
    _Block_object_dispose(&v36, 8);
    if (!v10)
    {
      goto LABEL_19;
    }

    printf("TB_ASSERT: (oslogdarwin_streamprefsbatch__raw_encode(&msg, prefs) == TB_ERROR_SUCCESS) && failed to encode type: OSLogDarwin.StreamPrefsBatch, \b\b (%s:%d)\n", "OSLogDarwin_C.c", 2517);
    _os_crash();
    __break(1u);
LABEL_18:
    tb_message_raw_encode_u8();
LABEL_19:
    tb_message_raw_encode_BOOL();
    tb_message_complete();
    v36 = 0;
    v11 = *v2;
    if ((tb_connection_send_query() & 0xFFFFFFF7) == 0 && v36)
    {
      v30 = 0;
      v31 = 0;
      tb_message_decode_u8();
      if (v30 == 1)
      {
        tb_message_decode_u64();
        v14 = v31;
        if (v31 == 0xCBD9DC39909D106ALL || v31 == 0x4EF7D98DF3E71501)
        {
          goto LABEL_30;
        }
      }

      else if (!v30)
      {
        v14 = v31;
LABEL_30:
        v17(v16, v30, v14);
        v15 = *v2;
        tb_client_connection_message_destruct();
        v4 = *(v21 + 24) ^ 1;
        goto LABEL_22;
      }
    }

    v12 = *v2;
    tb_client_connection_message_destruct();
LABEL_21:
    v4 = 0;
LABEL_22:
    _Block_object_dispose(&v20, 8);
    return v4 & 1;
  }

  if (v8 == 0x83EF6AC599EFF6A0)
  {
    if (a1[8] == 1)
    {
      tb_message_raw_encode_u8();
      v9 = *(a1 + 2);
      tb_message_raw_encode_u64();
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v8, "/Library/Caches/com.apple.xbs/Binaries/libtrace_executables/install/TempContent/Objects/libtrace.build/diagnosticd.build/DerivedSources/OSLogDarwin_C.c", 1920);
  result = _os_crash();
  __break(1u);
  return result;
}

void sub_100002F88(uint64_t a1, char a2, uint64_t a3)
{
  if (a2 == 1)
  {
    if (a3 == 0xCBD9DC39909D106ALL)
    {
      strcpy(v4, "failed to set stream preferences in exclaves: invalid subsystem id");
    }

    else
    {
      if (a3 != 0x4EF7D98DF3E71501)
      {
LABEL_7:
        *(*(*(a1 + 32) + 8) + 24) = 1;
        return;
      }

      strcpy(v4, "failed to set stream preferences in exclaves: full cache");
    }

    sub_100006810(v4);
    goto LABEL_7;
  }
}

uint64_t sub_100003078(void *a1, const char *a2, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_uint64 && xpc_get_type(object) != &_xpc_type_int64)
  {
    return 0;
  }

  v7 = *(*(a1[5] + 8) + 24);
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 24);
  *(v8 + 24) = v9 + 1;
  v10 = v7 + 16 * v9;
  if (a2)
  {
    v11 = strlen(a2);
    LODWORD(a2) = crc32(0, a2, v11);
  }

  value = xpc_uint64_get_value(object);
  *v10 = a2;
  *(v10 + 8) = value;
  if (*(*(a1[6] + 8) + 24) == a1[8])
  {
    v13 = a1[4];
    ++*(*(a1[7] + 8) + 24);
    v14 = *(*(a1[5] + 8) + 24);
    v15 = *(*(a1[6] + 8) + 24);
    result = (*(v13 + 16))();
    if (!result)
    {
      return result;
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

  return 1;
}

BOOL sub_100003194(id a1, unint64_t a2, oslogdarwin_streamprefsvalue_s *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = 0x4E9FB3A19A8A7C1DLL;
    v7 = 3;
    memset(v8, 0, sizeof(v8));
    v9 = a3;
    v10 = a4;
    v11 = 0;
    v12 = 0;
    return sub_100002A7C(&v6);
  }

  else if (a2 == 1)
  {

    return sub_100003214();
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100003214()
{
  v1[0] = 0;
  v1[1] = 0;
  v2 = 0x4E9FB3A19A8A7C1DLL;
  v3 = 3;
  memset(v4, 0, sizeof(v4));
  v5 = v1;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  return sub_100002A7C(&v2);
}

void sub_100003270(id a1)
{
  if (&tb_client_connection_create)
  {
    v1 = _os_trace_calloc_typed();
    if (exclaves_lookup_service())
    {
      strcpy(v4, "Exclaves log server not available");
    }

    else
    {
      v2 = _os_trace_calloc_typed();
      *v2 = 0;
      v2[1] = 0;
      if (tb_endpoint_create_with_data())
      {
        tb_endpoint_set_interface_identifier();
        v3 = tb_client_connection_create_with_endpoint();
        if (!tb_client_connection_activate())
        {
          *v1 = v3;
          qword_100014588 = v1;
          return;
        }
      }

      free(v2);
      strcpy(v4, "Failed to initialize config admin client");
    }

    sub_100006810(v4);
    free(v1);
  }
}

uint64_t sub_1000033E8()
{
  if (&_lockdown_checkin_xpc)
  {
    lockdown_checkin_xpc();
    return lockdown_checkin_xpc();
  }

  return result;
}

void sub_100003444(id a1, _lockdown_connection *a2, __CFDictionary *a3)
{
  v5 = malloc_type_calloc(1uLL, 0x30uLL, 0x10B0040C4D40EDAuLL);
  *v5 = a2;
  v5[1] = sub_100004744(a3);
  v5[4] = sub_10000517C;
  v5[5] = sub_100005138;
  v6 = objc_autoreleasePoolPush();
  cf = 0;
  v7 = *v5;
  v12 = lockdown_receive_message();
  TypeID = 0;
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = cf == 0;
  }

  if (v14)
  {
    if (v12 >= 2)
    {
      sub_10000481C(0, "secure_receive_message", 129, @"lockdown_receive_message returned error %x", v8, v9, v10, v11, v12);
LABEL_9:
      TypeID = cf;
    }
  }

  else
  {
    v15 = CFGetTypeID(0);
    TypeID = CFDictionaryGetTypeID();
    if (v15 != TypeID)
    {
      goto LABEL_9;
    }
  }

  sub_10000481C(TypeID, "handle_os_trace_connection", 984, @"Failed to receive initial message from client %s", v8, v9, v10, v11, v5[1]);
  sub_100004944(v5, @"NoInitialMessage");
  objc_autoreleasePoolPop(v6);
  v16 = *v5;
  lockdown_disconnect();
  free(v5[1]);
  free(v5);
}

void sub_100004094(id a1, _lockdown_connection *a2, __CFDictionary *a3)
{
  v5 = malloc_type_calloc(1uLL, 0x30uLL, 0x10B0040C4D40EDAuLL);
  *v5 = a2;
  v5[1] = sub_100004744(a3);
  v5[4] = sub_1000041FC;
  v5[5] = sub_1000041B0;
  v6 = funopen(v5, 0, sub_10000415C, 0, 0);
  v5[2] = v6;
  setlinebuf(v6);

  sub_100006D0C(0xFFFFFFFFLL, 140, 6, v5);
}

uint64_t sub_10000415C(uint64_t *a1, uint64_t a2, int a3)
{
  if (*(a1 + 25))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *a1;
  result = lockdown_send();
  if (result != a3)
  {
    *(a1 + 25) = 1;
  }

  return result;
}

void sub_1000041B0(void *a1)
{
  v2 = *a1;
  lockdown_disconnect();
  fclose(*(a1 + 2));
  free(*(a1 + 1));

  free(a1);
}

BOOL sub_1000041FC(uint64_t a1)
{
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v5, 0, 20);
  if (!_os_activity_stream_entry_decode())
  {
    v2 = *(a1 + 16);
    v66 = 0;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    *v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *__str = 0u;
    v19 = 0u;
    *v15 = 0;
    v16 = 0;
    *(v17 + 6) = 0;
    v17[0] = 0;
    gethostname(v50, 0x100uLL);
    memcpy(__dst, "<unknown>", sizeof(__dst));
    if (*(v5 + 12) && *(&v6 + 4))
    {
      v3 = *(v5 + 12);
LABEL_7:
      strrchr(v3, 47);
      strrchr(*(&v6 + 4), 47);
      snprintf(__str, 0x200uLL, "%s(%s)");
      return (*(a1 + 25) & 1) == 0;
    }

    if (*(&v6 + 4))
    {
      proc_name(0, __dst, 0x400u);
      v3 = __dst;
      goto LABEL_7;
    }

    if (*(v5 + 12))
    {
      strrchr(*(v5 + 12), 47);
    }

    else
    {
      proc_name(0, __dst, 0x400u);
      strrchr(__dst, 47);
    }

    snprintf(__str, 0x200uLL, "%s(<unknown>)");
  }

  return (*(a1 + 25) & 1) == 0;
}

char *sub_100004744(const void *a1)
{
  if (!a1)
  {
    return strdup("<unknown>");
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return strdup("<unknown>");
  }

  Value = CFDictionaryGetValue(a1, kLockdownCheckinClientNameKey);
  if (!Value)
  {
    return strdup("<unknown>");
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFStringGetTypeID())
  {
    return strdup("<unknown>");
  }

  if (!CFStringGetCString(v4, buffer, 255, 0x8000100u))
  {
    return strdup("<unknown>");
  }

  result = strdup(buffer);
  if (!result)
  {
    return strdup("<unknown>");
  }

  return result;
}

void sub_10000481C(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  bzero(buffer, 0x400uLL);
  v12 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, a4, &a9);
  v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s:%d %@", a2, a3, v12);
  CFRelease(v12);
  if (v13)
  {
    CFStringGetCString(v13, buffer, 1024, 0x8000100u);
    sub_100004AE0(3, "%s", buffer);
    CFRelease(v13);
  }

  else
  {
    sub_100004AE0(3, "Failed to construct log string");
  }
}

void sub_100004944(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = a1;
    *(a1 + 24) = 1;
    v10 = @"Error";
    v11 = a2;
    v3 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    LOBYTE(v2) = sub_100004A04(v2, v3);

    if ((v2 & 1) == 0)
    {
      sub_10000481C(v4, "secure_send_error", 222, @"Could not send error response to host", v5, v6, v7, v8, v9);
    }
  }
}

uint64_t sub_100004A04(uint64_t *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = 1;
  if ((*(a1 + 25) & 1) == 0)
  {
    v5 = *a1;
    v6 = lockdown_send();
    if (v6 == 1)
    {
      v7 = *a1;
      v8 = lockdown_send_message();
      if (!v8)
      {
        v4 = 1;
        goto LABEL_8;
      }

      sub_10000481C(v8, "secure_send_message", 188, @"Got error %x from lockdown_send_message", v9, v10, v11, v12, v8);
    }

    else
    {
      v13 = v6;
      v14 = __error();
      v20 = strerror(*v14);
      sub_10000481C(v20, "secure_send_message", 182, @"Failed to send message type; lockdown_send returned %zd, expected %zu: %s", v15, v16, v17, v18, v13);
    }

    goto LABEL_7;
  }

LABEL_8:

  return v4;
}

uint64_t sub_100004AE0(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(__str, 0x800uLL, __format, va);
  return _simple_asl_log();
}

uint64_t sub_100004B64(uint64_t a1, int a2)
{
  memset(&v65, 0, sizeof(v65));
  if ((*(*(a1 + 32) + 25) & 1) == 0)
  {
    if (fcntl(a2, 50) == -1 || fstat(a2, &v65) == -1)
    {
      v31 = *__error();
      _os_assumes_log();
      return *__error();
    }

    if (archive_read_disk_new())
    {
      if (archive_entry_new())
      {
        archive_entry_copy_pathname();
        archive_entry_copy_sourcepath();
        disk_entry_from_file = archive_read_disk_entry_from_file();
        v14 = *(a1 + 40);
        if (disk_entry_from_file)
        {
          v2 = archive_errno();
          v15 = *(a1 + 40);
          archive_error_string();
          v16 = *(a1 + 40);
          v60 = archive_errno();
          sub_10000481C(v60, "create_archive_block_invoke_2", 912, @"archive_read_disk_entry_from_file() returned %d: %s (%d)", v17, v18, v19, v20, disk_entry_from_file);
        }

        else
        {
          v21 = archive_write_header();
          if (v21)
          {
            v22 = v21;
            v23 = *(a1 + 40);
            v2 = archive_errno();
            v24 = *(a1 + 40);
            archive_error_string();
            v25 = *(a1 + 40);
            v61 = archive_errno();
            sub_10000481C(v61, "create_archive_block_invoke_2", 920, @"archive_write_header() returned %d: %s (%d)", v26, v27, v28, v29, v22);
          }

          else
          {
            if ((v65.st_mode & 0xF000) == 0x4000)
            {
              goto LABEL_22;
            }

            while (1)
            {
              v32 = read(a2, *(a1 + 48), 0x8000uLL);
              v33 = v32;
              if (v32 < 1)
              {
                break;
              }

              v34 = *(a1 + 40);
              v35 = *(a1 + 48);
              v36 = archive_write_data();
              if (v36 < 0)
              {
                v37 = *(a1 + 40);
                v2 = archive_errno();
                v38 = *(a1 + 40);
                archive_error_string();
                v39 = *(a1 + 40);
                v62 = archive_errno();
                sub_10000481C(v62, "create_archive_block_invoke_2", 931, @"archive_write_data() returned %d: %s (%d)", v40, v41, v42, v43, v36);
                goto LABEL_14;
              }
            }

            if (v32 < 0)
            {
              v2 = *__error();
              v54 = __error();
              strerror(*v54);
              v55 = __error();
              v64 = *v55;
              sub_10000481C(v55, "create_archive_block_invoke_2", 939, @"read() returned %zd: %s (%d)", v56, v57, v58, v59, v33);
            }

            else
            {
LABEL_22:
              v44 = *(a1 + 40);
              v45 = archive_write_finish_entry();
              if (v45)
              {
                v46 = v45;
                v47 = *(a1 + 40);
                v2 = archive_errno();
                v48 = *(a1 + 40);
                archive_error_string();
                v49 = *(a1 + 40);
                v63 = archive_errno();
                sub_10000481C(v63, "create_archive_block_invoke_2", 948, @"archive_write_finish_entry() returned %d: %s (%d)", v50, v51, v52, v53, v46);
              }

              else
              {
                v2 = 0;
              }
            }
          }
        }

        goto LABEL_14;
      }

      sub_10000481C(0, "create_archive_block_invoke_2", 902, @"archive_entry_new() failed", v9, v10, v11, v12, v66);
    }

    else
    {
      sub_10000481C(0, "create_archive_block_invoke_2", 895, @"archive_read_disk_new() failed", v5, v6, v7, v8, v66);
    }

    v2 = 12;
LABEL_14:
    archive_read_free();
    archive_entry_free();
    return v2;
  }

  return 32;
}

void sub_100004E98(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v1 = a1;
    v9 = @"Status";
    v10 = @"RequestSuccessful";
    v2 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    LOBYTE(v1) = sub_100004A04(v1, v2);

    if ((v1 & 1) == 0)
    {
      sub_10000481C(v3, "secure_send_status", 207, @"Could not send error response to host", v4, v5, v6, v7, v8);
    }
  }
}

uint64_t sub_100004F94(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 25) == 1)
  {
    strerror(32);
LABEL_5:
    archive_set_error();
    return -1;
  }

  if (a4 >> 31)
  {
    sub_10000481C(a1, "_archive_write", 760, @"Cannot send buffer > INT32_MAX: %zu", a5, a6, a7, a8, a4);
    strerror(22);
    goto LABEL_5;
  }

  v13 = *a2;
  v14 = lockdown_send();
  if (v14 == 5)
  {
    v9 = 0;
    if (!a4)
    {
      return v9;
    }

    while (1)
    {
      v15 = *a2;
      v16 = lockdown_send();
      v17 = v16;
      if (v16 < 0)
      {
        break;
      }

      v9 += v16;
      a3 += v16;
      if (v9 >= a4)
      {
        return v9;
      }
    }

    v19 = *__error();
    v28 = strerror(v19);
    sub_10000481C(v28, "_archive_write", 783, @"lockdown_send returned %zd: %s", v24, v25, v26, v27, v17);
  }

  else
  {
    v18 = v14;
    v19 = *__error();
    v29 = strerror(v19);
    sub_10000481C(v29, "_archive_write", 773, @"lockdown_send returned %zd, expected %zu: %s", v20, v21, v22, v23, v18);
  }

  strerror(v19);
  archive_set_error();
  *(a2 + 25) = 1;
  return -1;
}

void sub_100005138(void **a1)
{
  v2 = *a1;
  lockdown_disconnect();
  free(a1[1]);

  free(a1);
}

BOOL sub_10000517C(uint64_t a1, void *a2)
{
  v3 = a2;
  memset(v12, 0, 20);
  v4 = objc_autoreleasePoolPush();
  if (!_os_activity_stream_entry_decode())
  {
    v13.tv_sec = 0;
    *&v13.tv_usec = 0;
    if (*(&v12[0].tv_usec + 1) && (v9 = strlen(*(&v12[0].tv_usec + 1)), v9 + 1 >= 0x10000))
    {
      sub_10000481C(v9, "serialize_and_send_stream_entry", 469, @"proc_imagepath length was longer than UINT16_MAX: %zu", v5, v6, v7, v8, v9 + 1);
    }

    else
    {
      sub_10000481C(0, "serialize_and_send_stream_entry", 525, @"Unknown os_activity_stream_type type %d", v5, v6, v7, v8, 0);
    }

    free(0);
    free(0);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(a1 + 25);

  return (v10 & 1) == 0;
}

id sub_1000059B4(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_new();
  v4 = [v2 objectForKeyedSubscript:@"logicalExp"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"operator"];
    if (v6 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v6 unsignedIntegerValue] > 2))
    {
      v17 = 0;
    }

    else
    {
      v35 = v3;
      v7 = [v5 objectForKeyedSubscript:@"subfilters"];
      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v8 = objc_opt_new();
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v47;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v47 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v46 + 1) + 8 * i);
              if (v14)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v15 = sub_1000059B4(v14, a2);
                  if (v15)
                  {
                    [v8 addObject:v15];
                  }
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v46 objects:v51 count:16];
          }

          while (v11);
        }

        if ([v8 count])
        {
          v16 = objc_opt_new();
          [v16 setObject:v8 forKeyedSubscript:@"subfilters"];
          if (v6)
          {
            [v16 setObject:v6 forKeyedSubscript:@"operator"];
          }

          [v35 setObject:v16 forKeyedSubscript:@"logicalExp"];
          v17 = v35;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v3 = v35;
    }
  }

  else
  {
    v36 = v3;
    v18 = 0;
    v19 = &lockdown_checkin_xpc_ptr;
    v37 = v2;
    do
    {
      v20 = off_100010B20[v18];
      v21 = [v2 objectForKeyedSubscript:v20];
      if (v21)
      {
        v22 = v19[278];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = v20;
          v40 = v18;
          v23 = objc_opt_new();
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v38 = v21;
          v24 = v21;
          v25 = [v24 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v43;
            do
            {
              for (j = 0; j != v26; j = j + 1)
              {
                if (*v43 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v42 + 1) + 8 * j);
                if (v29)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v30 = [v24 objectForKeyedSubscript:v29];
                    v31 = v30;
                    if (v30)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v30 = [v31 unsignedLongLongValue];
                      }

                      else
                      {
                        v30 = 0;
                      }
                    }

                    v32 = [NSNumber numberWithUnsignedLongLong:v30 | a2];
                    [v23 setObject:v32 forKeyedSubscript:v29];
                  }
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v42 objects:v50 count:16];
            }

            while (v26);
          }

          v20 = v39;
          if ([v23 count])
          {
            [v36 setObject:v23 forKeyedSubscript:v39];
          }

          v2 = v37;
          v21 = v38;
          v18 = v40;
          v19 = &lockdown_checkin_xpc_ptr;
        }
      }

      ++v18;
    }

    while (v18 != 6);
    v3 = v36;
    if ([v36 count])
    {
      v33 = v36;
    }

    else
    {
      v33 = 0;
    }

    v17 = v33;
    v5 = 0;
  }

  return v17;
}

void sub_100005E50(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = &StreamContext__metaData;
  v7 = qword_100014598;
  if (!qword_100014598)
  {
    v8 = objc_opt_new();
    v9 = qword_100014598;
    qword_100014598 = v8;

    v7 = qword_100014598;
    if (!qword_100014598)
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }
  }

  v10 = (a3 << 16) | (a2 << 32);
  if (v5)
  {
    v11 = [v7 objectForKeyedSubscript:@"logicalExp"];
    if (v11)
    {
      v12 = sub_1000059B4(v5, v10);
      v13 = [v11 objectForKey:@"operator"];
      if (!v13 || (v14 = v13, v15 = [v13 unsignedIntegerValue], v14, v15 == 2))
      {
        v16 = [v11 objectForKeyedSubscript:@"subfilters"];
        v17 = [v12 objectForKeyedSubscript:@"logicalExp"];
        v18 = v17;
        if (v17 && (([v17 objectForKey:@"operator"], (v19 = objc_claimAutoreleasedReturnValue()) == 0) || (v20 = v19, v21 = objc_msgSend(v19, "unsignedIntegerValue"), v20, v21 == 2)))
        {
          v22 = [v18 objectForKeyedSubscript:@"subfilters"];
          v23 = [v16 arrayByAddingObjectsFromArray:v22];
          [v11 setObject:v23 forKeyedSubscript:@"subfilters"];
        }

        else
        {
          v22 = [v16 arrayByAddingObject:v12];
          [v11 setObject:v22 forKeyedSubscript:@"subfilters"];
        }

        goto LABEL_20;
      }

LABEL_14:
      v16 = [qword_100014598 objectForKeyedSubscript:@"global"];
      [qword_100014598 setObject:0 forKeyedSubscript:@"global"];
      if ([qword_100014598 count])
      {
        v27 = objc_opt_new();
        v28 = objc_opt_new();
        [v27 setObject:v28 forKeyedSubscript:@"logicalExp"];
        v55[0] = qword_100014598;
        v55[1] = v12;
        v29 = [NSArray arrayWithObjects:v55 count:2];
        [v28 setObject:v29 forKeyedSubscript:@"subfilters"];

        v30 = qword_100014598;
        qword_100014598 = v27;
      }

      else
      {
        objc_storeStrong(&qword_100014598, v12);
      }

      [qword_100014598 setObject:v16 forKeyedSubscript:@"global"];
LABEL_20:

      goto LABEL_21;
    }

    v26 = [v5 objectForKeyedSubscript:@"logicalExp"];

    if (v26)
    {
      v12 = sub_1000059B4(v5, v10);
      goto LABEL_14;
    }

    v31 = 0;
    v46 = v5;
    do
    {
      v32 = off_100010B20[v31];
      v33 = [v5 objectForKeyedSubscript:v32];
      if (v33)
      {
        v49 = v31;
        v34 = [(__objc2_prop_list *)v6[19].base_props objectForKeyedSubscript:v32];
        if (!v34)
        {
          v34 = objc_opt_new();
          [(__objc2_prop_list *)v6[19].base_props setObject:v34 forKeyedSubscript:v32];
        }

        v47 = v33;
        v48 = v32;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v35 = v33;
        v36 = [v35 countByEnumeratingWithState:&v50 objects:v54 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v51;
          do
          {
            for (i = 0; i != v37; i = i + 1)
            {
              if (*v51 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v50 + 1) + 8 * i);
              v41 = [v35 objectForKeyedSubscript:v40];
              v42 = [v41 unsignedLongLongValue];

              v43 = [v34 objectForKeyedSubscript:v40];
              v44 = [v43 unsignedLongLongValue];

              v45 = [NSNumber numberWithUnsignedLongLong:v42 | v44 | v10];
              [v34 setObject:v45 forKeyedSubscript:v40];
            }

            v37 = [v35 countByEnumeratingWithState:&v50 objects:v54 count:16];
          }

          while (v37);
        }

        v11 = 0;
        v5 = v46;
        v6 = &StreamContext__metaData;
        v32 = v48;
        v31 = v49;
        v33 = v47;
      }

      ++v31;
    }

    while (v31 != 6);
  }

  else
  {
    v24 = [v7 objectForKeyedSubscript:@"global"];
    v25 = [v24 unsignedLongLongValue];

    v11 = [NSNumber numberWithUnsignedLongLong:v25 | v10];
    [qword_100014598 setObject:v11 forKeyedSubscript:@"global"];
  }

LABEL_21:
}

void sub_10000634C()
{
  v0 = qword_100014598;
  if (qword_100014598)
  {
    v0 = [qword_100014598 count];
    if (v0)
    {
      v1 = [qword_100014598 description];
      v2 = [v1 UTF8String];
      sub_100006774(v2, "Posting stream filter: %s", v2);

      v3 = [NSPropertyListSerialization dataWithPropertyList:qword_100014598 format:200 options:0 error:0];
      v4 = _os_trace_prefsdir_path();
      snprintf(__str, 0x400uLL, "%s/%s.plist", v4, "com.apple.diagnosticd.filter");
      v5 = _os_trace_prefsdir_path();
      snprintf(path, 0x400uLL, "%s/%s.XXXXXXXX", v5, "com.apple.diagnosticd.filter");
      if (_os_trace_device_formatted_for_content_protection())
      {
        v6 = mkstemp_dprotected_np(path, 4, 0);
      }

      else
      {
        v6 = mkstemp(path);
      }

      v8 = v6;
      if (v6 != -1)
      {
        if (fchmod(v6, 0x1A4u) == -1 || ([v3 bytes], objc_msgSend(v3, "length"), _os_trace_write() == -1) || fsync(v8) == -1)
        {
          v13 = *__error();
          _os_assumes_log();
          if (close(v8) != -1)
          {
LABEL_38:
            unlink(path);
            unlink(__str);
            goto LABEL_39;
          }

          v12 = *__error();
          v14 = *__error();
          if (v12 == 9)
          {
            qword_100014448 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
            qword_100014478 = v14;
            __break(1u);
            goto LABEL_29;
          }

LABEL_37:
          _os_assumes_log();
          goto LABEL_38;
        }

        if (close(v8) == -1)
        {
          v18 = *__error();
          v19 = *__error();
          if (v18 == 9)
          {
            qword_100014448 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
            qword_100014478 = v19;
            __break(1u);
            return;
          }

          _os_assumes_log();
          v20 = *__error();
          _os_assumes_log();
        }

        rename(path, __str, v9);
        if (v10 != -1)
        {
          [v3 bytes];
          [v3 length];
          if (qword_100014590 != -1)
          {
            dispatch_once(&qword_100014590, &stru_100010990);
          }

          if (!qword_100014588)
          {
            goto LABEL_39;
          }

          v11 = xpc_create_from_plist();
          if (!v11)
          {
            goto LABEL_39;
          }

          v12 = v11;
          if (xpc_get_type(v11) != &_xpc_type_dictionary)
          {
            goto LABEL_25;
          }

LABEL_29:
          value = xpc_dictionary_get_value(v12, "global");
          if (value)
          {
            v16 = value;
            if (xpc_get_type(value) != &_xpc_type_uint64 && xpc_get_type(v16) != &_xpc_type_int64)
            {
LABEL_25:
              xpc_release(v12);
LABEL_39:
              notify_post("com.apple.system.logging.prefschanged");

              return;
            }

            value = xpc_uint64_get_value(v16);
          }

          if (sub_1000027A4(value))
          {
            if (sub_1000027F0(v12, "category", &stru_100010910))
            {
              sub_1000027F0(v12, "subsystem", &stru_100010950);
            }
          }

          goto LABEL_25;
        }
      }

      v17 = *__error();
      goto LABEL_37;
    }
  }

  sub_100006774(v0, "Posting empty stream filter");
  v7 = _os_trace_prefsdir_path();
  snprintf(__str, 0x400uLL, "%s/%s.plist", v7, "com.apple.diagnosticd.filter");
  if (!unlink(__str))
  {
    notify_post("com.apple.system.logging.prefschanged");
  }

  if (qword_100014590 != -1)
  {
    dispatch_once(&qword_100014590, &stru_100010990);
  }

  if (qword_100014588 && sub_1000027A4(0) && sub_100002A20())
  {
    sub_100003214();
  }
}

uint64_t sub_100006774(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(__str, 0x800uLL, __format, va);
  return _simple_asl_log();
}

void sub_100006810(uint64_t a1)
{
  if (qword_1000145A0 != -1)
  {
    dispatch_once_f(&qword_1000145A0, 0, sub_100006B90);
  }

  if (!dispatch_get_specific(off_100014298))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_1000068D4;
    block[3] = &unk_100010B50;
    block[4] = a1;
    dispatch_sync(qword_1000145A8, block);
  }
}

uint64_t sub_1000068D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(qword_1000145A8);
  memset(&v6, 0, sizeof(v6));
  v5 = time(0);
  localtime_r(&v5, &v6);
  strftime(v7, 0x1AuLL, "%F %T%z", &v6);
  v2 = getprogname();
  v3 = getpid();
  result = snprintf(__str, 0x400uLL, "%s %s[%d]: %s\n", v7, v2, v3, v1);
  if (result >= 1)
  {
    if (result >= 0x400)
    {
      __str[1022] = 10;
    }

    dispatch_assert_queue_V2(qword_1000145A8);
    sub_1000069F8();
    result = dword_1000142A0;
    if ((dword_1000142A0 & 0x80000000) == 0)
    {
      _os_trace_write();
      return sub_100006A54();
    }
  }

  return result;
}

void sub_1000069F8()
{
  dispatch_assert_queue_V2(qword_1000145A8);
  if (dword_1000142A0 < 0)
  {
    sub_100006B2C();
    if ((dword_1000142A0 & 0x80000000) == 0)
    {

      sub_100006A54();
    }
  }
}

uint64_t sub_100006A54()
{
  dispatch_assert_queue_V2(qword_1000145A8);
  v0 = lseek(dword_1000142A0, 0, 2);
  result = fsync(dword_1000142A0);
  if (v0 >= 0x100000)
  {
    if (close(dword_1000142A0) == -1)
    {
      v3 = *__error();
      result = *__error();
      if (v3 == 9)
      {
        qword_100014448 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_100014478 = result;
        __break(1u);
        return result;
      }

      _os_assumes_log();
    }

    rename(qword_1000145B8, qword_1000145C0, v2);

    return sub_100006B2C();
  }

  return result;
}

uint64_t sub_100006B2C()
{
  result = open(qword_1000145B8, 778, 420);
  dword_1000142A0 = result;
  if ((result & 0x80000000) == 0)
  {

    return fchown(result, 0x110u, 0x110u);
  }

  return result;
}

int *sub_100006B90()
{
  asprintf(&qword_1000145B0, "com.apple.%s.log", "diagnosticd");
  if (!qword_1000145B0)
  {
    v1 = *__error();
    qword_100014448 = "BUG IN LIBTRACE: failed to create queue target from subsystem";
    qword_100014478 = v1;
    __break(1u);
LABEL_10:
    result = __error();
    v2 = *result;
    qword_100014448 = "BUG IN LIBTRACE: failed to create log file path";
    qword_100014478 = v2;
    __break(1u);
    return result;
  }

  qword_1000145A8 = dispatch_queue_create_with_target_V2(qword_1000145B0, 0, 0);
  dispatch_queue_set_specific(qword_1000145A8, off_100014298, qword_1000145A8, 0);
  if (qword_100014750 != -1)
  {
    dispatch_once(&qword_100014750, &stru_1000110A8);
  }

  asprintf(&qword_1000145B8, "%s/%s.0.log", qword_100014740, "diagnosticd");
  if (qword_100014750 != -1)
  {
    dispatch_once(&qword_100014750, &stru_1000110A8);
  }

  result = asprintf(&qword_1000145C0, "%s/%s.1.log", qword_100014740, "diagnosticd");
  if (!qword_1000145B8 || !qword_1000145C0)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_100006D0C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = _os_trace_calloc_typed();
  *(v8 + 80) = 2;
  *(v8 + 16) = a2;
  *(v8 + 20) = a3;
  *(v8 + 56) = getpid();
  *(v8 + 96) = a4;
  if (a1 != -1)
  {
    v19 = @"pid";
    v9 = [NSNumber numberWithInt:a1];
    v10 = [v9 stringValue];
    v17 = v10;
    v18 = &off_100011A38;
    v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    *(v8 + 64) = v12;
  }

  v13 = *(v8 + 16);
  if ((v13 & 0x100) != 0)
  {
    v14 = 9;
  }

  else
  {
    v14 = 8;
  }

  if ((v13 & 0x20) != 0)
  {
    v15 = 11;
  }

  else
  {
    v15 = v14;
  }

  *(v8 + 72) = os_transaction_create();
  sub_100006F00(v8, v15);
  if (qword_100014730 != -1)
  {
    dispatch_once(&qword_100014730, &stru_100010F90);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 0x40000000;
  v16[2] = sub_100007008;
  v16[3] = &unk_100010BB0;
  v16[4] = v8;
  dispatch_barrier_sync(qword_100014738, v16);
}

void sub_100006F00(uint64_t a1, int a2)
{
  v4 = _os_trace_calloc_typed();
  *(v4 + 16) = a1;
  v5 = *(a1 + 56);
  *(v4 + 24) = a2;
  *(v4 + 28) = v5;
  v6 = *(a1 + 96);
  if (v6)
  {
    strlcpy((v4 + 32), *(v6 + 8), 0x40uLL);
  }

  else
  {
    proc_name(v5, (v4 + 32), 0x40u);
  }

  if (qword_1000145E0 != -1)
  {
    dispatch_once(&qword_1000145E0, &stru_100010CB0);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10000705C;
  block[3] = &unk_100010C70;
  block[4] = v4;
  dispatch_sync(qword_1000145E8, block);
}

uint64_t sub_100007008(uint64_t result)
{
  **(result + 32) = 0;
  v1 = off_1000142B0;
  *(*(result + 32) + 8) = off_1000142B0;
  v2 = *(result + 32);
  *v1 = v2;
  off_1000142B0 = v2;
  return result;
}

void sub_10000705C(uint64_t a1)
{
  sub_100005E50(*(*(*(a1 + 32) + 16) + 64), *(*(a1 + 32) + 24), *(*(*(a1 + 32) + 16) + 20));
  sub_10000634C();
  **(a1 + 32) = 0;
  v2 = off_1000142C0;
  *(*(a1 + 32) + 8) = off_1000142C0;
  v3 = *(a1 + 32);
  *v2 = v3;
  off_1000142C0 = v3;
  sub_1000071B0();
  sub_1000071DC();
  v4 = [*(*(*(a1 + 32) + 16) + 64) description];
  [v4 UTF8String];
  v5 = _os_trace_strdup();

  sub_100004AE0(5, "System mode client started - %s (%d) - mode: 0x%x, filter: %s", (*(a1 + 32) + 32), *(*(a1 + 32) + 28), *(*(a1 + 32) + 24), v5);
  snprintf(__str, 0x400uLL, "System mode client started - %s (%d) - mode: 0x%x, filter: %s", (*(a1 + 32) + 32), *(*(a1 + 32) + 28), *(*(a1 + 32) + 24), v5);
  sub_100006810(__str);
  free(v5);
}

uint64_t sub_1000071B0()
{
  result = _os_trace_set_diagnostic_flags();
  if (result)
  {
    errx(74, "Unable to set global diagnostic flag");
  }

  return result;
}

uint64_t sub_1000071DC()
{
  if (qword_1000145E0 != -1)
  {
    dispatch_once(&qword_1000145E0, &stru_100010CB0);
  }

  dispatch_assert_queue_V2(qword_1000145E8);
  if (qword_100014598 && [qword_100014598 count])
  {
    v0 = [qword_100014598 objectForKeyedSubscript:@"global"];
    v1 = v0;
    if (v0 && ([v0 unsignedLongLongValue] & 0x40000) != 0)
    {

      v4 = 1;
    }

    else
    {

      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_string(empty, "procpath", "kernel");
      v19 = 0uLL;
      v3 = sub_1000019A8(qword_100014598, empty, 0, 0, &v19, 1);
      v4 = v3 & ((v19.i64[0] & 0x40000) != 0);
    }
  }

  else
  {
    v4 = 0;
  }

  if (qword_1000146D0 != -1)
  {
    dispatch_once(&qword_1000146D0, &stru_100010CF0);
  }

  if (!v4)
  {
    if (qword_1000146C0)
    {
      dispatch_source_cancel(qword_1000146C0);
      qword_1000146C0 = 0;
      v5 = "Stopped kernel streaming";
    }

    else
    {
      v5 = "Kernel streaming already stopped";
    }

    goto LABEL_27;
  }

  if (qword_1000146C0)
  {
    v5 = "Kernel streaming is already enabled";
LABEL_27:
    v14 = 7;
LABEL_28:

    return sub_100004AE0(v14, v5);
  }

  v6 = open("/dev/oslog_stream", 4, 0);
  if (v6 < 0)
  {
    v5 = "failed to open kernel stream";
    v14 = 3;
    goto LABEL_28;
  }

  v7 = v6;
  v24 = 0;
  v22 = 0;
  v23 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = xmmword_1000146D8;
  if (_os_trace_kic_mode())
  {
    _os_trace_uuiddb_make_kernel_cache_uuid();
  }

  if ((_os_trace_is_kernel_64_bit() & 1) == 0)
  {
    v19.i16[1] |= 1u;
  }

  qword_1000143D0 = _catalog_create();
  qword_1000143E0 = _catalog_procinfo_create();
  _catalog_subchunk_procinfo_add();
  v8 = CFArrayCreate(kCFAllocatorDefault, off_100014418, 4, &kCFTypeArrayCallBacks);
  if (v8)
  {
    v9 = v8;
    v10 = OSKextCopyLoadedKextInfo();
    if (v10)
    {
      v11 = v10;
      CFDictionaryApplyFunction(v10, sub_10000823C, &unk_1000143A8);
      CFRelease(v11);
    }

    CFRelease(v9);
  }

  v12 = dispatch_source_create(&_dispatch_source_type_read, v7, 0, qword_1000146C8);
  qword_1000146C0 = v12;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100007600;
  handler[3] = &unk_100010D10;
  v18 = v7;
  dispatch_source_set_event_handler(v12, handler);
  dispatch_set_context(v12, &unk_1000143A8);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = sub_1000079C8;
  v15[3] = &unk_100010D30;
  v16 = v7;
  v15[4] = v12;
  dispatch_source_set_cancel_handler(v12, v15);
  dispatch_activate(v12);
  return sub_100004AE0(7, "Started kernel streaming");
}

void sub_100007600()
{
  v0 = __chkstk_darwin();
  mach_timebase_info(&unk_1000145F0);
  mach_get_times();
  qword_100014600 = 0;
  dword_100014608 = 0;
  *&v14 = 0;
  memset(&v16, 0, sizeof(v16));
  localtime_r(&v14, &v16);
  v1 = ((v16.tm_gmtoff * 0x7777777777777777) >> 64) - v16.tm_gmtoff;
  dword_1000143B8 = (v1 >> 5) + (v1 >> 63) + 60 * v16.tm_isdst;
  *algn_1000143BC = v16.tm_isdst;
  v2 = *(v0 + 32);
  memset(v13, 0, 188);
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v3 = read(v2, &v16, 0x1000uLL);
  if (v3 <= 31)
  {
    v4 = __error();
    strerror(*v4);
    sub_100004AE0(3, "Error reading from kernel channel %s");
    return;
  }

  v5 = v3;
  *(v13 + 12) = *&v16.tm_sec;
  _catalog_update_earliest_fhbuf_ts();
  if (&v16 + v5 < &v16.tm_isdst + HIWORD(*&v16.tm_wday))
  {
    snprintf(&v14, 0x400uLL, "Invalid kernel tracepoint size (%d) for read length (%zd)", HIWORD(*&v16.tm_wday), v5);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100007A60;
    block[3] = &unk_100010D50;
    block[4] = &v14;
    if (qword_1000146E8 != -1)
    {
      dispatch_once(&qword_1000146E8, block);
    }

    sub_100004AE0(3, "%s");
    return;
  }

  if (*&v16.tm_hour == -1)
  {
    sub_100004AE0(7, "Received dropped message count from the kernel: %u");
    return;
  }

  if (LOBYTE(v16.tm_hour) == 5)
  {
    v14 = 0u;
    v15 = 0u;
    if (BYTE1(v16.tm_hour) == 5)
    {
      if (HIDWORD(*&v16.tm_hour) != 1)
      {
        return;
      }

      DWORD2(v14) = v16.tm_zone;
      WORD6(v14) = WORD2(v16.tm_zone);
      *&v14 = v17;
      uuid_copy((&v14 | 0xE), &v16.tm_isdst);
      _catalog_procinfo_uuidinfo_add();
      v6 = 1024;
LABEL_21:
      sub_100007A7C(&v16.tm_isdst, v6);
      return;
    }

    if (BYTE1(v16.tm_hour) == 3)
    {
      if (v16.tm_mday == 2)
      {
        _catalog_procinfo_uuidinfo_remove();
        return;
      }

      if (v16.tm_mday == 1)
      {
        DWORD2(v14) = v16.tm_zone;
        WORD6(v14) = WORD2(v16.tm_zone);
        *&v14 = v17;
        uuid_copy((&v14 | 0xE), &v16.tm_isdst);
        _catalog_procinfo_uuidinfo_add();
        v6 = 2;
        goto LABEL_21;
      }
    }
  }

  else if (_chunk_support_convert_tracepoint())
  {
    v7 = _os_activity_stream_entry_encode();
    if (v7)
    {
      v8 = v7;
      sub_1000014C4(0, v7);
      xpc_release(v8);
    }
  }
}

void sub_1000079C8(uint64_t a1)
{
  _catalog_destroy();
  if (close(*(a1 + 40)) == -1)
  {
    v3 = *__error();
    v4 = *__error();
    if (v3 == 9)
    {
      qword_100014448 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_100014478 = v4;
      __break(1u);
      return;
    }

    _os_assumes_log();
  }

  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void sub_100007A7C(const unsigned __int8 *a1, unsigned int a2)
{
  if (qword_100014728 != -1)
  {
    dispatch_once(&qword_100014728, &stru_100010F10);
  }

  if (qword_100014720)
  {
    xpc_connection_set_event_handler(qword_100014720, &stru_100010F50);
    xpc_connection_activate(qword_100014720);
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "operation", 9uLL);
    xpc_dictionary_set_uuid(v4, "uuid", a1);
    xpc_dictionary_set_int64(v4, "source", a2);
    v5 = xpc_connection_send_message_with_reply_sync(qword_100014720, v4);
    xpc_release(v4);
    type = xpc_get_type(v5);
    if (type == &_xpc_type_dictionary)
    {
      int64 = xpc_dictionary_get_int64(v5, "st");
      if (!int64)
      {
LABEL_11:

        xpc_release(v5);
        return;
      }

      string = strerror(int64);
    }

    else
    {
      if (type != &_xpc_type_error)
      {
        qword_100014448 = "BUG IN LIBTRACE: Unexpected xpc object";
        qword_100014478 = type;
        __break(1u);
        return;
      }

      string = xpc_dictionary_get_string(v5, _xpc_error_key_description);
    }

    sub_100004AE0(3, "error harvesting kernel uuid text: %s", string);
    goto LABEL_11;
  }
}

void sub_100007C4C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if ((*(v2 + 25) & 1) == 0 && ((*(v2 + 32))(v2, *(a1 + 40)) & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (qword_100014730 != -1)
    {
      dispatch_once(&qword_100014730, &stru_100010F90);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100007DBC;
    block[3] = &unk_100010E90;
    block[4] = v3;
    dispatch_sync(qword_100014738, block);
    if (qword_100014710 != -1)
    {
      dispatch_once(&qword_100014710, &stru_100010E70);
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = sub_100007DE8;
    v4[3] = &unk_100010EB0;
    v4[4] = v3;
    dispatch_async(qword_100014718, v4);
  }

  xpc_release(*(a1 + 40));
  if (*(a1 + 48) == 1)
  {
    atomic_fetch_add_explicit((*(a1 + 32) + 52), 0xFFFFFFFF, memory_order_relaxed);
  }
}

uint64_t sub_100007DBC(uint64_t result)
{
  v1 = *(result + 32);
  v3 = *v1;
  v2 = v1[1];
  if (v3)
  {
    *(v3 + 8) = v2;
    v4 = *(result + 32);
    v3 = *v4;
    v2 = v4[1];
  }

  else
  {
    off_1000142B0 = v2;
  }

  *v2 = v3;
  return result;
}

uint64_t sub_100007DE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  sub_100007E78(v2);
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (v5)
  {
    sub_100004AE0(5, "Stream client PID: %d - Dropped %llu of %llu messages because streaming client could not keep up with the datastream.", *(v4 + 56), v5, *(v4 + 32) + v5);
    v4 = *(a1 + 32);
  }

  os_release(*(v4 + 72));
  sub_100007F20(*(a1 + 32));
  v6 = *(v3 + 40);

  return v6(v3);
}

void sub_100007E78(uint64_t a1)
{
  if (qword_1000145E0 != -1)
  {
    dispatch_once(&qword_1000145E0, &stru_100010CB0);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100007F64;
  block[3] = &unk_100010ED0;
  block[4] = a1;
  dispatch_sync(qword_1000145E8, block);
}

void sub_100007F20(void **a1)
{
  free(a1[3]);

  free(a1);
}

uint64_t sub_100007F64(uint64_t a1)
{
  v1 = off_1000142B8;
  if (!off_1000142B8)
  {
    goto LABEL_17;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    if (*(a1 + 32) == v1[2])
    {
      v2 = v1;
    }

    else
    {
      v3 |= *(v1 + 6);
    }

    v1 = *v1;
  }

  while (v1);
  if (!v2)
  {
LABEL_17:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  v4 = *(v2 + 6);
  v5 = v4 & ~(dword_1000145D8 | v3);
  if (v5)
  {
    sub_100004AE0(5, "System mode client stopped - %s (%d) - clearing mode: 0x%x, still active: 0x%x", v2 + 32, *(v2 + 7), v4 & ~(dword_1000145D8 | v3), v3);
    snprintf(__str, 0x400uLL, "System mode client stopped - %s (%d) - clearing mode: 0x%x, still active: 0x%x", v2 + 32, *(v2 + 7), v5, v3);
    sub_100006810(__str);
    sub_1000071B0();
  }

  else
  {
    sub_100004AE0(5, "System mode client stopped - %s (%d) - clearing mode: 0x0, still active: 0x%x", v2 + 32, *(v2 + 7), v3);
    snprintf(__str, 0x400uLL, "System mode client stopped - %s (%d) - clearing mode: 0x0, still active: 0x%x", v2 + 32, *(v2 + 7), v3);
    sub_100006810(__str);
  }

  v6 = *v2;
  v7 = v2[1];
  if (*v2)
  {
    v8 = *v2;
  }

  else
  {
    v8 = &off_1000142B8;
  }

  v8[1] = v7;
  *v7 = v6;
  free(v2);
  v9 = qword_100014598;
  qword_100014598 = 0;

  v10 = off_1000142B8;
  if (off_1000142B8)
  {
    do
    {
      sub_100005E50(*(v10[2] + 64), *(v10 + 6), *(v10[2] + 20));
      v10 = *v10;
    }

    while (v10);
  }

  sub_10000634C();
  return sub_1000071DC();
}

void sub_100008154(id a1)
{
  mach_timebase_info(&stru_1000146F8);
  qword_100014700 = dispatch_queue_create("com.apple.diagnosticd.memory-pressure", 0);
  v1 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 7uLL, qword_100014700);
  qword_100014708 = v1;

  dispatch_source_set_event_handler(v1, &stru_100010DD0);
}

void sub_1000081C4(id a1)
{
  data = dispatch_source_get_data(qword_100014708);
  _os_trace_log_simple();
  switch(data)
  {
    case 1uLL:
      v2 = 16;
      break;
    case 4uLL:
      v2 = 4;
      break;
    case 2uLL:
      v2 = 8;
      break;
    default:
      return;
  }

  dword_100014438 = v2;
}

uint64_t sub_10000823C(int a1, CFDictionaryRef theDict, uint64_t a3)
{
  Value = CFDictionaryGetValue(theDict, @"OSBundleExecLoadAddress");
  v6 = CFDictionaryGetValue(theDict, @"OSBundleTextUUID");
  result = CFDictionaryGetValue(theDict, @"OSBundleExecLoadSize");
  if (Value)
  {
    if (v6)
    {
      v8 = result;
      if (result)
      {
        valuePtr = 0;
        result = CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
        if (result)
        {
          memset(v13, 0, sizeof(v13));
          DWORD2(v13[0]) = valuePtr;
          WORD6(v13[0]) = WORD2(valuePtr);
          BytePtr = CFDataGetBytePtr(v6);
          uuid_copy((v13 | 0xE), BytePtr);
          CFNumberGetValue(v8, kCFNumberSInt64Type, v13);
          v10 = *(a3 + 40);
          v11 = *(a3 + 56);
          return _catalog_procinfo_uuidinfo_add();
        }
      }
    }
  }

  return result;
}

void sub_10000834C(id a1)
{
  *in = 0u;
  memset(v6, 0, sizeof(v6));
  v4 = 37;
  if (!sysctlbyname("kern.uuid", in, &v4, 0, 0))
  {
    v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    qword_1000146C8 = dispatch_queue_create("com.apple.diagnosticd.klog", v1);
    uuid_parse(in, &xmmword_1000146D8);
    if (qword_100014750 != -1)
    {
      dispatch_once(&qword_100014750, &stru_1000110A8);
    }

    dword_1000143AC = open(qword_100014748, 0x100000);
    if (dword_1000143AC == -1)
    {
      v2 = __error();
      v3 = strerror(*v2);
      sub_100004AE0(3, "Error opening uuiddb: %s", v3);
    }
  }
}

void start()
{
  if (qword_1000145A0 != -1)
  {
    dispatch_once_f(&qword_1000145A0, 0, sub_100006B90);
  }

  dispatch_sync(qword_1000145A8, &stru_100010B90);
  if ((MEMORY[0xFFFFFC104] & 8) != 0)
  {
    sub_100004AE0(5, "Startup - clearing mode: 0x%x", 8);
    snprintf(__str, 0x400uLL, "Startup - clearing mode: 0x%x", 8);
    sub_100006810(__str);
    sub_1000071B0();
  }

  v0 = qword_100014598;
  qword_100014598 = 0;

  sub_10000634C();
  dword_1000145D8 = MEMORY[0xFFFFFC104];
  os_trace_set_mode();
  sub_100004AE0(6, "diagnosticd starting");
  strcpy(__str, "diagnosticd starting");
  sub_100006810(__str);
  qword_1000145C8 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, 0);
  dispatch_source_set_event_handler(qword_1000145C8, &stru_100010BF0);
  dispatch_activate(qword_1000145C8);
  mach_service = xpc_connection_create_mach_service("com.apple.diagnosticd", 0, 1uLL);
  qword_1000145D0 = mach_service;
  if (!mach_service)
  {
    errx(70, "failed to create mach service com.apple.diagnosticd");
  }

  xpc_connection_set_event_handler(mach_service, &stru_100010C30);
  xpc_connection_activate(qword_1000145D0);
  sub_1000033E8();
  dispatch_main();
}

void sub_10000861C(id a1, void *a2)
{
  v3 = voucher_adopt();
  os_release(v3);
  if (xpc_get_type(a2) == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_100000E80;
    handler[3] = &unk_100010C50;
    handler[4] = a2;
    xpc_connection_set_event_handler(a2, handler);
    pid = xpc_connection_get_pid(a2);
    sub_100004AE0(6, "New connection from peer %d", pid);
    xpc_connection_activate(a2);
  }

  else
  {
    v4 = xpc_copy_description(a2);
    sub_100004AE0(3, "Strange connection with %s", v4);

    free(v4);
  }
}

BOOL sub_100008724()
{
  v0 = xpc_connection_copy_entitlement_value();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (xpc_get_type(v0) == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(v1);
  }

  else
  {
    sub_100004AE0(3, "non-BOOLean entitlements unsupported @%s:%d", "_diagd_peer_is_entitled", 573);
    value = 0;
  }

  xpc_release(v1);
  return value;
}

void sub_1000087B0(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_error)
  {
    if (object == &_xpc_error_connection_invalid)
    {
      sub_100007E78(*(a1 + 32));
      if (qword_100014730 != -1)
      {
        dispatch_once(&qword_100014730, &stru_100010F90);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100008954;
      block[3] = &unk_100010FB0;
      block[4] = *(a1 + 32);
      dispatch_barrier_sync(qword_100014738, block);
      v5 = *(a1 + 32);
      v6 = *(v5 + 40);
      if (v6)
      {
        sub_100004AE0(5, "Stream client PID: %d - Dropped %llu of %llu messages because streaming client could not keep up with the datastream.", *(v5 + 56), v6, *(v5 + 32) + v6);
      }

      xpc_release(*(a1 + 40));
      os_release(*(*(a1 + 32) + 72));
    }

    else
    {
      v4 = *(a1 + 40);

      xpc_connection_cancel(v4);
    }
  }
}

uint64_t sub_1000088FC(uint64_t a1)
{
  result = os_transaction_create();
  *(*(a1 + 32) + 72) = result;
  **(a1 + 32) = 0;
  v3 = off_1000142B0;
  *(*(a1 + 32) + 8) = off_1000142B0;
  v4 = *(a1 + 32);
  *v3 = v4;
  off_1000142B0 = v4;
  return result;
}

uint64_t sub_100008954(uint64_t result)
{
  v1 = *(result + 32);
  v3 = *v1;
  v2 = v1[1];
  if (v3)
  {
    *(v3 + 8) = v2;
    v4 = *(result + 32);
    v3 = *v4;
    v2 = v4[1];
  }

  else
  {
    off_1000142B0 = v2;
  }

  *v2 = v3;
  return result;
}

uint64_t sub_100008994(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 - 1) < 3)
  {
    return *&a1[qword_10000A5E8[(v1 - 1)]];
  }

  printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", v1, "/Library/Caches/com.apple.xbs/Binaries/libtrace_executables/install/TempContent/Objects/libtrace.build/diagnosticd.build/DerivedSources/OSLogDarwin_C.c", 1594);
  result = _os_crash();
  __break(1u);
  return result;
}

unsigned __int8 *sub_1000089FC(unsigned __int8 *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (v4 != 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if (*(result + 2))
        {
          v5 = 0;
          v6 = 0;
          do
          {
            result = (*(a2 + 16))(a2, v6++, v3[1] + v5);
            v5 += 16;
          }

          while (v6 < v3[2]);
        }

        return result;
      }

      printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", v4, "/Library/Caches/com.apple.xbs/Binaries/libtrace_executables/install/TempContent/Objects/libtrace.build/diagnosticd.build/DerivedSources/OSLogDarwin_C.c", 1634);
      _os_crash();
      __break(1u);
LABEL_16:
      printf("TB_ASSERT: (err == TB_ERROR_SUCCESS) && failed to wrap packed buffer, \b\b (%s:%d)\n", "OSLogDarwin_C.c", 1612);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v7 = *(result + 1);
    v8 = v3[2];
    v9 = v3[3];
    result = tb_message_subrange();
    if (!result)
    {
      return result;
    }

    printf("TB_ASSERT: (vErr == TB_ERROR_SUCCESS) && tb_message_subrange failed, \b\b (%s:%d)\n", "OSLogDarwin_C.c", 1631);
    _os_crash();
    __break(1u);
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v3[1];
  v11 = v3[2];
  tb_transport_message_buffer_wrap_buffer();
  if (tb_message_construct())
  {
    goto LABEL_16;
  }

  result = tb_message_configure_received();
  if (v3[3])
  {
    v12 = 0;
    do
    {
      v13[0] = 0;
      v13[1] = 0;
      tb_message_precheck_decoding();
      tb_message_raw_decode_u32();
      tb_message_raw_decode_u64();
      result = (*(a2 + 16))(a2, v12++, v13);
    }

    while (v12 < v3[3]);
  }

  return result;
}

uint64_t sub_100008C58(uint64_t a1)
{
  if (*(*(a1 + 40) + 32))
  {
    v2 = 0;
    do
    {
      tb_message_precheck_decoding();
      tb_message_raw_decode_u32();
      tb_message_raw_decode_u64();
      (*(*(a1 + 32) + 16))();
      ++v2;
    }

    while (v2 < *(*(a1 + 40) + 32));
  }

  return 0;
}

uint64_t sub_100008D10(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = *(a1 + 40);
  v6 = *a3;
  tb_message_raw_encode_u32();
  v7 = *(a3 + 1);
  result = tb_message_raw_encode_u64();
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}