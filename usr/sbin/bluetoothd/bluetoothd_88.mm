void sub_100655C14(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v5)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
    {
      v6 = *(a1 + 80);
      if (v6 > 1 || v6 == 1 && sub_100011EDC())
      {
        v7 = sub_100007EE8();
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100673F80;
        v13[3] = &unk_100AE0BC0;
        v15 = a1;
        v14 = v5;
        v16 = xdict;
        sub_10000D334(v7, v13);
      }

      else
      {
        v10 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No privileges for running retrievePairingInfoForPeripheral without proper entitlement", buf, 2u);
        }
      }
    }

    else
    {
      v8 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 96);
        v12 = *(a1 + 48);
        *buf = 138412802;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        v21 = 2112;
        v22 = v5;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100857394();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    xpc_connection_send_message(*(a1 + 16), reply);
    xpc_release(reply);
  }
}

void sub_100655E9C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v37 = sub_10003ED64(value, "kCBMsgArgFindMySerialNumberString");
  if (qword_100B508D0 != -1)
  {
    sub_100856AE8();
  }

  sub_10003EF30(off_100B508C8);
  v38 = +[NSMutableSet set];
  if (*(a1 + 80) >= 1 && *(a1 + 104) == 1)
  {
    if (v37 && [v37 count])
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v4 = v37;
      v5 = [v4 countByEnumeratingWithState:&v47 objects:v57 count:16];
      if (!v5)
      {
        goto LABEL_57;
      }

      v6 = *v48;
      while (1)
      {
        v7 = 0;
        do
        {
          if (*v48 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v47 + 1) + 8 * v7);
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          v9 = sub_1000DFED0(off_100B508C8, v8);
          if (!v9)
          {
            v10 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_29;
            }

            *buf = 141558275;
            v54 = 1752392040;
            v55 = 2113;
            v56 = v8;
            v11 = v10;
            v12 = "No device with SN %{private, mask.hash}@";
LABEL_26:
            v15 = 22;
LABEL_27:
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, buf, v15);
            goto LABEL_29;
          }

          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if ((sub_10004FF0C(off_100B508C8, v9, *(a1 + 96), *(a1 + 48)) & 1) == 0)
          {
            v13 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_29;
            }

            v14 = *(a1 + 96);
            *buf = 138543618;
            v54 = v14;
            v55 = 2114;
            v56 = v9;
            v11 = v13;
            v12 = "Bundle %{public}@ is not allowed to access device %{public}@";
            goto LABEL_26;
          }

          if (qword_100B512F8 != -1)
          {
            sub_1008565BC();
          }

          if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v9))
          {
            [v38 addObject:v9];
            goto LABEL_29;
          }

          v16 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v54 = v9;
            v11 = v16;
            v12 = "Session cannot access device %{public}@";
            v15 = 12;
            goto LABEL_27;
          }

LABEL_29:

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v17 = [v4 countByEnumeratingWithState:&v47 objects:v57 count:16];
        v5 = v17;
        if (!v17)
        {
LABEL_57:

          goto LABEL_58;
        }
      }
    }

    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    sub_1007811A8(off_100B508C8);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v4 = v44 = 0u;
    v18 = [v4 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (!v18)
    {
      goto LABEL_56;
    }

    v19 = *v44;
LABEL_38:
    v20 = 0;
    while (1)
    {
      if (*v44 != v19)
      {
        objc_enumerationMutation(v4);
      }

      v21 = *(*(&v43 + 1) + 8 * v20);
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      if (sub_10004FF0C(off_100B508C8, v21, *(a1 + 96), *(a1 + 48)))
      {
        if (qword_100B512F8 != -1)
        {
          sub_1008565BC();
        }

        if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v21))
        {
          [v38 addObject:v21];
        }

        else
        {
          v27 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v54 = v21;
            v24 = v27;
            v25 = "Session cannot access device %{public}@";
            v26 = 12;
            goto LABEL_54;
          }
        }
      }

      else
      {
        v22 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          v23 = *(a1 + 96);
          *buf = 138543618;
          v54 = v23;
          v55 = 2114;
          v56 = v21;
          v24 = v22;
          v25 = "Bundle %{public}@ is not allowed to access device %{public}@";
          v26 = 22;
LABEL_54:
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, buf, v26);
        }
      }

      if (v18 == ++v20)
      {
        v28 = [v4 countByEnumeratingWithState:&v43 objects:v52 count:16];
        v18 = v28;
        if (!v28)
        {
LABEL_56:

          goto LABEL_57;
        }

        goto LABEL_38;
      }
    }
  }

LABEL_58:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v30 = xpc_array_create(0, 0);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v31 = v38;
    v32 = [v31 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v32)
    {
      v33 = *v40;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v40 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = sub_10005201C(*(*(&v39 + 1) + 8 * i), *(a1 + 168), *(a1 + 80));
          xpc_array_append_value(v30, v35);
          xpc_release(v35);
        }

        v32 = [v31 countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v32);
    }

    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", v30);
    xpc_connection_send_message(*(a1 + 16), reply);
    xpc_release(reply);
    xpc_release(v30);
  }
}

void sub_100656578(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v37 = sub_100066200(value, "kCBMsgArgUUIDs");
  if (qword_100B508D0 != -1)
  {
    sub_100856AE8();
  }

  sub_10003EF30(off_100B508C8);
  v38 = +[NSMutableSet set];
  if (*(a1 + 80) >= 1 && *(a1 + 104) == 1)
  {
    if (v37 && [v37 count])
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v4 = v37;
      v5 = [v4 countByEnumeratingWithState:&v47 objects:v57 count:16];
      if (!v5)
      {
        goto LABEL_57;
      }

      v6 = *v48;
      while (1)
      {
        v7 = 0;
        do
        {
          if (*v48 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v47 + 1) + 8 * v7);
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          v9 = sub_100782A90(off_100B508C8, v8);
          if (!v9)
          {
            v10 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_29;
            }

            *buf = 141558275;
            v54 = 1752392040;
            v55 = 2113;
            v56 = v8;
            v11 = v10;
            v12 = "No device with FindMyID %{private, mask.hash}@";
LABEL_26:
            v15 = 22;
LABEL_27:
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, buf, v15);
            goto LABEL_29;
          }

          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if ((sub_10004FF0C(off_100B508C8, v9, *(a1 + 96), *(a1 + 48)) & 1) == 0)
          {
            v13 = qword_100BCE950;
            if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_29;
            }

            v14 = *(a1 + 96);
            *buf = 138543618;
            v54 = v14;
            v55 = 2114;
            v56 = v9;
            v11 = v13;
            v12 = "Bundle %{public}@ is not allowed to access device %{public}@";
            goto LABEL_26;
          }

          if (qword_100B512F8 != -1)
          {
            sub_1008565BC();
          }

          if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v9))
          {
            [v38 addObject:v9];
            goto LABEL_29;
          }

          v16 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v54 = v9;
            v11 = v16;
            v12 = "Session cannot access device %{public}@";
            v15 = 12;
            goto LABEL_27;
          }

LABEL_29:

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v17 = [v4 countByEnumeratingWithState:&v47 objects:v57 count:16];
        v5 = v17;
        if (!v17)
        {
LABEL_57:

          goto LABEL_58;
        }
      }
    }

    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    sub_1007811A8(off_100B508C8);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v4 = v44 = 0u;
    v18 = [v4 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (!v18)
    {
      goto LABEL_56;
    }

    v19 = *v44;
LABEL_38:
    v20 = 0;
    while (1)
    {
      if (*v44 != v19)
      {
        objc_enumerationMutation(v4);
      }

      v21 = *(*(&v43 + 1) + 8 * v20);
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      if (sub_10004FF0C(off_100B508C8, v21, *(a1 + 96), *(a1 + 48)))
      {
        if (qword_100B512F8 != -1)
        {
          sub_1008565BC();
        }

        if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v21))
        {
          [v38 addObject:v21];
        }

        else
        {
          v27 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v54 = v21;
            v24 = v27;
            v25 = "Session cannot access device %@";
            v26 = 12;
            goto LABEL_54;
          }
        }
      }

      else
      {
        v22 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          v23 = *(a1 + 96);
          *buf = 138543618;
          v54 = v23;
          v55 = 2114;
          v56 = v21;
          v24 = v22;
          v25 = "Bundle %{public}@ is not allowed to access device %{public}@";
          v26 = 22;
LABEL_54:
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, buf, v26);
        }
      }

      if (v18 == ++v20)
      {
        v28 = [v4 countByEnumeratingWithState:&v43 objects:v52 count:16];
        v18 = v28;
        if (!v28)
        {
LABEL_56:

          goto LABEL_57;
        }

        goto LABEL_38;
      }
    }
  }

LABEL_58:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v30 = xpc_array_create(0, 0);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v31 = v38;
    v32 = [v31 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v32)
    {
      v33 = *v40;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v40 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = sub_10005201C(*(*(&v39 + 1) + 8 * i), *(a1 + 168), *(a1 + 80));
          xpc_array_append_value(v30, v35);
          xpc_release(v35);
        }

        v32 = [v31 countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v32);
    }

    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", v30);
    xpc_connection_send_message(*(a1 + 16), reply);
    xpc_release(reply);
    xpc_release(v30);
  }
}

void sub_100656C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10067460C;
  v5[3] = &unk_100AE0860;
  v5[4] = a1;
  v5[5] = a2;
  sub_10000D334(v4, v5);
}

void sub_100656CD4(uint64_t a1, xpc_object_t xdict)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v30 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions"))
  {
    sub_1005B2CE4(a1, 232, xdict, *(v32 + 6));
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857404();
    }
  }

  v29 = 2;
  v28 = 1;
  v18 = sub_100013CA4(v30, 0, v12, v13, v14, v15, v16, v17, "kCBLEMRCAction");
  *(v32 + 6) = v18;
  if (!v18 || (sub_1005B2CE4(a1, 232, xdict, v18), !os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR)))
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_100857474();
  if (v5)
  {
LABEL_7:
    v19 = sub_100007EE8();
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100674798;
    v22[3] = &unk_100B04C78;
    v24 = &v31;
    v25 = a1;
    v23 = v5;
    v26 = v29;
    v27 = v28;
    sub_10000D334(v19, v22);
  }

LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  v21 = reply;
  if (reply)
  {
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", *(v32 + 6));
    xpc_connection_send_message(*(a1 + 16), v21);
    xpc_release(v21);
  }

  _Block_object_dispose(&v31, 8);
}

void sub_100656F70(uint64_t a1, void *a2)
{
  v4 = xpc_array_create(0, 0);
  v5 = sub_100007EE8();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100674804;
  v8[3] = &unk_100AE0860;
  v8[4] = a1;
  v8[5] = v4;
  sub_10000D334(v5, v8);
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v7 = reply;
    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", v4);
    xpc_connection_send_message(*(a1 + 16), v7);
    xpc_release(v7);
  }

  xpc_release(v4);
}

void sub_100657044(uint64_t a1, xpc_object_t original)
{
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = xpc_dictionary_create_reply(original);
  v20 = 0;
  value = xpc_dictionary_get_value(original, "kCBMsgArgs");
  if (!sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions"))
  {
    v19 = 0;
    sub_100013CA4(v20, 0, v11, v12, v13, v14, v15, v16, "kCBMsgArgLastMinutes");
    v17 = sub_100007EE8();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1006749A8;
    v18[3] = &unk_100AE0EB8;
    v18[5] = a1;
    v18[6] = v19;
    v18[4] = v21;
    sub_10000CA94(v17, v18);
  }

  _Block_object_dispose(v21, 8);
}

void sub_10065718C(uint64_t a1, xpc_object_t xdict)
{
  v145 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = sub_10000F034();
  (*(*v6 + 664))(v6, *(a1 + 96), 1);
  if (sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgOptions"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857520();
    }

    v13 = 3;
    goto LABEL_33;
  }

  if (!v5)
  {
    goto LABEL_210;
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  if (!sub_1007868D4(off_100B508C8, v5))
  {
LABEL_210:
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857744();
    }

    v13 = 8;
    goto LABEL_33;
  }

  if (qword_100B512F8 != -1)
  {
    sub_1008565BC();
  }

  if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5))
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
    {
      v143 = 0;
      v144 = 0;
      v141 = 0;
      v142 = 0;
      v139 = 0;
      v140 = 0;
      v138 = 0;
      v137 = 0;
      v136 = 0;
      v135 = 0;
      v134 = 0;
      v133 = 0;
      v132 = 0;
      v131 = 0;
      v130 = 0;
      v129 = 0;
      v128 = 0;
      v127 = 0;
      v126 = 0;
      v125 = 0;
      v124 = 0;
      v123 = 0;
      v122 = 0;
      v121 = 0;
      v120 = 0;
      v119 = 0;
      v118 = 0;
      v117 = 0;
      v116 = 0;
      v115 = 0;
      v114 = 0;
      v113 = 0;
      v112 = 0;
      v102 = sub_100013CA4(v145, 0, v14, v15, v16, v17, v18, v19, "kCBConnectOptionNotifyOnConnection");
      v20 = [ConnectOptions alertOptionsWithConnectionAlerts:"alertOptionsWithConnectionAlerts:disconnectionAlerts:notificationAlerts:delay:bridgeTransport:" disconnectionAlerts:0 notificationAlerts:0 delay:0 bridgeTransport:?];
      [v20 setWantsObjectDiscoveryData:0];
      [v20 setDisableLeGATT:0];
      [v20 setAncsRequired:0];
      [v20 setResetDisconnectionHistory:0];
      v21 = sub_10003ED64(v145, "kCBManagerListOfClients");
      [v20 setConnectingClients:v21];

      [v20 setRequiresLowLatency:0];
      v22 = [v20 connectingClients];
      LODWORD(v21) = v22 == 0;

      if (v21)
      {
        v23 = [NSArray arrayWithObjects:*(a1 + 96), 0, sub_100013DE8, &v144, "kCBConnectOptionNotifyOnDisconnection", sub_100013DE8, &v143, "kCBConnectOptionNotifyOnNotification", sub_100013DE8, &v142, "kCBConnectOptionStartDelay", sub_100013DE8, &v141, "kCBConnectOptionReceiveObjectDiscoveryData", sub_100013DE8, &v140, "kCBConnectOptionEnableTransportBridging", sub_100013DE8, &v139, "kCBConnectOptionsDisableLeGATT", sub_100013DE8, &v138, "kCBConnectOptionRequiresANCS", sub_100013DE8, &v137, "kCBConnectOptionHideFromBTSettings", sub_100013DE8, &v136, "kCBConnectOptionInitPHYs", sub_100013DE8, &v135, "kCBConnectOptionPHYOptions", sub_100013DE8, &v134, "kCBConnectOptionFirstApproachEnable", sub_100013DE8, &v133, "kCBConnectOptionGetControllerBTClock", sub_100013DE8, &v132, "kCBOptionUseCase", sub_100013DE8, &v130, "kCBConnectOptionGetLESynchronizationEvent", sub_100013DE8, &v131, "kCBConnectOptionMaxAllowedConnectionDelay", sub_100013DE8, &v129, "kCBConnectOptionMinRSSILevelForConnect", sub_100013DE8, &v128, "kCBConnectOptionConnectionCompleteOnPoll", sub_100013DE8, &v127, "kCBConnectOptionEnableScanCore", sub_100013DE8, &v126, "kCBConnectOptionLatencyCritical", sub_100013DE8, &v125];
        [v20 setConnectingClients:v23];
      }

      v24 = *(a1 + 190);
      if ((v24 & 1) == 0)
      {
        v25 = (a1 + 80);
        if (*(a1 + 80) < 1)
        {
          goto LABEL_35;
        }
      }

      v26 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v128;
        *&buf[12] = 1024;
        *&buf[14] = v24;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "configuration for minRSSILevelForConnection to:%lld  fAllowScreenOffScanning=%d", buf, 0x12u);
      }

      [v20 setMinRSSILevelForConnection:v128];
      v25 = (a1 + 80);
      if (*(a1 + 80) >= 2)
      {
        [v20 setInitPHYs:v135];
        [v20 setPHYOptions:v134];
        [v20 setMinRSSILevelForConnection:v128];
        [v20 setWaitForConnectionPoll:v127 != 0];
        [v20 setEnableScanCore:v126 != 0];
        [v20 setCtkdChosenTransport:v124];
        [v20 setTxPowerConnectInd:v114];
        [v20 setTxPowerAuxConnectReq:v113];
        [v20 setMrcEnable:v112];
        if (qword_100B508D0 != -1)
        {
          sub_1000D5C34();
        }

        sub_100792058(off_100B508C8, v5, v119, v118, v117, v116, v115, v114, v113, v112);
      }

      else
      {
LABEL_35:
        [v20 setInitPHYs:1];
        [v20 setPHYOptions:0];
        [v20 setEnableScanCore:0];
      }

      v103 = v25;
      if (qword_100B6F818 != -1)
      {
        sub_1008575CC();
      }

      if (byte_100B6F816 == 1)
      {
        v28 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Warning: Override enableAutoReconnect for device %{public}@", buf, 0xCu);
        }

        [v20 setEnableAutoReconnect:1];
      }

      if (byte_100B6F815 == 1)
      {
        v29 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Warning: Setting override connection parameters to device %{public}@", buf, 0xCu);
        }

        p_info = &OBJC_METACLASS___BTVCDevice.info;
        if (qword_100B508D0 != -1)
        {
          sub_1000D5C34();
          p_info = (&OBJC_METACLASS___BTVCDevice + 32);
        }

        sub_100792058(p_info[281], v5, byte_100B6F810, byte_100B6F811, 0, 0, 0, byte_100B6F812, word_100B6F813, SHIBYTE(word_100B6F813));
      }

      if (![v20 initPHYs])
      {
        [v20 setInitPHYs:{objc_msgSend(v20, "initPHYs") | 1}];
      }

      if (v133 == 1)
      {
        v31 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Enable coded PHY from first approach", buf, 2u);
        }

        [v20 setInitPHYs:{objc_msgSend(v20, "initPHYs") | 4}];
      }

      if (v132 == 1)
      {
        v32 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *v25;
          *buf = 67109120;
          *&buf[4] = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "configuration for enableControllerBTClockUpdates for AccessLevel:%d ", buf, 8u);
        }

        if (*v25 >= 1)
        {
          [v20 setEnableControllerBTClockUpdates:1];
        }
      }

      v34 = *v25;
      if (v131 == 1)
      {
        v35 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v34;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "configuration for enableLESynchronizationEvents for AccessLevel:%d ", buf, 8u);
          v34 = *v25;
        }

        if (v34 < 1)
        {
          goto LABEL_67;
        }

        [v20 setEnableLESynchronizationEvent:1];
        v34 = *v25;
      }

      if (v34 >= 1)
      {
        [v20 setOpportunistic:v122 != 0];
        [v20 setResetDisconnectionHistory:v123 != 0];
        v36 = sub_1000C9AAC(v145, "kCBConnectOptionConnectionScanDutyCycle");
        v37 = v36;
        if (v36)
        {
          v38 = [v36 intValue];
        }

        else
        {
          v38 = 0;
        }

        v40 = sub_1000C9AAC(v145, "kCBConnectOptionScreenOffConnectionScanDutyCycle");

        if (v40)
        {
          v39 = [v40 intValue];
        }

        else
        {
          v39 = 3;
        }

        v41 = sub_1000C9AAC(v145, "kCBConnectOptionDoNoDisconnectOnEncryptionFailure");
        v42 = [v41 BOOLValue];

        if (v42)
        {
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          sub_100790068(off_100B508C8, v5, 1);
          if (qword_100B508B0 != -1)
          {
            sub_10085681C();
          }

          sub_10076E7B8(off_100B508A8, v5);
        }

        goto LABEL_81;
      }

LABEL_67:
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      sub_100790068(off_100B508C8, v5, 0);
      v38 = 0;
      v39 = 3;
LABEL_81:
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v43 = v103;
      sub_10078FDAC(off_100B508C8, v5, v38);
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
        v43 = v103;
      }

      sub_10078FEC4(off_100B508C8, v5, v39);
      v44 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
      {
        sub_100018384(*(a1 + 128), v151);
        v45 = v152 >= 0 ? v151 : *v151;
        *buf = 136315906;
        *&buf[4] = v45;
        *&buf[12] = 1024;
        *&buf[14] = v38;
        *&buf[18] = 1024;
        *&buf[20] = v39;
        *v147 = 2112;
        *&v147[2] = v5;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "Session %s setting up connection scan level of %d (screenOff %d) for device %@", buf, 0x22u);
        if (v152 < 0)
        {
          operator delete(*v151);
        }
      }

      if (*v43 < 1)
      {
        v52 = 0;
        goto LABEL_171;
      }

      v46 = &OBJC_METACLASS___BTVCDevice.info;
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
        v46 = (&OBJC_METACLASS___BTVCDevice + 32);
      }

      v47 = sub_1000500A0(v46[281], v5);
      v48 = v47 == 0;

      if (v48)
      {
        v49 = sub_10037CE6C(v145, "kCBConnectOptionsTemporaryLTK");
        if (qword_100B508D0 != -1)
        {
          sub_1000D5C34();
        }

        v50 = sub_100046458(off_100B508C8, v5, 0);
        if ([v49 length])
        {
          v51 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v5;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "preparing a temporary LTK for device %@", buf, 0xCu);
          }

          if (v50)
          {
            [v20 setTemporaryLTK:v49];
          }

          else
          {
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_1008575F4();
            }

            v102 = 8;
          }
        }
      }

      if (v136)
      {
        v55 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(*(a1 + 128), buf);
          if (buf[23] >= 0)
          {
            v56 = buf;
          }

          else
          {
            v56 = *buf;
          }

          *v151 = 136315394;
          *&v151[4] = v56;
          *&v151[12] = 2112;
          *&v151[14] = v5;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Session %s is asking to hide %@ from BT Settings menu", v151, 0x16u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v57 = v136 != 0;
        }

        else
        {
          v57 = 1;
        }

        [v20 setHideFromBTSettings:v57];
      }

      v58 = sub_100013C04(v145, "kCBConnectOptionClientBundleID");
      v59 = sub_100013C04(v145, "kCBConnectOptionClientProcessID");
      v60 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        v61 = @"NoClientBundleID";
        v62 = @"NoClientProcessID";
        if (v58)
        {
          v61 = v58;
        }

        if (v59)
        {
          v62 = v59;
        }

        *buf = 138413314;
        *&buf[4] = v61;
        *&buf[12] = 2112;
        *&buf[14] = v62;
        *&buf[22] = 2048;
        *v147 = v130;
        *&v147[8] = 2048;
        v148 = v129;
        v149 = 2048;
        v150 = v125;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "clientBundleID %@ clientProcessID %@ connectionUseCase %lld maxAllowedConnectionDelay %lld isLatencyCritical %lld", buf, 0x34u);
      }

      [v20 setClientBundleID:v58];
      [v20 setClientProcessID:v59];
      [v20 setConnectionUseCase:v130];
      [v20 setMaxAllowedConnectionDelay:v129];
      if (v125 == 1 && *(a1 + 84) == 1)
      {
        v63 = sub_10000C798();
        if ((*(*v63 + 416))(v63))
        {
          v64 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
          {
            v65 = @"NoClientBundleID";
            if (v58)
            {
              v65 = v58;
            }

            v66 = @"NoClientProcessID";
            if (v59)
            {
              v66 = v59;
            }

            *buf = 138412546;
            *&buf[4] = v65;
            *&buf[12] = 2112;
            *&buf[14] = v66;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "clientBundleID %@ clientProcessID %@ fLatencyCriticalRequest received", buf, 0x16u);
          }

          [v20 setIsLatencyCritical:1];
        }
      }

      v67 = sub_10006638C(v145, "kCBOptionUseCaseList");
      v68 = v67;
      if (v67)
      {
        if ([v67 count])
        {
          v69 = [NSSet setWithArray:v68];
          v70 = [v69 allObjects];

          v71 = [v70 sortedArrayUsingSelector:"compare:"];

          v72 = v71;
        }

        else
        {
          v72 = v68;
        }
      }

      else
      {
        v72 = 0;
      }

      [v20 setUseCaseList:v72];
      if (v72 && [v72 count])
      {
        v73 = sub_100670768(v72);
        v74 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          v75 = [v73 componentsJoinedByString:{@", "}];
          *buf = 138412290;
          *&buf[4] = v75;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "connUseCaseList: %@", buf, 0xCu);
        }

        if (![v20 connectionUseCase])
        {
          v76 = [v72 firstObject];
          v77 = v76;
          if (v76)
          {
            [v20 setConnectionUseCase:{objc_msgSend(v76, "longLongValue")}];
            v78 = qword_100BCE950;
            if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
            {
              v79 = sub_10002C70C([v77 longLongValue]);
              *buf = 136315138;
              *&buf[4] = v79;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "default useCase derived from useCaseList: %s", buf, 0xCu);
            }
          }
        }
      }

      if (*v103 < 1)
      {
LABEL_170:
        v52 = v72;
LABEL_171:
        if (v102)
        {
          sub_1005B2CE4(a1, 92, xdict, v102);
LABEL_207:

          goto LABEL_34;
        }

        if (!_os_feature_enabled_impl())
        {
          goto LABEL_205;
        }

        if (([*(a1 + 96) containsString:@"com.apple.deviceaccessd"] & 1) == 0 && (*(a1 + 178) & 1) == 0 && (*(a1 + 176) & 1) == 0 && (*(a1 + 177) & 1) == 0 && (*(a1 + 175) & 1) == 0)
        {
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          v92 = off_100B508C8;
          sub_100007E30(__p, "DA_ASK_RETAIN_DEVICE");
          v93 = sub_10004EB40(v92, v5, __p);
          v94 = v93;
          if (v111 < 0)
          {
            operator delete(__p[0]);
            if ((v94 & 1) == 0)
            {
LABEL_205:
              v101 = sub_100007EE8();
              v104[0] = _NSConcreteStackBlock;
              v104[1] = 3221225472;
              v104[2] = sub_100671278;
              v104[3] = &unk_100AE25C8;
              v107 = a1;
              v105 = v5;
              v106 = v20;
              sub_10000D334(v101, v104);

              v80 = v105;
              v72 = v52;
LABEL_206:

              v52 = v72;
              goto LABEL_207;
            }
          }

          else if (!v93)
          {
            goto LABEL_205;
          }
        }

        if (qword_100B508D0 != -1)
        {
          sub_1000D5C34();
        }

        v98 = off_100B508C8;
        sub_100007E30(v108, "ASK_ALLOW_HID");
        v99 = sub_10004EB40(v98, v5, v108);
        if (v109 < 0)
        {
          operator delete(v108[0]);
        }

        if ((v99 & 1) == 0)
        {
          v100 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v5;
            _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "Warning: Blocking HID service on device %@", buf, 0xCu);
          }

          memset(buf, 0, 20);
          *v151 = xmmword_1008A4D28;
          *&v151[16] = 0;
          sub_10000D03C(buf, v151);
          if (qword_100B50900 != -1)
          {
            sub_10085771C();
          }

          sub_10070BCBC(qword_100B508F8, v5, buf);
        }

        goto LABEL_205;
      }

      v80 = sub_10037CE6C(v145, "kCBConnectOptionConnectionOptionTemporaryIRKValue");
      if (![v80 length])
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
        {
          sub_1008576A0();
        }

        goto LABEL_169;
      }

      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v81 = sub_100046458(off_100B508C8, v5, 0);
      v82 = sub_10037CE6C(v145, "kCBConnectOptionConnectionOptionTemporaryIdentityAddress");
      v83 = [v82 copy];

      *&v151[3] = 0;
      *v151 = 0;
      if ([v83 length] == 6 || objc_msgSend(v83, "length") == 7)
      {
        v84 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v5;
          *&buf[12] = 2112;
          *&buf[14] = v83;
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "preparing a temporary IRK for device %@ for address %@", buf, 0x16u);
        }

        if ([v83 length] == 6)
        {
          v85 = 0;
          v151[0] = 1;
        }

        else
        {
          v85 = 1;
          [v83 getBytes:v151 length:1];
        }

        [v83 getBytes:&v151[1] range:{v85, 6}];
        v86 = sub_100063D0C();
        [v20 setTemporaryIdentityAddress:v86];
      }

      else
      {
        if (!v81)
        {
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_1008575F4();
          }

          v102 = 8;
LABEL_168:

LABEL_169:
          goto LABEL_170;
        }

        v95 = sub_1007774DC();
        [v20 setTemporaryIdentityAddress:v95];

        v96 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v5;
          *&buf[12] = 2112;
          *&buf[14] = v83;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "preparing a temporary IRK from device UUID %@ for address %@", buf, 0x16u);
        }

        v151[0] = 0;
        v97 = sub_1002D3618(v81);
        *&v151[1] = v97;
        *&v151[5] = WORD2(v97);
      }

      v87 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "setting up temporary IRK for device %@", buf, 0xCu);
      }

      [v20 setTemporaryIRK:v80];
      v88 = [v20 temporaryIRK];
      v89 = [v88 length];

      if (v89 != 16)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100857664();
        }

        goto LABEL_206;
      }

      *buf = 0;
      *&buf[8] = 0;
      v90 = [v20 temporaryIRK];
      v91 = v90;
      *buf = *[v90 bytes];

      if (qword_100B508C0 != -1)
      {
        sub_1008569B8();
      }

      sub_1007CA114(off_100B508B8, v151, buf, v5);
      goto LABEL_168;
    }

    v27 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v53 = *(a1 + 96);
      v54 = *(a1 + 48);
      *buf = 138412802;
      *&buf[4] = v53;
      *&buf[12] = 2112;
      *&buf[14] = v54;
      *&buf[22] = 2112;
      *v147 = v5;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085755C();
  }

  v13 = 17;
LABEL_33:
  sub_1005B2CE4(a1, 92, xdict, v13);
LABEL_34:
}

void sub_100658CE8(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  _Unwind_Resume(a1);
}

void sub_100658E94(uint64_t a1, xpc_object_t xdict)
{
  v31 = 0;
  v32 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v30 = 0;
  if (!sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions"))
  {
    if (!v5)
    {
      goto LABEL_31;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (!sub_1007868D4(off_100B508C8, v5))
    {
LABEL_31:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857744();
      }

      v12 = 8;
      goto LABEL_20;
    }

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5))
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
      {
        v19 = sub_100013CA4(v30, 0, v13, v14, v15, v16, v17, v18, "kCBCancelConnectOptionForce");
        if (!v19)
        {
          v22 = sub_100007EE8();
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_100672628;
          v25[3] = &unk_100AEB858;
          v27 = a1;
          v26 = v5;
          v28 = v32;
          v29 = v31;
          sub_10000D334(v22, v25);

          goto LABEL_21;
        }

        v20 = 94;
        goto LABEL_27;
      }

      v21 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 96);
        v24 = *(a1 + 48);
        *buf = 138412802;
        v34 = v23;
        v35 = 2112;
        v36 = v24;
        v37 = 2112;
        v38 = v5;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085755C();
    }

    v19 = 17;
    v20 = 92;
LABEL_27:
    sub_1005B2CE4(a1, v20, xdict, v19);
    goto LABEL_21;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100857520();
  }

  v12 = 3;
LABEL_20:
  sub_1005B2CE4(a1, 92, xdict, v12);
LABEL_21:
}

void sub_1006591F4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_100013C04(value, "kCBMsgArgAddressString");
  if ((sub_100777FF4(v5) & 0xFFFFFFFFFFFFLL) != 0)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    sub_10003EF30(off_100B508C8);
    *uu = 0;
    v29 = 0;
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v6 = off_100B508C8;
    v7 = sub_100777FF4(v5);
    sub_1000498D4(v6, v7, 0, 1u, 0, 0, uu);
    if (uuid_is_null(uu))
    {
      if (qword_100B508C0 != -1)
      {
        sub_1008569B8();
      }

      v8 = off_100B508B8;
      v9 = sub_100777FF4(v5);
      v10 = sub_1007C9980(v8, v9);
      sub_10004DFB4(&v22, v10);
      uuid_copy(uu, &v22);
    }

    if (!uuid_is_null(uu))
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      v11 = off_100B508C8;
      v12 = sub_10004DF60(uu);
      LOBYTE(v11) = sub_10004FF0C(v11, v12, *(a1 + 96), *(a1 + 48));

      if (v11)
      {
        v13 = sub_10004DF60(uu);
        v14 = sub_10005201C(v13, *(a1 + 168), *(a1 + 80));

        goto LABEL_20;
      }

      v16 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 96);
        v20 = *(a1 + 48);
        v21 = sub_10004DF60(uu);
        v22 = 138412802;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        v26 = 2112;
        v27 = v21;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", &v22, 0x20u);
      }
    }
  }

  else
  {
    v15 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Warning: Invalid parameters, cannot retrieve a peripheral with address %@", &v22, 0xCu);
    }
  }

  v14 = 0;
LABEL_20:
  reply = xpc_dictionary_create_reply(xdict);
  v18 = reply;
  if (reply)
  {
    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", v14);
    xpc_connection_send_message(*(a1 + 16), v18);
    xpc_release(v18);
  }

  if (v14)
  {
    xpc_release(v14);
  }
}

void sub_10065954C(uint64_t a1, xpc_object_t xdict)
{
  v28 = a1;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CE6C(value, "kCBAdvOptionInstanceRandomAddressBytes");
  v5 = [v4 copy];

  v29 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (*(v28 + 80) < 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857780();
    }

    goto LABEL_38;
  }

  *&v30[3] = 0;
  *v30 = 0;
  if ([v5 length] != 6 && objc_msgSend(v5, "length") != 7)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008577BC();
    }

    goto LABEL_38;
  }

  if ([v5 length] == 6)
  {
    v6 = 0;
    v30[0] = 1;
  }

  else
  {
    v6 = 1;
    [v5 getBytes:v30 length:1];
  }

  [v5 getBytes:&v30[1] range:{v6, 6}];
  if (v29)
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (sub_1007868D4(off_100B508C8, v29))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008577F8();
      }

LABEL_38:
      v24 = 0;
      goto LABEL_39;
    }
  }

  v7 = v30[1];
  v8 = v30[2];
  v9 = v30[3];
  v10 = v30[4];
  v11 = v30[5];
  v12 = v30[6];
  v13 = v30[0];
  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  sub_10003EF30(off_100B508C8);
  *uu = 0;
  v38 = 0;
  if (qword_100B508C0 != -1)
  {
    sub_1008569B8();
  }

  v14 = (v7 << 40) | (v8 << 32) | (v9 << 24) | (v10 << 16) | (v11 << 8) | v12 | (v13 << 48);
  v15 = sub_1007C9980(off_100B508B8, v14);
  sub_10004DFB4(uu, v15);

  if (!uuid_is_null(uu))
  {
    v17 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1000D67B4(uu, src);
      v18 = v32;
      v19 = *src;
      v20 = sub_100063D0C();
      v21 = v20;
      v22 = src;
      if (v18 < 0)
      {
        v22 = v19;
      }

      *buf = 136446466;
      v34 = v22;
      v35 = 2112;
      v36 = v20;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Device %{public}s for address %@ already exists, cannot create a new one", buf, 0x16u);
      if (v32 < 0)
      {
        operator delete(*src);
      }
    }

    goto LABEL_38;
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  sub_1000498D4(off_100B508C8, v14, 0, 1u, 0, 0, src);
  uuid_copy(uu, src);
  if (!uuid_is_null(uu))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v23 = sub_100063D0C();
      sub_1000D67B4(uu, src);
      sub_1008578C8();
    }

    goto LABEL_38;
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  sub_1000498D4(off_100B508C8, v14, 1u, 1u, v29, 0, src);
  uuid_copy(uu, src);
  if (uuid_is_null(uu))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_100063D0C();
      sub_1000D67B4(uu, src);
      sub_100857868();
    }

    goto LABEL_38;
  }

  v27 = sub_10004DF60(uu);
  v24 = sub_10005201C(v27, *(v28 + 168), *(v28 + 80));

LABEL_39:
  reply = xpc_dictionary_create_reply(xdict);
  v26 = reply;
  if (reply)
  {
    xpc_dictionary_set_value(reply, "kCBMsgArgDevices", v24);
    xpc_connection_send_message(*(v28 + 16), v26);
    xpc_release(v26);
  }

  if (v24)
  {
    xpc_release(v24);
  }
}

void sub_100659B0C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  reply = xpc_dictionary_create_reply(xdict);
  if (v12[3])
  {
    v6 = sub_100007EE8();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10067269C;
    v7[3] = &unk_100B046B8;
    v10 = a1;
    v8 = v5;
    v9 = &v11;
    sub_10000CA94(v6, v7);
  }

  _Block_object_dispose(&v11, 8);
}

void sub_100659C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100659C44(uint64_t a1)
{
  if (*(a1 + 80) == 2)
  {
    v2 = sub_100007EE8();

    sub_10000D334(v2, &stru_100B04B88);
  }
}

void sub_100659C84(uint64_t a1)
{
  if (*(a1 + 80) == 2)
  {
    v2 = sub_100007EE8();

    sub_10000D334(v2, &stru_100B04B68);
  }
}

void sub_100659CC4(uint64_t a1)
{
  if (*(a1 + 80) == 2)
  {
    v5[7] = v1;
    v5[8] = v2;
    v4 = sub_100007EE8();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1006729D4;
    v5[3] = &unk_100ADF8F8;
    v5[4] = a1;
    sub_10000D334(v4, v5);
  }
}

void sub_100659D50(uint64_t a1)
{
  if (*(a1 + 80) == 2)
  {
    v5[7] = v1;
    v5[8] = v2;
    v4 = sub_100007EE8();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100672A38;
    v5[3] = &unk_100ADF8F8;
    v5[4] = a1;
    sub_10000D334(v4, v5);
  }
}

void sub_100659DDC(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006712D4;
  v6[3] = &unk_100ADF820;
  v5 = v3;
  v7 = v5;
  sub_10000D334(v4, v6);
}

void sub_100659EBC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CE6C(value, "kCBMsgArgLeAFHMap");
  if ([v4 length] == 5)
  {
    v5 = qword_100BCE950;
    if (*(a1 + 80) <= 0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100018384(*(a1 + 128), __p);
        sub_100857AB4();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        sub_100018384(*(a1 + 128), __p);
        v6 = v21 >= 0 ? __p : __p[0];
        *buf = 136315394;
        v17 = v6;
        v18 = 2112;
        v19 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "session %s is trying to set LE AFH Map to %@", buf, 0x16u);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v15 = 0;
      v14 = 0;
      [v4 getBytes:&v14 length:5];
      v13 = 0;
      sub_1000216B4(&v13);
      if (sub_100018960(180, sub_100671394, v7, v8, v9, v10, v11, v12, &v14) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100018384(*(a1 + 128), __p);
        sub_100857A4C();
      }

      sub_10002249C(&v13);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    [v4 length];
    sub_100018384(*(a1 + 128), buf);
    sub_1008579D4();
  }
}

void sub_10065A12C(uint64_t a1, xpc_object_t xdict)
{
  v21 = 0;
  v22 = 1;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  if (v11)
  {
    sub_1005B2CE4(a1, 108, xdict, v11);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857B10();
    }
  }

  v18 = sub_100013CA4(v21, 0, v12, v13, v14, v15, v16, v17, "kCBScanOptionAppleFilterTargetCore");
  if (v18)
  {
    sub_1005B2CE4(a1, 108, xdict, v18);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857B80();
    }
  }

  if (*(a1 + 80) == 2)
  {
    v19 = sub_100007EE8();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100671468;
    v20[3] = &unk_100AE0860;
    v20[4] = a1;
    v20[5] = v22;
    sub_10000D334(v19, v20);
  }
}

void sub_10065A2C0(uint64_t a1, xpc_object_t xdict)
{
  v26 = 1;
  v24 = 0;
  v25 = 2;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  if (v11)
  {
    sub_1005B2CE4(a1, 109, xdict, v11);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857BF0();
    }
  }

  v18 = sub_100013CA4(v24, 0, v12, v13, v14, v15, v16, v17, "kCBScanOptionAppleFilterTargetCore");
  if (v18)
  {
    sub_1005B2CE4(a1, 109, xdict, v18);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857C60();
    }
  }

  v19 = sub_100013C04(v24, "kCBScanOptionPeers");
  v20 = sub_100777FF4(v19);
  if (*(a1 + 80) == 2)
  {
    v21 = v20;
    v22 = sub_100007EE8();
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1006714C4;
    v23[3] = &unk_100AEC130;
    v23[4] = v25;
    v23[5] = v21;
    v23[6] = v26;
    sub_10000D334(v22, v23);
  }
}

void sub_10065A4A8(uint64_t a1, xpc_object_t xdict)
{
  v28 = 1;
  v26 = 0;
  v27 = 2;
  v25 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  if (v11)
  {
    sub_1005B2CE4(a1, 110, xdict, v11);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857CD0();
    }
  }

  v12 = sub_100066200(v26, "kCBScanOptionRemoveMultipleDupFilterEntryUUIDs");
  v19 = sub_100013CA4(v26, 0, v13, v14, v15, v16, v17, v18, "kCBScanOptionAppleFilterTargetCore");
  if (v19)
  {
    sub_1005B2CE4(a1, 110, xdict, v19);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857D40();
    }
  }

  if (*(a1 + 80) == 2)
  {
    v20 = sub_100007EE8();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100671520;
    v21[3] = &unk_100AE0BC0;
    v22 = v12;
    v23 = v28;
    v24 = v25;
    sub_10000D334(v20, v21);
  }
}

void sub_10065A6C4(uint64_t a1, void *a2)
{
  if (*(a1 + 80) == 2)
  {
    v11 = v2;
    v12 = v3;
    v10 = 0;
    v6 = sub_100007EE8();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100671680;
    v9[3] = &unk_100AE0860;
    v9[4] = &v10 + 1;
    v9[5] = &v10;
    sub_10000D334(v6, v9);
    reply = xpc_dictionary_create_reply(a2);
    if (reply)
    {
      v8 = reply;
      xpc_dictionary_set_uint64(reply, "kCBScanOptionTotalAdvMatchingRules", HIBYTE(v10));
      xpc_dictionary_set_uint64(v8, "kCBScanOptionRemainingAdvMatchingRules", v10);
      xpc_connection_send_message(*(a1 + 16), v8);
      xpc_release(v8);
    }
  }
}

void sub_10065A7A8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = sub_10037CE6C(value, "kCBMsgArgObjectDiscoveryData");
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    sub_1005B2CE4(a1, 92, xdict, 1);
  }

  else
  {
    v8 = sub_100007EE8();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006728F0;
    v9[3] = &unk_100AE25C8;
    v12 = a1;
    v10 = v5;
    v11 = v6;
    sub_10000D334(v8, v9);
  }
}

void sub_10065A8F8(uint64_t a1, xpc_object_t xdict)
{
  v69 = 2;
  v70 = 1;
  v67 = 1;
  v68 = 1;
  v65 = 0;
  v66 = 1;
  v63 = 0;
  v64 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  if (v11)
  {
    sub_1005B2CE4(a1, 113, xdict, v11);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857E90();
    }
  }

  v18 = sub_100013CA4(v63, 0, v12, v13, v14, v15, v16, v17, "kCBScanEnableOptionAppleFilterEnable");
  if (v18)
  {
    sub_1005B2CE4(a1, 113, xdict, v18);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857F00();
    }
  }

  v25 = sub_100013CA4(v63, 0, v19, v20, v21, v22, v23, v24, "kCBScanEnableOptionAppleFilterType");
  if (v25)
  {
    sub_1005B2CE4(a1, 113, xdict, v25);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857F70();
    }
  }

  v32 = sub_100013CA4(v63, 0, v26, v27, v28, v29, v30, v31, "kCBScanOptionAppleFilterForceDups");
  if (v32)
  {
    sub_1005B2CE4(a1, 113, xdict, v32);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857FE0();
    }
  }

  v39 = sub_100013CA4(v63, 0, v33, v34, v35, v36, v37, v38, "kCBScanOptionAppleFilterBypassFilterDuplicate");
  if (v39)
  {
    sub_1005B2CE4(a1, 113, xdict, v39);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100858050();
    }
  }

  v46 = sub_100013CA4(v63, 0, v40, v41, v42, v43, v44, v45, "kCBScanOptionAppleFilterTargetCore");
  if (v46)
  {
    sub_1005B2CE4(a1, 113, xdict, v46);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008580C0();
    }
  }

  v53 = sub_100013CA4(v63, 0, v47, v48, v49, v50, v51, v52, "kCBScanEnableOptionAppleFilterScanDuration");
  if (v53)
  {
    sub_1005B2CE4(a1, 113, xdict, v53);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100858130();
    }
  }

  v60 = sub_100013CA4(v63, 0, v54, v55, v56, v57, v58, v59, "kCBScanEnableOptionAppleFilterScanPeriod");
  if (v60)
  {
    sub_1005B2CE4(a1, 113, xdict, v60);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008581A0();
    }
  }

  if (*(a1 + 80) == 2)
  {
    v61 = sub_100007EE8();
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_1006716D4;
    v62[3] = &unk_100B048E0;
    v62[4] = v70;
    v62[5] = v69;
    v62[6] = v68;
    v62[7] = v67;
    v62[8] = v66;
    v62[9] = v65;
    v62[10] = v64;
    sub_10000D334(v61, v62);
  }
}

void sub_10065AD3C(uint64_t a1, xpc_object_t xdict)
{
  v157 = 0;
  v158 = 1;
  v155 = 0;
  v156 = 1;
  v153 = 0;
  v154 = 0;
  v151 = 300;
  v152 = 300;
  v150 = 300;
  v148 = 30;
  v149 = 30;
  v146 = 1;
  v147 = 30;
  v144 = 30;
  v145 = 1;
  v142 = 30;
  v143 = 30;
  v141 = 0;
  if (*(a1 + 80) == 2)
  {
    v140 = 0;
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v11 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
    if (v11)
    {
      sub_1005B2CE4(a1, 114, xdict, v11);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858210();
      }
    }

    v18 = sub_100013CA4(v140, 0, v12, v13, v14, v15, v16, v17, "kCBSetScanParameterOwnAddress");
    if (v18)
    {
      sub_1005B2CE4(a1, 114, xdict, v18);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858280();
      }
    }

    v25 = sub_100013CA4(v140, 0, v19, v20, v21, v22, v23, v24, "kCBSetScanParameterScanningFilterPolicy");
    if (v25)
    {
      sub_1005B2CE4(a1, 114, xdict, v25);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008582F0();
      }
    }

    v32 = sub_100013CA4(v140, 0, v26, v27, v28, v29, v30, v31, "kCBSetScanParameterScanPHY");
    if (v32)
    {
      sub_1005B2CE4(a1, 114, xdict, v32);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858360();
      }
    }

    v39 = sub_100013CA4(v140, 0, v33, v34, v35, v36, v37, v38, "kCBSetScanParameterScanTypeLE1M");
    if (v39)
    {
      sub_1005B2CE4(a1, 114, xdict, v39);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008583D0();
      }
    }

    v46 = sub_100013CA4(v140, 0, v40, v41, v42, v43, v44, v45, "kCBSetScanParameterScanTypeLE2M");
    if (v46)
    {
      sub_1005B2CE4(a1, 114, xdict, v46);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858440();
      }
    }

    v53 = sub_100013CA4(v140, 0, v47, v48, v49, v50, v51, v52, "kCBSetScanParameterScanTypeLECoded");
    if (v53)
    {
      sub_1005B2CE4(a1, 114, xdict, v53);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008584B0();
      }
    }

    v60 = sub_100013CA4(v140, 0, v54, v55, v56, v57, v58, v59, "kCBSetScanParameterScanIntervalLE1M");
    if (v60)
    {
      sub_1005B2CE4(a1, 114, xdict, v60);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858520();
      }
    }

    v67 = sub_100013CA4(v140, 0, v61, v62, v63, v64, v65, v66, "kCBSetScanParameterScanIntervalLE2M");
    if (v67)
    {
      sub_1005B2CE4(a1, 114, xdict, v67);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858590();
      }
    }

    v74 = sub_100013CA4(v140, 0, v68, v69, v70, v71, v72, v73, "kCBSetScanParameterScanIntervalLECoded");
    if (v74)
    {
      sub_1005B2CE4(a1, 114, xdict, v74);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858600();
      }
    }

    v81 = sub_100013CA4(v140, 0, v75, v76, v77, v78, v79, v80, "kCBSetScanParameterScanWindowLE1M");
    if (v81)
    {
      sub_1005B2CE4(a1, 114, xdict, v81);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858670();
      }
    }

    v88 = sub_100013CA4(v140, 0, v82, v83, v84, v85, v86, v87, "kCBSetScanParameterScanWindowLE2M");
    if (v88)
    {
      sub_1005B2CE4(a1, 114, xdict, v88);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008586E0();
      }
    }

    v95 = sub_100013CA4(v140, 0, v89, v90, v91, v92, v93, v94, "kCBSetScanParameterScanWindowLECoded");
    if (v95)
    {
      sub_1005B2CE4(a1, 114, xdict, v95);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858750();
      }
    }

    v102 = sub_100013CA4(v140, 0, v96, v97, v98, v99, v100, v101, "kCBSetScanParameterScanIsLegacy");
    if (v102)
    {
      sub_1005B2CE4(a1, 114, xdict, v102);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008587C0();
      }
    }

    v109 = sub_100013CA4(v140, 0, v103, v104, v105, v106, v107, v108, "kCBSetScanParameterScanMaxWindowLE1M");
    if (v109)
    {
      sub_1005B2CE4(a1, 114, xdict, v109);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858830();
      }
    }

    v116 = sub_100013CA4(v140, 0, v110, v111, v112, v113, v114, v115, "kCBSetScanParameterScanMaxWindowLE2M");
    if (v116)
    {
      sub_1005B2CE4(a1, 114, xdict, v116);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008588A0();
      }
    }

    v123 = sub_100013CA4(v140, 0, v117, v118, v119, v120, v121, v122, "kCBSetScanParameterScanMaxWindowLECoded");
    if (v123)
    {
      sub_1005B2CE4(a1, 114, xdict, v123);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858910();
      }
    }

    v130 = sub_100013CA4(v140, 0, v124, v125, v126, v127, v128, v129, "kCBSetScanParameterScanTargetCore");
    if (v130)
    {
      sub_1005B2CE4(a1, 114, xdict, v130);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100858980();
      }
    }

    v137 = sub_100013CA4(v140, 0, v131, v132, v133, v134, v135, v136, "kCBSetScanParameterPriorityConfiguration");
    if (v137)
    {
      sub_1005B2CE4(a1, 114, xdict, v137);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008589F0();
      }
    }

    v138 = sub_100007EE8();
    v139[0] = _NSConcreteStackBlock;
    v139[1] = 3221225472;
    v139[2] = sub_10067226C;
    v139[3] = &unk_100B04AB0;
    v139[4] = v155;
    v139[5] = v154;
    v139[6] = v153;
    v139[7] = v152;
    v139[8] = v151;
    v139[9] = v150;
    v139[10] = v149;
    v139[11] = v148;
    v139[12] = v147;
    v139[13] = v144;
    v139[14] = v143;
    v139[15] = v142;
    v139[16] = v158;
    v139[17] = v157;
    v139[18] = v156;
    v139[19] = v146;
    v139[20] = v145;
    v139[21] = v141;
    sub_10000D334(v138, v139);
  }
}

void sub_10065B678(uint64_t a1, xpc_object_t xdict)
{
  v104 = 0;
  v105 = 0;
  v102 = 0;
  v103 = &off_100AE0A78;
  v100 = 0;
  v101 = &off_100AE0A78;
  v98 = 1;
  v99 = 0;
  v96 = 1;
  v97 = 1;
  v95 = 2;
  v93 = 0;
  v94 = 0;
  xdicta = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v17 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  if (v17)
  {
    sub_1005B2CE4(a1, 115, xdict, v17);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100858A60();
    }
  }

  v18 = sub_100013CA4(xdicta, 0, v11, v12, v13, v14, v15, v16, "kCBScanOptionAppleFilterPuckType");
  if (v18)
  {
    sub_1005B2CE4(a1, 115, xdict, v18);
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100858AD0();
    }
  }

  v19 = xpc_dictionary_get_value(xdicta, "kCBScanOptionAppleFilterPayload");
  if ((v19 && sub_1000C9980(v19, &v103) || !sub_10000C5E0(&v103)) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858B40();
  }

  v20 = xpc_dictionary_get_value(xdicta, "kCBScanOptionAppleFilterPayloadMask");
  if ((v20 && sub_1000C9980(v20, &v101) || !sub_10000C5E0(&v101)) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858B7C();
  }

  v21 = sub_10000C5E0(&v103);
  v22 = sub_10000C7D0();
  if (v21 > (*(*v22 + 4128))(v22) || (v23 = sub_10000C5E0(&v101), v24 = sub_10000C7D0(), v23 > (*(*v24 + 4128))(v24)))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v31 = sub_10000C5E0(&v103);
      v32 = sub_10000C5E0(&v101);
      sub_100858BB8(v106, v31, v32);
    }
  }

  if (sub_100013CA4(xdicta, 0, v25, v26, v27, v28, v29, v30, "kCBScanOptionAppleFilterRssi") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858C0C();
  }

  if (sub_100013CA4(xdicta, 0, v33, v34, v35, v36, v37, v38, "kCBScanOptionAppleFilterForceDups") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858C7C();
  }

  if (sub_100013CA4(xdicta, 0, v39, v40, v41, v42, v43, v44, "kCBScanOptionAppleFilterAddressType") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858CEC();
  }

  if (sub_100013CA4(xdicta, 0, v45, v46, v47, v48, v49, v50, "kCBScanOptionAppleFilterBypassFilterDuplicate") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858D5C();
  }

  if (sub_100013CA4(xdicta, 0, v51, v52, v53, v54, v55, v56, "kCBScanOptionAppleFilterTargetCore") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858AD0();
  }

  if (sub_100013CA4(xdicta, 0, v57, v58, v59, v60, v61, v62, "kCBScanOptionAppleFilterRSSIThresholdOrder") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858DCC();
  }

  if (sub_100013CA4(xdicta, 0, v63, v64, v65, v66, v67, v68, "kCBScanOption127dBmReport") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858E3C();
  }

  if (sub_100013CA4(xdicta, 0, v69, v70, v71, v72, v73, v74, "kCBScanOption27dBmReport") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858EAC();
  }

  v75 = sub_100013C04(xdicta, "kCBScanOptionAppleFilterAddress");
  v76 = sub_100777FF4(v75);

  if (*(a1 + 80) == 2)
  {
    v77 = sub_100007EE8();
    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3321888768;
    v78[2] = sub_100672348;
    v78[3] = &unk_100B04AD0;
    v78[4] = a1;
    v79 = &off_100AE0A78;
    v80 = v104;
    if (v104)
    {
      sub_10000C69C(v104);
    }

    v81 = &off_100AE0A78;
    v82 = v102;
    if (v102)
    {
      sub_10000C69C(v102);
    }

    v83 = v100;
    v84 = v105;
    v85 = v95;
    v86 = v76;
    v87 = v98;
    v88 = v97;
    v89 = v96;
    v90 = v94;
    v91 = v93;
    sub_10000D334(v77, v78);
    v81 = &off_100AE0A78;
    if (v82)
    {
      sub_10000C808(v82);
    }

    v79 = &off_100AE0A78;
    if (v80)
    {
      sub_10000C808(v80);
    }
  }

  v101 = &off_100AE0A78;
  if (v102)
  {
    sub_10000C808(v102);
  }

  v103 = &off_100AE0A78;
  if (v104)
  {
    sub_10000C808(v104);
  }
}

void sub_10065BD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, atomic_uint *a19, uint64_t a20, uint64_t a21)
{
  if (a19)
  {
    sub_10000C808(a19);
  }

  *(v23 - 136) = v22;
  v25 = *(v23 - 128);
  if (v25)
  {
    sub_10000C808(v25);
  }

  *(v23 - 120) = v21;
  v26 = *(v23 - 112);
  if (v26)
  {
    sub_10000C808(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_10065BE00(uint64_t a1, xpc_object_t xdict)
{
  v79 = 0;
  v80 = 0;
  v77 = 0;
  v78 = &off_100AE0A78;
  v75 = 0;
  v76 = &off_100AE0A78;
  v73 = 1;
  v74 = 0;
  v71 = 1;
  v72 = 1;
  v70 = 2;
  xdicta = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (sub_100013CA4(value, 0, v4, v5, v6, v7, v8, v9, "kCBMsgArgOptions") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858F1C();
  }

  if (sub_100013CA4(xdicta, 0, v10, v11, v12, v13, v14, v15, "kCBScanOptionAppleFilterPuckType") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858F8C();
  }

  v16 = xpc_dictionary_get_value(xdicta, "kCBScanOptionAppleFilterPayload");
  if ((v16 && sub_1000C9980(v16, &v78) || !sub_10000C5E0(&v78)) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858FFC();
  }

  v17 = xpc_dictionary_get_value(xdicta, "kCBScanOptionAppleFilterPayloadMask");
  if ((v17 && sub_1000C9980(v17, &v76) || !sub_10000C5E0(&v76)) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859038();
  }

  if (sub_100013CA4(xdicta, 0, v18, v19, v20, v21, v22, v23, "kCBScanOptionAppleFilterRssi") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859074();
  }

  if (sub_100013CA4(xdicta, 0, v24, v25, v26, v27, v28, v29, "kCBScanOptionAppleFilterForceDups") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008590E4();
  }

  if (sub_100013CA4(xdicta, 0, v30, v31, v32, v33, v34, v35, "kCBScanOptionAppleFilterAddressType") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859154();
  }

  if (sub_100013CA4(xdicta, 0, v36, v37, v38, v39, v40, v41, "kCBScanOptionAppleFilterBypassFilterDuplicate") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008591C4();
  }

  if (sub_100013CA4(xdicta, 0, v42, v43, v44, v45, v46, v47, "kCBScanOptionAppleFilterTargetCore") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100858F8C();
  }

  if (sub_100013CA4(xdicta, 0, v48, v49, v50, v51, v52, v53, "kCBScanOptionAppleFilterRSSIThresholdOrder") && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859234();
  }

  v54 = sub_100013C04(xdicta, "kCBScanOptionAppleFilterAddress");
  v55 = sub_100777FF4(v54);

  if (*(a1 + 80) == 2)
  {
    v56 = sub_100007EE8();
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3321888768;
    v57[2] = sub_100672558;
    v57[3] = &unk_100B04B00;
    v57[4] = a1;
    v58 = &off_100AE0A78;
    v59 = v79;
    if (v79)
    {
      sub_10000C69C(v79);
    }

    v60 = &off_100AE0A78;
    v61 = v77;
    if (v77)
    {
      sub_10000C69C(v77);
    }

    v62 = v75;
    v63 = v80;
    v64 = v70;
    v65 = v55;
    v66 = v73;
    v67 = v72;
    v68 = v71;
    sub_10000D334(v56, v57);
    v60 = &off_100AE0A78;
    if (v61)
    {
      sub_10000C808(v61);
    }

    v58 = &off_100AE0A78;
    if (v59)
    {
      sub_10000C808(v59);
    }
  }

  v76 = &off_100AE0A78;
  if (v77)
  {
    sub_10000C808(v77);
  }

  v78 = &off_100AE0A78;
  if (v79)
  {
    sub_10000C808(v79);
  }
}

void sub_10065C364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, atomic_uint *a19, uint64_t a20, uint64_t a21)
{
  if (a19)
  {
    sub_10000C808(a19);
  }

  *(v23 - 104) = v22;
  v25 = *(v23 - 96);
  if (v25)
  {
    sub_10000C808(v25);
  }

  *(v23 - 88) = v21;
  v26 = *(v23 - 80);
  if (v26)
  {
    sub_10000C808(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_10065C3D4(uint64_t a1, void *a2)
{
  if (*(a1 + 80) > 1)
  {
    v3 = +[NSMutableArray array];
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    array = xpc_dictionary_get_array(value, "kCBMsgArgRules");
    v6 = array;
    if (!array || xpc_get_type(array) != &_xpc_type_array || (applier[0] = _NSConcreteStackBlock, applier[1] = 3221225472, applier[2] = sub_1006775D0, applier[3] = &unk_100B04D98, v12 = v3, v7 = xpc_array_apply(v6, applier), v12, v7))
    {
      v8 = sub_100007EE8();
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100677790;
      v9[3] = &unk_100ADF820;
      v10 = v3;
      sub_10000D334(v8, v9);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008592A4();
  }
}

void sub_10065C588(uint64_t a1, xpc_object_t xdict)
{
  v33 = 0;
  v34 = 0;
  v32 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (*(a1 + 80) == 2)
  {
    v18 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
    if (v18)
    {
      sub_1005B2CE4(a1, 120, xdict, v18);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008592E0();
      }
    }

    v25 = sub_100013CA4(v32, 0, v12, v13, v14, v15, v16, v17, "kCBDataLengthMaxTxOctets");
    if (v25)
    {
      sub_1005B2CE4(a1, 120, xdict, v25);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859350();
      }
    }

    v26 = sub_100013CA4(v32, 0, v19, v20, v21, v22, v23, v24, "kCBDataLengthMaxTxTime");
    if (v26)
    {
      sub_1005B2CE4(a1, 120, xdict, v26);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008593C0();
      }
    }

    v27 = sub_100007EE8();
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100671754;
    v28[3] = &unk_100AE0BC0;
    v29 = v11;
    v30 = v34;
    v31 = v33;
    sub_10000D334(v27, v28);
  }
}

void sub_10065C7E0(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (*(a1 + 80) > 1)
  {
    v2 = sub_10000C7D0();
    if ((*(*v2 + 3288))(v2))
    {
      v3 = sub_100007EE8();
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_100671A48;
      v4[3] = &unk_100AE25F0;
      v4[4] = &v5;
      v4[5] = a1;
      sub_10000D334(v3, v4);
      if (*(v6 + 6) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085946C();
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100859430();
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008594DC();
  }

  _Block_object_dispose(&v5, 8);
}

void sub_10065C94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10065C964(uint64_t a1, xpc_object_t xdict)
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 3;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = sub_10000C7D0();
  if ((*(*v6 + 3288))(v6))
  {
    if (v5)
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      if (sub_1007868D4(off_100B508C8, v5))
      {
        if (qword_100B512F8 != -1)
        {
          sub_1008565BC();
        }

        if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5))
        {
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
          {
            if (*(a1 + 80) > 1)
            {
              v8 = sub_100007EE8();
              v11[0] = _NSConcreteStackBlock;
              v11[1] = 3221225472;
              v11[2] = sub_100671AA0;
              v11[3] = &unk_100AF5598;
              v13 = v15;
              v14 = a1;
              v12 = v5;
              sub_10000D334(v8, v11);
            }

            else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_100859518();
            }

            goto LABEL_25;
          }

          v7 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            v9 = *(a1 + 96);
            v10 = *(a1 + 48);
            *buf = 138412802;
            v18 = v9;
            v19 = 2112;
            v20 = v10;
            v21 = 2112;
            v22 = v5;
            _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085755C();
        }

        sub_1005B2CE4(a1, 122, xdict, 17);
        goto LABEL_25;
      }
    }

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857744();
    }

    sub_1005B2CE4(a1, 122, xdict, 8);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:

  _Block_object_dispose(v15, 8);
}

void sub_10065CC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10065CCD8(uint64_t a1, xpc_object_t xdict)
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 3;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = sub_10000C7D0();
  if ((*(*v6 + 3288))(v6))
  {
    if (v5)
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      if (sub_1007868D4(off_100B508C8, v5))
      {
        if (qword_100B512F8 != -1)
        {
          sub_1008565BC();
        }

        if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5))
        {
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
          {
            if (*(a1 + 80) <= 0)
            {
              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
              {
                sub_100859554();
              }
            }

            else
            {
              v7 = sub_100007EE8();
              v11[0] = _NSConcreteStackBlock;
              v11[1] = 3221225472;
              v11[2] = sub_100671B78;
              v11[3] = &unk_100AF5598;
              v13 = v15;
              v14 = a1;
              v12 = v5;
              sub_10000D334(v7, v11);
            }

            goto LABEL_24;
          }

          v8 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            v9 = *(a1 + 96);
            v10 = *(a1 + 48);
            *buf = 138412802;
            v18 = v9;
            v19 = 2112;
            v20 = v10;
            v21 = 2112;
            v22 = v5;
            _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085755C();
        }

        sub_1005B2CE4(a1, 124, xdict, 17);
        goto LABEL_24;
      }
    }

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857744();
    }

    sub_1005B2CE4(a1, 124, xdict, 8);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_24:

  _Block_object_dispose(v15, 8);
}

void sub_10065D00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10065D04C(uint64_t a1, xpc_object_t xdict)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 3;
  v25 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions");
  *(v27 + 6) = v12;
  v13 = sub_10000C7D0();
  if ((*(*v13 + 3288))(v13))
  {
    if (v5)
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      if (sub_1007868D4(off_100B508C8, v5))
      {
        if (qword_100B512F8 != -1)
        {
          sub_1008565BC();
        }

        if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5))
        {
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
          {
            if (*(a1 + 80) > 1)
            {
              *&buf[8] = 0x10000;
              *&buf[16] = 0x100010001;
              *buf = 0;
              *&buf[24] = xmmword_1008AABE0;
              *&buf[40] = 0;
              *&buf[2] = 0x200000000;
              v15 = sub_100013CA4(v25, 0, &buf[20], &buf[24], &buf[26], &buf[28], &buf[30], &buf[32], "kCBCSWriteRemoteNumConfigSupported");
              *(v27 + 6) = v15;
              v16 = sub_100007EE8();
              v19[0] = _NSConcreteStackBlock;
              v19[1] = 3221225472;
              v19[2] = sub_100671AFC;
              v19[3] = &unk_100B04908;
              v22 = a1;
              v21 = &v26;
              v20 = v5;
              v23 = *buf;
              v24[0] = *&buf[16];
              *(v24 + 10) = *&buf[26];
              sub_10000D334(v16, v19);
            }

            else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_100859518();
            }

            goto LABEL_25;
          }

          v14 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            v17 = *(a1 + 96);
            v18 = *(a1 + 48);
            *buf = 138412802;
            *&buf[4] = v17;
            *&buf[12] = 2112;
            *&buf[14] = v18;
            *&buf[22] = 2112;
            *&buf[24] = v5;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085755C();
        }

        sub_1005B2CE4(a1, 124, xdict, 17);
        goto LABEL_25;
      }
    }

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857744();
    }

    sub_1005B2CE4(a1, 124, xdict, 8);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:

  _Block_object_dispose(&v26, 8);
}

void sub_10065D5F8(uint64_t a1, xpc_object_t xdict)
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 3;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = sub_10000C7D0();
  if ((*(*v6 + 3288))(v6))
  {
    if (v5)
    {
      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      if (sub_1007868D4(off_100B508C8, v5))
      {
        if (qword_100B512F8 != -1)
        {
          sub_1008565BC();
        }

        if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5))
        {
          if (qword_100B508D0 != -1)
          {
            sub_1000D5C34();
          }

          if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
          {
            if (*(a1 + 80) > 1)
            {
              v8 = sub_100007EE8();
              v11[0] = _NSConcreteStackBlock;
              v11[1] = 3221225472;
              v11[2] = sub_100671BD4;
              v11[3] = &unk_100AF5598;
              v13 = v15;
              v14 = a1;
              v12 = v5;
              sub_10000D334(v8, v11);
            }

            else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
            {
              sub_100859518();
            }

            goto LABEL_25;
          }

          v7 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            v9 = *(a1 + 96);
            v10 = *(a1 + 48);
            *buf = 138412802;
            v18 = v9;
            v19 = 2112;
            v20 = v10;
            v21 = 2112;
            v22 = v5;
            _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085755C();
        }

        sub_1005B2CE4(a1, 125, xdict, 17);
        goto LABEL_25;
      }
    }

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857744();
    }

    sub_1005B2CE4(a1, 125, xdict, 8);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:

  _Block_object_dispose(v15, 8);
}

void sub_10065D92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10065D96C(uint64_t a1, xpc_object_t xdict)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 3;
  xdicta = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions");
  *(v32 + 6) = v12;
  v13 = sub_10000C7D0();
  if ((*(*v13 + 3288))(v13))
  {
    if (*(v32 + 6))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857520();
      }

      v14 = 3;
LABEL_24:
      sub_1005B2CE4(a1, 126, xdict, v14);
      goto LABEL_25;
    }

    if (!v5)
    {
      goto LABEL_49;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (!sub_1007868D4(off_100B508C8, v5))
    {
LABEL_49:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857744();
      }

      v14 = 8;
      goto LABEL_24;
    }

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    if ((sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5) & 1) == 0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085755C();
      }

      goto LABEL_30;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if ((sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)) & 1) == 0)
    {
      v16 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 96);
        v27 = *(a1 + 48);
        *v42 = 138412802;
        *&v42[4] = v26;
        *&v42[12] = 2112;
        *&v42[14] = v27;
        *&v42[22] = 2112;
        *&v42[24] = v5;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", v42, 0x20u);
      }

      goto LABEL_30;
    }

    if (*(a1 + 80) <= 1)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008596C8();
      }

LABEL_30:
      sub_1005B2CE4(a1, 126, xdict, 17);
      goto LABEL_25;
    }

    *v42 = xmmword_1008AABF0;
    *&v42[16] = 0;
    *&v42[20] = 1;
    *&v42[22] = -58720260;
    *&v42[30] = 0x1FFF;
    *&v42[32] = 0x3000000000001;
    *&v42[40] = 0;
    v17 = sub_100013CA4(xdicta, 0, &v42[20], &v42[32], &v42[34], &v42[36], &v42[38], v15, "kCBCSCreateConfigConfigID");
    *(v32 + 6) = v17;
    v18 = xpc_dictionary_get_value(xdicta, "kCBCSCreateConfigChannelMap");
    if (v18)
    {
      v28 = &off_100AE0A78;
      v29 = 0;
      v19 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Raw bytes Channel map data found", buf, 2u);
      }

      v20 = sub_1000C9980(v18, &v28);
      *(v32 + 6) = v20;
      if (v20 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859590();
      }

      if (sub_10000C5E0(&v28) > 0xAuLL)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          v23 = sub_10000C5E0(&v28);
          sub_100859600(v23, buf);
        }
      }

      else
      {
        v21 = sub_10000C5F8(&v28);
        v22 = sub_10000C5E0(&v28);
        memcpy(&v42[22], v21, v22);
      }

      v28 = &off_100AE0A78;
      if (v29)
      {
        sub_10000C808(v29);
      }
    }

    v24 = *(v32 + 6);
    if (v24 || (v25 = sub_100007EE8(), v35[0] = _NSConcreteStackBlock, v35[1] = 3221225472, v35[2] = sub_100671C30, v35[3] = &unk_100B04908, v37 = &v31, v38 = a1, v36 = v5, v39 = *v42, v40[0] = *&v42[16], *(v40 + 10) = *&v42[26], sub_10000D334(v25, v35), v36, (v24 = *(v32 + 6)) != 0))
    {
      sub_1005B2CE4(a1, 126, xdict, v24);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859658();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:

  _Block_object_dispose(&v31, 8);
}

void sub_10065E050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, atomic_uint *a60, uint64_t a61, char a62)
{
  if (a60)
  {
    sub_10000C808(a60);
  }

  _Block_object_dispose(&a62, 8);
  _Unwind_Resume(a1);
}

void sub_10065E0B4(uint64_t a1, xpc_object_t xdict)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 3;
  v31 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions");
  *(v33 + 6) = v12;
  v13 = sub_10000C7D0();
  if ((*(*v13 + 3288))(v13))
  {
    if (*(v33 + 6))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857520();
      }

      v14 = 3;
LABEL_24:
      sub_1005B2CE4(a1, 127, xdict, v14);
      goto LABEL_25;
    }

    if (!v5)
    {
      goto LABEL_37;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (!sub_1007868D4(off_100B508C8, v5))
    {
LABEL_37:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857744();
      }

      v14 = 8;
      goto LABEL_24;
    }

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    if ((sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5) & 1) == 0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085755C();
      }

      goto LABEL_30;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if ((sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)) & 1) == 0)
    {
      v21 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 96);
        v25 = *(a1 + 48);
        *buf = 138412802;
        v37 = v24;
        v38 = 2112;
        v39 = v25;
        v40 = 2112;
        v41 = v5;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }

      goto LABEL_30;
    }

    if (*(a1 + 80) <= 1)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859774();
      }

LABEL_30:
      sub_1005B2CE4(a1, 127, xdict, 17);
      goto LABEL_25;
    }

    buf[0] = 0;
    v22 = sub_100013CA4(v31, 0, v15, v16, v17, v18, v19, v20, "kCBCSCreateConfigConfigID");
    *(v33 + 6) = v22;
    if (v22 || (v23 = sub_100007EE8(), v26[0] = _NSConcreteStackBlock, v26[1] = 3221225472, v26[2] = sub_100671CD8, v26[3] = &unk_100AF5570, v28 = &v32, v29 = a1, v27 = v5, v30 = buf[0], sub_10000D334(v23, v26), v27, (v22 = *(v33 + 6)) != 0))
    {
      sub_1005B2CE4(a1, 127, xdict, v22);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859704();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:

  _Block_object_dispose(&v32, 8);
}

void sub_10065E4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10065E52C(uint64_t a1, xpc_object_t xdict)
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 3;
  v34 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v32[3] = 0;
  v33 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions");
  *(v36 + 6) = v12;
  v13 = sub_10000C7D0();
  if ((*(*v13 + 3288))(v13))
  {
    if (*(v36 + 6))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857520();
      }

      v14 = 3;
LABEL_24:
      sub_1005B2CE4(a1, 128, xdict, v14);
      goto LABEL_25;
    }

    if (!v5)
    {
      goto LABEL_37;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (!sub_1007868D4(off_100B508C8, v5))
    {
LABEL_37:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857744();
      }

      v14 = 8;
      goto LABEL_24;
    }

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    if ((sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5) & 1) == 0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085755C();
      }

      goto LABEL_30;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if ((sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)) & 1) == 0)
    {
      v21 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 96);
        v25 = *(a1 + 48);
        *buf = 138412802;
        v40 = v24;
        v41 = 2112;
        v42 = v25;
        v43 = 2112;
        v44 = v5;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }

      goto LABEL_30;
    }

    if (*(a1 + 80) <= 1)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859820();
      }

LABEL_30:
      sub_1005B2CE4(a1, 128, xdict, 17);
      goto LABEL_25;
    }

    v22 = sub_100013CA4(v34, 0, v15, v16, v17, v18, v19, v20, "kCBCSSetConfigID");
    *(v36 + 6) = v22;
    if (v22 || (v23 = sub_100007EE8(), v26[0] = _NSConcreteStackBlock, v26[1] = 3221225472, v26[2] = sub_100671D38, v26[3] = &unk_100B04930, v30 = a1, v28 = &v35, v27 = v5, v29 = v32, v31 = v33, sub_10000D334(v23, v26), v27, (v22 = *(v36 + 6)) != 0))
    {
      sub_1005B2CE4(a1, 128, xdict, v22);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008597B0();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:
  _Block_object_dispose(v32, 8);

  _Block_object_dispose(&v35, 8);
}

void sub_10065E9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10065E9FC(uint64_t a1, xpc_object_t xdict)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 3;
  v29 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions");
  *(v31 + 6) = v12;
  v13 = sub_10000C7D0();
  if ((*(*v13 + 3288))(v13))
  {
    if (*(v31 + 6))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857520();
      }

      v14 = 3;
LABEL_24:
      sub_1005B2CE4(a1, 129, xdict, v14);
      goto LABEL_25;
    }

    if (!v5)
    {
      goto LABEL_37;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (!sub_1007868D4(off_100B508C8, v5))
    {
LABEL_37:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857744();
      }

      v14 = 8;
      goto LABEL_24;
    }

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    if ((sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5) & 1) == 0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085755C();
      }

      goto LABEL_30;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if ((sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)) & 1) == 0)
    {
      v18 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 96);
        v22 = *(a1 + 48);
        *buf = 138412802;
        *&buf[4] = v21;
        *&buf[12] = 2112;
        *&buf[14] = v22;
        *&buf[22] = 2112;
        *&buf[24] = v5;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }

      goto LABEL_30;
    }

    if (*(a1 + 80) <= 1)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008598CC();
      }

LABEL_30:
      sub_1005B2CE4(a1, 129, xdict, 17);
      goto LABEL_25;
    }

    memset(buf, 0, 32);
    *&buf[28] = 257;
    v19 = sub_100013CA4(v29, 0, &buf[22], &buf[24], &buf[28], v15, v16, v17, "kCBCSCreateConfigConfigID");
    *(v31 + 6) = v19;
    if (v19 || (v20 = sub_100007EE8(), v23[0] = _NSConcreteStackBlock, v23[1] = 3221225472, v23[2] = sub_100671DA4, v23[3] = &unk_100B04958, v25 = &v30, v26 = a1, v24 = v5, v27 = *buf, v28 = *&buf[16], sub_10000D334(v20, v23), v24, (v19 = *(v31 + 6)) != 0))
    {
      sub_1005B2CE4(a1, 129, xdict, v19);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085985C();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:

  _Block_object_dispose(&v30, 8);
}

void sub_10065EF84(uint64_t a1, xpc_object_t xdict)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 3;
  v23 = &off_100AE0A78;
  v24 = 0;
  xdicta = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  *(v26 + 6) = v11;
  v12 = sub_10000C7D0();
  if ((*(*v12 + 3288))(v12))
  {
    if (*(v26 + 6))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857520();
      }

      sub_1005B2CE4(a1, 130, xdict, 3);
      goto LABEL_8;
    }

    if (*(a1 + 80) <= 1)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859978();
      }

      sub_1005B2CE4(a1, 130, xdict, 17);
      goto LABEL_8;
    }

    v13 = xpc_dictionary_get_value(xdicta, "kCBCSChannelClassification");
    if (!v13)
    {
      if (*(v26 + 6))
      {
LABEL_25:
        v17 = *(v26 + 6);
        if (v17)
        {
          sub_1005B2CE4(a1, 130, xdict, v17);
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_100859908();
          }
        }

        goto LABEL_8;
      }

LABEL_21:
      v16 = sub_100007EE8();
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3321888768;
      v18[2] = sub_100671E18;
      v18[3] = &unk_100B04980;
      v18[4] = &v25;
      v18[5] = a1;
      v19 = &off_100AE0A78;
      v20 = v24;
      if (v24)
      {
        sub_10000C69C(v24);
      }

      sub_10000D334(v16, v18);
      v19 = &off_100AE0A78;
      if (v20)
      {
        sub_10000C808(v20);
      }

      goto LABEL_25;
    }

    v14 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Channel Classification data found", buf, 2u);
    }

    v15 = sub_1000C9980(v13, &v23);
    *(v26 + 6) = v15;
    if (!v15)
    {
      goto LABEL_21;
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_8:
  v23 = &off_100AE0A78;
  if (v24)
  {
    sub_10000C808(v24);
  }

  _Block_object_dispose(&v25, 8);
}

void sub_10065F2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, atomic_uint *a20)
{
  if (a20)
  {
    sub_10000C808(a20);
  }

  *(v21 - 96) = v20;
  v23 = *(v21 - 88);
  if (v23)
  {
    sub_10000C808(v23);
  }

  _Block_object_dispose((v21 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10065F304(uint64_t a1, xpc_object_t xdict)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 3;
  v32 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v30 = 0;
  v31 = 0;
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions");
  *(v34 + 6) = v12;
  v13 = sub_10000C7D0();
  if ((*(*v13 + 3288))(v13))
  {
    if (*(v34 + 6))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }

    v20 = sub_100013CA4(v32, 1, v14, v15, v16, v17, v18, v19, "kCBCSDefaultSettingsRoleEnable");
    *(v34 + 6) = v20;
    if (v20)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
LABEL_9:
        sub_100857520();
      }

LABEL_10:
      sub_1005B2CE4(a1, 131, xdict, 3);
      goto LABEL_11;
    }

    if (*(a1 + 80) <= 0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008599B4();
      }

      sub_1005B2CE4(a1, 131, xdict, 17);
    }

    else
    {
      v21 = sub_100007EE8();
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100671ED8;
      v23[3] = &unk_100B049B8;
      v25 = &v33;
      v26 = a1;
      v24 = v5;
      v27 = v31;
      v28 = v30;
      v29 = 20;
      sub_10000D334(v21, v23);

      v22 = *(v34 + 6);
      if (v22)
      {
        sub_1005B2CE4(a1, 131, xdict, v22);
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100859908();
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_11:

  _Block_object_dispose(&v33, 8);
}

void sub_10065F634(uint64_t a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 3;
  v4 = sub_10000C7D0();
  if ((*(*v4 + 3288))(v4))
  {
    v5 = sub_100007EE8();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100671F40;
    v7[3] = &unk_100AE25F0;
    v7[4] = &v8;
    v7[5] = a1;
    sub_10000D334(v5, v7);
    v6 = *(v9 + 6);
    if (v6)
    {
      sub_1005B2CE4(a1, 132, a2, v6);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008599F0();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

  _Block_object_dispose(&v8, 8);
}

void sub_10065F78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10065F7A4(uint64_t a1, xpc_object_t xdict)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 3;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = sub_10000C7D0();
  if ((*(*v6 + 3288))(v6))
  {
    if (!v5)
    {
      goto LABEL_32;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (sub_1007868D4(off_100B508C8, v5))
    {
      if (qword_100B512F8 != -1)
      {
        sub_1008565BC();
      }

      if ((sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5) & 1) == 0)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085755C();
        }

        goto LABEL_24;
      }

      if (qword_100B508D0 != -1)
      {
        sub_1000D5C34();
      }

      if ((sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)) & 1) == 0)
      {
        v7 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 96);
          v11 = *(a1 + 48);
          *buf = 138412802;
          v21 = v10;
          v22 = 2112;
          v23 = v11;
          v24 = 2112;
          v25 = v5;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
        }

        goto LABEL_24;
      }

      if (*(a1 + 80) <= 1)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_1008598CC();
        }

LABEL_24:
        sub_1005B2CE4(a1, 133, xdict, 17);
        goto LABEL_25;
      }

      v8 = sub_100007EE8();
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100671F98;
      v12[3] = &unk_100AF5598;
      v14 = &v16;
      v15 = a1;
      v13 = v5;
      sub_10000D334(v8, v12);
      v9 = *(v17 + 6);
      if (v9)
      {
        sub_1005B2CE4(a1, 133, xdict, v9);
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085985C();
        }
      }
    }

    else
    {
LABEL_32:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857744();
      }

      sub_1005B2CE4(a1, 133, xdict, 8);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:

  _Block_object_dispose(&v16, 8);
}

void sub_10065FB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10065FB6C(uint64_t a1, xpc_object_t xdict)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 3;
  v29 = &off_100AE0A78;
  v30 = 0;
  xdicta = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = sub_10000C7D0();
  if ((*(*v6 + 3288))(v6))
  {
    v13 = sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgOptions");
    *(v32 + 6) = v13;
    if (v13)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857520();
      }

      v14 = 3;
LABEL_24:
      sub_1005B2CE4(a1, 134, xdict, v14);
      goto LABEL_25;
    }

    if (!v5)
    {
      goto LABEL_49;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (!sub_1007868D4(off_100B508C8, v5))
    {
LABEL_49:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857744();
      }

      v14 = 8;
      goto LABEL_24;
    }

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    if ((sub_1003AF1AC(off_100B512F0, *(a1 + 128), v5) & 1) == 0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085755C();
      }

      goto LABEL_39;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if ((sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)) & 1) == 0)
    {
      v15 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 96);
        v21 = *(a1 + 48);
        *buf = 138412802;
        v36 = v20;
        v37 = 2112;
        v38 = v21;
        v39 = 2112;
        v40 = v5;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }

      goto LABEL_39;
    }

    if (*(a1 + 80) <= 1)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008598CC();
      }

LABEL_39:
      sub_1005B2CE4(a1, 134, xdict, 17);
      goto LABEL_25;
    }

    v16 = xpc_dictionary_get_value(xdicta, "kCBCSReflectorFAETable");
    if (!v16)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859AD0();
      }

      goto LABEL_39;
    }

    v17 = sub_1000C9980(v16, &v29);
    *(v32 + 6) = v17;
    if (v17)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859A60();
      }
    }

    else
    {
      v18 = sub_100007EE8();
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3321888768;
      v22[2] = sub_100671FF4;
      v22[3] = &unk_100B049E0;
      v24 = &v31;
      v25 = a1;
      v23 = v5;
      v26 = &off_100AE0A78;
      v27 = v30;
      if (v30)
      {
        sub_10000C69C(v30);
      }

      sub_10000D334(v18, v22);
      v26 = &off_100AE0A78;
      if (v27)
      {
        sub_10000C808(v27);
      }

      v19 = *(v32 + 6);
      if (v19)
      {
        sub_1005B2CE4(a1, 134, xdict, v19);
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085985C();
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100859430();
  }

LABEL_25:

  v29 = &off_100AE0A78;
  if (v30)
  {
    sub_10000C808(v30);
  }

  _Block_object_dispose(&v31, 8);
}

void sub_100660068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, atomic_uint *a17, ...)
{
  va_start(va, a17);

  if (a17)
  {
    sub_10000C808(a17);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006600D4(uint64_t a1, xpc_object_t xdict)
{
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v12 = *(a1 + 80);
  if (v12 == 2 || v12 == 1 && sub_100011EDC())
  {
    v19 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
    if (v19)
    {
      sub_1005B2CE4(a1, 135, xdict, v19);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859B0C();
      }
    }

    v26 = sub_100013CA4(v49, 0, v13, v14, v15, v16, v17, v18, "kCBLeSetPhyAllPhys");
    if (v26)
    {
      sub_1005B2CE4(a1, 135, xdict, v26);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859B7C();
      }
    }

    v33 = sub_100013CA4(v49, 0, v20, v21, v22, v23, v24, v25, "kCBLeSetPhyTxPhys");
    if (v33)
    {
      sub_1005B2CE4(a1, 135, xdict, v33);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859BEC();
      }
    }

    v40 = sub_100013CA4(v49, 0, v27, v28, v29, v30, v31, v32, "kCBLeSetPhyRxPhys");
    if (v40)
    {
      sub_1005B2CE4(a1, 135, xdict, v40);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859C5C();
      }
    }

    v41 = sub_100013CA4(v49, 0, v34, v35, v36, v37, v38, v39, "kCBLeSetPhyRxPhyOptions");
    if (v41)
    {
      sub_1005B2CE4(a1, 135, xdict, v41);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859CCC();
      }
    }

    v42 = sub_100007EE8();
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100672054;
    v43[3] = &unk_100B04A18;
    v44 = v11;
    v45 = v53;
    v46 = v52;
    v47 = v51;
    v48 = v50;
    sub_10000D334(v42, v43);
  }
}

void sub_100660430(uint64_t a1, xpc_object_t xdict)
{
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 3;
  v87 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v86 = 0;
  v85 = 0;
  v84 = -120;
  v83 = -120;
  v82 = -120;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  if (*(a1 + 80) >= 1)
  {
    v12 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
    *(v89 + 6) = v12;
    v19 = sub_100013CA4(v87, 0, v13, v14, v15, v16, v17, v18, "kCBRSSIStatisticAndDetectionEnable");
    *(v89 + 6) = v19;
    v29 = v86 != 0;
    v20 = v85;
    v21 = v84;
    v22 = v83;
    v40 = v82;
    v23 = v81;
    v39 = v80;
    v38 = v79;
    v36 = v77;
    v37 = v78;
    v34 = v75;
    v35 = v76;
    v33 = v74;
    v32 = v73;
    v31 = v72;
    v42 = v71;
    v30 = v69;
    v41 = v70;
    v24 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [*(a1 + 96) UTF8String];
      *buf = 136384259;
      v93 = v25;
      v94 = 1024;
      v95 = v86 != 0;
      v96 = 1024;
      v97 = v85;
      v98 = 1024;
      v99 = v76;
      v100 = 1024;
      v101 = v75;
      v102 = 1024;
      v103 = v84;
      v104 = 1024;
      v105 = v83;
      v106 = 1024;
      v107 = v82;
      v108 = 1024;
      v109 = v81;
      v110 = 1024;
      v111 = v80;
      v112 = 1024;
      v113 = v79;
      v114 = 1024;
      v115 = v78;
      v116 = 1024;
      v117 = v77;
      v118 = 1024;
      v119 = v70;
      v120 = 1024;
      v121 = v71;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Initiate CBMsgIdConfigureRSSIDetectionAndStatistics by %{private}s enable=%d  window=%d mask=%d:%d Further=%d:%d:%d closer=%d:%d:%d var=%d:%d aopPath=%d Debug=%d", buf, 0x60u);
      v19 = *(v89 + 6);
    }

    if (v19)
    {
      sub_1005B2CE4(a1, 226, xdict, v19);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859D3C();
      }
    }

    if (v11)
    {
      v68 = 0;
      if (qword_100B508B0 != -1)
      {
        sub_10085681C();
      }

      v26 = off_100B508A8;
      sub_10004DFB4(buf, v11);
      if (sub_1000C4FCC(v26, buf, &v68))
      {
        v27 = sub_100007EE8();
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_1006720F0;
        v43[3] = &unk_100B04A40;
        v46 = a1;
        v45 = &v88;
        v44 = v11;
        v47 = v29;
        v48 = v20;
        v49 = v21;
        v50 = v22;
        v51 = v40;
        v52 = v23;
        v53 = v39;
        v54 = v38;
        v55 = v37;
        v56 = v36;
        v57 = v35;
        v58 = v34;
        v59 = 0;
        v60 = v33;
        v61 = v32;
        v62 = v31;
        v63 = v42;
        v64 = v30;
        v65 = v41;
        v66 = 0;
        v67 = 0;
        sub_10000D334(v27, v43);
      }

      else
      {
        *(v89 + 6) = 312;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100859DAC();
        }
      }
    }

    v28 = *(v89 + 6);
    if (v28)
    {
      sub_1005B2CE4(a1, 226, xdict, v28);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859E28();
      }
    }
  }

  _Block_object_dispose(&v88, 8);
}

void sub_100660AF4(uint64_t a1, xpc_object_t xdict)
{
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 3;
  v42 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  if (*(a1 + 80) >= 1)
  {
    v12 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
    *(v44 + 6) = v12;
    v19 = sub_100013CA4(v42, 0, v13, v14, v15, v16, v17, v18, "kCBBluetoothUsageEnable");
    v20 = v44;
    *(v44 + 6) = v19;
    v21 = v40;
    v22 = v39;
    v23 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [*(a1 + 96) UTF8String];
      *buf = 67109635;
      v48 = v40;
      v49 = 1024;
      v50 = v39;
      v51 = 2081;
      v52 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Initiate CBMsgIdConfigureUsageDetection max=%d min=%d for app %{private}s\t", buf, 0x18u);
      v20 = v44;
      v19 = *(v44 + 6);
    }

    if (v19)
    {
      sub_1005B2CE4(a1, 227, xdict, v19);
      v25 = qword_100BCE950;
      v26 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
      v20 = v44;
      if (v26)
      {
        v29 = *(v44 + 6);
        *buf = 67109120;
        v48 = v29;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to convertXPC options  for handleConfigureUsageNotification: %d", buf, 8u);
        v20 = v44;
      }
    }

    v27 = *(v20 + 6);
    if (!v27 && v11)
    {
      v28 = sub_100007EE8();
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100672170;
      v30[3] = &unk_100B04A68;
      v32 = &v43;
      v33 = a1;
      v34 = v41;
      v36 = v21;
      v37 = v22;
      v31 = v11;
      v35 = v38;
      sub_10000D334(v28, v30);

      v27 = *(v44 + 6);
    }

    if (v27)
    {
      sub_1005B2CE4(a1, 227, xdict, v27);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859E98();
      }
    }
  }

  _Block_object_dispose(&v43, 8);
}

void sub_100660E88(uint64_t a1, xpc_object_t xdict)
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 3;
  v39 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v38 = 0;
  v37 = 0;
  if (*(a1 + 80) >= 1)
  {
    v12 = sub_100013CA4(value, 0, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
    *(v41 + 6) = v12;
    v19 = sub_100013CA4(v39, 0, v13, v14, v15, v16, v17, v18, "kCBPhyStatsConfigEnable");
    v20 = v41;
    *(v41 + 6) = v19;
    v21 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [*(a1 + 96) UTF8String];
      *buf = 67109379;
      v45 = v37;
      v46 = 2081;
      v47 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Initiate CBMsgIdConfigureUsageStatistics Subrate=%d for App %{private}s", buf, 0x12u);
      v20 = v41;
      v19 = *(v41 + 6);
    }

    if (v19)
    {
      sub_1005B2CE4(a1, 228, xdict, v19);
      v23 = qword_100BCE950;
      v24 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
      v20 = v41;
      if (v24)
      {
        v27 = *(v41 + 6);
        *buf = 67109120;
        v45 = v27;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to convertXPC options  for handleConfigureUsageNotification: %d", buf, 8u);
        v20 = v41;
      }
    }

    v25 = *(v20 + 6);
    if (!v25 && v11)
    {
      v26 = sub_100007EE8();
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1006721E0;
      v28[3] = &unk_100B04A90;
      v30 = &v40;
      v31 = a1;
      v32 = v38;
      v29 = v11;
      v33 = v37;
      v34 = 0u;
      v35 = 0u;
      v36 = 0;
      sub_10000D334(v26, v28);

      v25 = *(v41 + 6);
    }

    if (v25)
    {
      sub_1005B2CE4(a1, 228, xdict, v25);
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100859F08();
      }
    }
  }

  _Block_object_dispose(&v40, 8);
}

void sub_1006611E8(uint64_t a1, xpc_object_t xdict)
{
  v42 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857520();
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_39;
    }

    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (sub_1007868D4(off_100B508C8, v4))
    {
      if (qword_100B512F8 != -1)
      {
        sub_1008565BC();
      }

      if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v4))
      {
        if (qword_100B508D0 != -1)
        {
          sub_1000D5C34();
        }

        if (sub_10004FF0C(off_100B508C8, v4, *(a1 + 96), *(a1 + 48)))
        {
          v40 = 0;
          v41 = 0;
          v17 = sub_100013CA4(v42, 0, v11, v12, v13, v14, v15, v16, "@kCBConnectOptionOpportunistic");
          v18 = [ConnectOptions alertOptionsWithConnectionAlerts:0 disconnectionAlerts:0 notificationAlerts:0 delay:0 bridgeTransport:0];
          v19 = v18;
          if (*(a1 + 80) >= 1 && ([v18 setOpportunistic:v41 != 0], sub_10006638C(v42, "kCBOptionUseCaseList"), v20 = objc_claimAutoreleasedReturnValue(), (v21 = v20) != 0))
          {
            if ([v20 count])
            {
              v22 = [NSSet setWithArray:v21];
              v23 = [v22 allObjects];

              v21 = [v23 sortedArrayUsingSelector:"compare:"];

              [v19 setUseCaseList:v21];
              v24 = sub_100670768(v21);
              v25 = qword_100BCE950;
              if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
              {
                v26 = [v24 componentsJoinedByString:{@", "}];
                *buf = 138412290;
                v44 = v26;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "connUseCaseList: %@", buf, 0xCu);
              }

              if (![v19 connectionUseCase])
              {
                v27 = [v21 firstObject];
                v28 = v27;
                if (v27)
                {
                  [v19 setConnectionUseCase:{objc_msgSend(v27, "longLongValue")}];
                  v29 = qword_100BCE950;
                  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
                  {
                    v30 = sub_10002C70C([v28 longLongValue]);
                    *buf = 136315138;
                    v44 = v30;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "default useCase derived from useCaseList: %s", buf, 0xCu);
                  }
                }
              }
            }

            v31 = v21;
          }

          else
          {
            v31 = 0;
          }

          if (!v17)
          {
            v35 = sub_100007EE8();
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_10067087C;
            v36[3] = &unk_100AE25C8;
            v39 = a1;
            v37 = v4;
            v38 = v19;
            sub_10000D334(v35, v36);
          }
        }

        else
        {
          v32 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            v33 = *(a1 + 96);
            v34 = *(a1 + 48);
            *buf = 138412802;
            v44 = v33;
            v45 = 2112;
            v46 = v34;
            v47 = 2112;
            v48 = v4;
            _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
          }
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085755C();
      }
    }

    else
    {
LABEL_39:
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100857744();
      }
    }
  }
}

void sub_100661790(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = v5;
  if (*(a1 + 80) < 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100859F78();
    }

    v9 = 11;
    goto LABEL_21;
  }

  if (!v5)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A0AC();
    }

    goto LABEL_20;
  }

  v13 = 0;
  if (qword_100B508B0 != -1)
  {
    sub_100859FB4();
  }

  v7 = off_100B508A8;
  sub_10004DFB4(buf, v6);
  if (!sub_1000C4FCC(v7, buf, &v13))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100859FC8();
    }

    goto LABEL_20;
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (!sub_1000ABD24(v13))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A038();
    }

    sub_10002249C(buf);
LABEL_20:
    v9 = 8;
    goto LABEL_21;
  }

  sub_100022214(buf);
  v8 = sub_10000C7D0();
  v9 = (*(*v8 + 3488))(v8, v13, 0xFFFFLL, 1, 1, 1);
  sub_10002249C(buf);
  if (!v9)
  {
    v10 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Counter events for %@ started", buf, 0xCu);
      v9 = 0;
    }

    goto LABEL_23;
  }

LABEL_21:
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A0E8();
  }

LABEL_23:
  reply = xpc_dictionary_create_reply(xdict);
  v12 = reply;
  if (reply)
  {
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(a1 + 16), v12);
    xpc_release(v12);
  }
}

void sub_100661A60(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = v5;
  if (*(a1 + 80) < 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A158();
    }

    v9 = 11;
    goto LABEL_21;
  }

  if (!v5)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A0AC();
    }

    goto LABEL_20;
  }

  v13 = 0;
  if (qword_100B508B0 != -1)
  {
    sub_100859FB4();
  }

  v7 = off_100B508A8;
  sub_10004DFB4(buf, v6);
  if (!sub_1000C4FCC(v7, buf, &v13))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100859FC8();
    }

    goto LABEL_20;
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  if (!sub_1000ABD24(v13))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A038();
    }

    sub_10002249C(buf);
LABEL_20:
    v9 = 8;
    goto LABEL_21;
  }

  sub_100022214(buf);
  v8 = sub_10000C7D0();
  v9 = (*(*v8 + 3488))(v8, v13, 0xFFFFLL, 1, 0, 1);
  sub_10002249C(buf);
  if (!v9)
  {
    v10 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Counter events for %@ stopped", buf, 0xCu);
      v9 = 0;
    }

    goto LABEL_23;
  }

LABEL_21:
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A0E8();
  }

LABEL_23:
  reply = xpc_dictionary_create_reply(xdict);
  v12 = reply;
  if (reply)
  {
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v9);
    xpc_connection_send_message(*(a1 + 16), v12);
    xpc_release(v12);
  }
}

void sub_100661D30(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_1000C9AAC(value, "kCBMsgArgDevices");
  v5 = sub_10037CEF8(value, "kCBMsgArgFakeLeDeviceIgnoreMaxLimit");
  v6 = sub_10037CEF8(value, "kCBMsgArgFakeLeDeviceSynced");
  if (*(a1 + 80) >= 2)
  {
    v7 = v6;
    for (i = 0; [v4 longValue] > i; ++i)
    {
      v9 = sub_100007EE8();
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100673088;
      v10[3] = &unk_100AF59D0;
      v11 = v7;
      v12 = v5;
      sub_10000CA94(v9, v10);
      usleep(0x64u);
    }
  }
}

void sub_100661E70(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v6 = sub_1000C9AAC(value, "kCBMsgArgDevices");
  if (*(a1 + 80) >= 2)
  {
    for (i = 0; [v6 longValue] > i; ++i)
    {
      v5 = sub_100007EE8();
      sub_10000CA94(v5, &stru_100B04BF8);
      usleep(0x64u);
    }
  }
}

void sub_100661F2C(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) > 1)
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v3 = sub_100013C04(value, "kCBSetIRKForAddressPublicAddress");
    v4 = sub_100777FF4(v3);
    v5 = sub_1002D3618(v4);
    v6 = sub_10037CE6C(value, "kCBSetIRKForAddressIRK");
    if ([v6 length] == 16)
    {
      v7 = sub_100007EE8();
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100677860;
      v8[3] = &unk_100AF7CE0;
      v9 = v6;
      v10 = 16;
      v11 = 0;
      v13 = WORD2(v5);
      v12 = v5;
      sub_10000D334(v7, v8);
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100857664();
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A194();
  }
}

void sub_1006620CC(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) > 1)
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v3 = sub_100013C04(value, "kCBSetIRKForAddressPublicAddress");
    v4 = sub_100777FF4(v3);
    v5 = sub_1002D3618(v4);
    v6 = sub_100007EE8();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100677900;
    v7[3] = &unk_100AFEBE0;
    v8 = 0;
    v9 = v5;
    v10 = WORD2(v5);
    sub_10000D334(v6, v7);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A1D0();
  }
}

void sub_1006621D0(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) > 1)
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v3 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
    v4 = sub_100007EE8();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100677954;
    v6[3] = &unk_100ADF820;
    v5 = v3;
    v7 = v5;
    sub_10000D334(v4, v6);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A20C();
  }
}

void sub_1006622E8(uint64_t a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v5 = reply;
    if (*(a1 + 80) <= 0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085A248();
      }

      xpc_dictionary_set_int64(v5, "kCBMsgArgResult", 17);
      xpc_connection_send_message(*(a1 + 16), v5);
      xpc_release(v5);
    }

    else
    {
      value = xpc_dictionary_get_value(original, "kCBMsgArgs");
      array = xpc_dictionary_get_array(value, "kCBMsgArgAnyConnectedPeripheralsPerApp");
      if (array)
      {
        v8 = array;
        if (xpc_get_type(array) == &_xpc_type_array)
        {
          if (xpc_array_get_count(v8))
          {
            v9 = 0;
            do
            {
              string = xpc_array_get_string(v8, v9);
              if (string)
              {
                v11 = string;
                v12 = [NSString stringWithUTF8String:string];
                if (qword_100B512F8 != -1)
                {
                  sub_1000C10B4();
                }

                v13 = sub_1003ADFC4(off_100B512F0, v12);
                xpc_dictionary_set_BOOL(v5, v11, v13);
              }

              ++v9;
            }

            while (v9 < xpc_array_get_count(v8));
          }
        }
      }

      xpc_connection_send_message(*(a1 + 16), v5);

      xpc_release(v5);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A284();
  }
}

void sub_1006624D4(uint64_t a1, void *a2)
{
  if (*(a1 + 80) >= 1 && (v4 = sub_10000C798(), ((*(*v4 + 368))(v4) & 1) != 0))
  {
    memset(bytes, 0, sizeof(bytes));
    v5 = sub_10000C7D0();
    v6 = (*(*v5 + 4056))(v5, bytes, 32);
    v7 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
    {
      v10[0] = 68157954;
      v10[1] = 32;
      v11 = 2096;
      v12 = bytes;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "LPEM data: %.32P", v10, 0x12u);
    }

    reply = xpc_dictionary_create_reply(a2);
    if (reply)
    {
      v9 = reply;
      xpc_dictionary_set_data(reply, "kCBMsgArgLPEMData", bytes, 0x20uLL);
      xpc_dictionary_set_int64(v9, "kCBMsgArgResult", v6);
      xpc_connection_send_message(*(a1 + 16), v9);
      xpc_release(v9);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A2C0();
  }
}

void sub_10066269C(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A2FC();
    }
  }

  else
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v5 = sub_100013C04(value, "kCBMsgArgWhbStableIdentifier");
    if (v5)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1006779A8;
      v6[3] = &unk_100B04DB8;
      v6[4] = a1;
      v6[5] = xpc_dictionary_create_reply(xdict);
      [gCBDaemonServer optimalWhbDeviceForStableIdentifier:v5 completion:v6];
    }
  }
}

void sub_1006627B0(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A338();
    }
  }

  else
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v5 = sub_100013C04(value, "kCBMsgArgWhbStableIdentifier");
    if (v5)
    {
      v6 = [gCBDaemonServer localWhbDeviceForStableId:v5];
      reply = xpc_dictionary_create_reply(xdict);
      if (reply)
      {
        if (v6)
        {
          v8 = [NSUUID alloc];
          v9 = [v6 identifier];
          v10 = [v8 initWithUUIDString:v9];

          v11 = v10;
          v12 = v11;
          if (v11)
          {
            *uuid = 0;
            v14 = 0;
            [v11 getUUIDBytes:uuid];
            xpc_dictionary_set_uuid(reply, "kCBMsgArgDeviceUUID", uuid);
          }
        }

        xpc_connection_send_message(*(a1 + 16), reply);
        xpc_release(reply);
      }
    }
  }
}

void sub_100662970(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A39C();
    }
  }

  else
  {
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgUseCase");
    if (qword_100B54208 != -1)
    {
      sub_10085A374();
    }

    v11 = sub_1007F024C(qword_100B54200, 0);
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v13 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgUsecaseCount", v11);
      xpc_connection_send_message(*(a1 + 16), v13);
      xpc_release(v13);
    }
  }
}

void sub_100662A78(uint64_t a1)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A448();
    }
  }

  else
  {
    v2 = [&off_100B34600 containsObject:*(a1 + 96)];
    v3 = qword_100BCE950;
    if (v2)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
      {
        v4 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v4 = *v4;
        }

        v6 = 136446210;
        v7 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Refreshing NonConnectable Identity for session %{public}s ", &v6, 0xCu);
      }

      v5 = sub_100007EE8();
      sub_10000D334(v5, &stru_100B04DD8);
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A3D8();
    }
  }
}

void sub_100662BB4(uint64_t a1, void *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100042410;
  v25 = sub_100042678;
  v26 = 0;
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A448();
    }
  }

  else
  {
    v4 = [&off_100B34618 containsObject:*(a1 + 96)];
    v5 = qword_100BCE950;
    if (v4)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
      {
        v6 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v6 = *v6;
        }

        *buf = 136446210;
        v28 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Retrieving NonConnectable Identity for session %{public}s ", buf, 0xCu);
      }

      v7 = sub_100007EE8();
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100677B1C;
      v20[3] = &unk_100AE1120;
      v20[4] = &v21;
      sub_10000D334(v7, v20);
      reply = xpc_dictionary_create_reply(a2);
      if (reply)
      {
        v9 = v22[5];
        if (v9)
        {
          v10 = [v9 objectForKeyedSubscript:@"instance"];
          v11 = v10;
          if (v10 && [v10 unsignedShortValue] == 1)
          {
            v12 = [v22[5] objectForKeyedSubscript:@"identity"];
            v13 = v12;
            if (v12)
            {
              v14 = v12;
              xpc_dictionary_set_data(reply, "kCBMsgArgIdentityIRK", [v13 bytes], objc_msgSend(v13, "length"));
            }

            v15 = [v22[5] objectForKeyedSubscript:@"address"];
            v16 = v15;
            if (v15)
            {
              v17 = [v15 unsignedLongLongValue];
              if (v17)
              {
                v18 = sub_100778224(v17);
                v19 = v18;
                xpc_dictionary_set_data(reply, "kCBMsgArgIdentityAddress", [v18 bytes], objc_msgSend(v18, "length"));
              }
            }
          }
        }

        xpc_connection_send_message(*(a1 + 16), reply);
        xpc_release(reply);
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A484();
    }
  }

  _Block_object_dispose(&v21, 8);
}

void sub_100662EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_100662F28(uint64_t a1, xpc_object_t original)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v4[3] = xpc_dictionary_create_reply(original);
  if (qword_100B508B0 != -1)
  {
    sub_10085681C();
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100677EBC;
  v3[3] = &unk_100B045A0;
  v3[4] = v4;
  v3[5] = a1;
  sub_100770BD0(off_100B508A8, v3);
  _Block_object_dispose(v4, 8);
}

void sub_100662FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100663008(uint64_t a1)
{
  v1 = qword_100BCE950;
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A4F4();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "XpcLeAttConnection::handleInitCISCentral", buf, 2u);
    }

    v3 = sub_100007EE8();
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100677B88;
    v4[3] = &unk_100ADF8F8;
    v4[4] = a1;
    sub_10000CA94(v3, v4);
  }
}

void sub_1006630F4(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A564();
    }
  }

  else
  {
    v57 = 0;
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    sub_100013CA4(value, 1, v3, v4, v5, v6, v7, v8, "kCBMsgArgOptions");
    sub_100013CA4(0, 1, v9, v10, v11, v12, v13, v14, "kCBLEAudioArgSduIntervalPToC");
    array = xpc_dictionary_get_array(0, "kCBLEAudioArgCisMaxSduPToC");
    v16 = array;
    if (array)
    {
      if (xpc_get_type(array) == &_xpc_type_array && xpc_array_get_count(v16) == v55)
      {
        v47 = xpc_dictionary_get_array(v57, "kCBLEAudioArgCisMaxSduCToP");
        if (v47)
        {
          if (xpc_get_type(v47) == &_xpc_type_array && xpc_array_get_count(v47) == v55)
          {
            v17 = xpc_dictionary_get_array(v57, "kCBLEAudioArgCisId");
            v18 = v17;
            if (v17)
            {
              if (xpc_get_type(v17) == &_xpc_type_array && xpc_array_get_count(v18) == v55)
              {
                v46 = xpc_dictionary_get_array(v57, "kCBLEAudioArgCisPhyPToC");
                if (v46)
                {
                  if (xpc_get_type(v46) == &_xpc_type_array && xpc_array_get_count(v46) == v55)
                  {
                    v19 = xpc_dictionary_get_array(v57, "kCBLEAudioArgCisPhyCToP");
                    v20 = v19;
                    if (v19)
                    {
                      if (xpc_get_type(v19) == &_xpc_type_array && xpc_array_get_count(v20) == v55)
                      {
                        v21 = xpc_dictionary_get_array(v57, "kCBLEAudioArgCisRtnPToC");
                        v22 = v21;
                        if (v21)
                        {
                          if (xpc_get_type(v21) == &_xpc_type_array && xpc_array_get_count(v22) == v55)
                          {
                            v23 = xpc_dictionary_get_array(v57, "kCBLEAudioArgCisRtnCToP");
                            v24 = v23;
                            if (v23)
                            {
                              if (xpc_get_type(v23) == &_xpc_type_array && xpc_array_get_count(v24) == v55)
                              {
                                xarray = v18;
                                if (v55)
                                {
                                  v25 = 0;
                                  v42 = v16;
                                  v43 = v24;
                                  v44 = v22;
                                  do
                                  {
                                    int64 = xpc_array_get_int64(v16, v25);
                                    v27 = xpc_array_get_int64(v47, v25);
                                    v28 = xpc_array_get_int64(xarray, v25);
                                    v29 = xpc_array_get_int64(v46, v25);
                                    v30 = xpc_array_get_int64(v20, v25);
                                    v31 = xpc_array_get_int64(v44, v25);
                                    v32 = xpc_array_get_int64(v43, v25);
                                    v33 = v56;
                                    if (v56 >= *(&v56 + 1))
                                    {
                                      v35 = 0xCCCCCCCCCCCCCCCDLL * ((v56 - *(&v55 + 1)) >> 1);
                                      v36 = v35 + 1;
                                      if (v35 + 1 > 0x1999999999999999)
                                      {
                                        sub_1000C7698();
                                      }

                                      if (0x999999999999999ALL * ((*(&v56 + 1) - *(&v55 + 1)) >> 1) > v36)
                                      {
                                        v36 = 0x999999999999999ALL * ((*(&v56 + 1) - *(&v55 + 1)) >> 1);
                                      }

                                      if (0xCCCCCCCCCCCCCCCDLL * ((*(&v56 + 1) - *(&v55 + 1)) >> 1) >= 0xCCCCCCCCCCCCCCCLL)
                                      {
                                        v37 = 0x1999999999999999;
                                      }

                                      else
                                      {
                                        v37 = v36;
                                      }

                                      if (v37)
                                      {
                                        sub_10067BC68(&v55 + 8, v37);
                                      }

                                      v38 = 2 * ((v56 - *(&v55 + 1)) >> 1);
                                      *v38 = v27;
                                      *(v38 + 2) = int64;
                                      *(v38 + 4) = v28;
                                      *(v38 + 5) = v30;
                                      *(v38 + 6) = v29;
                                      *(v38 + 7) = v32;
                                      *(v38 + 8) = v31;
                                      *(v38 + 9) = 0;
                                      v34 = 10 * v35 + 10;
                                      memcpy((10 * v35 - (v56 - *(&v55 + 1))), *(&v55 + 1), v56 - *(&v55 + 1));
                                      v39 = *(&v55 + 1);
                                      *(&v55 + 1) = 10 * v35 - (v56 - *(&v55 + 1));
                                      v56 = v34;
                                      if (v39)
                                      {
                                        operator delete(v39);
                                      }
                                    }

                                    else
                                    {
                                      *v56 = v27;
                                      *(v33 + 2) = int64;
                                      *(v33 + 4) = v28;
                                      *(v33 + 5) = v30;
                                      *(v33 + 6) = v29;
                                      *(v33 + 7) = v32;
                                      *(v33 + 8) = v31;
                                      v34 = v33 + 10;
                                      *(v33 + 9) = 0;
                                    }

                                    v16 = v42;
                                    *&v56 = v34;
                                    ++v25;
                                  }

                                  while (v25 < v55);
                                }

                                if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
                                {
                                  sub_10085A530();
                                }

                                v40 = sub_100007EE8();
                                v48[0] = _NSConcreteStackBlock;
                                v48[1] = 3321888768;
                                v48[2] = sub_100677BDC;
                                v48[3] = &unk_100B04DF8;
                                v48[4] = a1;
                                v49 = v54;
                                v50 = v55;
                                v52 = 0;
                                v53 = 0;
                                v51 = 0;
                                if (v56 != *(&v55 + 1))
                                {
                                  sub_10067BC20(&v51, 0xCCCCCCCCCCCCCCCDLL * ((v56 - *(&v55 + 1)) >> 1));
                                }

                                sub_10000CA94(v40, v48);
                                if (v51)
                                {
                                  v52 = v51;
                                  operator delete(v51);
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
        }
      }
    }

    if (*(&v55 + 1))
    {
      *&v56 = *(&v55 + 1);
      operator delete(*(&v55 + 1));
    }
  }
}

void sub_1006636E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 168);
  if (v3)
  {
    *(v1 - 160) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 120);
  if (v4)
  {
    *(v1 - 112) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100663738(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A5D4();
    }
  }

  else
  {
    v20 = 0;
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v19 = 0;
    sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgOptions");
    sub_100013CA4(0, 1, v10, v11, v12, v13, v14, v15, "kCBLEAudioArgCigId");
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10085A5A0();
    }

    v16 = sub_100007EE8();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100677CE4;
    v17[3] = &unk_100AE15D8;
    v17[4] = a1;
    v18 = v19;
    sub_10000CA94(v16, v17);
  }
}

void sub_10066388C(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A610();
    }
  }

  else
  {
    v29 = 0;
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v28 = 0u;
    memset(&v27[1], 0, 32);
    DWORD2(v28) = 1065353216;
    sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgOptions");
    sub_100013CA4(0, 1, v10, v11, v12, v13, v14, v15, "kCBLEAudioArgCigId");
    array = xpc_dictionary_get_array(0, "kCBLEAudioArgCisId");
    v17 = array;
    if (array && xpc_get_type(array) == &_xpc_type_array && xpc_array_get_count(v17) == v27[2])
    {
      v18 = sub_100066200(v29, "kCBLEAudioArgCisIdentifiers");
      if ([v18 count] == v27[2])
      {
        if (v27[2])
        {
          v19 = 0;
          do
          {
            v27[0] = xpc_array_get_int64(v17, v19);
            if (qword_100B508D0 != -1)
            {
              sub_1000D5C34();
            }

            v20 = off_100B508C8;
            v21 = [v18 objectAtIndex:v19];
            v22 = sub_100046458(v20, v21, 0);

            v30 = v27;
            sub_10067DAD4(&v27[9], v27)[3] = v22;
            ++v19;
          }

          while (v19 < v27[2]);
        }

        v23 = sub_100007EE8();
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3321888768;
        v24[2] = sub_100677C6C;
        v24[3] = &unk_100B04E28;
        v24[4] = a1;
        v25 = *&v27[1];
        sub_10067BCBC(v26, &v27[9]);
        sub_10000CA94(v23, v24);
        sub_1001392B8(v26);
      }
    }

    sub_1001392B8(&v27[9]);
  }
}

void sub_100663B3C(_Unwind_Exception *a1)
{
  sub_1001392B8(v2 + 48);

  sub_1001392B8(v3 | 8);
  _Unwind_Resume(a1);
}

void sub_100663B88(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A64C();
    }
  }

  else
  {
    v21 = 0;
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v20 = 0;
    sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgOptions");
    sub_100013CA4(v21, 1, v10, v11, v12, v13, v14, v15, "kCBLEAudioArgCigId");
    v16 = sub_100007EE8();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100677D40;
    v17[3] = &unk_100AEB940;
    v17[4] = a1;
    v18 = HIBYTE(v20);
    v19 = v20;
    sub_10000CA94(v16, v17);
  }
}

void sub_100663CD0(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A688();
    }
  }

  else
  {
    v25 = 0;
    v24 = 0;
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v23 = 0;
    v22 = 0;
    sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgOptions");
    sub_100013CA4(v24, 1, v10, v11, v12, v13, v14, v15, "kCBMsgArgBool");
    v16 = sub_100007EE8();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100677DF4;
    v17[3] = &unk_100ADF940;
    v17[4] = a1;
    v18 = v25;
    v19 = HIBYTE(v23);
    v20 = v23;
    v21 = v22;
    sub_10000CA94(v16, v17);
  }
}

void sub_100663E54(uint64_t a1)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A6C4();
    }
  }

  else
  {
    v2 = sub_100007EE8();
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100677DA0;
    v3[3] = &unk_100ADF8F8;
    v3[4] = a1;
    sub_10000CA94(v2, v3);
  }
}

void sub_100663F08(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A700();
    }
  }

  else
  {
    v21 = 0;
    value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v20 = 0;
    sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgOptions");
    sub_100013CA4(v21, 1, v10, v11, v12, v13, v14, v15, "kCBLEAudioArgCigId");
    v16 = sub_100007EE8();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100677E5C;
    v17[3] = &unk_100AEB940;
    v17[4] = a1;
    v18 = HIBYTE(v20);
    v19 = v20;
    sub_10000CA94(v16, v17);
  }
}

void sub_100664050(uint64_t a1, xpc_object_t xdict)
{
  v29 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v28 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgConnectionLatency");
  v12 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v31 = v28;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "handlePeerSetConnectionLatencyMsg hasCompletionBlock=%lld", buf, 0xCu);
  }

  if (!*(v25 + 6) && v5)
  {
    v13 = sub_100007EE8();
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100672A9C;
    v19[3] = &unk_100B04BB0;
    v21 = &v24;
    v22 = a1;
    v20 = v5;
    v23 = v29;
    sub_10000D334(v13, v19);
  }

  v14 = v28;
  v15 = qword_100BCE950;
  v16 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v17 = *(v25 + 6);
      *buf = 67109120;
      LODWORD(v31) = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending error back %d", buf, 8u);
    }

    reply = xpc_dictionary_create_reply(xdict);
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", *(v25 + 6));
    xpc_connection_send_message(*(a1 + 16), reply);
    xpc_release(reply);
  }

  else if (v16)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not sending response !", buf, 2u);
  }

  _Block_object_dispose(&v24, 8);
}

void sub_1006642F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100664330(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_100013C04(value, "kCBMsgArgName");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v5)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
    {
      if (*(a1 + 184) == 1 && v4)
      {
        if (qword_100B508D0 != -1)
        {
          sub_100856AE8();
        }

        v6 = off_100B508C8;
        sub_100007E30(__p, [v4 UTF8String]);
        sub_10078787C(v6, v5, __p);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      v7 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 96);
        v9 = *(a1 + 48);
        *buf = 138412802;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        v16 = 2112;
        v17 = v5;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A73C();
  }
}

void sub_100664514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100664550(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_100013C04(value, "kCBMsgArgName");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v5)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
    {
      if (*(a1 + 184) == 1 && v4)
      {
        if (qword_100B508D0 != -1)
        {
          sub_100856AE8();
        }

        sub_10078380C(off_100B508C8, v5, v4);
      }
    }

    else
    {
      v6 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 96);
        v8 = *(a1 + 48);
        v9 = 138412802;
        v10 = v7;
        v11 = 2112;
        v12 = v8;
        v13 = 2112;
        v14 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", &v9, 0x20u);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A73C();
  }
}

void sub_10066472C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_100013C04(value, "kCBMsgArgName");
  v6 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (!v6)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A73C();
    }

    goto LABEL_20;
  }

  v21 = 0;
  v7 = sub_10000E92C();
  sub_100007E30(buf, "Tags");
  sub_100007E30(__p, "AllowEveryone");
  v8 = (*(*v7 + 72))(v7, buf, __p, &v21);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(*buf);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else if (!v8)
  {
    goto LABEL_12;
  }

  v9 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Tags are for everyone !!!!!!", buf, 2u);
  }

LABEL_12:
  v21 = 1;
  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  if ((sub_10004FF0C(off_100B508C8, v6, *(a1 + 96), *(a1 + 48)) & 1) == 0)
  {
    v10 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 96);
      v16 = *(a1 + 48);
      *buf = 138412802;
      *&buf[4] = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v6;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
    }

    goto LABEL_20;
  }

  if (*(a1 + 184))
  {
    if (!v5)
    {
LABEL_20:
      v11 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v11 = 0;
    if (v21 != 1 || !v5)
    {
      goto LABEL_21;
    }
  }

  if (qword_100B508D0 != -1)
  {
    sub_1000D5C34();
  }

  v13 = off_100B508C8;
  v14 = v5;
  sub_100007E30(v17, [v5 UTF8String]);
  v11 = sub_10004EB40(v13, v6, v17);
  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

LABEL_21:
  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_BOOL(reply, "kCBMsgArgData", v11);
  xpc_connection_send_message(*(a1 + 16), reply);
  xpc_release(reply);
}

void sub_100664A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100664AB4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = objc_opt_new();
  v6 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v6)
  {
    v32 = 0;
    v7 = sub_10000E92C();
    sub_100007E30(buf, "Tags");
    sub_100007E30(__p, "AllowEveryone");
    v8 = (*(*v7 + 72))(v7, buf, __p, &v32);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
      if (!v8)
      {
LABEL_12:
        v32 = 1;
        if (qword_100B508D0 != -1)
        {
          sub_1000D5C34();
        }

        if (sub_10004FF0C(off_100B508C8, v6, *(a1 + 96), *(a1 + 48)))
        {
          if ((*(a1 + 184) & 1) != 0 || v32 == 1)
          {
            memset(buf, 0, sizeof(buf));
            if (qword_100B508D0 != -1)
            {
              sub_1000D5C34();
            }

            sub_100788FA0(off_100B508C8, v6, buf);
            v10 = *buf;
            if (*buf != &buf[8])
            {
              do
              {
                v11 = v10 + 32;
                if (v10[55] < 0)
                {
                  v11 = *v11;
                }

                v12 = [NSString stringWithCString:v11 encoding:4];
                [v5 addObject:v12];

                v13 = *(v10 + 1);
                if (v13)
                {
                  do
                  {
                    v14 = v13;
                    v13 = *v13;
                  }

                  while (v13);
                }

                else
                {
                  do
                  {
                    v14 = *(v10 + 2);
                    v15 = *v14 == v10;
                    v10 = v14;
                  }

                  while (!v15);
                }

                v10 = v14;
              }

              while (v14 != &buf[8]);
            }

            sub_10004B61C(buf, *&buf[8]);
          }
        }

        else
        {
          v16 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            v24 = *(a1 + 96);
            v25 = *(a1 + 48);
            *buf = 138412802;
            *&buf[4] = v24;
            *&buf[12] = 2112;
            *&buf[14] = v25;
            *&buf[22] = 2112;
            v35 = v6;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
          }
        }

        goto LABEL_31;
      }
    }

    else if (!v8)
    {
      goto LABEL_12;
    }

    v9 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Tags are for everyone !!!!!!", buf, 2u);
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A73C();
  }

LABEL_31:
  reply = xpc_dictionary_create_reply(xdict);
  v18 = xpc_array_create(0, 0);
  if (v18)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = v5;
    v20 = [v19 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v20)
    {
      v21 = *v27;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v26 + 1) + 8 * i);
          xpc_array_set_string(v18, 0xFFFFFFFFFFFFFFFFLL, [v23 UTF8String]);
        }

        v20 = [v19 countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v20);
    }

    xpc_dictionary_set_value(reply, "kCBMsgArgData", v18);
    xpc_release(v18);
  }

  xpc_connection_send_message(*(a1 + 16), reply);
  xpc_release(reply);
}

void sub_100664F78(uint64_t a1, void *a2)
{
  if (*(a1 + 80) >= 1)
  {
    if (sub_100011EDC())
    {
      value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
      v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
      if (!v5)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085A73C();
        }

        goto LABEL_25;
      }

      v6 = sub_100013C04(value, "kCBMsgArgName");
      v7 = sub_100013C04(value, "kCBMsgArgValue");
      if (qword_100B508D0 != -1)
      {
        sub_100856AE8();
      }

      if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
      {
        v8 = *(a1 + 184);
        if (v8 == 1 && v6)
        {
          if ([v7 length] < 0x401)
          {
            if (qword_100B508D0 != -1)
            {
              sub_100856AE8();
            }

            sub_1007893AC(off_100B508C8, v5, v6, v7);
          }

          else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_10085A7B4(v6, &v16, [v7 length]);
          }

          goto LABEL_24;
        }

        v15 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          v16 = 67109890;
          *v17 = v8;
          *&v17[4] = 2112;
          *&v17[6] = v5;
          *&v17[14] = 2112;
          *&v17[16] = v6;
          *&v17[24] = 2112;
          *&v17[26] = v7;
          v12 = "handlePeerSetCustomPropertyMsg not calling LeDeviceManager::setCustomProperty. allowInternalRestrictedServices:%d id:%@ prop:%@ value:%@";
          v13 = v15;
          v14 = 38;
          goto LABEL_20;
        }
      }

      else
      {
        v9 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 96);
          v11 = *(a1 + 48);
          v16 = 138412802;
          *v17 = v10;
          *&v17[8] = 2112;
          *&v17[10] = v11;
          *&v17[18] = 2112;
          *&v17[20] = v5;
          v12 = "App %@ for user %@ is not allowed to access %@";
          v13 = v9;
          v14 = 32;
LABEL_20:
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, &v16, v14);
        }
      }

LABEL_24:

LABEL_25:
      return;
    }

    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A778();
    }
  }
}

void sub_100665284(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v5)
  {
    v6 = sub_100007EE8();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100673A68;
    v7[3] = &unk_100AEB858;
    v9 = a1;
    v10 = value;
    v8 = v5;
    v11 = xdict;
    sub_10000D334(v6, v7);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A73C();
  }
}

void sub_1006653AC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v5)
  {
    v6 = sub_100007EE8();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100673C80;
    v7[3] = &unk_100AE0BC0;
    v9 = a1;
    v8 = v5;
    v10 = xdict;
    sub_10000D334(v6, v7);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A73C();
  }
}

void sub_1006654C8(uint64_t a1, xpc_object_t xdict)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 3;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v5)
  {
    v6 = sub_100007EE8();
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100676054;
    v8[3] = &unk_100AF5598;
    v10 = &v12;
    v11 = a1;
    v9 = v5;
    sub_10000D334(v6, v8);
  }

  v7 = *(v13 + 6);
  if (v7)
  {
    sub_1005B2CE4(a1, 191, xdict, v7);
  }

  _Block_object_dispose(&v12, 8);
}

void sub_1006655DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100665614(uint64_t a1, xpc_object_t xdict)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v5)
  {
    v6 = sub_10000F034();
    (*(*v6 + 664))(v6, *(a1 + 96), 4);
    if (!sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgUUIDs"))
    {
      v13 = sub_100007EE8();
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3321888768;
      v14[2] = sub_1006760B4;
      v14[3] = &unk_100B04B38;
      v16 = a1;
      v15 = v5;
      sub_10000CB74(__p, &v18);
      __p[3] = xdict;
      sub_10000D334(v13, v14);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_10066578C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  v24 = *(v22 - 72);
  if (v24)
  {
    *(v22 - 64) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void sub_1006657D4(uint64_t a1, xpc_object_t xdict)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 3;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v5)
  {
    v6 = sub_100007EE8();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100673F24;
    v9[3] = &unk_100AF5598;
    v11 = &v13;
    v12 = a1;
    v10 = v5;
    sub_10000D334(v6, v9);
  }

  v7 = *(v14 + 6);
  if (v7)
  {
    v8 = v7 == 10;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    sub_1005B2CE4(a1, 193, xdict, v7);
  }

  _Block_object_dispose(&v13, 8);
}

void sub_1006658F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100665928(uint64_t a1, void *a2)
{
  v38 = 0;
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v36 = 0;
  v37 = 0;
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = sub_10000F034();
  (*(*v6 + 664))(v6, *(a1 + 96), 6);
  if (!sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgPSM"))
  {
    if (v5)
    {
      v34 = 0;
      v35 = 0;
      v32 = 0;
      v33 = 0;
      v30 = 0;
      v31 = 0;
      if (!sub_100013CA4(v36, 0, v13, v14, v15, v16, v17, v18, "kCBL2CAPChannelInMTU"))
      {
        v19 = sub_100007EE8();
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10066E4D0;
        v20[3] = &unk_100B047B8;
        v22 = a1;
        v23 = v38;
        v24 = v37;
        v25 = v35;
        v26 = v34;
        v27 = v32;
        v28 = v31;
        v21 = v5;
        v29 = v30;
        sub_10000D334(v19, v20);
      }
    }
  }
}

void sub_100665C94(uint64_t a1, xpc_object_t xdict)
{
  v17 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (!sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgPSM"))
  {
    if (v17 >> 16)
    {
      v11 = 1;
    }

    else
    {
      v11 = v4 == 0;
    }

    if (!v11)
    {
      v12 = sub_100007EE8();
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10066E7E0;
      v13[3] = &unk_100AE0BC0;
      v15 = a1;
      v16 = v17;
      v14 = v4;
      sub_10000D334(v12, v13);
    }
  }
}

void sub_100665DCC(uint64_t a1, void *a2)
{
  v24 = 0;
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v5 = sub_10037CE6C(value, "kCBMsgArgData");
  v6 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (!sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgPSM") && !(v24 >> 16) && v6)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    reply = xpc_dictionary_create_reply(a2);
    if (v21[3])
    {
      v13 = sub_100007EE8();
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10066E62C;
      v14[3] = &unk_100B04830;
      v18 = a1;
      v19 = v24;
      v15 = v6;
      v16 = v5;
      v17 = &v20;
      sub_10000CA94(v13, v14);
    }

    _Block_object_dispose(&v20, 8);
  }
}

void sub_100665F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100665FDC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v4 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v5 = sub_100013C04(value, "kCBMsgArgName");
  if (v4)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    if (sub_10004FF0C(off_100B508C8, v4, *(a1 + 96), *(a1 + 48)))
    {
      if (qword_100B512F8 != -1)
      {
        sub_1000C10B4();
      }

      if (sub_1003AF1AC(off_100B512F0, *(a1 + 128), v4))
      {
        v6 = sub_100007EE8();
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100677350;
        v10[3] = &unk_100AE25C8;
        v13 = a1;
        v11 = v4;
        v12 = v5;
        sub_10000D334(v6, v10);
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085A814();
      }
    }

    else
    {
      v7 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 96);
        v9 = *(a1 + 48);
        *buf = 138412802;
        v15 = v8;
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v4;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }
    }
  }
}

void sub_100666240(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v4 = sub_10037CEF8(value, "kCBMsgArgSetHighPriorityStream");
  v5 = sub_1000C9AAC(value, "kCBMsgArgHighPriorityStreamDuration");
  v6 = v5;
  if (v3)
  {
    if (!v5 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A884();
    }

    if (qword_100B50F78 != -1)
    {
      sub_10085A8C0();
    }

    v7 = qword_100B50F70;
    v8 = [v6 intValue];
    sub_100580A48(v7, v9, v4, v8);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085A8E8();
  }
}

void sub_1006663B8(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v6 = sub_10037CE6C(value, "kCBFastLeConnectionInfoData");
  LOBYTE(value) = sub_10037CEF8(value, "kCBMsgArgEnable");
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = xpc_dictionary_create_reply(xdict);
  v7 = sub_100007EE8();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1006774BC;
  v10[3] = &unk_100B04D70;
  v14 = a1;
  v8 = v5;
  v11 = v8;
  v15 = value;
  v9 = v6;
  v12 = v9;
  v13 = v16;
  sub_10000CA94(v7, v10);

  _Block_object_dispose(v16, 8);
}

void sub_100666508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100666554()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v38 = 0;
  value = xpc_dictionary_get_value(v1, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v36 = 1;
  v37 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  reply = xpc_dictionary_create_reply(v2);
  if (*(v3 + 80) < 2 || (v6 = sub_10000C7D0(), ((*(*v6 + 3288))(v6) & 1) == 0))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10000C7D0();
      v14 = (*(*v13 + 3288))(v13);
      sub_10085A924(v14, (v3 + 80), v47);
    }

    v15 = v33[3];
    if (v15)
    {
      xpc_dictionary_set_int64(v15, "kCBMsgArgResult", 2);
      xpc_connection_send_message(*(v3 + 16), v33[3]);
      xpc_release(v33[3]);
    }
  }

  sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgOptions");
  v22 = sub_100013CA4(v38, 0, v16, v17, v18, v19, v20, v21, "kCBGetRangeOptionRunProcedure");
  if (v22)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A984();
    }

    v23 = v33[3];
    if (v23)
    {
      xpc_dictionary_set_int64(v23, "kCBMsgArgResult", v22);
      xpc_connection_send_message(*(v3 + 16), v33[3]);
      xpc_release(v33[3]);
    }
  }

  bzero(v46, 0xCBE8uLL);
  sub_100674AA0(v24, v38, v46, v25, v26, v27, v28, v29);
  v46[26098] = v37;
  LOBYTE(v46[26099]) = v36;
  if (v5)
  {
    v30 = sub_100007EE8();
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100674C34;
    v39[3] = &unk_100B04CA0;
    v42 = v3;
    v43 = v37;
    v40 = v5;
    memcpy(v45, v46, sizeof(v45));
    v44 = v22;
    v41 = &v32;
    sub_10000CA94(v30, v39);
  }

  else
  {
    v31 = v33[3];
    if (v31)
    {
      xpc_dictionary_set_int64(v31, "kCBMsgArgResult", 312);
      xpc_connection_send_message(*(v3 + 16), v33[3]);
      xpc_release(v33[3]);
    }
  }

  _Block_object_dispose(&v32, 8);
}

void sub_1006668F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_10066693C(uint64_t a1, xpc_object_t xdict)
{
  v21 = 0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v11 && !sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgServiceStartHandle"))
  {
    v12 = sub_100007EE8();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3321888768;
    v13[2] = sub_100676328;
    v13[3] = &unk_100B04CC8;
    v15 = a1;
    v14 = v11;
    v16 = v22;
    sub_10000CB74(__p, &v18);
    __p[3] = v21;
    __p[4] = xdict;
    sub_10000D334(v12, v13);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_100666ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  v31 = *(v29 - 88);
  if (v31)
  {
    *(v29 - 80) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void sub_100666B04(uint64_t a1, xpc_object_t xdict)
{
  v21 = 0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v11 && !sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgServiceStartHandle"))
  {
    v12 = sub_100007EE8();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3321888768;
    v13[2] = sub_100676510;
    v13[3] = &unk_100B04CC8;
    v15 = a1;
    v14 = v11;
    v16 = v22;
    sub_10000CB74(__p, &v18);
    __p[3] = v21;
    __p[4] = xdict;
    sub_10000D334(v12, v13);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_100666C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  v31 = *(v29 - 88);
  if (v31)
  {
    *(v29 - 80) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void sub_100666CCC(uint64_t a1, xpc_object_t xdict)
{
  v19 = 0;
  v20 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v11 && !sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgCharacteristicHandle"))
  {
    v12 = sub_100007EE8();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1006766E4;
    v13[3] = &unk_100B04A18;
    v15 = a1;
    v14 = v11;
    v16 = v20;
    v17 = v19;
    v18 = xdict;
    sub_10000D334(v12, v13);
  }
}

void sub_100666E10(uint64_t a1, xpc_object_t xdict)
{
  v25 = 0;
  v26 = 0;
  v23 = &off_100AE0A78;
  v24 = 0;
  v22 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v11 && !sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgCharacteristicHandle"))
  {
    v12 = sub_100007EE8();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3321888768;
    v13[2] = sub_1006768D8;
    v13[3] = &unk_100B04D00;
    v15 = a1;
    v14 = v11;
    v16 = v26;
    v17 = v22;
    v18 = v25;
    v19 = &off_100AE0A78;
    v20 = v24;
    v21 = xdict;
    sub_10000D334(v12, v13);
    v19 = &off_100AE0A78;
    if (v20)
    {
      sub_10000C808(v20);
    }
  }

  v23 = &off_100AE0A78;
  if (v24)
  {
    sub_10000C808(v24);
  }
}

void sub_100666FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  *(v28 - 96) = v26;
  v30 = *(v28 - 88);
  if (v30)
  {
    sub_10000C808(v30);
  }

  _Unwind_Resume(a1);
}

void sub_10066704C(uint64_t a1, xpc_object_t xdict)
{
  v20 = 0;
  v21 = 0;
  v19 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v11 && !sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgCharacteristicHandle"))
  {
    v12 = sub_100007EE8();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100676B68;
    v13[3] = &unk_100B04A18;
    v15 = a1;
    v14 = v11;
    v16 = v21;
    v17 = v19;
    v18 = xdict;
    sub_10000D334(v12, v13);
  }
}

void sub_1006671A8(uint64_t a1, void *a2)
{
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v18 = 0;
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v11 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v11 && !sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgCharacteristicHandle"))
  {
    v12 = sub_100007EE8();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100676D7C;
    v13[3] = &unk_100AEB858;
    v15 = a1;
    v14 = v11;
    v16 = v18;
    v17 = a2;
    sub_10000D334(v12, v13);
  }
}

void sub_100667314(uint64_t a1, xpc_object_t xdict)
{
  v21 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v5)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
    {
      if (!sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgDescriptorHandle"))
      {
        v12 = sub_100007EE8();
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100676F6C;
        v16[3] = &unk_100AEB858;
        v18 = a1;
        v17 = v5;
        v19 = v21;
        v20 = xdict;
        sub_10000D334(v12, v16);
      }
    }

    else
    {
      v13 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 96);
        v15 = *(a1 + 48);
        *buf = 138412802;
        v23 = v14;
        v24 = 2112;
        v25 = v15;
        v26 = 2112;
        v27 = v5;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }
    }
  }
}

void sub_10066751C(uint64_t a1, void *a2)
{
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v25 = 0;
  v23 = &off_100AE0A78;
  v24 = 0;
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v5 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  if (v5)
  {
    if (qword_100B508D0 != -1)
    {
      sub_1000D5C34();
    }

    if (sub_10004FF0C(off_100B508C8, v5, *(a1 + 96), *(a1 + 48)))
    {
      if (!sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgDescriptorHandle"))
      {
        v12 = sub_100007EE8();
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3321888768;
        v16[2] = sub_10067715C;
        v16[3] = &unk_100B04D38;
        v18 = a1;
        v17 = v5;
        v19 = v25;
        v20 = &off_100AE0A78;
        v21 = v24;
        v22 = a2;
        sub_10000D334(v12, v16);
        v20 = &off_100AE0A78;
        if (v21)
        {
          sub_10000C808(v21);
        }
      }
    }

    else
    {
      v13 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 96);
        v15 = *(a1 + 48);
        *buf = 138412802;
        v27 = v14;
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        v31 = v5;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "App %@ for user %@ is not allowed to access %@", buf, 0x20u);
      }
    }
  }

  v23 = &off_100AE0A78;
  if (v24)
  {
    sub_10000C808(v24);
  }
}

void sub_1006677B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, atomic_uint *a27)
{
  if (a27)
  {
    sub_10000C808(a27);
  }

  _Unwind_Resume(a1);
}

void sub_10066780C(uint64_t a1, void *a2)
{
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "handleTrackPeripheralMsg";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v64 = 0x2020000000;
  v65 = 1;
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v12 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v59 = 0;
  v60 = 0;
  v57 = 1;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  if (v12)
  {
    v13 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions");
    *(*(&buf + 1) + 24) = v13;
    if (v13)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085A9F4();
      }
    }

    else
    {
      sub_100013CA4(v60, 0, v14, v15, v16, v17, v18, v19, "kCBTrackingOptionType");
      v20 = v59;
      v21 = *(&buf + 1);
      if (v59 >= 101)
      {
        *(*(&buf + 1) + 24) = 3;
        v22 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          *v61 = 67109120;
          v62 = v20;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Unsupported apply type: %d", v61, 8u);
          v21 = *(&buf + 1);
        }
      }

      if (!*(v21 + 24))
      {
        v23 = sub_100007EE8();
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100672B8C;
        v24[3] = &unk_100B04BD8;
        p_buf = &buf;
        v27 = a1;
        v25 = v12;
        v28 = v59;
        v29 = v58;
        v30 = v57;
        v31 = v56;
        v32 = v55;
        v33 = v54;
        v34 = v53;
        v35 = v52;
        v36 = v51;
        v37 = v50;
        v38 = v49;
        v39 = v48;
        v40 = v47;
        v41 = v46;
        v42 = v45;
        v43 = v44;
        sub_10000D334(v23, v24);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085AA64();
  }

  _Block_object_dispose(&buf, 8);
}

void sub_100667C88(uint64_t a1, void *a2)
{
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = "handleStopTrackingPeripheralMsg";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v12 = sub_10037CDF8(value, "kCBMsgArgDeviceUUID");
  v24 = 0;
  buf[0] = 0;
  if (v12)
  {
    if (sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgOptions"))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085A9F4();
      }
    }

    else
    {
      sub_100013CA4(buf[0], 0, v13, v14, v15, v16, v17, v18, "kCBTrackingOptionType");
      v19 = sub_100007EE8();
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100672C48;
      v20[3] = &unk_100AE0BC0;
      v22 = a1;
      v21 = v12;
      v23 = v24;
      sub_10000D334(v19, v20);
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085AA64();
  }
}

void sub_100667EE4(uint64_t a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v4 = reply;
    v6 = 0;
    bytes = 0;
    xpc_dictionary_set_data(reply, "kCBMsgArgAddressString", &bytes, 6uLL);
    xpc_connection_send_message(*(a1 + 16), v4);
    xpc_release(v4);
  }
}

void sub_100667F4C(uint64_t a1, xpc_object_t xdict)
{
  v89 = 0;
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_10037CDF8(v4, "kCBMsgArgDeviceUUID");
  value = 0;
  v88 = 0;
  if (*(a1 + 80) <= 1)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(*(a1 + 128), v91);
      sub_10085AC08();
    }

    goto LABEL_46;
  }

  v12 = sub_100013CA4(v4, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgOptions");
  if (!v12)
  {
    v13 = sub_100013C04(v89, "kCBLePowerControlCmd");
    v14 = sub_10037CEF8(v89, "kCBlePowerControlWait4Result");
    if (qword_100B508B0 != -1)
    {
      sub_10085681C();
    }

    v15 = off_100B508A8;
    sub_10004DFB4(v91, v11);
    sub_1000C4FCC(v15, v91, &v88);
    if ([v13 isEqualToString:@"setLeTxReportEnable"])
    {
      LOBYTE(v91[0]) = 0;
      LOBYTE(v90[0]) = 0;
      v22 = sub_100013CA4(v89, 0, v16, v17, v18, v19, v20, v21, "kCBLePowerControlLocalEnable");
      if (!v22)
      {
        HIBYTE(v86) = 0;
        sub_1000216B4(&v86 + 1);
        v29 = sub_100018960(249, sub_100671438, v23, v24, v25, v26, v27, v28, v88);
        sub_100022214(&v86 + 1);
        sub_10002249C(&v86 + 1);
        v30 = 249;
        goto LABEL_27;
      }
    }

    else if ([v13 isEqualToString:@"setLePathLossEnable"])
    {
      LOBYTE(v91[0]) = 0;
      v22 = sub_100013CA4(v89, 0, v31, v32, v33, v34, v35, v36, "kCBLePathLossReportingEnable");
      if (!v22)
      {
        LOBYTE(v90[0]) = 0;
        sub_1000216B4(v90);
        v29 = sub_100018960(248, sub_100671438, v37, v38, v39, v40, v41, v42, v88);
        sub_100022214(v90);
        sub_10002249C(v90);
        v30 = 248;
        goto LABEL_27;
      }
    }

    else if ([v13 isEqualToString:@"setLePathLossParam"])
    {
      LOBYTE(v90[0]) = 0;
      v86 = 0;
      v85[1] = 0;
      LOWORD(v91[0]) = 0;
      v22 = sub_100013CA4(v89, 0, v43, v44, v45, v46, v47, v48, "kCBLeHighThreshold");
      if (!v22)
      {
        v85[0] = 0;
        sub_1000216B4(v85);
        v29 = sub_100018960(247, sub_100671438, v49, v50, v51, v52, v53, v54, v88);
        sub_100022214(v85);
        sub_10002249C(v85);
        v30 = 247;
        goto LABEL_27;
      }
    }

    else if ([v13 isEqualToString:@"readLeRemoteTxPower"])
    {
      LOBYTE(v91[0]) = 0;
      v22 = sub_100013CA4(v89, 0, v55, v56, v57, v58, v59, v60, "kCBLePHYType");
      if (!v22)
      {
        LOBYTE(v90[0]) = 0;
        sub_1000216B4(v90);
        if (v14)
        {
          v68 = sub_1002C40BC(1, sub_100671438, &value, 8);
        }

        else
        {
          v68 = 0xFFFFFFFFLL;
        }

        v29 = sub_1000D6178(0xF6u, v61, v62, v63, v64, v65, v66, v67, v88);
        sub_100022214(v90);
        sub_10002249C(v90);
        v30 = 246;
        if ((v14 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_28:
        if (!v29)
        {
          memset(v91, 0, sizeof(v91));
          sub_100044BBC(v91);
          v90[0] = 0;
          v90[1] = 0;
          sub_100007F88(v90, v91);
          if (sub_10002220C(&stru_100BCE850, v90, 0xBB8uLL))
          {
            v29 = 0;
          }

          else
          {
            v29 = 112;
          }

          sub_1000088CC(v90);
          sub_10007A068(v91);
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (![v13 isEqualToString:@"readLeLocalTxPower"])
      {
        if ((v14 & 1) == 0)
        {
LABEL_45:

          goto LABEL_46;
        }

        v30 = 0;
        v22 = 0;
        v29 = 114;
        v68 = 0xFFFFFFFFLL;
LABEL_33:
        reply = xpc_dictionary_create_reply(xdict);
        v82 = reply;
        if (reply)
        {
          xpc_dictionary_set_int64(reply, "kCBLePowerControlCmd", v30);
          xpc_dictionary_set_int64(v82, "kCBMsgArgResult", v29);
          if (v30 == 246)
          {
            xpc_dictionary_set_int64(v82, "kCBMsgArgConnHandle", value);
            xpc_dictionary_set_int64(v82, "kCBMsgArgReason", BYTE3(value));
            xpc_dictionary_set_int64(v82, "kCBMsgArgPHY", BYTE4(value));
            xpc_dictionary_set_int64(v82, "kCBMsgArgTransmitPowerLevel", SBYTE5(value));
            xpc_dictionary_set_int64(v82, "kCBMsgArgTransmitPowerFlag", BYTE6(value));
            v83 = SHIBYTE(value);
            v84 = "kCBMsgArgDelta";
          }

          else
          {
            if (v30 != 245)
            {
LABEL_39:
              xpc_connection_send_message(*(a1 + 16), v82);
              xpc_release(v82);
              goto LABEL_40;
            }

            xpc_dictionary_set_int64(v82, "kCBMsgArgConnHandle", word_100BCE880);
            xpc_dictionary_set_int64(v82, "kCBMsgArgCurrentTxPowerLevel", byte_100BCE883);
            v83 = byte_100BCE884;
            v84 = "kCBMsgArgMaxTxPowerLevel";
          }

          xpc_dictionary_set_int64(v82, v84, v83);
          goto LABEL_39;
        }

LABEL_40:
        if ((v68 & 0x80000000) == 0)
        {
          sub_1002C411C(v68);
        }

        if (v22)
        {
          sub_1005B2CE4(a1, 231, xdict, v22);
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_10085AB84();
          }
        }

        goto LABEL_45;
      }

      LOBYTE(v91[0]) = 0;
      v22 = sub_100013CA4(v89, 0, v69, v70, v71, v72, v73, v74, "kCBLePHYType");
      if (!v22 && LOBYTE(v91[0]) - 1 <= 3)
      {
        LOBYTE(v90[0]) = 0;
        sub_1000216B4(v90);
        v29 = sub_100018960(245, sub_100671444, v75, v76, v77, v78, v79, v80, v88);
        sub_100022214(v90);
        sub_10002249C(v90);
        v30 = 245;
        goto LABEL_27;
      }
    }

    v30 = 0;
    v29 = 114;
LABEL_27:
    v68 = 0xFFFFFFFFLL;
    if ((v14 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_28;
  }

  sub_1005B2CE4(a1, 231, xdict, v12);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10085AB14();
  }

LABEL_46:
}

void sub_100668790()
{
  if (MGCopyAnswer())
  {
    if (qword_100B50AA0 != -1)
    {
      sub_10085AC64();
    }

    v0 = off_100B50A98;
    sub_100007E30(&v3, "BT_CONTROLLER_CORE_DUMP");
    sub_100007E30(__p, "");
    sub_1005A24D4(v0, 3703, &v3, 0, 0, 0, __p);
  }

  v1 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "CBUtil controller core dump not supported on customer / production / user builds", __p, 2u);
  }
}

void sub_100668890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006688C4(uint64_t a1, unsigned int a2)
{
  result = 1;
  if (a2 > 0x2C || ((1 << a2) & 0x1CC000011000) == 0)
  {
    v4 = a2 == 81 || a2 == 49;
    return a2 == 181 || v4;
  }

  return result;
}

void sub_100668910(uint64_t a1, uint64_t **a2, void *a3)
{
  v5 = a3;
  v6 = *a2;
  if (*a2 != a2[1])
  {
    do
    {
      if (qword_100B50900 != -1)
      {
        sub_10085771C();
      }

      v7 = qword_100B508F8;
      v8 = *v6;
      v13 = *(*v6 + 72);
      v14 = *(v8 + 88);
      sub_10000D03C(&v12, &v13);
      if (sub_100066E24(v7, &v12, *(a1 + 184), *(a1 + 200), v5))
      {
        ++v6;
        v9 = a2[1];
      }

      else
      {
        v10 = a2[1];
        v11 = v10 - (v6 + 1);
        if (v10 != v6 + 1)
        {
          memmove(v6, v6 + 1, v10 - (v6 + 1));
        }

        v9 = (v6 + v11);
        a2[1] = (v6 + v11);
      }
    }

    while (v6 != v9);
  }
}

uint64_t sub_100668A48(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  if (*(a1 + 80) > 0)
  {
    goto LABEL_14;
  }

  v15 = 0uLL;
  v16 = 0;
  if (qword_100B50900 != -1)
  {
    sub_10085AC78();
  }

  sub_10070BEF4(qword_100B508F8, v5, a3, &v15);
  *buf = xmmword_1008A4E04;
  *&buf[16] = 0;
  if (!sub_10004E15C(&v15, buf))
  {
    goto LABEL_14;
  }

  if (qword_100B50900 != -1)
  {
    sub_10085771C();
  }

  v6 = qword_100B508F8;
  v12 = xmmword_1008A4E04;
  v13 = 0;
  sub_10000D03C(buf, &v12);
  if (sub_10070BAC0(v6, v5, buf, a3))
  {
    v7 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "External Characteristic Restricted for device %@", buf, 0xCu);
    }

    if ((*(a1 + 180) & 1) == 0)
    {
      v8 = objc_alloc_init(MTSAuthorization);
      *(a1 + 179) = [v8 isRestrictedCharacteristicsAccessAllowed];

      *(a1 + 180) = 1;
    }

    v9 = *(a1 + 179) ^ 1;
    v10 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *&buf[4] = v9 & 1;
      *&buf[8] = 2112;
      *&buf[10] = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "External Restricted Characteristic restricted:%d for device %@", buf, 0x12u);
    }
  }

  else
  {
LABEL_14:
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_100668C84(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  if (qword_100B50900 != -1)
  {
    sub_10085AC78();
  }

  v12 = 0uLL;
  v13 = 0;
  sub_10070BEF4(qword_100B508F8, v5, a3, &v12);
  if (!v12.n128_u8[0])
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085AC8C();
    }

    goto LABEL_13;
  }

  if (qword_100B50900 != -1)
  {
    sub_10085771C();
  }

  if (!sub_100066E24(qword_100B508F8, &v12, *(a1 + 184), *(a1 + 200), v5))
  {
    v7 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v9 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v9 = *v9;
      }

      *v10 = 136446722;
      *&v10[4] = v9;
      *&v10[12] = 1024;
      *&v10[14] = a3;
      *&v10[18] = 2112;
      v11 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Session %{public}s isn't entitled to access restricted handle 0x%04x on device %@! ಠ_ಠ", v10, 0x1Cu);
    }

    goto LABEL_13;
  }

  *v10 = xmmword_1008A4E04;
  *&v10[16] = 0;
  if (sub_10004E15C(&v12, v10) && (sub_100668A48(a1, v5, a3) & 1) != 0)
  {
LABEL_13:
    v6 = 902;
    goto LABEL_14;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

uint64_t sub_100668E78(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  xpc_connection_get_audit_token();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 2;
  if ((atomic_load_explicit(&qword_100B6F7E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6F7E8))
  {
    qword_100B6F7E0 = tcc_server_create();
    __cxa_guard_release(&qword_100B6F7E8);
  }

  v2 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  tcc_message_options_set_request_prompt_policy();
  v8 = v14;
  v9 = v15;
  v3 = tcc_credential_create_for_process_with_audit_token();
  tcc_service_singleton_for_CF_name();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100669040;
  v7[3] = &unk_100B04500;
  v7[4] = &v10;
  v7[5] = a1;
  v4 = objc_retainBlock(v7);
  tcc_server_message_request_authorization();
  CFRelease(v3);
  CFRelease(v2);
  v5 = *(v11 + 6);

  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_100669000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __cxa_guard_abort(&qword_100B6F7E8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float sub_100669040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = *(a1 + 40);
    authorization_right = tcc_authorization_record_get_authorization_right();
    authorization_reason = tcc_authorization_record_get_authorization_reason();
    v7 = authorization_reason;
    if (authorization_right == 2)
    {
      v8 = 0;
    }

    else if (authorization_right)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
      if (authorization_reason == 12)
      {
        if (*(v4 + 181))
        {
          v8 = 2;
        }

        else
        {
          v8 = 1;
        }
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = v8;
    v9 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v4 + 181);
      v12 = *(*(*(a1 + 32) + 8) + 24);
      v13[0] = 67109888;
      v13[1] = v11;
      v14 = 2048;
      v15 = authorization_right;
      v16 = 2048;
      v17 = v7;
      v18 = 1024;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "preflight ext:%d userAuth:%llu reason:%llu response:%d", v13, 0x22u);
    }
  }

  return result;
}

uint64_t sub_100669184(uint64_t a1, void *a2)
{
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  xpc_connection_get_audit_token();
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ((atomic_load_explicit(&qword_100B6F7F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6F7F8))
  {
    qword_100B6F7F0 = tcc_server_create();
    __cxa_guard_release(&qword_100B6F7F8);
  }

  v4 = tcc_message_options_create();
  tcc_message_options_set_reply_handler_policy();
  tcc_message_options_set_request_prompt_policy();
  v14 = v20;
  v15 = v21;
  v5 = tcc_credential_create_for_process_with_audit_token();
  tcc_service_singleton_for_CF_name();
  v6 = objc_opt_new();
  [v6 setObject:*(a1 + 112) forKeyedSubscript:@"mapCentralLabelStringKey"];
  [v6 setObject:*(a1 + 120) forKeyedSubscript:@"mapLabelArrayForCalloutsKey"];
  tcc_message_options_set_client_dict();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1006693E4;
  v11[3] = &unk_100B04528;
  v13 = &v16;
  v7 = v3;
  v12 = v7;
  v8 = objc_retainBlock(v11);
  tcc_server_message_request_authorization();
  CFRelease(v5);
  CFRelease(v4);
  v9 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v9;
}

void sub_100669380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __cxa_guard_abort(&qword_100B6F7F8);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1006693E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = tcc_authorization_record_get_authorization_right() == 2;
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_10066945C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1006694F8;
  v2[3] = &unk_100B04550;
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  sub_100669184(v1, v2);
}

void sub_1006694F8(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006695A0;
  v3[3] = &unk_100ADF820;
  v4 = *(a1 + 32);
  sub_10000CA94(v2, v3);
}

void sub_1006695A0(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(a1 + 32);

  sub_1003AB71C(v2, v3);
}

void sub_1006695F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(v1 + 128);

  sub_1003B2F70(v2, v3);
}

void sub_100669648(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v2 = off_100B512F0;
  v3 = *(v1 + 128);

  sub_1003BF980(v2, v3);
}

void sub_10066969C(uint64_t a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v18 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v17 = [LSBundleRecord bundleRecordWithBundleIdentifier:a1 allowPlaceholder:1 error:0];
  v5 = [v17 infoDictionary];
  v19 = [v5 objectForKey:v18 ofClass:objc_opt_class()];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v19;
    if ([v16 count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      obj = v16;
      v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v6)
      {
        v7 = *v22;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v22 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v21 + 1) + 8 * i);
            v10 = [CBUUID UUIDWithString:v9];
            v11 = [v10 data];
            v12 = v11;
            v13 = [v11 bytes];
            v14 = [CBUUID UUIDWithString:v9];
            v15 = [v14 data];
            sub_100065F40(&v25, v13, [v15 length]);
            sub_10000CDB8(a3, &v25);
          }

          v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v6);
      }
    }
  }
}

void sub_1006698D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void sub_10066998C(void *a1@<X1>, void *a2@<X2>, const void **a3@<X8>)
{
  v5 = a1;
  v6 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v27 = v5;
  v28 = [LSBundleRecord bundleRecordWithBundleIdentifier:v5 allowPlaceholder:1 error:0];
  v7 = [v28 infoDictionary];
  v8 = [v7 objectForKey:v6 ofClass:objc_opt_class()];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v8;
    v9 = v8;
    if ([v9 count])
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = v9;
      v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v10)
      {
        v11 = *v32;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v31 + 1) + 8 * i);
            v30 = 0;
            v14 = [NSScanner scannerWithString:v13];
            [v14 scanHexInt:&v30];
            v16 = a3[1];
            v15 = a3[2];
            if (v16 >= v15)
            {
              v18 = *a3;
              v19 = v16 - *a3;
              v20 = v19 >> 1;
              if (v19 >> 1 <= -2)
              {
                sub_1000C7698();
              }

              v21 = v15 - v18;
              if (v21 <= v20 + 1)
              {
                v22 = v20 + 1;
              }

              else
              {
                v22 = v21;
              }

              v23 = v21 >= 0x7FFFFFFFFFFFFFFELL;
              v24 = 0x7FFFFFFFFFFFFFFFLL;
              if (!v23)
              {
                v24 = v22;
              }

              if (v24)
              {
                sub_1003705C4(a3, v24);
              }

              *(2 * v20) = v30;
              v17 = 2 * v20 + 2;
              memcpy(0, v18, v19);
              v25 = *a3;
              *a3 = 0;
              a3[1] = v17;
              a3[2] = 0;
              if (v25)
              {
                operator delete(v25);
              }
            }

            else
            {
              *v16 = v30;
              v17 = (v16 + 2);
            }

            a3[1] = v17;
          }

          v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v10);
      }
    }

    v8 = v26;
  }
}

void sub_100669C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_100669CC8(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v5 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v6 = [LSBundleRecord bundleRecordWithBundleIdentifier:a1 allowPlaceholder:1 error:0];
  v7 = [v6 infoDictionary];
  v8 = [v7 objectForKey:v5 ofClass:objc_opt_class()];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    if ([v9 count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = *v17;
        do
        {
          v13 = 0;
          do
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v10);
            }

            sub_100007E30(__p, [*(*(&v16 + 1) + 8 * v13) UTF8String]);
            sub_10034A52C(a3, __p);
            if (v15 < 0)
            {
              operator delete(__p[0]);
            }

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v11);
      }
    }
  }
}

void sub_100669E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1000161FC(&__p);

  _Unwind_Resume(a1);
}

void sub_100669F14(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = sub_10005EBC0(off_100B512F0, *(v2 + 96));
  v4 = v3;
  v5 = sub_10066A1F4(v3, *(v2 + 96));
  if (*(a1 + 40) == 1 && *(v2 + 128))
  {
    if (qword_100B512F8 != -1)
    {
      sub_1000C10B4();
    }

    v6 = sub_1003BCCF0(off_100B512F0, *(v2 + 128));
  }

  else
  {
    v6 = 0;
  }

  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v2 + 96);
    v9 = *(v2 + 196);
    v10 = *(a1 + 40);
    v11 = *(v2 + 200);
    v19 = 138413826;
    v20 = v8;
    v21 = 1024;
    *v22 = v9;
    *&v22[4] = 1024;
    *&v22[6] = v4;
    v23 = 1024;
    v24 = v5;
    v25 = 1024;
    v26 = v10;
    v27 = 1024;
    v28 = v6;
    v29 = 1024;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Application: %@ privacySupported: %d tccAuthKnown %d uses medical devices %d or state restoration %d numberOfPairedDevices %d, allowedExternalRestrictedServices 0x%08x", &v19, 0x30u);
  }

  if ((v4 & 1) == 0)
  {
    if (v5)
    {
      v12 = 0;
      *(v2 + 197) = 1;
      goto LABEL_14;
    }

    if (*(a1 + 40) != 1 || !v6)
    {
      return;
    }

    *(v2 + 197) = 1;
    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    v14 = sub_1003AD58C(off_100B512F0, *(v2 + 96));
    if (v14 < 0xB)
    {
      v12 = v14;
      if (*(v2 + 197))
      {
LABEL_14:
        v13 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 67109120;
          LODWORD(v20) = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Allowing device temporarily - checkInWithoutAuth %d", &v19, 8u);
        }
      }
    }

    else
    {
      *(v2 + 197) = 0;
    }

    v15 = qword_100BCE9E0;
    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v2 + 96);
      v17 = (v2 + 56);
      if (*(v2 + 79) < 0)
      {
        v17 = *v17;
      }

      v19 = 138412546;
      v20 = v16;
      v21 = 2080;
      *v22 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "handleCheckInMsg:{isAlive: true, bundleId: %@, session: %s}", &v19, 0x16u);
    }

    v18 = sub_10000EE80();
    (*(*v18 + 72))(v18, *(v2 + 96), 1);
    sub_1000634AC(v2);
  }
}

uint64_t sub_10066A1F4(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [NSArray arrayWithObjects:@"com.dexcom.", @"com.medtronic.", @"com.senseonics.", 0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10067B94C;
  v7[3] = &unk_100B04E88;
  v4 = v2;
  v8 = v4;
  v9 = &v10;
  [v3 enumerateObjectsUsingBlock:v7];
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_10066A2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  _Block_object_dispose((v19 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_10066A330(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 10;
  }

  else
  {
    v3 = 5;
  }

  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(*(a1 + 128), __p);
    v5 = v10;
    v6 = __p[0];
    v7 = sub_1005B29E8(a1, v3);
    v8 = __p;
    if (v5 < 0)
    {
      v8 = v6;
    }

    *buf = 136315394;
    v12 = v8;
    v13 = 2080;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "session %s restricted state, setting power state to %s. Update manager state", buf, 0x16u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100063710(a1, v3);
}

void sub_10066A448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10066A488(uint64_t a1, int a2, void *a3, unsigned int a4)
{
  v9 = a3;
  v7 = *(*(*(a1 + 32) + 8) + 24);
  if (v7)
  {
    v8 = *(a1 + 40);
    xpc_dictionary_set_int64(v7, "kCBMsgArgResult", a2);
    if (!a2)
    {
      xpc_dictionary_set_int64(*(*(*(a1 + 32) + 8) + 24), "kCBFastLeConnectionInfoVersion", a4);
      xpc_dictionary_set_int64(*(*(*(a1 + 32) + 8) + 24), "kCBFastLeConnectionInfoLength", [v9 length]);
      xpc_dictionary_set_data(*(*(*(a1 + 32) + 8) + 24), "kCBFastLeConnectionInfoData", [v9 bytes], objc_msgSend(v9, "length"));
    }

    xpc_connection_send_message(*(v8 + 16), *(*(*(a1 + 32) + 8) + 24));
    xpc_release(*(*(*(a1 + 32) + 8) + 24));
  }
}

void sub_10066A5BC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 32))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v3 = sub_100791918(off_100B508C8, *(a1 + 32), *(a1 + 64), *(a1 + 40), 1);
  }

  else
  {
    v3 = 8;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 56));
  if (reply)
  {
    v5 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v3);
    xpc_connection_send_message(*(v2 + 16), v5);

    xpc_release(v5);
  }
}

void sub_10066A67C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v3 = sub_1007919E0(off_100B508C8, *(a1 + 32));
  }

  else
  {
    v3 = 8;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 48));
  if (reply)
  {
    v5 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v3);
    xpc_connection_send_message(*(v2 + 16), v5);

    xpc_release(v5);
  }
}

void sub_10066A730(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v3 = sub_100791C14(off_100B508C8, *(a1 + 32), *(a1 + 56) == 1);
  }

  else
  {
    v3 = 8;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 48));
  if (reply)
  {
    v5 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v3);
    xpc_connection_send_message(*(v2 + 16), v5);

    xpc_release(v5);
  }
}

void sub_10066A7F0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 32))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v3 = sub_100046458(off_100B508C8, *(a1 + 32), 0);
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    v4 = sub_1007868F4(off_100B508C8, *(a1 + 32));
    v5 = sub_10000C7D0();
    v6 = (*(*v5 + 2184))(v5, v3, v4, [*(a1 + 40) length], objc_msgSend(*(a1 + 40), "bytes"));
  }

  else
  {
    v6 = 8;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 56));
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v6);
    xpc_connection_send_message(*(v2 + 16), v8);

    xpc_release(v8);
  }
}

void sub_10066A94C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    sub_100046458(off_100B508C8, *(a1 + 32), 0);
    if (qword_100B508D0 != -1)
    {
      sub_100856AE8();
    }

    sub_1007868F4(off_100B508C8, *(a1 + 32));
    v3 = *sub_10000C7D0();
    v4 = (*(v3 + 2192))();
  }

  else
  {
    v4 = 8;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 48));
  if (reply)
  {
    v6 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v4);
    xpc_connection_send_message(*(v2 + 16), v6);

    xpc_release(v6);
  }
}

void sub_10066AA7C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (![*(a1 + 32) isEqualToString:@"config"])
  {
    if ([*(a1 + 32) isEqualToString:@"enable"])
    {
      v6 = *(a1 + 64);
      if (v6 <= 1)
      {
        v9 = v6 == 1;
        v10 = sub_10000C7D0();
        v5 = (*(*v10 + 2240))(v10, *(a1 + 40), v9, v9);
        goto LABEL_10;
      }
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 64);
  if (v3 == 2)
  {
    v8 = sub_10000C7D0();
    v5 = (*(*v8 + 2256))(v8, *(a1 + 40));
    goto LABEL_10;
  }

  if (v3 != 1)
  {
LABEL_7:
    v7 = 3;
    goto LABEL_11;
  }

  v4 = sub_10000C7D0();
  v5 = (*(*v4 + 2248))(v4, *(a1 + 40));
LABEL_10:
  v7 = v5;
LABEL_11:
  reply = xpc_dictionary_create_reply(*(a1 + 56));
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v7);
    xpc_connection_send_message(*(v2 + 16), v12);

    xpc_release(v12);
  }
}

uint64_t sub_10066ABFC(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_100859FB4();
  }

  v2 = off_100B508A8;
  sub_10004DFB4(v4, *(a1 + 32));
  return sub_100767160(v2, v4, *(a1 + 52), *(a1 + 54), *(a1 + 56), *(a1 + 58), *(a1 + 60), *(a1 + 40), *(a1 + 44), *(a1 + 48));
}

void sub_10066ACA8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v3 = sub_10000C7D0();
    v4 = (*(*v3 + 1896))(v3, *(a1 + 32), *(a1 + 56), *(a1 + 57), *(a1 + 58));
  }

  else
  {
    v4 = 8;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 48));
  if (reply)
  {
    v6 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v4);
    xpc_connection_send_message(*(v2 + 16), v6);

    xpc_release(v6);
  }
}

void sub_10066AD74(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  if (v3 == 3)
  {
    v5 = sub_10000C7D0();
    v4 = (*(*v5 + 4328))(v5);
  }

  else
  {
    if (v3 == 2)
    {
      if (*(a1 + 32))
      {
        if (qword_100B508B0 != -1)
        {
          sub_100859FB4();
        }

        sub_10076F2BC(off_100B508A8, *(a1 + 32));
        goto LABEL_12;
      }
    }

    else if (v3 == 1 && *(a1 + 32))
    {
      if (qword_100B508B0 != -1)
      {
        sub_100859FB4();
      }

      sub_10076F1DC(off_100B508A8, *(a1 + 32));
LABEL_12:
      v4 = 0;
      goto LABEL_15;
    }

    v4 = 3;
  }

LABEL_15:
  reply = xpc_dictionary_create_reply(*(a1 + 48));
  if (reply)
  {
    v7 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v4);
    xpc_connection_send_message(*(v2 + 16), v7);

    xpc_release(v7);
  }
}

void sub_10066AEB4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  if (v3 == 2)
  {
    if (*(a1 + 32))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10085AE24();
      }

      if (qword_100B508B0 != -1)
      {
        sub_10085681C();
      }

      sub_10076F478(off_100B508A8, *(a1 + 32));
      goto LABEL_15;
    }
  }

  else if (v3 == 1 && *(a1 + 32))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085AE94();
    }

    if (qword_100B508B0 != -1)
    {
      sub_10085681C();
    }

    sub_10076F398(off_100B508A8, *(a1 + 32));
LABEL_15:
    v4 = 0;
    goto LABEL_17;
  }

  v4 = 3;
LABEL_17:
  reply = xpc_dictionary_create_reply(*(a1 + 48));
  if (reply)
  {
    v6 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgResult", v4);
    xpc_connection_send_message(*(v2 + 16), v6);
    xpc_release(v6);
  }
}

void sub_10066AFF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = off_100B512F0;
  v4 = *(v2 + 128);
  v5 = *(a1 + 40);

  sub_1003AFB24(v3, v4, v5);
}