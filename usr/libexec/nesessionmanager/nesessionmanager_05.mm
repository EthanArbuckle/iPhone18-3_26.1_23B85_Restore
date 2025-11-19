void sub_100081AF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v8 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (reply)
  {
    v9 = xpc_get_type(reply) != &_xpc_type_dictionary || v8 == 0;
    if (!v9 && xpc_get_type(v8) == &_xpc_type_connection)
    {
      if (v5 && ([v5 _endpoint], (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (v12 = v11, type = xpc_get_type(v11), v12, type == &_xpc_type_endpoint))
      {
        v15 = [v5 _endpoint];
        xpc_dictionary_set_value(reply, "new-connection", v15);

        if (!v6)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v16) = 0;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to get a valid XPC endpoint from the filter plugin", &v16, 2u);
        }

        xpc_dictionary_set_int64(reply, "error", 3);
        if (!v6)
        {
          goto LABEL_18;
        }
      }

      xpc_dictionary_set_data(reply, "crypto-key", [v6 bytes], objc_msgSend(v6, "length"));
LABEL_18:
      xpc_connection_send_message(v8, reply);
      goto LABEL_10;
    }
  }

  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v16 = 134218240;
    v17 = reply;
    v18 = 2048;
    v19 = v8;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create a reply (%p) or a connection to send it over (%p) when sending the filter connection to the client", &v16, 0x16u);
  }

LABEL_10:
}

id sub_100082754(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: Handling installed apps change", &v6, 0xCu);
  }

  sub_10007F948(*(a1 + 32));
  v4 = *(a1 + 32);
  if (v4)
  {
    sub_1000806FC(v4, 0);
    v4 = *(a1 + 32);
  }

  return [v4 restartSession];
}

id sub_1000828B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1000806FC(v2, 0);
    v2 = *(a1 + 32);
  }

  return [v2 startWithCommand:0 isOnDemand:0];
}

void sub_100082A20(void *self, const char *a2)
{
  if (self)
  {
    if (a2)
    {
      self[54] = 500;
      self[55] = 0;
    }

    if (objc_getProperty(self, a2, 424, 1))
    {
      Property = objc_getProperty(self, v3, 424, 1);
      dispatch_source_cancel(Property);

      objc_setProperty_atomic(self, v5, 0, 424);
    }
  }
}

void sub_100082FD8(id *self, const char *a2)
{
  if (self && self[49] != a2)
  {
    if (!objc_getProperty(self, a2, 384, 1) || (v5 = objc_getProperty(self, v4, 384, 1), +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", a2), v6 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:v6], v7 = objc_claimAutoreleasedReturnValue(), v5, v6, !v7))
    {
      v8 = [NESMFilterSessionState stateWithType:a2];
      if (!v8)
      {
        __assert_rtn("[NESMFilterSession setState:]", "NESMFilterSession.m", 343, "0");
      }

      v7 = v8;
      if (!objc_getProperty(self, v9, 384, 1))
      {
        v11 = objc_alloc_init(NSMutableDictionary);
        objc_setProperty_atomic(self, v12, v11, 384);
      }

      v13 = objc_getProperty(self, v10, 384, 1);
      v14 = [NSNumber numberWithInteger:a2];
      [v13 setObject:v7 forKeyedSubscript:v14];
    }

    v15 = self[49];
    [self[47] leave];
    self[49] = a2;
    v16 = self[47];
    self[47] = v7;
    v17 = v7;

    [self[47] enterWithSession:self];
    if (v15)
    {
      v18 = self[49];
      v19 = 1;
      if (v18 > 3)
      {
        if (v18 == 4)
        {
          v19 = 5;
          goto LABEL_27;
        }

        if (v18 == 6 || v18 == 7)
        {
          goto LABEL_19;
        }
      }

      else
      {
        switch(v18)
        {
          case 1:
            if ((*(self + 355) & 1) != 0 || [self lastStopReason] == 6)
            {
              if ([self lastStopReason] == 6)
              {
                sub_1000806FC(self, 1);
                v21 = [self server];
                [v21 deregisterSession:self];
              }
            }

            else
            {
              sub_1000832A4(self, v20);
            }

            break;
          case 2:
            v19 = 2;
            break;
          case 3:
            sub_100082A20(self, 1);
LABEL_19:
            v19 = 3;
            break;
        }
      }

LABEL_27:

      [self setStatus:v19];
    }
  }
}

void sub_1000832A4(void *a1, const char *a2)
{
  if (objc_getProperty(a1, a2, 424, 1))
  {
    Property = objc_getProperty(a1, v3, 424, 1);
    dispatch_source_cancel(Property);
    objc_setProperty_atomic(a1, v5, 0, 424);
  }

  v6 = a1[54];
  if (v6 >> 5 <= 0x752)
  {
    v7 = a1[55];
    if (v7 < 3)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 0;
      a1[54] = 4 * v6;
    }

    a1[55] = v8;
  }

  v9 = [a1 queue];
  v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);

  v11 = dispatch_time(0, 1000000 * a1[54]);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x1388uLL);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100083434;
  v14[3] = &unk_1000EB198;
  v14[4] = a1;
  v15 = v10;
  v12 = v10;
  dispatch_source_set_event_handler(v12, v14);
  dispatch_resume(v12);
  objc_setProperty_atomic(a1, v13, v12, 424);
}

void sub_100083434(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && (v3[355] & 1) == 0 && objc_getProperty(v3, a2, 416, 1))
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Restarting", &v9, 0xCu);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      Property = objc_getProperty(*(a1 + 32), v6, 416, 1);
    }

    else
    {
      Property = 0;
    }

    [v7 handleStartMessage:Property];
  }

  dispatch_source_cancel(*(a1 + 40));
}

NEFilterPlugin *sub_100083758(void *a1, uint64_t a2)
{
  v4 = [a1 configuration];
  v5 = [v4 pluginType];

  v6 = objc_opt_class();
  if (a2 == 4)
  {
    v7 = [a1 configuration];
    v8 = [v7 contentFilter];
    v9 = [v8 provider];
    v10 = [v9 filterDataProviderBundleIdentifier];
  }

  else
  {
    if (a2 != 6)
    {
LABEL_9:
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v33 = a1;
        v34 = 2048;
        v35 = a2;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: Configuration does not have a provider bundle identifier for class %ld", buf, 0x16u);
      }

      v11 = 0;
      v18 = 0;
      goto LABEL_18;
    }

    v7 = [a1 configuration];
    v8 = [v7 contentFilter];
    v9 = [v8 provider];
    v10 = [v9 filterPacketProviderBundleIdentifier];
  }

  v11 = v10;

  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = sub_10000DA38();
  v13 = sub_10000F1CC(v12, v11, a2);

  if (v13)
  {
    v6 = objc_opt_class();
    v14 = [a1 configuration];
    v15 = [v14 contentFilter];
    v16 = [v15 provider];
    if (a2 == 4)
    {
      [v16 dataProviderDesignatedRequirement];
    }

    else
    {
      [v16 packetProviderDesignatedRequirement];
    }
    v20 = ;

    if (!v20)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v33 = a1;
        v34 = 2112;
        v35 = v5;
        v36 = 2048;
        v37 = a2;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@: Cannot create agent for plugin type %@ (class %ld), missing designated requirement", buf, 0x20u);
      }

      goto LABEL_24;
    }

    v30[0] = @"plugin-requirement";
    v30[1] = @"extension-identifier";
    v31[0] = v20;
    v31[1] = v11;
    v18 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
  }

  else
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = a1;
      v34 = 2112;
      v35 = v11;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@: System Extension %@ is not currently registered", buf, 0x16u);
    }

    v30[0] = @"extension-identifier";
    v31[0] = v11;
    v18 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:1];
  }

LABEL_18:
  v21 = [v6 alloc];
  v22 = [a1 uid];
  v23 = [v21 initWithPluginType:v5 pluginVersion:1 pluginClass:a2 pluginInfo:v18 userID:v22];

  if (v23)
  {
    goto LABEL_25;
  }

  v24 = ne_log_obj();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v33 = a1;
    v34 = 2112;
    v35 = v5;
    v36 = 2048;
    v37 = a2;
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@: Failed to create a neagent instance for plugin type %@, class %ld", buf, 0x20u);
  }

LABEL_24:
  v23 = 0;
LABEL_25:

  if (v23)
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = a1;
      v34 = 2048;
      v35 = a2;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@: Creating a filter plugin with class %ld", buf, 0x16u);
    }

    v26 = [NEFilterPlugin alloc];
    v27 = [a1 queue];
    v28 = [(NEPlugin *)v26 initWithAgent:v23 delegateQueue:v27 andDelegate:a1];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

BOOL sub_100083C64(void *a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = objc_getProperty(a1, a2, 400, 1);
  if (!v3)
  {
    v4 = [a1 configuration];
    v5 = [v4 contentFilter];
    v6 = [v5 provider];
    if ([v6 filterSockets])
    {
    }

    else
    {
      v7 = [a1 configuration];
      v8 = [v7 contentFilter];
      v9 = [v8 provider];
      v10 = [v9 filterBrowsers];

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v3 = sub_100083758(a1, 4);
    objc_setProperty_atomic(a1, v12, v3, 400);
  }

LABEL_8:
  v13 = objc_getProperty(a1, v11, 408, 1);
  if (!v13)
  {
    v14 = [a1 configuration];
    v15 = [v14 contentFilter];
    v16 = [v15 provider];
    v17 = [v16 filterPackets];

    if (!v17)
    {
      goto LABEL_12;
    }

    v13 = sub_100083758(a1, 6);
    objc_setProperty_atomic(a1, v19, v13, 408);
  }

LABEL_12:
  v20 = 1;
  if (!objc_getProperty(a1, v18, 400, 1))
  {
    return objc_getProperty(a1, v21, 408, 1) != 0;
  }

  return v20;
}

uint64_t sub_100084938(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = 1;
    if (([objc_getProperty(a1 v3] & 1) == 0)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = [objc_getProperty(a1 v6];
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            if (([v4 isEqual:v12] & 1) == 0)
            {
              v13 = [@"." stringByAppendingString:v12];
              v14 = [v4 hasSuffix:v13];

              if ((v14 & 1) == 0)
              {
                continue;
              }
            }

            v5 = 1;
            goto LABEL_15;
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          v5 = 0;
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v5 = 0;
      }

LABEL_15:
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100084AD8(void *a1, char a2)
{
  if (a1)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = sub_100084BF8;
    v8[4] = sub_100084C08;
    v9 = os_transaction_create();
    v4 = [a1 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100084C10;
    block[3] = &unk_1000EB090;
    v6 = a2;
    v7 = 1;
    block[4] = a1;
    block[5] = v8;
    dispatch_async(v4, block);

    _Block_object_dispose(v8, 8);
  }
}

void sub_100084BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100084BF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100084C10(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 48) == 1)
  {
    sub_10008FAD0(*(a1 + 32));
    sub_10008E79C(*(v1 + 32));
  }

  if (*(v1 + 49) != 1)
  {
    goto LABEL_70;
  }

  v2 = [*(v1 + 32) configuration];
  v3 = [v2 relay];
  v4 = [v3 isEnabled];

  v6 = *(v1 + 32);
  if (!v4)
  {
    v50 = [v6 policySession];
    sub_100030D44(v50);

LABEL_70:
    v88 = *(*(v1 + 40) + 8);
    v10 = *(v88 + 40);
    *(v88 + 40) = 0;
    goto LABEL_71;
  }

  if (!v6 || (v8 = objc_getProperty(v6, v5, 416, 1), v6 = *(v1 + 32), !v8))
  {
    v52 = [v6 policySession];
    v53 = [*(v1 + 32) networkAgent];
    v55 = [v53 agentUUID];
    Property = *(v1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v54, 392, 1);
    }

    v58 = [Property agentUUID];
    v59 = *(v1 + 32);
    if (v59)
    {
      v59 = objc_getProperty(v59, v57, 408, 1);
    }

    v61 = [v59 matchDomains];
    v62 = *(v1 + 32);
    if (v62)
    {
      v62 = objc_getProperty(v62, v60, 408, 1);
    }

    v64 = [v62 excludedDomains];
    v65 = *(v1 + 32);
    if (v65)
    {
      v65 = objc_getProperty(v65, v63, 440, 1);
    }

    v67 = v65;
    v68 = *(v1 + 32);
    if (v68)
    {
      v68 = objc_getProperty(v68, v66, 408, 1);
    }

    v70 = [v68 matchFQDNs];
    v71 = *(v1 + 32);
    v96 = v1;
    if (v71)
    {
      v71 = objc_getProperty(v71, v69, 408, 1);
    }

    v73 = [v71 excludedFQDNs];
    v74 = *(v96 + 32);
    v100 = v53;
    if (v74)
    {
      v74 = objc_getProperty(v74, v72, 408, 1);
    }

    v75 = [v74 perApp];
    v76 = [*(v96 + 32) server];
    obja = v76;
    if (v76)
    {
      v76 = objc_getProperty(v76, v77, 80, 1);
    }

    v78 = v76;
    v106 = v55;
    v103 = v58;
    v79 = v61;
    v80 = v64;
    v81 = v67;
    v82 = v70;
    v83 = v73;
    v84 = v75;
    v85 = v78;
    v86 = v52;
    if (v52 && *(v52 + 8) == 9)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10004E334;
      v113 = &unk_1000EA210;
      v114 = v52;
      v115 = v81;
      v116 = v85;
      v117 = v106;
      v118 = v103;
      v119 = v79;
      v120 = v82;
      v121 = v84;
      v122 = v80;
      v123 = v83;
      v86 = v52;
      sub_100031500(NESMPolicyMasterSession, buf);
    }

    goto LABEL_69;
  }

  if (v6)
  {
    v6 = objc_getProperty(v6, v7, 416, 1);
  }

  v9 = [v6 objectForKey:@"proxy-match"];
  v10 = v9;
  if (v9 && [v9 count])
  {
    v96 = v1;
    v104 = objc_alloc_init(NSMutableArray);
    v101 = objc_alloc_init(NSMutableArray);
    v99 = objc_alloc_init(NSMutableArray);
    v11 = objc_alloc_init(NSMutableArray);
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v107 objects:v111 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v108;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v108 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v107 + 1) + 8 * i);
          v17 = [v16 objectForKey:@"proxies"];
          v18 = v17;
          if (!v17 || (v19 = [v17 count], v20 = &__kCFBooleanTrue, !v19))
          {
            v20 = &__kCFBooleanFalse;
          }

          [v11 addObject:v20];
          v21 = [v16 objectForKey:@"domains"];
          v22 = objc_alloc_init(NSMutableArray);
          v23 = objc_alloc_init(NSMutableArray);
          if (v21)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v21 count])
              {
                separateDomainsFromFQDNs();
              }
            }
          }

          [v104 addObject:v22];
          [v101 addObject:v23];
          v24 = [v16 objectForKey:@"subnets"];
          if (!v24)
          {
            v24 = objc_alloc_init(NSArray);
          }

          [v99 addObject:v24];
        }

        v13 = [obj countByEnumeratingWithState:&v107 objects:v111 count:16];
      }

      while (v13);
    }

    v25 = [*(v96 + 32) policySession];
    v94 = [*(v96 + 32) networkAgent];
    v27 = [v94 agentUUID];
    v28 = *(v96 + 32);
    if (v28)
    {
      v28 = objc_getProperty(v28, v26, 392, 1);
    }

    v30 = [v28 agentUUID];
    v31 = *(v96 + 32);
    if (v31)
    {
      v31 = objc_getProperty(v31, v29, 440, 1);
    }

    v33 = v31;
    v34 = *(v96 + 32);
    if (v34)
    {
      v34 = objc_getProperty(v34, v32, 408, 1);
    }

    v35 = [v34 perApp];
    v36 = [*(v96 + 32) server];
    v93 = v36;
    if (v36)
    {
      v36 = objc_getProperty(v36, v37, 80, 1);
    }

    v38 = v36;
    v39 = v27;
    v95 = v30;
    v40 = v104;
    v41 = v101;
    v105 = v99;
    v42 = v11;
    v43 = v33;
    v44 = v35;
    v45 = v38;
    v46 = v25;
    if (v25 && *(v25 + 8) == 9)
    {
      v102 = v39;
      v47 = [v42 count];
      if (v47 == [v40 count] && (v48 = objc_msgSend(v42, "count"), v48 == objc_msgSend(v41, "count")) && (v49 = objc_msgSend(v42, "count"), v49 == objc_msgSend(v105, "count")))
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_10004ED18;
        v113 = &unk_1000EA210;
        v114 = v25;
        v115 = v43;
        v116 = v45;
        v117 = v40;
        v118 = v41;
        v119 = v105;
        v120 = v102;
        v121 = v95;
        v122 = v42;
        v123 = v44;
        v39 = v102;
        sub_100031500(NESMPolicyMasterSession, buf);
      }

      else
      {
        v87 = ne_log_obj();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          v90 = [v42 count];
          v91 = [v40 count];
          v92 = [v41 count];
          *buf = 134218496;
          *&buf[4] = v90;
          *&buf[12] = 2048;
          *&buf[14] = v91;
          v46 = v25;
          *&buf[22] = 2048;
          v113 = v92;
          _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "Unbalanced ordered relay rules: %lu / %lu / %lu", buf, 0x20u);
        }

        v39 = v102;
      }
    }

LABEL_69:
    v1 = v96;
    goto LABEL_70;
  }

  v51 = ne_log_obj();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    v89 = *(v1 + 32);
    *buf = 138412290;
    *&buf[4] = v89;
    _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%@ No match rules found in PvD configuration", buf, 0xCu);
  }

LABEL_71:
}

void sub_100085FD0(void *a1, const char *a2)
{
  if (a1)
  {
    if (objc_getProperty(a1, a2, 432, 1))
    {
      [objc_getProperty(a1 v3];
      objc_setProperty_atomic(a1, v4, 0, 432);
    }

    if (objc_getProperty(a1, v3, 424, 1))
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = a1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ End Relay On Demand monitor transaction", &v7, 0xCu);
      }

      objc_setProperty_atomic(a1, v6, 0, 424);
    }
  }
}

void sub_1000862AC(void *a1, const char *a2)
{
  if (a1 && objc_getProperty(a1, a2, 376, 1))
  {
    if ([objc_getProperty(a1 v3])
    {
      [objc_getProperty(a1 v4];
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412290;
        v8 = a1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Unregistered fallback relay network agent", &v7, 0xCu);
      }
    }

    objc_setProperty_atomic(a1, v4, 0, 384);
    sub_100086814(a1);
    objc_setProperty_atomic(a1, v6, 0, 376);
  }
}

void sub_1000863C8(void *a1, const char *a2)
{
  if (a1 && objc_getProperty(a1, a2, 392, 1))
  {
    if ([objc_getProperty(a1 v3])
    {
      [objc_getProperty(a1 v4];
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412290;
        v8 = a1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Unregistered relay DNS network agent", &v7, 0xCu);
      }
    }

    objc_setProperty_atomic(a1, v4, 0, 400);
    sub_1000864E4(a1);
    objc_setProperty_atomic(a1, v6, 0, 392);
  }
}

void sub_1000864E4(void *a1)
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100086780;
  v18[3] = &unk_1000EA8F0;
  v18[4] = a1;
  v2 = objc_retainBlock(v18);
  if ([objc_getProperty(a1 v3])
  {
    v4 = [NENetworkAgentRegistrationFileHandle alloc];
    v6 = objc_getProperty(a1, v5, 400, 1);
    v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a1 type]);
    v8 = [a1 configuration];
    v9 = [v8 identifier];
    v11 = [objc_getProperty(a1 v10];
    v12 = [v4 initWithNetworkAgentRegistration:v6 sessionType:v7 configurationIdentifier:v9 agentUUID:v11 name:@"dns-settings"];

    if (v12)
    {
      v13 = +[NEFileHandleMaintainer sharedMaintainer];
      [v13 setFileHandle:v12 matchingPredicate:v2];
    }

    else
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = [a1 configuration];
        v17 = [v16 name];
        *buf = 138412290;
        v20 = v17;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to create a file handle for relay DNS agent for configuration %@", buf, 0xCu);
      }

      v13 = +[NEFileHandleMaintainer sharedMaintainer];
      [v13 removeFileHandleMatchingPredicate:v2];
    }
  }

  else
  {
    v12 = +[NEFileHandleMaintainer sharedMaintainer];
    [v12 removeFileHandleMatchingPredicate:v2];
  }

  v15 = +[NEFileHandleMaintainer sharedMaintainer];
  [v15 commit];
}

uint64_t sub_100086780(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v3;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 392, 1);
  }

  v7 = [Property matchesFileHandle:v5];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  return v8;
}

void sub_100086814(void *a1)
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100086AB0;
  v18[3] = &unk_1000EA8F0;
  v18[4] = a1;
  v2 = objc_retainBlock(v18);
  if ([objc_getProperty(a1 v3])
  {
    v4 = [NENetworkAgentRegistrationFileHandle alloc];
    v6 = objc_getProperty(a1, v5, 384, 1);
    v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a1 type]);
    v8 = [a1 configuration];
    v9 = [v8 identifier];
    v11 = [objc_getProperty(a1 v10];
    v12 = [v4 initWithNetworkAgentRegistration:v6 sessionType:v7 configurationIdentifier:v9 agentUUID:v11 name:@"h2-fallback"];

    if (v12)
    {
      v13 = +[NEFileHandleMaintainer sharedMaintainer];
      [v13 setFileHandle:v12 matchingPredicate:v2];
    }

    else
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = [a1 configuration];
        v17 = [v16 name];
        *buf = 138412290;
        v20 = v17;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to create a file handle for fallback relay agent for configuration %@", buf, 0xCu);
      }

      v13 = +[NEFileHandleMaintainer sharedMaintainer];
      [v13 removeFileHandleMatchingPredicate:v2];
    }
  }

  else
  {
    v12 = +[NEFileHandleMaintainer sharedMaintainer];
    [v12 removeFileHandleMatchingPredicate:v2];
  }

  v15 = +[NEFileHandleMaintainer sharedMaintainer];
  [v15 commit];
}

uint64_t sub_100086AB0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v3;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 376, 1);
  }

  v7 = [Property matchesFileHandle:v5];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  return v8;
}

id sub_100087AC8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v30 = v3;
  url = nw_endpoint_create_url([v3 UTF8String]);
  masque = nw_proxy_hop_create_masque();
  nw_proxy_hop_set_masque_version();
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = [v4 additionalHTTPHeaderFields];
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v13 = [v4 additionalHTTPHeaderFields];
        v14 = [v13 objectForKeyedSubscript:v12];

        [v12 UTF8String];
        [v14 UTF8String];
        nw_proxy_hop_add_extra_header();
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v9);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = [v4 rawPublicKeys];
  v16 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v36;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v35 + 1) + 8 * j);
        [v20 bytes];
        [v20 length];
        nw_proxy_hop_add_server_raw_public_key();
      }

      v17 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v17);
  }

  v21 = [v4 identityReference];

  if (v21)
  {
    v22 = [v4 identityReference];
    nw_proxy_hop_set_client_identity_reference();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = [v4 certificateReferences];
  v24 = [v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      for (k = 0; k != v25; k = k + 1)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v31 + 1) + 8 * k);
        nw_proxy_hop_add_client_certificate_reference();
      }

      v25 = [v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v25);
  }

  nw_proxy_hop_set_allow_redirects();

  return masque;
}

BOOL sub_100087DF4(void *a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 1;
  v3 = [objc_getProperty(a1 a2];
  v4 = [v3 lastObject];

  v5 = [v4 syntheticDNSAnswerIPv4Prefix];
  if (!v5)
  {
    v6 = [v4 syntheticDNSAnswerIPv6Prefix];
    v2 = v6 != 0;
  }

  return v2;
}

void sub_100087E8C(unsigned __int16 *a1, const char *a2)
{
  v66 = a2;
  v3 = [objc_getProperty(a1 a2];
  v4 = [v3 lastObject];

  v6 = [v4 dnsOverHTTPSURL];
  if (v6)
  {
    v7 = [[NEDNSOverHTTPSSettings alloc] initWithServers:&__NSArray0__struct];
    [v7 setServerURL:v6];
    v9 = [objc_getProperty(a1 v8];
    [v7 setMatchDomains:v9];

    v10 = [a1 configuration];
    v11 = [v10 identifier];
    [v7 setProxyAgentUUID:v11];

    v12 = v7;
    [v12 setAllowFailover:{objc_msgSend(objc_getProperty(a1, v13, 408, 1), "isDNSFailoverAllowed")}];

    goto LABEL_3;
  }

  if (!sub_100087DF4(a1, v5))
  {
    goto LABEL_22;
  }

  if (a1[177])
  {
    v34 = [NSString stringWithFormat:@"127.0.0.1:%u", a1[177]];
    v35 = [NEDNSSettings alloc];
    v75 = v34;
    v36 = [NSArray arrayWithObjects:&v75 count:1];
    v12 = [v35 initWithServers:v36];

    v38 = [objc_getProperty(a1 v37];
    [v12 setMatchDomains:v38];

    [v12 setAllowFailover:{objc_msgSend(objc_getProperty(a1, v39, 408, 1), "isDNSFailoverAllowed")}];
LABEL_3:
    if (v12)
    {
      v14 = [NEDNSSettingsNetworkAgent alloc];
      v15 = [a1 configuration];
      v16 = [v15 identifier];
      v17 = [v14 initWithConfigUUID:v16 sessionType:objc_msgSend(a1 name:{"type"), @"dns-settings"}];
      objc_setProperty_atomic(a1, v18, v17, 392);

      [objc_getProperty(a1 v19];
      v20 = [a1 configuration];
      v21 = [v20 name];
      [objc_getProperty(a1 v22];

      v23 = [NWNetworkAgentRegistration alloc];
      objc_getProperty(a1, v24, 392, 1);
      v25 = [v23 initWithNetworkAgentClass:objc_opt_class()];
      objc_setProperty_atomic(a1, v26, v25, 400);

      [objc_getProperty(a1 v27];
      receive_handler = 0;
      p_receive_handler = &receive_handler;
      v71 = 0x3032000000;
      v72 = sub_100084BF8;
      v73 = sub_100084C08;
      v74 = 0;
      if (!v66)
      {
        goto LABEL_10;
      }

      v28 = +[NEFileHandleMaintainer sharedMaintainer];
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_100088698;
      v67[3] = &unk_1000EA8C8;
      v67[4] = a1;
      v67[5] = &receive_handler;
      [v28 iterateFileHandlesWithBlock:v67];

      v29 = *(p_receive_handler + 40);
      if (v29)
      {
        v30 = [v29 agentUUID];
        v32 = objc_getProperty(a1, v31, 392, 1);
        [v32 setAgentUUID:v30];
      }

      else
      {
LABEL_10:
        v30 = +[NSUUID UUID];
        v32 = objc_getProperty(a1, v40, 392, 1);
        [v32 setAgentUUID:v30];
      }

      v42 = *(p_receive_handler + 40);
      if (v42)
      {
        v43 = [v42 handle];
        v44 = dup([v43 fileDescriptor]);

        v46 = objc_getProperty(a1, v45, 400, 1);
        v48 = objc_getProperty(a1, v47, 392, 1);
        v49 = [v46 setRegisteredNetworkAgent:v48 fileDescriptor:v44];

        if ((v49 & 1) == 0)
        {
          close(v44);
        }
      }

      v50 = objc_getProperty(a1, v41, 400, 1);
      v51 = [v50 isRegistered];

      if (v51)
      {
        v53 = objc_getProperty(a1, v52, 400, 1);
        v55 = objc_getProperty(a1, v54, 392, 1);
        [v53 updateNetworkAgent:v55];
      }

      else
      {
        v56 = ne_log_obj();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = a1;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%@: Registered relay DNS network agent", &buf, 0xCu);
        }

        v53 = objc_getProperty(a1, v57, 400, 1);
        v55 = objc_getProperty(a1, v58, 392, 1);
        [v53 registerNetworkAgent:v55];
      }

      if (v66)
      {
        sub_1000864E4(a1);
      }

      _Block_object_dispose(&receive_handler, 8);
    }

    goto LABEL_22;
  }

  if (!objc_getProperty(a1, v33, 448, 1) && sub_100087DF4(a1, v59))
  {
    secure_udp = nw_parameters_create_secure_udp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
    v61 = nw_connection_group_create_with_parameters();
    nw_connection_group_set_connection_limit();
    receive_handler = _NSConcreteStackBlock;
    p_receive_handler = 3221225472;
    v71 = sub_10008873C;
    v72 = &unk_1000EA7C0;
    v73 = a1;
    v62 = v61;
    v74 = v62;
    nw_connection_group_set_receive_handler(v62, 0xFFFFFFFF, 1, &receive_handler);
    v63 = [a1 queue];
    nw_connection_group_set_queue(v62, v63);

    objc_initWeak(&location, a1);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v77 = sub_100088F48;
    v78 = &unk_1000EA7E8;
    objc_copyWeak(&v80, &location);
    v64 = v62;
    v79 = v64;
    nw_connection_group_set_state_changed_handler(v64, &buf);
    objc_setProperty_atomic(a1, v65, v64, 448);
    nw_connection_group_start(v64);

    objc_destroyWeak(&v80);
    objc_destroyWeak(&location);
  }

LABEL_22:
}

void sub_100088654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, char a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100088698(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 392, 1);
    }

    v7 = [Property matchesFileHandle:v5];
    if (v7)
    {
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v5;
      v5 = v9;
    }

    v10 = v7 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

void sub_10008873C(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (!v7 || !a4)
  {
    goto LABEL_79;
  }

  v69 = v8;
  v70 = v7;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v68 = [[NEDNSPacket alloc] initFromData:v7];
  obj = [v68 queries];
  v10 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
  if (!v10)
  {
    goto LABEL_76;
  }

  v12 = v10;
  v13 = *v91;
  *&v11 = 136315138;
  v67 = v11;
  v14 = &selRef_temporaryAllowMulticastNetworkName;
  v72 = a1;
  v78 = *v91;
  do
  {
    v15 = 0;
    v77 = v12;
    do
    {
      if (*v91 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v90 + 1) + 8 * v15);
      v17 = [v16 recordType];
      if (v17 != 1 && [v16 recordType] != 28)
      {
        goto LABEL_64;
      }

      v88 = v15;
      v18 = *(a1 + 32);
      v19 = [v16 name];
      v89 = v19;
      if (!v18)
      {
        v25 = 0;
        v15 = v88;
        goto LABEL_63;
      }

      if (!v19)
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          *buf = v67;
          v101 = "[NESMRelaySession getSyntheticAddressForHostname:ipv6:]";
          _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "%s called with null hostname", buf, 0xCu);
        }

        v25 = 0;
        goto LABEL_17;
      }

      v21 = &OBJC_IVAR___NESMRelaySession__synthesizedIPv6Addresses;
      if (v17 == 1)
      {
        v21 = &OBJC_IVAR___NESMRelaySession__synthesizedIPv4Addresses;
      }

      v85 = v21;
      v86 = v17;
      v22 = objc_getProperty(v18, v20, *v21, 1);
      v23 = v22;
      if (v22)
      {
        v24 = [v22 objectForKeyedSubscript:v89];
        if (v24)
        {
          v25 = v24;
          sub_100088FE0(v18, v89);
LABEL_17:
          v15 = v88;
          goto LABEL_62;
        }
      }

      if ([v23 count]>= 0x100)
      {
        v79 = v23;
        __nbytes = v16;
        v27 = [objc_getProperty(v18 v26];
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v28 = [v27 countByEnumeratingWithState:&v95 objects:buf count:16];
        if (v28)
        {
          v30 = v28;
          v31 = *v96;
          do
          {
            for (i = 0; i != v30; i = i + 1)
            {
              if (*v96 != v31)
              {
                objc_enumerationMutation(v27);
              }

              v33 = *(*(&v95 + 1) + 8 * i);
              v35 = [objc_getProperty(v18 v29];
              if (v35)
              {
                sub_1000890E4(NESMRelaySession, v35);
                [objc_getProperty(v18 v36];
              }

              v38 = [objc_getProperty(v18 v34];
              if (v38)
              {
                sub_1000890E4(NESMRelaySession, v38);
                [objc_getProperty(v18 v39];
              }

              [objc_getProperty(v18 v37];

              v14 = &selRef_temporaryAllowMulticastNetworkName;
            }

            v30 = [v27 countByEnumeratingWithState:&v95 objects:buf count:16];
          }

          while (v30);
        }

        a1 = v72;
        v12 = v77;
        v13 = v78;
        v16 = __nbytes;
        v23 = v79;
      }

      v40 = [objc_getProperty(v18 v26];
      v41 = [v40 lastObject];

      if (v86 == 1)
      {
        v42 = [v41 syntheticDNSAnswerIPv4Prefix];
        if (!v42)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v42 = [v41 syntheticDNSAnswerIPv6Prefix];
        if (!v42)
        {
LABEL_40:
          v25 = 0;
          v15 = v88;
          goto LABEL_61;
        }
      }

      v94 = 0;
      v82 = v42;
      [v42 UTF8String];
      address_from_string = nw_endpoint_create_address_from_string();
      v25 = 0;
      if (!address_from_string)
      {
        goto LABEL_42;
      }

      v44 = v94;
      if (v94 < 8u)
      {
        v13 = v78;
LABEL_42:
        v15 = v88;
        goto LABEL_60;
      }

      v73 = address_from_string;
      address = nw_endpoint_get_address(address_from_string);
      v25 = address;
      if (!address)
      {
        goto LABEL_56;
      }

      sa_family = address->sa_family;
      if (v86 == 1)
      {
        if (sa_family != 2)
        {
          goto LABEL_55;
        }

        v71 = 4;
        v47 = 4;
      }

      else
      {
        if (sa_family != 30)
        {
LABEL_55:
          v25 = 0;
LABEL_56:
          v13 = v78;
          goto LABEL_59;
        }

        v71 = 8;
        v47 = 16;
      }

      v48 = [v23 allValues];
      v75 = v47;
      v76 = v48;
      v87 = v44 >> 3;
      __nbytesa = v47 - (v44 >> 3);
      if (v47 <= v44 >> 3)
      {
        v25 = 0;
        v13 = v78;
        a1 = v72;
        goto LABEL_58;
      }

      v49 = v48;
      v80 = v23;
      v50 = 0;
      v51 = &v25[v71];
      v52 = v75;
      v74 = v41;
      while (1)
      {
        arc4random_buf(&v51[v87], __nbytesa);
        v53 = [NSData dataWithBytes:v51 length:v52];
        if (([v49 containsObject:v53] & 1) == 0)
        {
          break;
        }

LABEL_52:

        if (v50++ >= 0x1F)
        {
          v25 = 0;
          a1 = v72;
          v13 = v78;
          v23 = v80;
          goto LABEL_58;
        }
      }

      v25 = v53;
      objc_opt_self();
      if (!v25)
      {
        goto LABEL_51;
      }

      sub_100089164();
      os_unfair_lock_lock(&unk_1000FD588);
      if ([qword_1000FD578 containsObject:v25])
      {
        os_unfair_lock_unlock(&unk_1000FD588);
LABEL_51:
        v41 = v74;

        v52 = v75;
        v49 = v76;
        goto LABEL_52;
      }

      [qword_1000FD578 addObject:v25];
      os_unfair_lock_unlock(&unk_1000FD588);

      v23 = v80;
      v41 = v74;
      if (!v80)
      {
        v59 = objc_alloc_init(NSMutableDictionary);
        objc_setProperty_atomic(v18, v60, v59, *v85);

        v23 = objc_getProperty(v18, v61, *v85, 1);
      }

      [v23 setObject:v25 forKeyedSubscript:v89];
      sub_100088FE0(v18, v89);
      a1 = v72;
      v13 = v78;
LABEL_58:

      v12 = v77;
LABEL_59:
      v15 = v88;
      address_from_string = v73;
LABEL_60:

      v42 = v82;
LABEL_61:

      v14 = &selRef_temporaryAllowMulticastNetworkName;
LABEL_62:

LABEL_63:
      [v16 setAnswerData:v25];

      [v16 setAnswerTTL:15];
LABEL_64:
      v55 = v16;
      v56 = ne_log_obj();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        v57 = [v55 answerData];
        v58 = [v55 name];
        *buf = 138412546;
        v101 = v57;
        v102 = 2112;
        v103 = v58;
        _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "Generated synthetic DNS answer %@ for name %@", buf, 0x16u);

        v12 = v77;
      }

      v15 = v15 + 1;
    }

    while (v15 != v12);
    v62 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
    v12 = v62;
  }

  while (v62);
LABEL_76:

  v63 = [v68 createResponse];
  v64 = v63;
  v9 = v69;
  if (v63)
  {
    v65 = *(a1 + 40);
    v66 = [v63 _createDispatchData];
    nw_connection_group_reply(v65, v69, _nw_content_context_default_message, v66);
  }

  v7 = v70;
LABEL_79:
}

void sub_100088F48(uint64_t a1, int a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && a2 == 2 && !a3)
  {
    v8 = WeakRetained;
    v7 = *(a1 + 32);
    v8[177] = nw_connection_group_get_port();
    sub_100087E8C(v8, 0);
    sub_100084AD8(v8, 0);
    WeakRetained = v8;
  }
}

void sub_100088FE0(void *a1, void *a2)
{
  v11 = a2;
  if (!objc_getProperty(a1, v3, 472, 1))
  {
    v5 = objc_alloc_init(NSMutableArray);
    objc_setProperty_atomic(a1, v6, v5, 472);
  }

  v7 = [objc_getProperty(a1 v4];
  v8 = [v7 isEqualToString:v11];

  if ((v8 & 1) == 0)
  {
    if ([objc_getProperty(a1 v9])
    {
      [objc_getProperty(a1 v10];
    }

    [objc_getProperty(a1 v10];
  }
}

void sub_1000890E4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  sub_100089164();
  os_unfair_lock_lock(&unk_1000FD588);
  [qword_1000FD578 removeObject:v2];
  os_unfair_lock_unlock(&unk_1000FD588);
}

void sub_100089164()
{
  objc_opt_self();
  if (qword_1000FD580 != -1)
  {

    dispatch_once(&qword_1000FD580, &stru_1000EA798);
  }
}

void sub_1000891B4(id a1)
{
  v1 = objc_alloc_init(NSMutableSet);
  v2 = qword_1000FD578;
  qword_1000FD578 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_1000891F0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 376, 1);
    }

    v7 = [Property matchesFileHandle:v5];
    if (v7)
    {
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v5;
      v5 = v9;
    }

    v10 = v7 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

void sub_100089328(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 relay];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 startWithCommand:0 isOnDemand:0];
  }
}

void sub_100089454(void *a1, const char *a2)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  sub_100085FD0(a1, a2);
  v4 = [objc_getProperty(v2 v3];

  if (!v4)
  {
    v43 = [v2 server];
    [v43 requestInstallForSession:v2 withParentSession:0 exclusive:0];

    return;
  }

  v6 = [objc_getProperty(v2 v5];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_34;
  }

  v7 = v6;
  v8 = +[NSMutableArray array];
  if (![v7 count])
  {
    v27 = objc_alloc_init(NWNetworkDescription);
    [v8 addObject:v27];

    goto LABEL_23;
  }

  v42 = v2;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v44 objects:buf count:16];
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = v10;
  v12 = *v45;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v45 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = v8;
      v15 = *(*(&v44 + 1) + 8 * i);
      v16 = objc_alloc_init(NWNetworkDescription);
      v17 = [v15 interfaceTypeMatch];
      if (v17 == 3)
      {
        v18 = &off_1000EE390;
      }

      else
      {
        if (v17 != 2)
        {
          goto LABEL_15;
        }

        v18 = &off_1000EE3A8;
      }

      v19 = [NSSet setWithObject:v18];
      [v16 setInterfaceTypeOptions:v19];

LABEL_15:
      v20 = [v15 DNSSearchDomainMatch];
      v21 = [NSSet setWithArray:v20];
      [v16 setDnsSearchDomainOptions:v21];

      v22 = [v15 DNSServerAddressMatch];
      v23 = [NSSet setWithArray:v22];
      [v16 setDnsServerAddressOptions:v23];

      v24 = [v15 SSIDMatch];
      v25 = [NSSet setWithArray:v24];
      [v16 setSsidOptions:v25];

      v26 = [v15 probeURL];
      [v16 setProbeURL:v26];

      v8 = v14;
      [v14 addObject:v16];
    }

    v11 = [v9 countByEnumeratingWithState:&v44 objects:buf count:16];
  }

  while (v11);
LABEL_17:

  v2 = v42;
LABEL_23:

  if (v8)
  {
    v28 = objc_alloc_init(NWParameters);
    v29 = [NWMonitor monitorWithNetworkDescriptionArray:v8 endpoint:0 parameters:v28];
    objc_setProperty_atomic(v2, v30, v29, 432);

    if (objc_getProperty(v2, v31, 432, 1))
    {
      if (!objc_getProperty(v2, v32, 424, 1))
      {
        v34 = ne_log_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v49 = v2;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%@ Begin Relay On Demand monitor transaction", buf, 0xCu);
        }

        v35 = [NSString alloc];
        v36 = [v2 configuration];
        v37 = [v36 identifier];
        v38 = [v35 initWithFormat:@"com.apple.nesessionmanager.RelayOnDemandMonitor.%@", v37];

        [v38 UTF8String];
        v39 = os_transaction_create();
        objc_setProperty_atomic(v2, v40, v39, 424);
      }

      [objc_getProperty(v2 v33];
    }

    else
    {
      v41 = ne_log_obj();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v49 = v2;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%@ Relay On Demand monitor creation failed", buf, 0xCu);
      }
    }
  }

LABEL_34:
}

void sub_10008A440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008A458(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10008A470(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) onDemandMonitor];
  v4 = v3;
  if (v2 != v3)
  {

    goto LABEL_6;
  }

  v5 = [*(a1 + 48) isEqualToString:@"bestAvailableNetworkDescription"];

  if (v5)
  {
    if ([*(a1 + 40) type] == 2)
    {
      v6 = objc_alloc_init(NEOnDemandRuleConnect);
    }

    else
    {
      v6 = 0;
    }

    v25 = [*(a1 + 40) onDemandMonitor];
    v26 = [v25 bestAvailableNetworkDescription];

    if (!v26)
    {
      v34 = ne_log_obj();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(a1 + 40);
        *buf = 138412290;
        v60 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@: Matched no on demand rule", buf, 0xCu);
      }

      goto LABEL_38;
    }

    v27 = [*(a1 + 40) onDemandMonitor];
    v28 = [v27 networkDescriptionArray];
    v29 = [v28 indexOfObject:v26];

    v30 = [*(a1 + 40) type];
    v31 = *(a1 + 40);
    if (v30 == 1)
    {
      v32 = [v31 configuration];
      v33 = [v32 VPN];
    }

    else
    {
      if ([v31 type] != 2)
      {
        v34 = 0;
LABEL_30:
        if ((sub_10008AA94(*(a1 + 40)) & 1) == 0 && sub_10008AB9C(*(a1 + 40)))
        {
          v37 = sub_10008AC98(*(a1 + 40), v34);

          v34 = v37;
        }

        if ([v34 count]> v29)
        {
          v38 = [v34 objectAtIndex:v29];

          v6 = v38;
        }

        v39 = ne_log_obj();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(a1 + 40);
          *buf = 138412546;
          v60 = v40;
          v61 = 2112;
          v62 = v6;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%@: Matched on demand rule %@", buf, 0x16u);
        }

LABEL_38:
        v41 = [*(a1 + 40) matchedRule];
        if (v41 | v6)
        {
          v42 = v41;
          v43 = [*(a1 + 40) matchedRule];
          v44 = [v43 isEqual:v6];

          if ((v44 & 1) == 0)
          {
            [*(a1 + 40) setMatchedRule:v6];
            sub_10008AD10(*(a1 + 40));
            [*(a1 + 40) notifyChangedExtendedStatus];
          }
        }

        goto LABEL_52;
      }

      v32 = [*(a1 + 40) configuration];
      v33 = [v32 appVPN];
    }

    v36 = v33;
    v34 = [v33 onDemandRules];

    goto LABEL_30;
  }

LABEL_6:
  v7 = *(a1 + 32);
  v6 = [*(a1 + 40) dnsRedirectionDetector];
  if (v7 != v6)
  {
LABEL_53:

    goto LABEL_54;
  }

  v8 = [*(a1 + 48) isEqualToString:@"status"];

  if (v8)
  {
    v9 = [*(a1 + 40) dnsRedirectionDetector];
    v10 = [v9 status];

    if (v10 == 2)
    {
      v11 = [*(a1 + 40) dnsRedirectionDetector];
      v12 = [v11 resolvedEndpoints];
      v13 = [v12 count];

      if (v13)
      {
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v14 = [*(a1 + 40) dnsRedirectionDetector];
        v15 = [v14 resolvedEndpoints];

        v16 = [v15 countByEnumeratingWithState:&v54 objects:v58 count:16];
        if (v16)
        {
          v17 = v16;
          v6 = 0;
          v18 = *v55;
          do
          {
            v19 = 0;
            v20 = v6;
            do
            {
              if (*v55 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v21 = *(*(&v54 + 1) + 8 * v19);
              v22 = ne_log_obj();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = *(a1 + 40);
                *buf = 138412546;
                v60 = v23;
                v61 = 2112;
                v62 = v21;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@: Found redirected address %@", buf, 0x16u);
              }

              v24 = [*(a1 + 40) lastPrimaryInterface];
              [v24 UTF8String];
              [v21 address];
              NEHelperCacheAddRedirectedAddress();

              v6 = [v21 hostname];

              v19 = v19 + 1;
              v20 = v6;
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v54 objects:v58 count:16];
          }

          while (v17);
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      sub_10008C490(*(a1 + 40));
      [*(a1 + 40) setDnsRedirectionTransaction:0];
      Property = [*(a1 + 40) server];
      v47 = Property;
      if (Property)
      {
        Property = objc_getProperty(Property, v46, 64, 1);
      }

      v26 = Property;

      if (v6)
      {
        v48 = [[NSDictionary alloc] initWithObjectsAndKeys:{v6, @"redirectedAddress", 0}];
      }

      else
      {
        v48 = objc_alloc_init(NSDictionary);
      }

      v49 = v48;
      v50 = ne_log_obj();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v6;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Caching DNS redirector result: %@", buf, 0xCu);
      }

      v51 = +[NENetworkPropertiesCache sharedCache];
      [v51 setProperties:v49 forNetworkPath:v26];

LABEL_52:
      goto LABEL_53;
    }
  }

LABEL_54:
  v52 = *(*(a1 + 56) + 8);
  v53 = *(v52 + 40);
  *(v52 + 40) = 0;
}

id sub_10008AA94(void *a1)
{
  if (!a1 || ([a1 disableOnDemand] & 1) != 0)
  {
    return 0;
  }

  if ([a1 type] == 1)
  {
    v3 = [a1 configuration];
    v4 = [v3 VPN];
    if ([v4 isOnDemandEnabled])
    {
      v5 = [a1 configuration];
      v6 = [v5 VPN];
LABEL_10:
      v7 = v6;
      v2 = [v6 isEnabled];

LABEL_12:
      return v2;
    }

    goto LABEL_11;
  }

  if ([a1 type] == 2)
  {
    v3 = [a1 configuration];
    v4 = [v3 appVPN];
    if ([v4 isOnDemandEnabled])
    {
      v5 = [a1 configuration];
      v6 = [v5 appVPN];
      goto LABEL_10;
    }

LABEL_11:
    v2 = 0;
    goto LABEL_12;
  }

  return 0;
}

id sub_10008AB9C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if ([a1 type] != 1)
  {
    if ([a1 type] == 2)
    {
      v2 = [a1 configuration];
      v3 = [v2 appVPN];
      if ([v3 isDisconnectOnDemandEnabled])
      {
        v4 = [a1 configuration];
        v5 = [v4 appVPN];
        goto LABEL_8;
      }

LABEL_9:
      v7 = 0;
      goto LABEL_10;
    }

    return 0;
  }

  v2 = [a1 configuration];
  v3 = [v2 VPN];
  if (![v3 isDisconnectOnDemandEnabled])
  {
    goto LABEL_9;
  }

  v4 = [a1 configuration];
  v5 = [v4 VPN];
LABEL_8:
  v6 = v5;
  v7 = [v5 isEnabled];

LABEL_10:
  return v7;
}

uint64_t sub_10008AC98(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  v3 = [NSPredicate predicateWithBlock:&stru_1000EA9D0];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

id sub_10008AD10(id result)
{
  if (!result)
  {
    return result;
  }

  val = result;
  v1 = [result server];
  v2 = [v1 primaryPhysicalInterface];
  v3 = [v2 interfaceName];
  v4 = val;
  [val setLastPrimaryInterface:v3];

  [val setFailedConnectCountWithinInterval:0];
  sub_10008C510(val);
  if ([val type] == 1)
  {
    v5 = [val configuration];
    v6 = [v5 identifier];
    v7 = [v6 UUIDString];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [val tunnelKind] == 2)
    {
      v8 = @"%@-TMP-FB-[^/]+";
    }

    else
    {
      v8 = @"%@-TMP-[^/]+";
    }

    v9 = [NSString stringWithFormat:v8, v7];
    *out = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v9, kSCEntNetDNS);
    v10 = SCDynamicStoreCopyKeyList(0, *out);
    myCFRelease();
    v11 = [(__CFArray *)v10 mutableCopy];
    [val setStaleOnDemandDNSKeys:v11];

    v4 = val;
  }

  v12 = [v4 matchedRule];
  if ([v12 action] == 3)
  {
    v13 = val;
    v14 = [val type];

    if (v14 == 1)
    {
      v161 = [val matchedRule];
      v15 = [val server];
      v16 = [v15 primaryCellularInterface];
      if (v16)
      {
        v17 = [val lastPrimaryInterface];
        v18 = [val server];
        v19 = [v18 primaryCellularInterface];
        v20 = [v19 interfaceName];
        v21 = [v17 isEqualToString:v20];

        v22 = val;
        if (v21)
        {
          goto LABEL_49;
        }
      }

      else
      {

        v22 = val;
      }

      v28 = [v22 server];
      v30 = v28;
      if (v28)
      {
        Property = objc_getProperty(v28, v29, 64, 1);
      }

      else
      {
        Property = 0;
      }

      v32 = Property;

      v33 = +[NENetworkPropertiesCache sharedCache];
      v34 = [v33 copyPropertiesForNetworkPath:v32];

      if (v34)
      {
        v35 = [v34 objectForKeyedSubscript:@"redirectedAddress"];
        v36 = ne_log_obj();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *out = 138412290;
          *&out[4] = v35;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Using cached DNS redirector result: %@", out, 0xCu);
        }

        if (!isa_nsstring())
        {
          goto LABEL_48;
        }

        v37 = [NWAddressEndpoint endpointWithHostname:v35 port:@"0"];
        if (v37)
        {
          v38 = [val lastPrimaryInterface];
          v39 = v38;
          [v38 UTF8String];
          [v37 address];
          NEHelperCacheAddRedirectedAddress();
        }

        else
        {
          v38 = ne_log_obj();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *out = 138412290;
            *&out[4] = v35;
            _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to create an address endpoint from %@", out, 0xCu);
          }

          v37 = 0;
        }
      }

      else
      {
        v40 = ne_log_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *out = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Starting DNS redirection detection", out, 2u);
        }

        v41 = arc4random_uniform(0x15u);
        v42 = arc4random_uniform(0x15u);
        sub_10008C490(val);
        v43 = [val dnsRedirectionTransaction];
        v44 = v43 == 0;

        if (v44)
        {
          v45 = [NSString alloc];
          v46 = [val configuration];
          v47 = [v46 identifier];
          v48 = [v45 initWithFormat:@"com.apple.nesessionmanager.dnsRedirection.%@", v47];

          [v48 UTF8String];
          v49 = os_transaction_create();
          [val setDnsRedirectionTransaction:v49];
        }

        v50 = v41 + 8;
        if (v50 < 1)
        {
          v50 = 0;
        }

        else
        {
          v51 = out;
          v52 = v50;
          do
          {
            *v51++ = aAbcdefghijklmn[arc4random_uniform(0x1FF1u) % 0x25];
            --v52;
          }

          while (v52);
        }

        out[v50] = 46;
        if ((v42 + 8) < 1)
        {
          v53 = v50 + 1;
        }

        else
        {
          v53 = v42 + v50 + 9;
          do
          {
            out[++v50] = aAbcdefghijklmn[arc4random_uniform(0x1FF1u) % 0x25];
          }

          while (v53 - 1 != v50);
        }

        strncpy(&out[v53], ".com", 255 - v50);
        v54 = [NSString stringWithUTF8String:out];
        v35 = [NWHostEndpoint endpointWithHostname:v54 port:@"80"];

        v37 = objc_alloc_init(NWParameters);
        [v37 setRequiredAddressFamily:2];
        v55 = [val lastPrimaryInterface];
        LOBYTE(v54) = v55 == 0;

        if ((v54 & 1) == 0)
        {
          v56 = [NWInterface alloc];
          v57 = [val lastPrimaryInterface];
          v58 = [v56 initWithInterfaceName:v57];
          [v37 setRequiredInterface:v58];
        }

        v59 = [[NWResolver alloc] initWithEndpoint:v35 parameters:v37];
        [val setDnsRedirectionDetector:v59];

        v60 = [val dnsRedirectionDetector];

        if (!v60)
        {
          goto LABEL_47;
        }

        v38 = [val dnsRedirectionDetector];
        [v38 addObserver:val forKeyPath:@"status" options:5 context:0];
      }

LABEL_47:
LABEL_48:

      v22 = val;
LABEL_49:
      v165 = objc_alloc_init(NSMutableArray);
      [v22 setOnDemandDomainCache:?];
      v192 = 0u;
      v193 = 0u;
      v190 = 0u;
      v191 = 0u;
      obj = [v161 connectionRules];
      v174 = [obj countByEnumeratingWithState:&v190 objects:out count:16];
      if (v174)
      {
        v171 = *v191;
        v163 = kSCPropNetDNSServiceIdentifier;
        do
        {
          v61 = 0;
          do
          {
            if (*v191 != v171)
            {
              v62 = v61;
              objc_enumerationMutation(obj);
              v61 = v62;
            }

            v178 = v61;
            v63 = *(*(&v190 + 1) + 8 * v61);
            v64 = +[NSMutableArray array];
            v188 = 0u;
            v189 = 0u;
            v186 = 0u;
            v187 = 0u;
            v65 = [v63 matchDomains];
            v66 = [v65 countByEnumeratingWithState:&v186 objects:uu count:16];
            if (v66)
            {
              v67 = *v187;
              do
              {
                for (i = 0; i != v66; i = i + 1)
                {
                  if (*v187 != v67)
                  {
                    objc_enumerationMutation(v65);
                  }

                  v69 = *(*(&v186 + 1) + 8 * i);
                  v70 = [NSCharacterSet characterSetWithCharactersInString:@"*."];
                  v71 = [v69 stringByTrimmingCharactersInSet:v70];
                  if (v71)
                  {
                    [v64 addObject:v71];
                  }
                }

                v66 = [v65 countByEnumeratingWithState:&v186 objects:uu count:16];
              }

              while (v66);
            }

            if ([v63 action] == 1)
            {
              v72 = [v63 probeURL];
              v73 = isa_nsurl();

              if (v73)
              {
                v74 = [v63 probeURL];
                v75 = [NSMutableURLRequest requestWithURL:v74];

                if (v75)
                {
                  v76 = [val lastPrimaryInterface];
                  [v75 setBoundInterfaceIdentifier:v76];

                  v77 = +[NSURLSessionConfiguration defaultSessionConfiguration];
                  v78 = +[NSOperationQueue mainQueue];
                  v79 = [NSURLSession sessionWithConfiguration:v77 delegate:0 delegateQueue:v78];

                  v183[0] = _NSConcreteStackBlock;
                  v183[1] = 3221225472;
                  v183[2] = sub_10008D830;
                  v183[3] = &unk_1000EA968;
                  v183[4] = val;
                  v184 = v165;
                  v185 = v64;
                  v80 = [v79 dataTaskWithRequest:v75 completionHandler:v183];
                  [v80 resume];
                  [v79 finishTasksAndInvalidate];
                }
              }
            }

            if ([v63 action] == 1)
            {
              v81 = [v63 useDNSServers];
              v82 = isa_nsarray();

              if (v82)
              {
                v83 = [v63 useDNSServers];
                v84 = [val configuration];
                v85 = [v84 identifier];
                v86 = [v85 UUIDString];
                v87 = v83;
                v88 = v86;
                add_explicit = atomic_fetch_add_explicit(dword_1000FCF78, 1u, memory_order_relaxed);
                if (isa_nsstring() && isa_nsarray())
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || (v90 = @"%@-TMP-FB-%@", [val tunnelKind] != 2))
                  {
                    v90 = @"%@-TMP-%@";
                  }

                  v168 = (add_explicit + 1) % 1000 + 1000;
                  v91 = [NSNumber numberWithInt:?];
                  serviceID = [NSString stringWithFormat:v90, v88, v91];

                  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, serviceID, kSCEntNetDNS);
                  v194 = NetworkServiceEntity;
                  v206[0] = kSCPropNetDNSServerAddresses;
                  v206[1] = v163;
                  v207[0] = v87;
                  v93 = [NSNumber numberWithInt:v168];
                  v207[1] = v93;
                  v94 = [NSDictionary dictionaryWithObjects:v207 forKeys:v206 count:2];

                  if (NetworkServiceEntity && v94)
                  {
                    if (SCDynamicStoreSetValue(0, NetworkServiceEntity, v94))
                    {
                      v95 = [val staleOnDemandDNSKeys];
                      v162 = [v95 containsObject:NetworkServiceEntity];

                      if (v162)
                      {
                        v96 = [val staleOnDemandDNSKeys];
                        [v96 removeObject:NetworkServiceEntity];
                      }
                    }

                    else
                    {
                      v168 = 0;
                    }
                  }

                  myCFRelease();
                }

                else
                {
                  v168 = 0;
                }

                if (v168)
                {
                  v97 = +[NSMutableDictionary dictionary];
                  [v97 setObject:v64 forKeyedSubscript:@"service-domains"];
                  v98 = [NSNumber numberWithInt:v168];
                  [v97 setObject:v98 forKeyedSubscript:@"service-dns-service"];

                  [v165 addObject:v97];
                }
              }
            }

            v61 = v178 + 1;
          }

          while ((v178 + 1) != v174);
          v174 = [obj countByEnumeratingWithState:&v190 objects:out count:16];
        }

        while (v174);
      }

      sub_10008D95C(val);
      goto LABEL_88;
    }
  }

  else
  {

    v13 = val;
  }

  v23 = [v13 lastPrimaryInterface];

  if (v23)
  {
    *uu = 0;
    v196 = 0;
    v24 = [val configuration];
    v25 = [v24 identifier];
    [v25 getUUIDBytes:uu];

    memset(out, 0, 37);
    uuid_unparse(uu, out);
    v26 = [val lastPrimaryInterface];
    v27 = v26;
    [v26 UTF8String];
    NEHelperCacheSetDomainDictionaries();
  }

LABEL_88:
  v99 = [val matchedRule];

  if (v99)
  {
    v100 = [val uid];
    v101 = [v100 unsignedIntValue];

    if (!v101)
    {
      v102 = NEGetConsoleUserUID();
      if (v102)
      {
        v101 = v102;
      }

      else
      {
        v101 = 501;
      }
    }

    v179 = sub_10008D698(val);
    v103 = val;
    if ([val type] == 1)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [val tunnelKind] == 2)
      {
        v104 = [val policySession];
        v105 = [val matchedRule];
        v106 = [val networkAgent];
        v107 = [v106 agentUUID];
        v108 = [val onDemandPauseLevelInternal];
        v109 = [val lastPrimaryInterface];
        v110 = v105;
        v111 = v107;
        v112 = v109;
        v113 = v179;
        if (v104 && v111 && v104[2] == 1)
        {
          *out = _NSConcreteStackBlock;
          *&out[8] = 3221225472;
          *&out[16] = sub_100035BAC;
          *&out[24] = &unk_1000E9D70;
          *&out[32] = v104;
          v202 = v108;
          v198 = v110;
          LODWORD(v203) = v101;
          v199 = v112;
          v200 = v111;
          v201 = v113;
          sub_100031500(NESMPolicyMasterSession, out);
        }
      }

      else
      {
        v131 = [val configuration];
        v132 = [v131 VPN];
        v133 = [v132 protocol];
        v134 = [v133 DNSSettings];
        v135 = [v134 matchDomains];

        if (![v135 count])
        {
          *&out[8] = 0;
          *out = 0;
          v136 = [val configuration];
          v137 = [v136 identifier];
          [v137 getUUIDBytes:out];

          [val type];
          matched = ne_session_service_copy_cached_match_domains();
          if (matched)
          {
            v139 = _CFXPCCreateCFObjectFromXPCObject();

            v135 = v139;
          }
        }

        v176 = [val policySession];
        v140 = [val matchedRule];
        v173 = [val networkAgent];
        v141 = [v173 agentUUID];
        v142 = [val onDemandPauseLevelInternal];
        v143 = [val lastPrimaryInterface];
        v170 = [val configuration];
        v144 = [v170 VPN];
        v145 = [v144 protocol];
        obja = [v145 excludeLocalNetworks];
        v146 = v140;
        v147 = v141;
        v148 = v143;
        v149 = v179;
        v150 = v135;
        if (v176 && v147 && v176[2] == 1)
        {
          *out = _NSConcreteStackBlock;
          *&out[8] = 3221225472;
          *&out[16] = sub_100034690;
          *&out[24] = &unk_1000E9D48;
          v204 = v101;
          *&out[32] = v176;
          v203 = v142;
          v198 = v146;
          v199 = v150;
          v200 = v148;
          v201 = v147;
          v202 = v149;
          v205 = obja;
          sub_100031500(NESMPolicyMasterSession, out);
        }
      }
    }

    else
    {
      if ([val type] != 2)
      {
LABEL_120:
        v151 = [v103 matchedRule];
        v152 = [v151 action] == 2;

        if (v152)
        {
          v153 = ne_log_obj();
          if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
          {
            v154 = [val matchedRule];
            *out = 138412546;
            *&out[4] = val;
            *&out[12] = 2112;
            *&out[14] = v154;
            _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "%@: On Demand disconnect, current matched rule is %@", out, 0x16u);
          }

          v155 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_int64(v155, "SessionCommandType", 3);
          xpc_dictionary_set_int64(v155, "SessionStopReason", 39);
          objc_initWeak(out, val);
          v156 = [val messageQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10008D754;
          block[3] = &unk_1000EA918;
          objc_copyWeak(&v182, out);
          v181 = v155;
          v157 = v155;
          dispatch_async(v156, block);

          objc_destroyWeak(&v182);
          objc_destroyWeak(out);
        }

        goto LABEL_125;
      }

      v115 = [val policySession];
      v116 = [val configuration];
      v117 = [v116 appVPN];
      v118 = [v117 appRules];
      sub_100040988(v115, v118);

      v119 = [val policySession];
      v120 = [val matchedRule];
      v175 = [val configuration];
      v172 = [v175 appVPN];
      v121 = [v172 appRules];
      v169 = [val networkAgent];
      v122 = [v169 agentUUID];
      v123 = [val configuration];
      v124 = [v123 appVPN];
      v125 = [v124 excludedDomains];
      v126 = v120;
      v127 = v121;
      v128 = v122;
      v129 = v179;
      v130 = v125;
      if (v119 && ([v127 count] || objc_msgSend(v129, "count")) && v128 && v119[2] == 2)
      {
        *out = _NSConcreteStackBlock;
        *&out[8] = 3221225472;
        *&out[16] = sub_100036E40;
        *&out[24] = &unk_1000E9E50;
        *&out[32] = v119;
        v198 = v126;
        v199 = v127;
        v200 = v130;
        v201 = v128;
        v202 = v129;
        sub_100031500(NESMPolicyMasterSession, out);
      }
    }

    v103 = val;
    goto LABEL_120;
  }

  v114 = [val policySession];
  sub_100030E44(v114);

LABEL_125:
  v158 = [val type] == 1;
  result = val;
  if (v158)
  {
    v159 = [val staleOnDemandDNSKeys];

    if (v159)
    {
      v160 = [val staleOnDemandDNSKeys];
      SCDynamicStoreSetMultiple(0, 0, v160, 0);
    }

    return [val setStaleOnDemandDNSKeys:0];
  }

  return result;
}

void sub_10008C490(void *a1)
{
  if (a1)
  {
    v2 = [a1 dnsRedirectionDetector];

    if (v2)
    {
      v3 = [a1 dnsRedirectionDetector];
      [v3 removeObserver:a1 forKeyPath:@"status"];

      [a1 setDnsRedirectionDetector:0];
    }
  }
}

void sub_10008C510(void *a1)
{
  if (a1)
  {
    v2 = [a1 networkAgentRegistration];
    if (v2)
    {
      v3 = v2;
      v4 = [a1 networkAgent];

      if (v4)
      {
        if ([a1 type] == 1)
        {
          v5 = [a1 configuration];
          v6 = [v5 VPN];
        }

        else if ([a1 type] == 2)
        {
          v5 = [a1 configuration];
          v6 = [v5 appVPN];
        }

        else if ([a1 type] == 3)
        {
          v5 = [a1 configuration];
          v6 = [v5 alwaysOnVPN];
        }

        else if ([a1 type] == 4)
        {
          v5 = [a1 configuration];
          v6 = [v5 contentFilter];
        }

        else if ([a1 type] == 5)
        {
          v5 = [a1 configuration];
          v6 = [v5 pathController];
        }

        else if ([a1 type] == 7)
        {
          v5 = [a1 configuration];
          v6 = [v5 dnsSettings];
        }

        else
        {
          if ([a1 type] != 9)
          {
            if ([a1 type] == 10)
            {
              v131 = [a1 configuration];
              v132 = [v131 urlFilter];
              v133 = [v132 isEnabled];

              if (v133)
              {
LABEL_19:
                if ([a1 disableOnDemand])
                {
LABEL_20:
                  v9 = 0;
                  goto LABEL_24;
                }

                if ([a1 type] == 1)
                {
                  v10 = [a1 configuration];
                  v11 = [v10 VPN];
                }

                else
                {
                  if ([a1 type] != 2 || objc_msgSend(a1, "onDemandPauseLevelInternal") == 2 || objc_msgSend(a1, "onDemandPauseLevelInternal") == 3)
                  {
                    goto LABEL_20;
                  }

                  v10 = [a1 configuration];
                  v11 = [v10 appVPN];
                }

                v12 = v11;
                v9 = [v11 isOnDemandEnabled];

LABEL_24:
                v13 = [a1 status];
                if ([a1 type] == 5)
                {
                  v14 = 1;
                  if (!v9)
                  {
                    goto LABEL_39;
                  }
                }

                else if ((([a1 type] == 1) & v9) == 1)
                {
                  v15 = [a1 matchedRule];
                  v14 = [v15 action] == 3;

                  if (!v9)
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  v14 = 0;
                  if (!v9)
                  {
                    goto LABEL_39;
                  }
                }

                if ([a1 type] == 2)
                {
                  v16 = 1;
                  goto LABEL_40;
                }

                if ([a1 type] == 1)
                {
                  v17 = [a1 matchedRule];
                  v16 = [v17 action] == 1;

                  goto LABEL_40;
                }

LABEL_39:
                v16 = 0;
LABEL_40:
                v148 = v14;
                v146 = v16;
                if ([a1 type] != 5)
                {
                  if ([a1 type] == 7)
                  {
                    v18 = a1;
                    v25 = [v18 networkAgent];
                    v26 = [v25 settings];
                    v28 = objc_getProperty(v18, v27, 360, 1);
                    is_equal = [v26 isEqual:v28];

                    if ((is_equal & 1) == 0)
                    {
                      v31 = objc_getProperty(v18, v30, 360, 1);
                      [v25 setSettings:v31];
                    }
                  }

                  else
                  {
                    if ([a1 type] != 9)
                    {
                      v35 = 0;
                      goto LABEL_88;
                    }

                    v32 = a1;
                    v18 = objc_getProperty(v32, v33, 360, 1);
                    v25 = [v32 networkAgent];

                    v34 = [v25 proxyConfig];
                    is_equal = nw_proxy_config_is_equal();

                    if ((is_equal & 1) == 0)
                    {
                      [v25 setProxyConfig:v18];
                    }
                  }

                  v35 = is_equal ^ 1;
LABEL_87:

LABEL_88:
                  v56 = [a1 status];
                  v57 = [a1 networkAgent];
                  v58 = [v57 lastStatus];

                  if (v58 == v56)
                  {
                    if (v35)
                    {
                      goto LABEL_106;
                    }
                  }

                  else
                  {
                    v59 = [a1 networkAgent];
                    [v59 setLastStatus:v56];

                    if (v58 != 2 || v56 == 3)
                    {
                      v61 = v35;
                    }

                    else
                    {
                      v61 = 1;
                    }

                    if (v61)
                    {
                      goto LABEL_106;
                    }
                  }

                  v62 = [a1 networkAgentRegistration];
                  if (![v62 isRegistered])
                  {
LABEL_105:

                    goto LABEL_106;
                  }

                  v63 = [a1 networkAgent];
                  if (((v13 == 3) ^ [v63 isActive]))
                  {
LABEL_104:

                    goto LABEL_105;
                  }

                  v64 = v9;
                  v65 = [a1 networkAgent];
                  if (v148 != [v65 isVoluntary])
                  {
LABEL_103:

                    v9 = v64;
                    goto LABEL_104;
                  }

                  v66 = [a1 networkAgent];
                  if (v64 != [v66 isUserActivated])
                  {

                    goto LABEL_103;
                  }

                  v129 = [a1 networkAgent];
                  v130 = [v129 isKernelActivated];

                  v9 = v64;
                  if (v146 == v130)
                  {
                    goto LABEL_125;
                  }

LABEL_106:
                  v67 = [a1 networkAgent];
                  [v67 setActive:v13 == 3];

                  v68 = [a1 networkAgent];
                  [v68 setVoluntary:v148];

                  v69 = [a1 networkAgent];
                  [v69 setUserActivated:v9];

                  v70 = [a1 networkAgent];
                  [v70 setKernelActivated:v146];

                  v71 = [a1 networkAgentRegistration];
                  LODWORD(v67) = [v71 isRegistered];

                  if (v67)
                  {
                    v72 = ne_log_obj();
                    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                    {
                      v73 = "inactive";
                      if (v13 == 3)
                      {
                        v73 = "active";
                      }

                      v74 = "voluntary";
                      if (!v148)
                      {
                        v74 = "compulsory";
                      }

                      v75 = "not-user-activiated";
                      *buf = 138413314;
                      v164 = a1;
                      if (v9)
                      {
                        v75 = "user-activated";
                      }

                      v165 = 2080;
                      v166 = v73;
                      v76 = "kernel-activated";
                      v167 = 2080;
                      v168 = v74;
                      v169 = 2080;
                      v170 = v75;
                      if (!v146)
                      {
                        v76 = "not-kernel-activated";
                      }

                      v171 = 2080;
                      v172 = v76;
                      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%@: Updated network agent (%s, %s, %s, %s)", buf, 0x34u);
                    }

                    v77 = [a1 networkAgentRegistration];
                    v78 = [a1 networkAgent];
                    [v77 updateNetworkAgent:v78];
                  }

                  else
                  {
                    if ([a1 lastStopReason] == 32)
                    {
LABEL_125:
                      v81 = [a1 registeredNetworkAgentInterfaces];
                      v82 = [NSMutableArray arrayWithArray:v81];

                      v155 = 0u;
                      v156 = 0u;
                      v153 = 0u;
                      v154 = 0u;
                      v83 = [a1 networkAgentInterfaces];
                      v84 = [v83 countByEnumeratingWithState:&v153 objects:v162 count:16];
                      if (v84)
                      {
                        v85 = v84;
                        v86 = *v154;
                        do
                        {
                          for (i = 0; i != v85; i = i + 1)
                          {
                            if (*v154 != v86)
                            {
                              objc_enumerationMutation(v83);
                            }

                            v88 = *(*(&v153 + 1) + 8 * i);
                            v89 = [a1 registeredNetworkAgentInterfaces];
                            v90 = [v89 containsObject:v88];

                            if ((v90 & 1) == 0)
                            {
                              v91 = [a1 networkAgentRegistration];
                              v92 = [v91 addNetworkAgentToInterfaceNamed:v88];

                              v93 = ne_log_obj();
                              v94 = os_log_type_enabled(v93, OS_LOG_TYPE_INFO);
                              if (v92)
                              {
                                if (v94)
                                {
                                  *buf = 138412546;
                                  v164 = a1;
                                  v165 = 2112;
                                  v166 = v88;
                                  _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "%@: Added network agent to %@", buf, 0x16u);
                                }

                                [v82 addObject:v88];
                              }

                              else
                              {
                                if (v94)
                                {
                                  *buf = 138412546;
                                  v164 = a1;
                                  v165 = 2112;
                                  v166 = v88;
                                  _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "%@: Failed to add network agent to %@", buf, 0x16u);
                                }
                              }
                            }
                          }

                          v85 = [v83 countByEnumeratingWithState:&v153 objects:v162 count:16];
                        }

                        while (v85);
                      }

                      v151 = 0u;
                      v152 = 0u;
                      v149 = 0u;
                      v150 = 0u;
                      v95 = [a1 registeredNetworkAgentInterfaces];
                      v96 = [v95 countByEnumeratingWithState:&v149 objects:v161 count:16];
                      if (v96)
                      {
                        v97 = v96;
                        v98 = *v150;
                        do
                        {
                          for (j = 0; j != v97; j = j + 1)
                          {
                            if (*v150 != v98)
                            {
                              objc_enumerationMutation(v95);
                            }

                            v100 = *(*(&v149 + 1) + 8 * j);
                            v101 = [a1 networkAgentInterfaces];
                            v102 = [v101 containsObject:v100];

                            if ((v102 & 1) == 0)
                            {
                              v103 = [a1 networkAgentRegistration];
                              v104 = [v103 removeNetworkAgentFromInterfaceNamed:v100];

                              v105 = ne_log_obj();
                              v106 = os_log_type_enabled(v105, OS_LOG_TYPE_INFO);
                              if (v104)
                              {
                                if (v106)
                                {
                                  *buf = 138412546;
                                  v164 = a1;
                                  v165 = 2112;
                                  v166 = v100;
                                  v107 = v105;
                                  v108 = "%@: Removed network agent from %@";
                                  goto LABEL_151;
                                }
                              }

                              else if (v106)
                              {
                                *buf = 138412546;
                                v164 = a1;
                                v165 = 2112;
                                v166 = v100;
                                v107 = v105;
                                v108 = "%@: Failed to remove network agent from %@";
LABEL_151:
                                _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_INFO, v108, buf, 0x16u);
                              }

                              [v82 removeObject:v100];
                              continue;
                            }
                          }

                          v97 = [v95 countByEnumeratingWithState:&v149 objects:v161 count:16];
                        }

                        while (v97);
                      }

                      [a1 setRegisteredNetworkAgentInterfaces:v82];
                      goto LABEL_183;
                    }

                    v79 = ne_log_obj();
                    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                    {
                      v80 = "inactive";
                      if (v13 == 3)
                      {
                        v80 = "active";
                      }

                      *buf = 138412546;
                      v164 = a1;
                      v165 = 2080;
                      v166 = v80;
                      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%@: Registered network agent (%s)", buf, 0x16u);
                    }

                    v77 = [a1 networkAgentRegistration];
                    v78 = [a1 networkAgent];
                    [v77 registerNetworkAgent:v78];
                  }

                  goto LABEL_125;
                }

                v144 = v9;
                v18 = a1;
                v147 = [v18 networkAgent];
                v145 = v13;
                if (v18[355] == 1)
                {
                  v19 = objc_alloc_init(NSMutableArray);
                  v20 = v19;
                  if (*(v18 + 54))
                  {
                    v21 = [NSNumber alloc];
                    v23 = [v21 initWithUnsignedLong:{objc_msgSend(objc_getProperty(v18, v22, 432, 1), "interfaceIndex")}];
                    [v20 addObject:v23];
                  }

                  else
                  {
                    [v19 addObject:&off_1000EE498];
                  }

                  if (objc_getProperty(v18, v24, 448, 1))
                  {
                    v159 = 0u;
                    v160 = 0u;
                    v157 = 0u;
                    v158 = 0u;
                    v37 = objc_getProperty(v18, v36, 448, 1);
                    v38 = [v37 countByEnumeratingWithState:&v157 objects:buf count:16];
                    if (v38)
                    {
                      v40 = v38;
                      v41 = *v158;
                      do
                      {
                        for (k = 0; k != v40; k = k + 1)
                        {
                          if (*v158 != v41)
                          {
                            objc_enumerationMutation(v37);
                          }

                          v43 = [objc_getProperty(v18 v39];
                          if (!v43)
                          {
                            abort();
                          }

                          v44 = v43;
                          [v20 addObject:v43];
                        }

                        v40 = [v37 countByEnumeratingWithState:&v157 objects:buf count:16];
                      }

                      while (v40);
                    }
                  }
                }

                else
                {
                  v20 = 0;
                }

                v25 = v147;
                v45 = [v147 advisoryInterfaceArray];
                if (!v45 && v20)
                {
                  goto LABEL_66;
                }

                v47 = [v147 advisoryInterfaceArray];
                v48 = v47;
                if (!v47 || v20)
                {
                  v109 = [v147 advisoryInterfaceArray];
                  v110 = [v109 count];
                  v111 = [v20 count];

                  if (v110 == v111)
                  {
                    v25 = v147;
                    if (!v20 || (v112 = [v20 count]) == 0)
                    {
                      v35 = 0;
                      goto LABEL_72;
                    }

                    v113 = v112;
                    v114 = 0;
                    while (1)
                    {
                      v115 = [v25 advisoryInterfaceArray];
                      v116 = [v115 objectAtIndexedSubscript:v114];
                      v117 = [v116 unsignedIntegerValue];
                      v118 = [v20 objectAtIndexedSubscript:v114];
                      v119 = [v118 unsignedIntegerValue];

                      if (v117 != v119)
                      {
                        break;
                      }

                      v35 = 0;
                      ++v114;
                      v25 = v147;
                      if (v113 == v114)
                      {
                        goto LABEL_72;
                      }
                    }

                    v138 = [[NSMutableArray alloc] initWithArray:v20];
                    v25 = v147;
                    [v147 setAdvisoryInterfaceArray:v138];

LABEL_71:
                    v35 = 1;
LABEL_72:
                    v49 = sub_1000ADAC4(v18);
                    v50 = [v25 predictedInterfaceArray];
                    if (!v50 && v49)
                    {
LABEL_74:
                      v51 = [[NSMutableArray alloc] initWithArray:v49];
                      [v25 setPredictedInterfaceArray:v51];

LABEL_79:
                      v35 = 1;
                      v13 = v145;
                      goto LABEL_80;
                    }

                    v52 = [v25 predictedInterfaceArray];
                    v53 = v52;
                    if (!v52 || v49)
                    {
                      v120 = [v25 predictedInterfaceArray];
                      v121 = [v120 count];
                      v122 = [v49 count];

                      if (v121 == v122)
                      {
                        v13 = v145;
                        v25 = v147;
                        if (v49)
                        {
                          v142 = [v49 count];
                          if (v142)
                          {
                            v143 = v49;
                            v123 = 0;
                            while (1)
                            {
                              v124 = [v25 predictedInterfaceArray];
                              v125 = [v124 objectAtIndexedSubscript:v123];
                              v126 = [v125 unsignedIntegerValue];
                              v127 = [v143 objectAtIndexedSubscript:v123];
                              v128 = [v127 unsignedIntegerValue];

                              if (v126 != v128)
                              {
                                break;
                              }

                              ++v123;
                              v25 = v147;
                              if (v142 == v123)
                              {
                                goto LABEL_187;
                              }
                            }

                            v139 = [NSMutableArray alloc];
                            v140 = sub_1000ADAC4(v18);
                            v141 = [v139 initWithArray:v140];
                            v25 = v147;
                            [v147 setPredictedInterfaceArray:v141];

                            v35 = 1;
LABEL_187:
                            v13 = v145;
                            v49 = v143;
                          }
                        }

LABEL_80:
                        v54 = [v25 weakAdvisory];
                        if (v18[355])
                        {
                          if (v54 != v18[356])
                          {
                            v55 = v18[356];
LABEL_85:
                            [v25 setWeakAdvisory:v55 & 1];
                            v35 = 1;
                          }
                        }

                        else if (v54)
                        {
                          v55 = 0;
                          goto LABEL_85;
                        }

                        v9 = v144;
                        goto LABEL_87;
                      }

                      v25 = v147;
                      if (v49)
                      {
                        goto LABEL_74;
                      }
                    }

                    else
                    {
                    }

                    [v25 setPredictedInterfaceArray:0];
                    goto LABEL_79;
                  }

                  v25 = v147;
                  if (v20)
                  {
LABEL_66:
                    v46 = [[NSMutableArray alloc] initWithArray:v20];
                    [v25 setAdvisoryInterfaceArray:v46];

                    goto LABEL_71;
                  }
                }

                else
                {
                }

                [v25 setAdvisoryInterfaceArray:0];
                goto LABEL_71;
              }
            }

LABEL_179:
            v134 = [a1 networkAgentRegistration];
            v135 = [v134 isRegistered];

            if (v135)
            {
              v136 = ne_log_obj();
              if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v164 = a1;
                _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "%@: Unregistered network agent", buf, 0xCu);
              }

              v137 = [a1 networkAgentRegistration];
              [v137 unregisterNetworkAgent];

              [a1 setRegisteredNetworkAgentInterfaces:0];
            }

LABEL_183:
            sub_10008DDC0(a1);
            return;
          }

          v5 = [a1 configuration];
          v6 = [v5 relay];
        }

        v7 = v6;
        v8 = [v6 isEnabled];

        if (v8)
        {
          goto LABEL_19;
        }

        goto LABEL_179;
      }
    }
  }
}

id sub_10008D698(uint64_t a1)
{
  if (a1 && (v1 = SCPreferencesCreate(kCFAllocatorDefault, @"NEHelper control settings", @"/Library/Preferences/com.apple.networkextension.control.plist")) != 0)
  {
    v2 = v1;
    Value = SCPreferencesGetValue(v1, @"CriticalDomains");
    NEInitCFTypes();
    if (NEIsValidCFType() && CFArrayGetCount(Value) >= 1)
    {
      v4 = [Value copy];
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10008D754(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained queue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10008D820;
    v5[3] = &unk_1000EB198;
    v6 = v3;
    v7 = *(a1 + 32);
    dispatch_sync(v4, v5);
  }
}

void sub_10008D830(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] queue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008DAA4;
  v16[3] = &unk_1000EA940;
  v17 = v7;
  v18 = v9;
  v19 = v8;
  v11 = a1[5];
  v12 = a1[4];
  v20 = v11;
  v21 = v12;
  v22 = a1[6];
  v13 = v8;
  v14 = v9;
  v15 = v7;
  dispatch_async(v10, v16);
}

void sub_10008D95C(void *a1)
{
  if (a1)
  {
    v2 = [a1 onDemandDomainCache];

    if (v2)
    {
      v3 = [a1 lastPrimaryInterface];

      if (v3)
      {
        *uu = 0;
        v13 = 0;
        v4 = [a1 configuration];
        v5 = [v4 identifier];
        [v5 getUUIDBytes:uu];

        memset(v11, 0, sizeof(v11));
        uuid_unparse(uu, v11);
        v6 = [a1 onDemandDomainCache];
        v7 = [v6 count];

        if (v7)
        {
          v8 = [a1 onDemandDomainCache];
          v9 = _CFXPCCreateXPCObjectFromCFObject();
        }

        else
        {
          v9 = 0;
        }

        v10 = [a1 lastPrimaryInterface];
        [v10 UTF8String];
        NEHelperCacheSetDomainDictionaries();
      }
    }
  }
}

void sub_10008DAA4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = [v2 domain];
    if (([v4 isEqualToString:NSURLErrorDomain]& 1) == 0)
    {
LABEL_6:

      goto LABEL_7;
    }

    v5 = [*(a1 + 40) code];

    if (v5 == -1202)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "VPN On Demand required URL string probe failed due to untrusted server certificate", buf, 2u);
      }

      goto LABEL_6;
    }
  }

LABEL_7:
  if (v3)
  {
    v6 = *(a1 + 48);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [*(a1 + 48) statusCode] - 200 < 0x64)
    {
      return;
    }
  }

  v7 = *(a1 + 56);
  v8 = [*(a1 + 64) onDemandDomainCache];

  if (v7 != v8)
  {
    return;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [*(a1 + 64) onDemandDomainCache];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (!v10)
  {
LABEL_22:

    goto LABEL_25;
  }

  v11 = v10;
  v12 = *v24;
LABEL_13:
  v13 = 0;
  while (1)
  {
    if (*v24 != v12)
    {
      objc_enumerationMutation(v9);
    }

    v14 = *(*(&v23 + 1) + 8 * v13);
    v15 = [v14 objectForKeyedSubscript:@"service-domains"];
    if ((isa_nsarray() & 1) == 0)
    {

      goto LABEL_20;
    }

    v16 = [v14 objectForKeyedSubscript:@"service-domains"];
    v17 = [v16 isEqualToArray:*(a1 + 72)];

    if (v17)
    {
      break;
    }

LABEL_20:
    if (v11 == ++v13)
    {
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v11)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  v18 = v14;
  v19 = [*(a1 + 64) onDemandDomainCache];
  v20 = [v19 indexOfObject:v18];

  if (v18)
  {
    v21 = [NSMutableDictionary dictionaryWithDictionary:v18];
    [v21 setObject:&__kCFBooleanTrue forKeyedSubscript:@"service-probe-failed"];
    v22 = [*(a1 + 64) onDemandDomainCache];
    [v22 replaceObjectAtIndex:v20 withObject:v21];
    goto LABEL_26;
  }

LABEL_25:
  v21 = +[NSMutableDictionary dictionary];
  [v21 setObject:*(a1 + 72) forKeyedSubscript:@"service-domains"];
  [v21 setObject:&__kCFBooleanTrue forKeyedSubscript:@"service-probe-failed"];
  v22 = [*(a1 + 64) onDemandDomainCache];
  [v22 addObject:v21];
  v18 = 0;
LABEL_26:

  sub_10008D95C(*(a1 + 64));
}

void sub_10008DDC0(void *a1)
{
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10008E160;
  v30[3] = &unk_1000EA8F0;
  v30[4] = a1;
  v2 = objc_retainBlock(v30);
  v3 = [a1 networkAgentRegistration];
  v4 = [v3 isRegistered];

  if (v4)
  {
    if ([a1 type] == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(a1, "parentType") == 2)
    {
      if ([a1 tunnelKind] == 1)
      {
        v5 = @"Primary Tunnel";
      }

      else
      {
        v5 = @"Fallback Tunnel";
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = [NENetworkAgentRegistrationFileHandle alloc];
    v8 = [a1 networkAgentRegistration];
    v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a1 type]);
    v10 = [a1 configuration];
    v11 = [v10 identifier];
    v12 = [a1 networkAgent];
    v13 = [v12 agentUUID];
    v6 = [v7 initWithNetworkAgentRegistration:v8 sessionType:v9 configurationIdentifier:v11 agentUUID:v13 name:v5];

    if (v6)
    {
      v14 = [a1 networkAgent];
      v15 = [v14 isActive];

      v16 = v15;
      v17 = [a1 networkAgent];
      v18 = [v17 isVoluntary];

      if (v18)
      {
        v16 |= 2uLL;
      }

      v19 = [a1 networkAgent];
      v20 = [v19 isUserActivated];

      if (v20)
      {
        v21 = v16 | 4;
      }

      else
      {
        v21 = v16;
      }

      v22 = [a1 networkAgent];
      v23 = [v22 isKernelActivated];

      if (v23)
      {
        v24 = v21 | 8;
      }

      else
      {
        v24 = v21;
      }

      [v6 setAgentFlags:v24];
      v25 = +[NEFileHandleMaintainer sharedMaintainer];
      [v25 setFileHandle:v6 matchingPredicate:v2];
    }

    else
    {
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = [a1 configuration];
        v29 = [v28 name];
        *buf = 138412290;
        v32 = v29;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to create a file handle for on-demand agent for configuration %@", buf, 0xCu);
      }

      v25 = +[NEFileHandleMaintainer sharedMaintainer];
      [v25 removeFileHandleMatchingPredicate:v2];
    }
  }

  else
  {
    v6 = +[NEFileHandleMaintainer sharedMaintainer];
    [v6 removeFileHandleMatchingPredicate:v2];
  }

  v27 = +[NEFileHandleMaintainer sharedMaintainer];
  [v27 commit];
}

BOOL sub_10008E160(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v8 = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 networkAgent];
    v7 = [v6 matchesFileHandle:v5];

    if (v7)
    {
      v8 = 1;
    }
  }

  return v8;
}

void sub_10008E218(uint64_t a1, int a2, uint64_t a3, const char *a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "SessionPID", a2);
    v8 = xpc_dictionary_create(0, 0, 0);
    v9 = v8;
    if (v8)
    {
      xpc_dictionary_set_BOOL(v8, "is-on-demand", 1);
      if (a4)
      {
        xpc_dictionary_set_string(v9, "match-hostname", a4);
      }

      xpc_dictionary_set_value(v7, "SessionOptions", v9);
    }

    v10 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008E374;
    block[3] = &unk_1000EB360;
    v15 = a2;
    v13 = WeakRetained;
    v14 = v7;
    v11 = v7;
    dispatch_async(v10, block);
  }
}

id sub_10008E374(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v6 = 138412546;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: got On Demand start message from pid %d", &v6, 0x12u);
  }

  return [*(a1 + 32) startWithCommand:*(a1 + 40) isOnDemand:1];
}

void sub_10008E438(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008E6C4;
    block[3] = &unk_1000EABC8;
    v11 = v8;
    v12 = v5;
    v13 = v6;
    dispatch_async(v9, block);
  }
}

void sub_10008E52C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008E600;
    v7[3] = &unk_1000EB198;
    v8 = v5;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_10008E600(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v1)
  {
    if (objc_getProperty(v1, v2, 480, 1))
    {
      [objc_getProperty(v1 v4];
      sub_1000A958C(v1, v5);
    }

    else
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "fallbackAssertions dictionary is nil", v7, 2u);
      }
    }
  }
}

void sub_10008E6C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5 = v2;
  if (v1)
  {
    if (objc_getProperty(v1, v4, 480, 1))
    {
      [objc_getProperty(v1 v6];
      sub_1000A958C(v1, v7);
    }

    else
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "fallbackAssertions dictionary is nil", v9, 2u);
      }
    }
  }
}

void sub_10008E79C(void *a1)
{
  if (a1)
  {
    v2 = [a1 type];
    v3 = v2;
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = sub_10008A458;
    v50 = sub_10008A468;
    v51 = 0;
    if (v2 <= 3)
    {
      switch(v2)
      {
        case 1:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [a1 parentType] == 2)
          {
            if ([a1 tunnelKind] == 1)
            {
              v13 = @"Primary Tunnel";
            }

            else
            {
              v13 = @"Fallback Tunnel";
            }
          }

          else
          {
            v13 = 0;
          }

          v18 = [NEVPNNetworkAgent alloc];
          v8 = [a1 configuration];
          v10 = [v8 identifier];
          v11 = [v18 initWithConfigUUID:v10 sessionType:1 name:v13];
          [a1 setNetworkAgent:v11];
          break;
        case 2:
          v17 = [NEAppVPNNetworkAgent alloc];
          v8 = [a1 configuration];
          v10 = [v8 identifier];
          v11 = [v17 initWithConfigUUID:v10 sessionType:2 name:0];
          [a1 setNetworkAgent:v11];
          break;
        case 3:
          v9 = [NEAOVPNNetworkAgent alloc];
          v8 = [a1 configuration];
          v10 = [v8 identifier];
          v11 = [v9 initWithConfigUUID:v10 sessionType:3 name:0];
          [a1 setNetworkAgent:v11];
          break;
        default:
          goto LABEL_19;
      }
    }

    else if (v2 > 6)
    {
      if (v2 == 7)
      {
        v16 = [NEDNSSettingsNetworkAgent alloc];
        v8 = [a1 configuration];
        v10 = [v8 identifier];
        v11 = [v16 initWithConfigUUID:v10 sessionType:7 name:0];
        [a1 setNetworkAgent:v11];
      }

      else
      {
        if (v2 != 9)
        {
          goto LABEL_19;
        }

        v12 = [NERelayNetworkAgent alloc];
        v8 = [a1 configuration];
        v10 = [v8 identifier];
        v11 = [v12 initWithDelegate:a1 configUUID:v10 sessionType:9 name:0];
        [a1 setNetworkAgent:v11];
      }
    }

    else
    {
      if (v2 != 4)
      {
        if (v2 == 5)
        {
          v4 = [NEPathControllerNetworkAgent alloc];
          v5 = [a1 configuration];
          v6 = [v5 identifier];
          v7 = [v4 initWithConfigUUID:v6 sessionType:5 name:0];
          [a1 setNetworkAgent:v7];

          v8 = [a1 networkAgent];
          objc_initWeak(&location, a1);
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v56 = sub_10008E438;
          v57 = &unk_1000EA878;
          objc_copyWeak(&v58, &location);
          [v8 setAssertHandler:&buf];
          from[0] = _NSConcreteStackBlock;
          from[1] = 3221225472;
          from[2] = sub_10008E52C;
          from[3] = &unk_1000EA8A0;
          objc_copyWeak(&v53, &location);
          [v8 setUnassertHandler:from];
          objc_destroyWeak(&v53);
          objc_destroyWeak(&v58);
          objc_destroyWeak(&location);

LABEL_28:
          v19 = [NWNetworkAgentRegistration alloc];
          v20 = [a1 networkAgent];
          v21 = [v19 initWithNetworkAgentClass:objc_opt_class()];
          [a1 setNetworkAgentRegistration:v21];

          v22 = +[NEFileHandleMaintainer sharedMaintainer];
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_10008F0B0;
          v45[3] = &unk_1000EA8C8;
          v45[4] = a1;
          v45[5] = &v46;
          [v22 iterateFileHandlesWithBlock:v45];

          v23 = v47[5];
          if (v23)
          {
            v24 = [v23 agentFlags];
            v25 = [v47[5] agentUUID];
            v26 = [a1 networkAgent];
            [v26 setAgentUUID:v25];

            v27 = [a1 networkAgent];
            [v27 setActive:v24 & 1];

            v28 = [a1 networkAgent];
            [v28 setVoluntary:(v24 >> 1) & 1];

            v29 = [a1 networkAgent];
            [v29 setUserActivated:(v24 >> 2) & 1];

            v30 = [a1 networkAgent];
            [v30 setKernelActivated:(v24 >> 3) & 1];
          }

          else
          {
            if (v3 == 9)
            {
              v30 = [a1 configuration];
              v31 = [v30 identifier];
              v32 = [a1 networkAgent];
              [v32 setAgentUUID:v31];
            }

            else
            {
              v30 = +[NSUUID UUID];
              v31 = [a1 networkAgent];
              [v31 setAgentUUID:v30];
            }
          }

          v33 = [a1 configuration];
          v34 = [v33 name];
          v35 = [a1 networkAgent];
          [v35 setConfigurationName:v34];

          v36 = [a1 networkAgent];
          objc_initWeak(from, a1);
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v56 = sub_10008E218;
          v57 = &unk_1000EA850;
          objc_copyWeak(&v58, from);
          [v36 setStartHandler:&buf];
          objc_destroyWeak(&v58);
          objc_destroyWeak(from);

          v37 = v47[5];
          if (v37)
          {
            v38 = [v37 handle];
            v39 = dup([v38 fileDescriptor]);

            v40 = [a1 networkAgentRegistration];
            v41 = [a1 networkAgent];
            v42 = [v40 setRegisteredNetworkAgent:v41 fileDescriptor:v39];

            if ((v42 & 1) == 0)
            {
              close(v39);
              sub_10008C510(a1);
            }
          }

          else
          {
            sub_10008C510(a1);
          }

          v43 = [a1 queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10008F15C;
          block[3] = &unk_1000EB1C0;
          block[4] = a1;
          dispatch_async(v43, block);

LABEL_39:
          _Block_object_dispose(&v46, 8);

          return;
        }

LABEL_19:
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = a1;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@: session type does not support NWNetworkAgent", &buf, 0xCu);
        }

        goto LABEL_39;
      }

      v15 = [NEContentFilterNetworkAgent alloc];
      v8 = [a1 configuration];
      v10 = [v8 identifier];
      v11 = [v15 initWithConfigUUID:v10 sessionType:4 name:0];
      [a1 setNetworkAgent:v11];
    }

    goto LABEL_28;
  }
}

void sub_10008F040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v29 - 136));
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008F0B0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [*(a1 + 32) networkAgent];
    v6 = [v5 matchesFileHandle:v4];

    if (v6)
    {
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v4;
      v4 = v8;
    }

    v9 = v6 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t sub_10008F168(uint64_t result, char a2)
{
  if (result)
  {
    v3 = result;
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if ((result & 1) == 0)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v8 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Resetting VPN On Demand", buf, 0xCu);
      }

      if ([v3 type] == 1 || (result = objc_msgSend(v3, "type"), result == 2))
      {
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 3221225472;
        v5[2] = sub_10008F2B0;
        v5[3] = &unk_1000EA9F8;
        v5[4] = v3;
        v6 = a2;
        return [v3 checkPluginInstalledWithCompletionHandler:v5];
      }
    }
  }

  return result;
}

void sub_10008F2B0(uint64_t a1, int a2)
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"is not";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"is";
    }

    *buf = 138412546;
    v62 = v6;
    v63 = 2112;
    v64 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Plugin %@ installed", buf, 0x16u);
  }

  [*(a1 + 32) setDisableOnDemand:a2 ^ 1u];
  if (sub_10008AA94(*(a1 + 32)))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10008AB9C(*(a1 + 32));
  }

  v8 = *(a1 + 40);
  v9 = ([*(a1 + 32) type] == 2) | v8;
  if ((v9 & 1) != 0 || !v7)
  {
    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = [*(a1 + 32) onDemandMonitor];

    if (!v10)
    {
      v11 = [*(a1 + 32) onDemandMonitor];

      if (!v11)
      {
        goto LABEL_28;
      }

LABEL_14:
      sub_10008F9DC(*(a1 + 32));
      if ([*(a1 + 32) type] == 2)
      {
        v12 = objc_alloc_init(NEOnDemandRuleConnect);
        if (v9)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v12 = 0;
        if (v9)
        {
          goto LABEL_26;
        }
      }

      v17 = [*(a1 + 32) matchedRule];
      if (!(v17 | v12) || (v18 = v17, [*(a1 + 32) matchedRule], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqual:", v12), v19, v18, (v20 & 1) != 0))
      {
LABEL_27:

        if (!v7)
        {
          return;
        }

LABEL_28:
        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 32);
          *buf = 138412290;
          v62 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: Enabling VPN On Demand", buf, 0xCu);
        }

        v23 = *(a1 + 32);
        if (v23)
        {
          if ([*(a1 + 32) type] == 1)
          {
            v24 = [v23 configuration];
            v25 = [v24 VPN];
          }

          else
          {
            if ([v23 type] != 2)
            {
              v27 = 0;
LABEL_42:
              if ((sub_10008AA94(v23) & 1) == 0 && sub_10008AB9C(v23))
              {
                v32 = sub_10008AC98(v23, v27);

                v27 = v32;
              }

              v16 = +[NSMutableArray array];
              if (![v27 count])
              {
                v33 = objc_alloc_init(NWNetworkDescription);
                [v16 addObject:v33];
                goto LABEL_60;
              }

              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v33 = v27;
              v34 = [v33 countByEnumeratingWithState:&v57 objects:buf count:16];
              if (v34)
              {
                v35 = v34;
                v55 = v27;
                v56 = a1;
                v36 = *v58;
                while (1)
                {
                  for (i = 0; i != v35; i = i + 1)
                  {
                    if (*v58 != v36)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v38 = v16;
                    v39 = *(*(&v57 + 1) + 8 * i);
                    v40 = objc_alloc_init(NWNetworkDescription);
                    v41 = [v39 interfaceTypeMatch];
                    if (v41 == 3)
                    {
                      v42 = &off_1000EE3C0;
                    }

                    else
                    {
                      if (v41 != 2)
                      {
                        goto LABEL_56;
                      }

                      v42 = &off_1000EE3D8;
                    }

                    v43 = [NSSet setWithObject:v42, v55, v56, v57];
                    [v40 setInterfaceTypeOptions:v43];

LABEL_56:
                    v44 = [v39 DNSSearchDomainMatch];
                    v45 = [NSSet setWithArray:v44];
                    [v40 setDnsSearchDomainOptions:v45];

                    v46 = [v39 DNSServerAddressMatch];
                    v47 = [NSSet setWithArray:v46];
                    [v40 setDnsServerAddressOptions:v47];

                    v48 = [v39 SSIDMatch];
                    v49 = [NSSet setWithArray:v48];
                    [v40 setSsidOptions:v49];

                    v50 = [v39 probeURL];
                    [v40 setProbeURL:v50];

                    v16 = v38;
                    [v38 addObject:v40];
                  }

                  v35 = [v33 countByEnumeratingWithState:&v57 objects:buf count:16];
                  if (!v35)
                  {
                    v27 = v55;
                    a1 = v56;
                    break;
                  }
                }
              }

LABEL_60:

              if (v16)
              {
                v51 = objc_alloc_init(NWParameters);
                [v51 prohibitNetworkAgentsWithDomain:@"NetworkExtension" type:@"VPN"];
                [v51 prohibitNetworkAgentsWithDomain:@"NetworkExtension" type:@"AppVPN"];
                [v51 prohibitNetworkAgentsWithDomain:@"NetworkExtension" type:@"AOVPN"];
                v52 = *(a1 + 32);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 32) tunnelKind] == 2)
                {
                  [v51 setRequiredInterfaceType:2];
                }

                v53 = [NWMonitor monitorWithNetworkDescriptionArray:v16 endpoint:0 parameters:v51];
                [*(a1 + 32) setOnDemandMonitor:v53];

                v54 = [*(a1 + 32) onDemandMonitor];
                [v54 addObserver:*(a1 + 32) forKeyPath:@"bestAvailableNetworkDescription" options:5 context:0];
              }

              goto LABEL_65;
            }

            v24 = [v23 configuration];
            v25 = [v24 appVPN];
          }

          v26 = v25;
          v27 = [v25 onDemandRules];

          goto LABEL_42;
        }

        goto LABEL_40;
      }

LABEL_26:
      [*(a1 + 32) setMatchedRule:v12];
      sub_10008AD10(*(a1 + 32));
      [*(a1 + 32) notifyChangedExtendedStatus];
      goto LABEL_27;
    }
  }

  if ((v7 & 1) == 0)
  {
    v13 = [*(a1 + 32) onDemandMonitor];

    if (v13)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        *buf = 138412290;
        v62 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: Disabling VPN On Demand", buf, 0xCu);
      }

      sub_10008F9DC(*(a1 + 32));
      if ([*(a1 + 32) type] == 2)
      {
        v16 = objc_alloc_init(NEOnDemandRuleConnect);
      }

      else
      {
        v16 = 0;
      }

      v28 = [*(a1 + 32) matchedRule];
      if (v28 | v16)
      {
        v29 = v28;
        v30 = [*(a1 + 32) matchedRule];
        v31 = [v30 isEqual:v16];

        if ((v31 & 1) == 0)
        {
          [*(a1 + 32) setMatchedRule:v16];
          sub_10008AD10(*(a1 + 32));
          [*(a1 + 32) notifyChangedExtendedStatus];
        }

        goto LABEL_65;
      }

LABEL_40:
      v16 = 0;
LABEL_65:
    }
  }
}

void sub_10008F9DC(void *a1)
{
  if (a1)
  {
    v2 = [a1 onDemandMonitor];

    if (v2)
    {
      v3 = [a1 onDemandMonitor];
      [v3 removeObserver:a1 forKeyPath:@"bestAvailableNetworkDescription"];

      [a1 setOnDemandMonitor:0];
    }
  }
}

void sub_10008FA5C(void *a1)
{
  if (a1)
  {
    v2 = [a1 onDemandPauseTimerSource];

    if (v2)
    {
      v3 = [a1 onDemandPauseTimerSource];
      dispatch_source_cancel(v3);

      [a1 setOnDemandPauseTimerSource:0];
    }
  }
}

void sub_10008FAD0(void *a1)
{
  if (a1)
  {
    v2 = [a1 networkAgentRegistration];
    v3 = [v2 isRegistered];

    if (v3)
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        v7 = a1;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Unregistered network agent", &v6, 0xCu);
      }

      v5 = [a1 networkAgentRegistration];
      [v5 unregisterNetworkAgent];

      [a1 setRegisteredNetworkAgentInterfaces:0];
      [a1 setNetworkAgentRegistration:0];
    }

    sub_10008DDC0(a1);
  }
}

void sub_10008FBD4(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"[nil]";
      if (v3)
      {
        v5 = v3;
      }

      v12 = 138412546;
      v13 = a1;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@: Request to add network agent to %@", &v12, 0x16u);
    }

    if (isa_nsstring())
    {
      if ([(__CFString *)v3 length])
      {
        v6 = [a1 networkAgentInterfaces];
        v7 = [v6 containsObject:v3];

        if ((v7 & 1) == 0)
        {
          v8 = [a1 networkAgentInterfaces];
          v9 = isa_nsarray();

          if ((v9 & 1) == 0)
          {
            v10 = +[NSMutableArray array];
            [a1 setNetworkAgentInterfaces:v10];
          }

          v11 = [a1 networkAgentInterfaces];
          [v11 addObject:v3];

          sub_10008C510(a1);
        }
      }
    }
  }
}

void sub_10008FD50(void *a1)
{
  if (a1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%@: Request to clear network agent from all interfaces", &v6, 0xCu);
    }

    v3 = [a1 networkAgentInterfaces];
    v4 = isa_nsarray();

    if (v4)
    {
      v5 = [a1 networkAgentInterfaces];
      [v5 removeAllObjects];

      sub_10008C510(a1);
    }
  }
}

id sub_10008FE40(id result, id a2)
{
  if (result)
  {
    v3 = result;
    v4 = [result failedConnectCountWithinInterval];
    v5 = [v3 onDemandPauseTimerSource];

    if (v5)
    {
      v6 = [v3 onDemandPauseTimerSource];
      dispatch_source_cancel(v6);

      [v3 setOnDemandPauseTimerSource:0];
    }

    if (a2 == 2)
    {
      v7 = [v3 queue];
      v10 = v4;
      v8 = NECreateTimerSource();
      [v3 setOnDemandPauseTimerSource:{v8, _NSConcreteStackBlock, 3221225472, sub_100090000, &unk_1000EB0D8, v3, v10}];
    }

    if ([v3 onDemandPauseLevelInternal] != a2)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v12 = v3;
        v13 = 2048;
        v14 = [v3 onDemandPauseLevelInternal];
        v15 = 2048;
        v16 = a2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Changing pause level %ld -> %ld", buf, 0x20u);
      }

      [v3 setOnDemandPauseLevelInternal:a2];
    }

    return sub_10008AD10(v3);
  }

  return result;
}

void sub_100090000(uint64_t a1)
{
  if ([*(a1 + 32) onDemandPauseLevelInternal])
  {
    if (*(a1 + 40) > 3)
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(a1 + 32);
        v6 = 138412290;
        v7 = v3;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: Clearing damping of on-demand.", &v6, 0xCu);
      }

      sub_10008FE40(*(a1 + 32), 0);
      [*(a1 + 32) setFailedConnectCountWithinInterval:0];
    }

    else
    {
      sub_10008FE40(*(a1 + 32), 1);
    }
  }

  v4 = [*(a1 + 32) onDemandPauseTimerSource];

  if (v4)
  {
    v5 = [*(a1 + 32) onDemandPauseTimerSource];
    dispatch_source_cancel(v5);

    [*(a1 + 32) setOnDemandPauseTimerSource:0];
  }
}

void sub_1000903EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100090414(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (!WeakRetained || (a2 & 1) == 0)
  {
LABEL_10:
    v15 = *(*(a1 + 48) + 16);
    goto LABEL_11;
  }

  v7 = objc_getProperty(WeakRetained, v5, 688, 1);
  if (!v7)
  {
    goto LABEL_7;
  }

  v9 = v7;
  v10 = objc_getProperty(v6, v8, 688, 1);
  v11 = [v10 controlUnit];
  v12 = [v11 unsignedIntValue];

  if (!v12)
  {
LABEL_7:
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid flow divert control unit", &buf, 2u);
    }

    goto LABEL_10;
  }

  if ([*(a1 + 32) isFullyTransparent])
  {
    v13 = 0;
    v44 = 0;
  }

  else
  {
    v16 = [v6 pluginConfigurationEntities];
    v17 = [v16 DNSSettings];
    v13 = v17 != 0;

    v18 = [v6 pluginConfigurationEntities];
    v19 = [v18 proxySettings];
    if ([v19 enabled])
    {
      v44 = 1;
    }

    else
    {
      v20 = [v6 protocol];
      v21 = [v20 proxySettings];
      v44 = [v21 enabled];
    }
  }

  v22 = [v6 policySession];
  v23 = [*(a1 + 32) includedNetworkRules];
  v24 = [*(a1 + 32) excludedNetworkRules];
  v26 = objc_getProperty(v6, v25, 688, 1);
  v48 = [v26 controlUnit];
  v43 = [v48 unsignedIntValue];
  v27 = [v6 primaryTunnelPlugin];
  v46 = sub_100019700(v27, v28);
  v29 = [v46 firstObject];
  v42 = [*(a1 + 32) isFullyTransparent];
  Property = [*(a1 + 40) server];
  v32 = Property;
  v45 = v13;
  v49 = v26;
  v47 = v27;
  v33 = v22;
  if (Property)
  {
    Property = objc_getProperty(Property, v31, 80, 1);
  }

  v34 = Property;
  v35 = v23;
  v36 = v24;
  v37 = v29;
  v38 = v34;
  if (v33)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v51 = sub_100047370;
    v52 = &unk_1000EA0D0;
    v53 = v33;
    v58 = v43;
    v59 = v42;
    v54 = v37;
    v55 = v38;
    v56 = v36;
    v60 = v44;
    v61 = v45;
    v57 = v35;
    v39 = v33;
    v40 = sub_100031500(NESMPolicyMasterSession, &buf);
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  if ((v40 & 1) == 0)
  {
    v41 = ne_log_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%@: Failed to set the flow divert policies", &buf, 0xCu);
    }
  }

  v15 = *(*(a1 + 48) + 16);
LABEL_11:
  v15();
}

void sub_100090974(void *a1, const char *a2)
{
  if (a1)
  {
    if (objc_getProperty(a1, a2, 384, 1))
    {
      [objc_getProperty(a1 v3];
      objc_setProperty_atomic(a1, v4, 0, 384);
    }

    if (objc_getProperty(a1, v3, 392, 1))
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = a1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ End DNS On Demand monitor transaction", &v7, 0xCu);
      }

      objc_setProperty_atomic(a1, v6, 0, 392);
    }
  }
}

void sub_100090CC8(void *a1, char a2)
{
  if (a1)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3032000000;
    v8[3] = sub_100090DE8;
    v8[4] = sub_100090DF8;
    v9 = os_transaction_create();
    v4 = [a1 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100090E00;
    block[3] = &unk_1000EB090;
    v6 = a2;
    v7 = 1;
    block[4] = a1;
    block[5] = v8;
    dispatch_async(v4, block);

    _Block_object_dispose(v8, 8);
  }
}

void sub_100090DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100090DE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100090E00(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    sub_10008FAD0(*(a1 + 32));
    sub_10008E79C(*(a1 + 32));
  }

  if (*(a1 + 49) == 1)
  {
    v2 = [*(a1 + 32) configuration];
    v3 = [v2 dnsSettings];
    v4 = [v3 isEnabled];

    v5 = [*(a1 + 32) policySession];
    v6 = v5;
    if (v4)
    {
      v26 = [*(a1 + 32) networkAgent];
      v7 = [v26 agentUUID];
      v25 = [*(a1 + 32) configuration];
      v8 = [v25 dnsSettings];
      v9 = [v8 settings];
      v11 = [v9 matchDomains];
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v10, 376, 1);
        v13 = *(a1 + 32);
      }

      else
      {
        v13 = 0;
      }

      v14 = Property;
      v15 = [v13 server];
      v17 = v15;
      if (v15)
      {
        v15 = objc_getProperty(v15, v16, 80, 1);
      }

      v18 = v15;
      v19 = v7;
      v20 = v11;
      v21 = v14;
      v22 = v18;
      if (v6 && v6[2] == 7)
      {
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10004B7F8;
        v27[3] = &unk_1000EA198;
        v27[4] = v6;
        v28 = v19;
        v29 = v20;
        v30 = v21;
        v31 = v22;
        sub_100031500(NESMPolicyMasterSession, v27);
      }
    }

    else
    {
      sub_100030D44(v5);
    }
  }

  v23 = *(*(a1 + 40) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = 0;
}

void sub_100091124(uint64_t a1)
{
  v8 = [*(a1 + 32) configuration];
  v2 = [v8 dnsSettings];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) configuration];
    v5 = [v4 dnsSettings];
    v6 = [v5 settings];

    if (v6)
    {
      v7 = *(a1 + 32);

      [v7 startWithCommand:0 isOnDemand:0];
    }
  }

  else
  {
  }
}

uint64_t sub_10009134C(int *a1, void *a2)
{
  v3 = a2;
  self = a1;
  if (!a1)
  {
    v4 = 0;
    goto LABEL_78;
  }

  v60 = v3;
  v4 = [v3 payloadInfo];
  if (v4)
  {
    v5 = [v60 payloadInfo];
    v6 = [v5 profileUUID];

    if (v6)
    {
      v56 = +[MCProfileConnection sharedConnection];
      if ([v56 isSupervised])
      {
        v4 = 0;
LABEL_76:

        goto LABEL_77;
      }

      v54 = [v56 installedMDMProfileIdentifier];
      if (!v54)
      {
        v4 = 0;
LABEL_75:

        goto LABEL_76;
      }

      v7 = [v56 installedProfileWithIdentifier:?];
      v53 = v7;
      if (!v7)
      {
        v4 = 0;
LABEL_74:

        goto LABEL_75;
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v8 = [v7 managedPayloads];
      v9 = [v8 countByEnumeratingWithState:&v67 objects:v80 count:16];
      if (v9)
      {
        v10 = 0;
        v11 = *v68;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v68 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v67 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [v13 UUID];
              v15 = [v60 payloadInfo];
              v16 = [v15 payloadUUID];
              v17 = [v14 isEqualToString:v16];

              v10 |= v17;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v67 objects:v80 count:16];
        }

        while (v9);

        if (v10)
        {
          v18 = objc_alloc_init(NSMutableArray);
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v19 = [v53 managedPayloads];
          v20 = [v19 countByEnumeratingWithState:&v61 objects:v79 count:16];
          if (v20)
          {
            v21 = *v62;
            do
            {
              for (j = 0; j != v20; j = j + 1)
              {
                if (*v62 != v21)
                {
                  objc_enumerationMutation(v19);
                }

                v23 = *(*(&v61 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v24 = v23;
                  v25 = [v24 ssid];
                  v26 = v25 == 0;

                  if (!v26)
                  {
                    v27 = [v24 ssid];
                    [v18 addObject:v27];
                  }
                }
              }

              v20 = [v19 countByEnumeratingWithState:&v61 objects:v79 count:16];
            }

            while (v20);
          }

          v28 = ne_log_obj();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v83 = self;
            v84 = 2112;
            v85 = v18;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@ restricting to SSIDs: %@", buf, 0x16u);
          }

          v29 = v18;
          newValue = objc_alloc_init(NSMutableArray);
          if ([v29 count])
          {
            if ([objc_getProperty(self v30])
            {
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              obj = objc_getProperty(self, v31, 368, 1);
              v32 = [obj countByEnumeratingWithState:&v75 objects:buf count:16];
              if (v32)
              {
                v59 = *v76;
                do
                {
                  for (k = 0; k != v32; k = k + 1)
                  {
                    if (*v76 != v59)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v34 = *(*(&v75 + 1) + 8 * k);
                    if ([v34 action] == 2 || objc_msgSend(v34, "action") == 4)
                    {
                      [newValue addObject:v34];
                    }

                    else
                    {
                      v35 = [v34 copy];
                      v36 = [v35 SSIDMatch];
                      v37 = [v36 count] == 0;

                      if (v37)
                      {
                        [v35 setSSIDMatch:v29];
                      }

                      else
                      {
                        v38 = objc_alloc_init(NSMutableArray);
                        v73 = 0u;
                        v74 = 0u;
                        v71 = 0u;
                        v72 = 0u;
                        v39 = [v35 SSIDMatch];
                        v40 = [v39 countByEnumeratingWithState:&v71 objects:location count:16];
                        if (v40)
                        {
                          v41 = *v72;
                          do
                          {
                            for (m = 0; m != v40; m = m + 1)
                            {
                              if (*v72 != v41)
                              {
                                objc_enumerationMutation(v39);
                              }

                              v43 = *(*(&v71 + 1) + 8 * m);
                              if ([v29 containsObject:v43])
                              {
                                [v38 addObject:v43];
                              }
                            }

                            v40 = [v39 countByEnumeratingWithState:&v71 objects:location count:16];
                          }

                          while (v40);
                        }

                        [v35 setSSIDMatch:v38];
                      }

                      v44 = [v35 SSIDMatch];
                      v45 = [v44 count] == 0;

                      if (!v45)
                      {
                        [newValue addObject:v35];
                      }
                    }
                  }

                  v32 = [obj countByEnumeratingWithState:&v75 objects:buf count:16];
                }

                while (v32);
              }
            }

            else
            {
              obj = objc_alloc_init(NEOnDemandRuleConnect);
              [obj setInterfaceTypeMatch:2];
              [obj setSSIDMatch:v29];
              [newValue addObject:obj];
            }
          }

          v50 = objc_alloc_init(NEOnDemandRuleDisconnect);
          [newValue addObject:v50];
          objc_setProperty_atomic(self, v51, newValue, 368);

          v4 = 1;
LABEL_73:
          v7 = v53;
          goto LABEL_74;
        }
      }

      else
      {
      }

      if (self[89] == -1)
      {
        objc_initWeak(location, self);
        v46 = [MCProfileListChangedNotification cStringUsingEncoding:4];
        v47 = [self queue];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100092070;
        handler[3] = &unk_1000EAA48;
        objc_copyWeak(&v66, location);
        v48 = notify_register_dispatch(v46, self + 89, v47, handler);

        if (v48)
        {
          v49 = ne_log_obj();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v83 = self;
            v84 = 1024;
            LODWORD(v85) = v48;
            _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%@ Failed to register for MC notifications: %u", buf, 0x12u);
          }
        }

        objc_destroyWeak(&v66);
        objc_destroyWeak(location);
      }

      v4 = 0;
      goto LABEL_73;
    }

    v4 = 0;
  }

LABEL_77:
  v3 = v60;
LABEL_78:

  return v4;
}

void sub_100091B14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x270]);
  _Unwind_Resume(a1);
}

void sub_100091B50(void *a1, const char *a2)
{
  if (a1)
  {
    v2 = a1;
    sub_100090974(a1, a2);
    if (objc_getProperty(v2, v3, 368, 1))
    {
      if (!objc_getProperty(v2, v4, 368, 1))
      {
        v5 = 0;
        goto LABEL_34;
      }

      v5 = +[NSMutableArray array];
      if ([objc_getProperty(v2 v6])
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = v2;
        v8 = objc_getProperty(v2, v7, 368, 1);
        v9 = [v8 countByEnumeratingWithState:&v43 objects:buf count:16];
        if (!v9)
        {
          goto LABEL_17;
        }

        v10 = v9;
        v11 = *v44;
        while (1)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v44 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = v5;
            v14 = *(*(&v43 + 1) + 8 * i);
            v15 = objc_alloc_init(NWNetworkDescription);
            v16 = [v14 interfaceTypeMatch];
            if (v16 == 3)
            {
              v17 = &off_1000EE3F0;
            }

            else
            {
              if (v16 != 2)
              {
                goto LABEL_15;
              }

              v17 = &off_1000EE408;
            }

            v18 = [NSSet setWithObject:v17];
            [v15 setInterfaceTypeOptions:v18];

LABEL_15:
            v19 = [v14 DNSSearchDomainMatch];
            v20 = [NSSet setWithArray:v19];
            [v15 setDnsSearchDomainOptions:v20];

            v21 = [v14 DNSServerAddressMatch];
            v22 = [NSSet setWithArray:v21];
            [v15 setDnsServerAddressOptions:v22];

            v23 = [v14 SSIDMatch];
            v24 = [NSSet setWithArray:v23];
            [v15 setSsidOptions:v24];

            v25 = [v14 probeURL];
            [v15 setProbeURL:v25];

            v5 = v13;
            [v13 addObject:v15];
          }

          v10 = [v8 countByEnumeratingWithState:&v43 objects:buf count:16];
          if (!v10)
          {
LABEL_17:

            v2 = v41;
            if (!v5)
            {
              goto LABEL_34;
            }

            goto LABEL_24;
          }
        }
      }

      v26 = objc_alloc_init(NWNetworkDescription);
      [v5 addObject:v26];

      if (!v5)
      {
        goto LABEL_34;
      }

LABEL_24:
      v27 = objc_alloc_init(NWParameters);
      v28 = [NWMonitor monitorWithNetworkDescriptionArray:v5 endpoint:0 parameters:v27];
      objc_setProperty_atomic(v2, v29, v28, 384);

      if (objc_getProperty(v2, v30, 384, 1))
      {
        if (!objc_getProperty(v2, v31, 392, 1))
        {
          v33 = ne_log_obj();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v48 = v2;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%@ Begin DNS On Demand monitor transaction", buf, 0xCu);
          }

          v34 = [NSString alloc];
          v35 = [v2 configuration];
          v36 = [v35 identifier];
          v37 = [v34 initWithFormat:@"com.apple.nesessionmanager.DNSOnDemandMonitor.%@", v36];

          [v37 UTF8String];
          v38 = os_transaction_create();
          objc_setProperty_atomic(v2, v39, v38, 392);
        }

        [objc_getProperty(v2 v32];
      }

      else
      {
        v40 = ne_log_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v48 = v2;
          _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%@ DNS On Demand monitor creation failed", buf, 0xCu);
        }
      }

LABEL_34:
    }

    else
    {
      v42 = [v2 server];
      [v42 requestInstallForSession:v2 withParentSession:0 exclusive:0];
    }
  }
}

void sub_100092070(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained configuration];
    v4 = [v3 dnsSettings];
    v5 = [v4 onDemandRules];
    objc_setProperty_atomic(v2, v6, v5, 368);

    if (sub_10009134C(v2, v3))
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ updateOnDemandRulesForConfiguration asking to install", &v10, 0xCu);
      }

      *(v2 + 352) = 1;
      sub_100091B50(v2, v8);
    }

    v9 = v2[89];
    if ((v9 & 0x80000000) == 0)
    {
      notify_cancel(v9);
      v2[89] = -1;
    }
  }
}

void sub_100092B48(const void *a1, void *a2)
{
  v23 = 0x200000;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!a1)
    {
      v16 = 0;
      v8 = 0;
      if (a2)
      {
LABEL_25:
        v19 = a2[2];
LABEL_26:
        (*(v19 + 16))(v19, v16);

        goto LABEL_27;
      }

LABEL_40:
      v19 = 0;
      goto LABEL_26;
    }

    IONetworkInterfaceObject = IOEthernetControllerGetIONetworkInterfaceObject();
    if (IONetworkInterfaceObject)
    {
      CFProperty = IORegistryEntryCreateCFProperty(IONetworkInterfaceObject, @"BSD Name", kCFAllocatorDefault, 0);
      TypeID = CFStringGetTypeID();
      if (CFProperty && CFGetTypeID(CFProperty) == TypeID)
      {
        if (a2)
        {
          v7 = a2[1];
        }

        else
        {
          v7 = 0;
        }

        v8 = v7;
        [v8 setName:CFProperty];

        BSDSocket = IOEthernetControllerGetBSDSocket();
        if ((BSDSocket & 0x80000000) != 0)
        {
          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *__strerrbuf = 0;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to get the kernel control socket of the user ethernet controller", __strerrbuf, 2u);
          }

          goto LABEL_34;
        }

        v10 = BSDSocket;
        v11 = [[NSFileHandle alloc] initWithFileDescriptor:BSDSocket closeOnDealloc:0];
        [v8 setControlSocket:v11];

        if (setsockopt(v10, 0xFFFF, 4097, &v23, 4u))
        {
          v12 = *__error();
          if (strerror_r(v12, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          v13 = ne_log_obj();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_34;
          }

          *buf = 67109378;
          v25 = v12;
          v26 = 2080;
          v27 = __strerrbuf;
          v14 = "Failed to set the kernel control socket send buffer size: [%d] %s";
        }

        else
        {
          if (!setsockopt(v10, 0xFFFF, 4098, &v23, 4u))
          {
            v21 = ne_log_obj();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v8 name];
              *__strerrbuf = 138412290;
              v29 = v22;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Created user ethernet interface %@", __strerrbuf, 0xCu);
            }

            [v8 setUserEthernetController:a1];
            v16 = 1;
            if (a2)
            {
              goto LABEL_25;
            }

            goto LABEL_40;
          }

          v20 = *__error();
          if (strerror_r(v20, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          v13 = ne_log_obj();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_34;
          }

          *buf = 67109378;
          v25 = v20;
          v26 = 2080;
          v27 = __strerrbuf;
          v14 = "Failed to set the kernel control socket receive buffer size: [%d] %s";
        }

        _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, v14, buf, 0x12u);
LABEL_34:

LABEL_24:
        CFRelease(a1);
        v16 = 0;
        if (a2)
        {
          goto LABEL_25;
        }

        goto LABEL_40;
      }

      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *__strerrbuf = 0;
        v18 = "Failed to get the BSD name of the user ethernet controller";
LABEL_36:
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v18, __strerrbuf, 2u);
      }
    }

    else
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *__strerrbuf = 0;
        v18 = "Failed to get the IO object for the user ethernet controller";
        goto LABEL_36;
      }
    }

    v8 = 0;
    goto LABEL_24;
  }

  v15 = ne_log_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *__strerrbuf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "No completion object was provided", __strerrbuf, 2u);
  }

  if (a1)
  {
    CFRelease(a1);
  }

LABEL_27:
}

void sub_1000930E4(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (!v3 || (v4 = objc_getProperty(v3, a2, 32, 1)) == 0)
  {
    __assert_rtn("[NEAgent startWithCompletionHandler:]_block_invoke", "NEAgent.m", 153, "self.callbackQueue != NULL");
  }

  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: starting", buf, 0xCu);
  }

  v8 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.neagent" options:0];
  v9 = *(a1 + 32);
  if (v9)
  {
    objc_setProperty_atomic(v9, v7, v8, 80);
  }

  v11 = *(a1 + 32);
  if (v11 && v11[5])
  {
    v12 = [objc_getProperty(v11 v10];
    xpc_connection_set_instance();
  }

  else
  {
    memset(out, 0, sizeof(out));
    *buf = 0u;
    memset(v48, 0, 21);
    uuid_generate(out);
    uuid_unparse(out, buf);
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      *v43 = 138412546;
      *&v43[4] = v14;
      *&v43[12] = 2080;
      *&v43[14] = buf;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@: starting with instance ID %s", v43, 0x16u);
    }

    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v15, 80, 1);
    }

    v12 = [Property _xpcConnection];
    xpc_connection_set_oneshot_instance();
  }

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100093578;
  v41[3] = &unk_1000EB1C0;
  v41[4] = *(a1 + 32);
  v18 = objc_retainBlock(v41);
  v19 = *(a1 + 32);
  if (v19)
  {
    v19 = objc_getProperty(v19, v17, 80, 1);
  }

  [v19 setInvalidationHandler:v18];
  v21 = *(a1 + 32);
  if (v21)
  {
    v21 = objc_getProperty(v21, v20, 80, 1);
  }

  [v21 setInterruptionHandler:v18];
  v22 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NEAgentControl];
  v23 = [NSSet alloc];
  v24 = objc_opt_class();
  v25 = [v23 initWithObjects:{v24, objc_opt_class(), 0}];
  [v22 setClasses:v25 forSelector:"setupWithPluginType:pluginVersion:pluginClass:pluginInfo:completionHandler:" argumentIndex:2 ofReply:1];
  v27 = *(a1 + 32);
  if (v27)
  {
    v27 = objc_getProperty(v27, v26, 80, 1);
  }

  [v27 setRemoteObjectInterface:v22];
  v29 = *(a1 + 32);
  if (v29)
  {
    v29 = objc_getProperty(v29, v28, 80, 1);
  }

  v40 = v18;
  [v29 resume];
  v30 = *(a1 + 32);
  v32 = *(a1 + 40);
  if (v30)
  {
    v33 = objc_getProperty(v30, v31, 80, 1);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *v48 = sub_100093628;
    *&v48[8] = &unk_1000EAA70;
    *&v48[16] = v30;
    v34 = v32;
    v49 = v34;
    v35 = [v33 remoteObjectProxyWithErrorHandler:buf];
    v37 = v30[5];
    v36 = v30[6];
    v38 = v30[7];
    v39 = v30[12];
    *v43 = _NSConcreteStackBlock;
    *&v43[8] = 3221225472;
    *&v43[16] = sub_100093788;
    v44 = &unk_1000EAAC0;
    v45 = v30;
    v46 = v34;
    [v35 setupWithPluginType:v36 pluginVersion:v37 pluginClass:v38 pluginInfo:v39 completionHandler:v43];
  }
}

void sub_100093578(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@: XPC connection went away", &v5, 0xCu);
  }

  sub_100093DB0(*(a1 + 32), v4);
}

void sub_100093628(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    *buf = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@: Got an XPC error while waiting for a setup command response: %@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    Property = objc_getProperty(v6, v5, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100093E38;
  v11[3] = &unk_1000EB310;
  v8 = *(a1 + 40);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  dispatch_async(Property, v11);
}

void sub_100093788(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v10 = a4;
  v11 = *(a1 + 32);
  if (v11)
  {
    Property = objc_getProperty(v11, v9, 24, 1);
    v13 = *(a1 + 32);
  }

  else
  {
    v13 = 0;
    Property = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000938B0;
  block[3] = &unk_1000EAA98;
  v19 = v7;
  v20 = v13;
  v21 = v10;
  v14 = *(a1 + 40);
  v22 = v8;
  v23 = v14;
  v15 = v8;
  v16 = v10;
  v17 = v7;
  dispatch_async(Property, block);
}

void sub_1000938B0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4 && v4[5])
  {
    goto LABEL_11;
  }

  v6 = [NEProcessIdentity alloc];
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 80, 1);
  }

  v8 = [Property _xpcConnection];
  v9 = [v6 initFromXPCConnection:v8];

  if (v9)
  {
    v10 = [[NSArray alloc] initWithObjects:{v9, 0}];
    sub_100093CC4(*(a1 + 40), v10);
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create a process identity from the agent XPC connection", buf, 2u);
    }

    v12 = [[NSError alloc] initWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
    v3 = v12;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
LABEL_11:
    v4 = objc_getProperty(v4, v2, 80, 1);
  }

  v13 = [v4 _xpcConnection];
  v14 = v13;
  if (v13)
  {
    v15 = *(a1 + 40);
    pid = xpc_connection_get_pid(v13);
    sub_100093CD4(v15, pid, *(a1 + 48));
    v17 = xpc_connection_copy_entitlement_value();
    v18 = v17;
    if (!v17 || xpc_get_type(v17) != &_xpc_type_BOOL || !xpc_BOOL_get_value(v18))
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 40);
        if (v29)
        {
          LODWORD(v29) = *(v29 + 16);
        }

        *buf = 67109120;
        LODWORD(v35) = v29;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Terminating neagent connection from un-entitled process %d", buf, 8u);
      }

      v20 = [[NSError alloc] initWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
      v3 = v20;
    }
  }

  else
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Terminating neagent connection because the XPC connection is NULL", buf, 2u);
    }

    v18 = v3;
    v3 = [[NSError alloc] initWithDomain:@"NEAgentErrorDomain" code:1 userInfo:0];
  }

  if (v3)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 40);
      *buf = 138412546;
      v35 = v28;
      v36 = 2112;
      v37 = v3;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@: Tearing down XPC connection due to setup error: %@", buf, 0x16u);
    }

    sub_100093DB0(*(a1 + 40), v24);
  }

  v25 = *(a1 + 40);
  if (v25)
  {
    v26 = objc_getProperty(v25, v22, 32, 1);
  }

  else
  {
    v26 = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100093E20;
  block[3] = &unk_1000EB2E8;
  v33 = *(a1 + 64);
  v31 = v3;
  v32 = *(a1 + 56);
  v27 = v3;
  dispatch_async(v26, block);
}

void sub_100093CC4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_100093CD4(uint64_t a1, int a2, void *a3)
{
  v12 = a3;
  if (a1)
  {
    *(a1 + 16) = a2;
    objc_storeStrong((a1 + 64), a3);
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    objc_opt_self();
    if ((v6 - 2) > 8)
    {
      v8 = @"legacy";
    }

    else
    {
      v8 = *(&off_1000EAB08 + v6 - 2);
    }

    v9 = v8;
    v10 = [NSString stringWithFormat:@"%@[%@][%d]", v7, v9, *(a1 + 16)];
    v11 = *(a1 + 8);
    *(a1 + 8) = v10;
  }
}

void sub_100093DB0(void *a1, const char *a2)
{
  if (a1 && objc_getProperty(a1, a2, 80, 1))
  {
    [objc_getProperty(a1 v3];

    objc_setProperty_atomic(a1, v4, 0, 80);
  }
}

void sub_100093FDC(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (!v3 || (v4 = objc_getProperty(v3, a2, 32, 1)) == 0)
  {
    __assert_rtn("[NEAgent disposeWithCompletionHandler:]_block_invoke", "NEAgent.m", 204, "self.callbackQueue != NULL");
  }

  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: disposing", buf, 0xCu);
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    goto LABEL_15;
  }

  Property = objc_getProperty(v8, v7, 80, 1);
  v11 = *(a1 + 32);
  if (!Property)
  {
    if (v11)
    {
      v17 = objc_getProperty(v11, v9, 32, 1);
LABEL_12:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100094268;
      block[3] = &unk_1000EAAE8;
      v23 = *(a1 + 40);
      dispatch_async(v17, block);
      v16 = v23;
      goto LABEL_13;
    }

LABEL_15:
    v17 = 0;
    goto LABEL_12;
  }

  if (v11)
  {
    v12 = objc_getProperty(v11, v9, 80, 1);
    v13 = *(a1 + 32);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10009427C;
  v20[3] = &unk_1000EAA70;
  v20[4] = v13;
  v21 = *(a1 + 40);
  v14 = [v12 remoteObjectProxyWithErrorHandler:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10009435C;
  v18[3] = &unk_1000EAA70;
  v15 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v15;
  [v14 disposeWithCompletionHandler:v18];

  v16 = v21;
LABEL_13:
}

void sub_10009427C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@: Got an error on the XPC connection while waiting for dispose to complete: %@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10009435C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 24, 1);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    Property = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100094438;
  block[3] = &unk_1000EB2E8;
  v10 = v4;
  v11 = v7;
  v12 = *(a1 + 40);
  v8 = v4;
  dispatch_async(Property, block);
}

void sub_100094438(id *a1)
{
  if (a1[4])
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v10 = a1[4];
      v9 = a1[5];
      *buf = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@: disposed with error: %@", buf, 0x16u);
    }
  }

  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: disposed, tearing down agent connection", buf, 0xCu);
  }

  sub_100093DB0(a1[5], v5);
  v7 = a1[5];
  if (v7)
  {
    Property = objc_getProperty(v7, v6, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000945EC;
  v11[3] = &unk_1000EB310;
  v13 = a1[6];
  v12 = a1[4];
  dispatch_async(Property, v11);
}

void sub_100094600(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 64);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 mutableCopy];
  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableArray);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v4 containsObject:{v10, v14}] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v11 = [[NSArray alloc] initWithArray:v4];
    v12 = *(a1 + 32);
    v13 = *(v12 + 64);
    *(v12 + 64) = v11;
  }
}

void sub_1000947B4(uint64_t a1, int a2)
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = "TRUE";
    if (!a2)
    {
      v4 = "FALSE";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[NEWiFiManager] Wi-Fi WoW state change callback called, isEnabled:[%s]", &v5, 0xCu);
  }
}

id sub_100094870()
{
  objc_opt_self();
  if (qword_1000FD598 != -1)
  {
    dispatch_once(&qword_1000FD598, &stru_1000EAB50);
  }

  v0 = qword_1000FD590;

  return v0;
}

void sub_1000948C8(id a1)
{
  v1 = objc_alloc_init(NEWiFiManager);
  v2 = qword_1000FD590;
  qword_1000FD590 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100094904(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 16) || (v3 = WiFiManagerClientCreate(), (v4 = *(a1 + 32)) != 0) && (*(v4 + 16) = v3, (v2 = *(a1 + 32)) != 0) && *(v2 + 16))
  {
    ++*(v2 + 8);
    v5 = *(a1 + 32);
    if (v5)
    {
      if (*(v5 + 8) == 1)
      {
        v6 = *(v5 + 16);
        WiFiManagerClientSetWoWState();
        v7 = *(a1 + 32);
        if (v7)
        {
          v8 = *(v7 + 16);
        }

        WiFiManagerClientRegisterWowStateChangedCallback();
        v9 = *(a1 + 32);
        if (v9)
        {
          v10 = *(v9 + 16);
        }

        CFRunLoopGetMain();
        WiFiManagerClientScheduleWithRunLoop();
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 32);
          v13 = 138412290;
          v14 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ enabled Wi-Fi WoW", &v13, 0xCu);
        }
      }
    }
  }
}

void sub_100094A70(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      *(v1 + 8) = v2 - 1;
      v3 = *(a1 + 32);
      if (v3)
      {
        if (!*(v3 + 8) && *(v3 + 16))
        {
          WiFiManagerClientSetWoWState();
          v4 = *(v3 + 16);
          WiFiManagerClientRegisterWowStateChangedCallback();
          v5 = *(v3 + 16);
          CFRunLoopGetMain();
          WiFiManagerClientUnscheduleFromRunLoop();
          CFRelease(*(v3 + 16));
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          v6 = ne_log_obj();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            v7 = 138412290;
            v8 = v3;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ disabled Wi-Fi WoW", &v7, 0xCu);
          }
        }
      }
    }
  }
}

void sub_100094E64(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:0];
  v6 = v4;
  if (v4)
  {
    v4 = objc_getProperty(v4, v5, 24, 1);
  }

  [v4 handleNetworkConfigurationChange:*(a1 + 40)];
}

void sub_100094EE0(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:1];
  v6 = v4;
  if (v4)
  {
    v4 = objc_getProperty(v4, v5, 24, 1);
  }

  [v4 handleNetworkConfigurationChange:*(a1 + 40)];
}

void sub_1000952B8(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property && (Property = objc_getProperty(Property, a2, 24, 1)) != 0)
  {
    v4 = Property;
    Property = objc_getProperty(Property, v3, 24, 1);
  }

  else
  {
    v4 = 0;
  }

  [Property uninstallOnQueue];
}

void sub_100095324(void *a1, const char *a2)
{
  if (a1)
  {
    if (objc_getProperty(a1, a2, 408, 1))
    {
      v4 = [objc_getProperty(a1 v3];
      v5 = ne_log_obj();
      v6 = v5;
      if (v4)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v8 = a1[50] - 2;
          if (v8 > 3)
          {
            v9 = @"Uninstalled";
          }

          else
          {
            v9 = off_1000EACB8[v8];
          }

          v13 = [objc_getProperty(a1 v7];
          v15 = v13;
          if (v13 && (v16 = *(v13 + 32) - 2, v16 <= 3))
          {
            v17 = off_1000EACB8[v16];
          }

          else
          {
            v17 = @"Uninstalled";
          }

          v18 = [objc_getProperty(a1 v14];
          v19 = v18;
          if (v18 && (v20 = *(v18 + 32) - 2, v20 <= 3))
          {
            v21 = off_1000EACB8[v20];
          }

          else
          {
            v21 = @"Uninstalled";
          }

          *buf = 138413058;
          v52 = a1;
          v53 = 2112;
          v54 = v9;
          v55 = 2112;
          v56 = v17;
          v57 = 2112;
          v58 = v21;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@:Request install, parent session(%@), primary session(%@), fallback session(%@)", buf, 0x2Au);
        }

        v23 = [objc_getProperty(a1 v22];
        v6 = v23;
        if (v23 && v23[2] == 3)
        {
          v25 = a1[50];
          if (v25 > 3)
          {
            if (v25 == 4)
            {
              Property = objc_getProperty(v23, v24, 24, 1);
              if (Property)
              {
                Property = objc_getProperty(Property, v38, 24, 1);
              }

              v39 = [Property queue];
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_100095D68;
              block[3] = &unk_1000EB1C0;
              v40 = v6;
              v50 = v40;
              dispatch_async(v39, block);

              v42 = objc_getProperty(v40, v41, 24, 1);
              if (v42)
              {
                v42[4] = 4;
              }

              [objc_getProperty(a1 v43];
              v27 = v50;
            }

            else
            {
              if (v25 != 5)
              {
                goto LABEL_31;
              }

              v28 = objc_getProperty(v23, v24, 24, 1);
              if (v28)
              {
                v28 = objc_getProperty(v28, v29, 24, 1);
              }

              v30 = [v28 queue];
              v44 = _NSConcreteStackBlock;
              v45 = 3221225472;
              v46 = sub_100095DD4;
              v47 = &unk_1000EB1C0;
              v31 = v6;
              v48 = v31;
              dispatch_async(v30, &v44);

              v33 = objc_getProperty(v31, v32, 24, 1);
              if (v33)
              {
                v33[4] = 5;
              }

              v35 = objc_getProperty(a1, v34, 408, 1);
              [v35 removeObject:{v31, v44, v45, v46, v47}];
              v27 = v48;
            }

            goto LABEL_30;
          }

          if ((v25 - 1) < 2)
          {
            a1[50] = 3;
            v26 = objc_getProperty(v23, v24, 24, 1);
            if (v26)
            {
              v26[4] = 3;
            }

            v27 = [a1 server];
            [v27 requestInstallForSession:a1 withParentSession:0 exclusive:*(v6 + 8) & 1];
            goto LABEL_30;
          }

          if (v25 != 3)
          {
            goto LABEL_31;
          }

          v27 = ne_log_obj();
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_30;
          }

          *buf = 0;
          v36 = "parent session is in requested installation state";
        }

        else
        {
          v27 = ne_log_obj();
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
LABEL_30:

            goto LABEL_31;
          }

          *buf = 0;
          v36 = "bad operation request state";
        }

        _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, v36, buf, 2u);
        goto LABEL_30;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v10 = "request install configuration operation array is empty";
        v11 = v6;
        v12 = 2;
        goto LABEL_11;
      }
    }

    else
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v52 = "[NESMIKEv2VPNFallbackSession requestInstall]";
        v10 = "%s called with null self.configurationOperationArray";
        v11 = v6;
        v12 = 12;
LABEL_11:
        _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, v10, buf, v12);
      }
    }

LABEL_31:
  }
}

void sub_100095850(void *a1, const char *a2)
{
  if (a1)
  {
    if (objc_getProperty(a1, a2, 408, 1))
    {
      v4 = [objc_getProperty(a1 v3];
      v5 = ne_log_obj();
      v6 = v5;
      if (v4)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v8 = a1[50] - 2;
          if (v8 > 3)
          {
            v9 = @"Uninstalled";
          }

          else
          {
            v9 = off_1000EACB8[v8];
          }

          v13 = [objc_getProperty(a1 v7];
          v15 = v13;
          if (v13 && (v16 = *(v13 + 32) - 2, v16 <= 3))
          {
            v17 = off_1000EACB8[v16];
          }

          else
          {
            v17 = @"Uninstalled";
          }

          v18 = [objc_getProperty(a1 v14];
          v19 = v18;
          if (v18 && (v20 = *(v18 + 32) - 2, v20 <= 3))
          {
            v21 = off_1000EACB8[v20];
          }

          else
          {
            v21 = @"Uninstalled";
          }

          *buf = 138413058;
          v45 = a1;
          v46 = 2112;
          v47 = v9;
          v48 = 2112;
          v49 = v17;
          v50 = 2112;
          v51 = v21;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@:Request uninstall, parent session(%@), primary session(%@), fallback session(%@)", buf, 0x2Au);
        }

        v23 = [objc_getProperty(a1 v22];
        v6 = v23;
        if (!v23 || *(v23 + 16) != 2)
        {
          v39 = ne_log_obj();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            v41 = "bad operation request state";
            goto LABEL_43;
          }

LABEL_32:

          goto LABEL_33;
        }

        v25 = [objc_getProperty(a1 v24];
        v27 = v25 == objc_getProperty(v6, v26, 24, 1);

        v29 = [objc_getProperty(a1 v28];
        if (v29)
        {
          v30 = v29[4];

          if ((v30 - 3) < 3)
          {
            Property = objc_getProperty(v6, v31, 24, 1);
            if (Property)
            {
              Property = objc_getProperty(Property, v33, 24, 1);
            }

            v34 = [Property queue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100095CFC;
            block[3] = &unk_1000EB1C0;
            v35 = v6;
            v43 = v35;
            dispatch_async(v34, block);

            v37 = objc_getProperty(v35, v36, 24, 1);
            if (v37)
            {
              v37[4] = 1;
            }

            [objc_getProperty(a1 v38];
            v39 = v43;
            goto LABEL_32;
          }

          if (v30 != 2)
          {
            if (v30 != 1)
            {
              goto LABEL_33;
            }

            a1[50] = 2;
            v40 = objc_getProperty(v6, v31, 24, 1);
            if (v40)
            {
              v40[4] = 2;
            }

            v39 = [a1 server];
            [v39 requestUninstallForSession:a1];
            goto LABEL_32;
          }

          v39 = ne_log_obj();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            v41 = "child sesssion is in requested uninstallation state";
LABEL_43:
            _os_log_fault_impl(&_mh_execute_header, v39, OS_LOG_TYPE_FAULT, v41, buf, 2u);
            goto LABEL_32;
          }

          goto LABEL_32;
        }

LABEL_33:

        return;
      }

      if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_33;
      }

      *buf = 0;
      v10 = "request uninstall configuration operation array is empty";
      v11 = v6;
      v12 = 2;
    }

    else
    {
      v6 = ne_log_obj();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_33;
      }

      *buf = 136315138;
      v45 = "[NESMIKEv2VPNFallbackSession requestUninstall]";
      v10 = "%s called with null self.configurationOperationArray";
      v11 = v6;
      v12 = 12;
    }

    _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, v10, buf, v12);
    goto LABEL_33;
  }
}

void sub_100095CFC(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property && (Property = objc_getProperty(Property, a2, 24, 1)) != 0)
  {
    v4 = Property;
    Property = objc_getProperty(Property, v3, 24, 1);
  }

  else
  {
    v4 = 0;
  }

  [Property uninstallOnQueue];
}

void sub_100095D68(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property && (Property = objc_getProperty(Property, a2, 24, 1)) != 0)
  {
    v4 = Property;
    Property = objc_getProperty(Property, v3, 24, 1);
  }

  else
  {
    v4 = 0;
  }

  [Property installPended];
}

void sub_100095DD4(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property && (Property = objc_getProperty(Property, a2, 24, 1)) != 0)
  {
    v4 = Property;
    Property = objc_getProperty(Property, v3, 24, 1);
  }

  else
  {
    v4 = 0;
  }

  [Property install];
}

void sub_100096198(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property && (Property = objc_getProperty(Property, a2, 24, 1)) != 0)
  {
    v4 = Property;
    Property = objc_getProperty(Property, v3, 24, 1);
  }

  else
  {
    v4 = 0;
  }

  [Property installPended];
}

void sub_1000966E4(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:*(a1 + 40)];
  v6 = v4;
  if (v4)
  {
    v4 = objc_getProperty(v4, v5, 24, 1);
  }

  [v4 install];
}

void sub_10009675C(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property && (Property = objc_getProperty(Property, a2, 24, 1)) != 0)
  {
    v4 = Property;
    Property = objc_getProperty(Property, v3, 24, 1);
  }

  else
  {
    v4 = 0;
  }

  [Property install];
}

uint64_t sub_1000969CC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = 0;
  if (a1 && a2 <= 5)
  {
    v7 = off_1000EAC88[a2];
    v8 = [NSNumber numberWithInt:?];
    LODWORD(v7) = [v7 containsObject:v8];

    if (v7)
    {
      return a3;
    }

    else
    {
      return a2;
    }
  }

  return result;
}

void sub_100096BCC(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:0];
  v6 = v4;
  if (v4)
  {
    v4 = objc_getProperty(v4, v5, 24, 1);
  }

  [v4 handleNetworkDetectionNotification:*(a1 + 40)];
}

void sub_100096C48(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:1];
  v6 = v4;
  if (v4)
  {
    v4 = objc_getProperty(v4, v5, 24, 1);
  }

  [v4 handleNetworkDetectionNotification:*(a1 + 40)];
}

void sub_100096E7C(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:0];
  v6 = v4;
  if (v4)
  {
    v4 = objc_getProperty(v4, v5, 24, 1);
  }

  [v4 handleChangeEventForInterface:a1[5] newFlags:a1[6] previousFlags:a1[7]];
}

void sub_100097CA4(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:0];
  v6 = v4;
  if (v4)
  {
    v4 = objc_getProperty(v4, v5, 24, 1);
  }

  [v4 handleUpdateConfiguration:0];

  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = objc_getProperty(v8, v7, 360, 1);
  }

  v9 = [v8 objectAtIndexedSubscript:0];
  v11 = v9;
  if (v9)
  {
    v9 = objc_getProperty(v9, v10, 24, 1);
  }

  sub_10008F9DC(v9);

  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = objc_getProperty(v13, v12, 360, 1);
  }

  v14 = [v13 objectAtIndexedSubscript:0];
  v16 = v14;
  if (v14)
  {
    v14 = objc_getProperty(v14, v15, 24, 1);
  }

  sub_10008FAD0(v14);

  v18 = *(a1 + 32);
  if (v18)
  {
    v18 = objc_getProperty(v18, v17, 360, 1);
  }

  v19 = [v18 objectAtIndexedSubscript:0];
  v21 = v19;
  if (v19)
  {
    v19 = objc_getProperty(v19, v20, 24, 1);
  }

  sub_10008FA5C(v19);
}

void sub_100097DE8(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:1];
  v6 = v4;
  if (v4)
  {
    v4 = objc_getProperty(v4, v5, 24, 1);
  }

  [v4 handleUpdateConfiguration:0];

  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = objc_getProperty(v8, v7, 360, 1);
  }

  v9 = [v8 objectAtIndexedSubscript:1];
  v11 = v9;
  if (v9)
  {
    v9 = objc_getProperty(v9, v10, 24, 1);
  }

  sub_10008F9DC(v9);

  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = objc_getProperty(v13, v12, 360, 1);
  }

  v14 = [v13 objectAtIndexedSubscript:1];
  v16 = v14;
  if (v14)
  {
    v14 = objc_getProperty(v14, v15, 24, 1);
  }

  sub_10008FAD0(v14);

  v18 = *(a1 + 32);
  if (v18)
  {
    v18 = objc_getProperty(v18, v17, 360, 1);
  }

  v19 = [v18 objectAtIndexedSubscript:1];
  v21 = v19;
  if (v19)
  {
    v19 = objc_getProperty(v19, v20, 24, 1);
  }

  sub_10008FA5C(v19);
}

void sub_100097F2C(uint64_t a1)
{
  v2 = [*(a1 + 32) VPN];
  v3 = [v2 protocol];
  v11 = [v3 copy];

  [v11 setTunnelKind:1];
  v4 = [*(a1 + 32) copy];
  v5 = [v4 VPN];
  [v5 setProtocol:v11];

  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v6, 360, 1);
  }

  v8 = [Property objectAtIndexedSubscript:0];
  v10 = v8;
  if (v8)
  {
    v8 = objc_getProperty(v8, v9, 24, 1);
  }

  [v8 handleUpdateConfiguration:v4];
}

void sub_100098018(uint64_t a1)
{
  v2 = [*(a1 + 32) VPN];
  v3 = [v2 protocol];
  v11 = [v3 copy];

  [v11 setTunnelKind:2];
  v4 = [*(a1 + 32) copy];
  v5 = [v4 VPN];
  [v5 setProtocol:v11];

  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v6, 360, 1);
  }

  v8 = [Property objectAtIndexedSubscript:1];
  v10 = v8;
  if (v8)
  {
    v8 = objc_getProperty(v8, v9, 24, 1);
  }

  [v8 handleUpdateConfiguration:v4];
}

void sub_100098278(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v3 = [Property objectAtIndexedSubscript:0];
  v5 = v3;
  if (v3)
  {
    v3 = objc_getProperty(v3, v4, 24, 1);
  }

  [v3 handleUserSwitch];
}

void sub_1000982E4(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v3 = [Property objectAtIndexedSubscript:1];
  v5 = v3;
  if (v3)
  {
    v3 = objc_getProperty(v3, v4, 24, 1);
  }

  [v3 handleUserSwitch];
}

void sub_1000984C4(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v3 = [Property objectAtIndexedSubscript:0];
  v5 = v3;
  if (v3)
  {
    v3 = objc_getProperty(v3, v4, 24, 1);
  }

  [v3 handleUserLogout];
}

void sub_100098530(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v3 = [Property objectAtIndexedSubscript:1];
  v5 = v3;
  if (v3)
  {
    v3 = objc_getProperty(v3, v4, 24, 1);
  }

  [v3 handleUserLogout];
}

void sub_10009871C(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:0];
  v6 = v4;
  if (v4)
  {
    v4 = objc_getProperty(v4, v5, 24, 1);
  }

  [v4 handleSleepTime:*(a1 + 40)];
}

void sub_100098798(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:1];
  v6 = v4;
  if (v4)
  {
    v4 = objc_getProperty(v4, v5, 24, 1);
  }

  [v4 handleSleepTime:*(a1 + 40)];
}

void sub_1000989B4(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v3 = [Property objectAtIndexedSubscript:0];
  v5 = v3;
  if (v3)
  {
    v3 = objc_getProperty(v3, v4, 24, 1);
  }

  [v3 handleSleep];
}

void sub_100098A20(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v3 = [Property objectAtIndexedSubscript:1];
  v5 = v3;
  if (v3)
  {
    v3 = objc_getProperty(v3, v4, 24, 1);
  }

  [v3 handleSleep];
}

void sub_100098C00(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v3 = [Property objectAtIndexedSubscript:0];
  v5 = v3;
  if (v3)
  {
    v3 = objc_getProperty(v3, v4, 24, 1);
  }

  [v3 handleWakeup];
}

void sub_100098C6C(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v3 = [Property objectAtIndexedSubscript:1];
  v5 = v3;
  if (v3)
  {
    v3 = objc_getProperty(v3, v4, 24, 1);
  }

  [v3 handleWakeup];
}

void sub_100098E7C(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:0];
  v6 = v4;
  if (v4)
  {
    v4 = objc_getProperty(v4, v5, 24, 1);
  }

  [v4 handleStopMessageWithReason:*(a1 + 40)];
}

void sub_100098EF8(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:1];
  v6 = v4;
  if (v4)
  {
    v4 = objc_getProperty(v4, v5, 24, 1);
  }

  [v4 handleStopMessageWithReason:*(a1 + 40)];
}

void sub_1000990C8(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:0];
  v6 = v4;
  if (v4)
  {
    v4 = objc_getProperty(v4, v5, 24, 1);
  }

  [v4 handleStartMessage:*(a1 + 40)];
}

void sub_1000992DC(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v3 = [Property objectAtIndexedSubscript:0];
  v5 = v3;
  if (v3)
  {
    v3 = objc_getProperty(v3, v4, 24, 1);
  }

  [v3 handleInitializeState];
}

void sub_100099348(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v3 = [Property objectAtIndexedSubscript:1];
  v5 = v3;
  if (v3)
  {
    v3 = objc_getProperty(v3, v4, 24, 1);
  }

  [v3 handleInitializeState];
}

void sub_100099494(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) server];
  if (v2 != v3)
  {

    return;
  }

  v39 = v3;
  v4 = [*(a1 + 48) isEqualToString:@"primaryCellularInterface"];

  if (!v4)
  {
    return;
  }

  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 40) server];
    v7 = [v6 primaryCellularInterface];
    v8 = [v7 interfaceName];
    if (v8)
    {
      v9 = [*(a1 + 40) server];
      v10 = [v9 primaryCellularInterface];
      v11 = [v10 interfaceName];
      *buf = 138412290;
      v50 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Primary cellular interface changed to %@", buf, 0xCu);
    }

    else
    {
      *buf = 138412290;
      v50 = @"none";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Primary cellular interface changed to %@", buf, 0xCu);
    }
  }

  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v12, 360, 1);
  }

  v14 = [Property objectAtIndexedSubscript:1];
  v16 = v14;
  if (v14)
  {
    v14 = objc_getProperty(v14, v15, 24, 1);
  }

  v17 = v14;

  v19 = *(a1 + 40);
  if (v19)
  {
    v19 = objc_getProperty(v19, v18, 384, 1);
  }

  v20 = v19;
  v21 = [*(a1 + 40) server];
  v22 = [v21 primaryCellularInterface];

  if (nwi_state_copy())
  {
    v24 = [v20 interfaceName];

    if (v24 && ([v20 interfaceName], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "UTF8String"), ifstate = nwi_state_get_ifstate(), v25, ifstate))
    {
      flags = nwi_ifstate_get_flags();
    }

    else
    {
      flags = 0;
    }

    v28 = [v22 interfaceName];
    if (v28)
    {
      v29 = [v22 interfaceIndex];
      v30 = [v20 interfaceIndex];

      if (v29 == v30)
      {
        v28 = 0;
      }

      else
      {
        v31 = [v22 interfaceName];
        [v31 UTF8String];
        v28 = nwi_state_get_ifstate();

        if (v28)
        {
          v28 = nwi_ifstate_get_flags();
        }
      }
    }

    nwi_state_release();
    if (!v20)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  flags = 0;
  v28 = 0;
  if (v20)
  {
LABEL_30:
    v32 = [v17 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100099980;
    block[3] = &unk_1000EAB78;
    v45 = v17;
    v33 = v20;
    v34 = *(a1 + 40);
    v46 = v33;
    v47 = v34;
    v48 = flags;
    dispatch_async(v32, block);
  }

LABEL_31:
  if (v22)
  {
    v35 = [v22 interfaceIndex];
    if (v35 != [v20 interfaceIndex])
    {
      v36 = [v17 queue];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1000999F8;
      v40[3] = &unk_1000EABA0;
      v41 = v17;
      v42 = v22;
      v43 = v28;
      dispatch_async(v36, v40);
    }
  }

  v37 = *(a1 + 40);
  if (v37)
  {
    objc_setProperty_atomic(v37, v23, v22, 384);
    v38 = *(a1 + 40);
    if (v38)
    {
      *(v38 + 392) = v28;
      v37 = *(a1 + 40);
    }

    else
    {
      v37 = 0;
    }
  }

  sub_100099A58(v37);
}

void sub_100099980(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) interfaceName];
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(v4 + 392);
  }

  else
  {
    v5 = 0;
  }

  v6 = v3;
  [v2 handleChangeEventForInterface:v3 newFlags:*(a1 + 56) previousFlags:v5];
}

void sub_1000999F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) interfaceName];
  [v2 handleChangeEventForInterface:v3 newFlags:*(a1 + 48) previousFlags:0];
}

void sub_100099A58(uint64_t *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    Property = [objc_getProperty(a1 v3];
    v6 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 40, 1);
    }

    v7 = "NO";
    if (Property)
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    v9 = [objc_getProperty(a1 v5];
    v11 = v9;
    if (v9)
    {
      v9 = objc_getProperty(v9, v10, 40, 1);
    }

    if (v9)
    {
      v7 = "YES";
    }

    v12 = [objc_getProperty(a1 v10];
    v13 = a1[46];
    v14 = a1[47];
    v38 = 138413570;
    v39 = a1;
    v40 = 2080;
    v41 = v8;
    v42 = 2080;
    v43 = v7;
    v44 = 2112;
    v45 = v12;
    v46 = 2048;
    v47 = v13;
    v48 = 2048;
    v49 = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ primary tunnel %s, fallback tunnel %s, cellular %@, predicted: %lu, advisory: %lu", &v38, 0x3Eu);
  }

  v16 = [objc_getProperty(a1 v15];
  v18 = v16;
  if (v16)
  {
    v16 = objc_getProperty(v16, v17, 40, 1);
  }

  v19 = [v16 interfaceIndex];

  v21 = [objc_getProperty(a1 v20];
  v23 = v21;
  if (v21)
  {
    v21 = objc_getProperty(v21, v22, 40, 1);
  }

  v24 = [v21 interfaceIndex];

  if (!v19)
  {
    goto LABEL_37;
  }

  if (v24)
  {
    v26 = a1[46];
    if (!v26 || (v27 = a1[47]) == 0 || v26 != v19 || v27 != v24)
    {
      v28 = [a1 server];
      sub_10005A8D8(v28, v24, v19);

      a1[46] = v19;
LABEL_30:
      v36 = &OBJC_IVAR___NESMIKEv2VPNFallbackSession__advisoryInterfaceIndex;
LABEL_34:
      *(a1 + *v36) = v24;
      return;
    }

    return;
  }

  if (!objc_getProperty(a1, v25, 384, 1))
  {
LABEL_37:
    if (a1[47] && a1[46])
    {
      v37 = [a1 server];
      v36 = &OBJC_IVAR___NESMIKEv2VPNFallbackSession__predicatedInterfaceIndex;
      sub_10005AD0C(v37, a1[47], a1[46]);

      v24 = 0;
      a1[47] = 0;
      goto LABEL_34;
    }

    return;
  }

  v30 = a1[46];
  if (!v30 || (v31 = a1[47]) == 0 || v30 != v19 || v31 != [objc_getProperty(a1 v29])
  {
    v32 = [a1 server];
    v34 = [objc_getProperty(a1 v33];
    sub_10005A8D8(v32, v34, v19);

    a1[46] = v19;
    v24 = [objc_getProperty(a1 v35];
    goto LABEL_30;
  }
}

void sub_100099EBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (v3 == (*(v2 + 352) & 1))
    {
      return;
    }

    *(v2 + 352) = v3;
  }

  else if (!*(a1 + 40))
  {
    return;
  }

  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = "not";
    if (v5 && (*(v5 + 352) & 1) != 0)
    {
      v6 = "";
    }

    v9 = 138412546;
    v10 = v5;
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ fallback is %s active", &v9, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    if (v8[352])
    {
      sub_100099FE8(v8, v7);
    }
  }
}

void sub_100099FE8(_BYTE *self, const char *a2)
{
  if (!self || (self[352] & 1) == 0)
  {
    return;
  }

  v5 = [objc_getProperty(self a2];
  v31 = v5;
  if (v5 && *(v5 + 8) == 2)
  {
    v7 = 0;
  }

  else
  {
    v2 = objc_getProperty(self, v6, 360, 1);
    v8 = [v2 objectAtIndexedSubscript:0];
    v3 = v8;
    if (!v8 || v8[2] != 3)
    {

      return;
    }

    v7 = 1;
  }

  v9 = [objc_getProperty(self v6];
  v11 = v9;
  if (v9 && *(v9 + 8) == 1 || ([objc_getProperty(self v10], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    if (v7)
    {
    }

LABEL_18:
    Property = [objc_getProperty(self v12];
    v17 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v16, 24, 1);
    }

    v18 = Property;

    if (sub_10008AA94(self))
    {
      v19 = [v18 matchedRule];
      if ([v19 action] == 2)
      {
        v20 = sub_10008AA94(self);

        if (v20)
        {
LABEL_36:

          return;
        }
      }

      else
      {
        v21 = [v18 matchedRule];
        if ([v21 action] == 4)
        {
          v22 = sub_10008AA94(self);

          if (v22)
          {
            goto LABEL_36;
          }
        }

        else
        {
        }
      }
    }

    else if (sub_10008AA94(self))
    {
      goto LABEL_36;
    }

    v23 = xpc_dictionary_create(0, 0, 0);
    v24 = getpid();
    xpc_dictionary_set_int64(v23, "SessionPID", v24);
    v26 = [objc_getProperty(self v25];
    v28 = v26;
    if (v26)
    {
      v26 = objc_getProperty(v26, v27, 24, 1);
    }

    v29 = [v26 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009A334;
    block[3] = &unk_1000EB198;
    block[4] = self;
    v33 = v23;
    v30 = v23;
    dispatch_async(v29, block);

    goto LABEL_36;
  }

  v14 = v13[2];

  if (v7)
  {
  }

  if (!v14)
  {
    goto LABEL_18;
  }
}

void sub_10009A334(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v4 = [Property objectAtIndexedSubscript:1];
  v6 = v4;
  if (v4)
  {
    v4 = objc_getProperty(v4, v5, 24, 1);
  }

  [v4 startWithCommand:*(a1 + 40) isOnDemand:0];
}

id sub_10009A3B4(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v28.receiver = a1;
  v28.super_class = NEIKEv2FallbackChildSession;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = a2;
  v20 = objc_msgSendSuper2(&v28, "init");
  v21 = [NESMIKEv2VPNSession alloc];
  if (v21)
  {
    v29.receiver = v21;
    v29.super_class = NESMIKEv2VPNSession;
    v22 = objc_msgSendSuper2(&v29, "initWithConfiguration:andServer:andProtocol:andPluginType:andSessionType:sessionQueue:messageQueue:tunnelKind:parent:", v18, v17, v16, @"com.apple.NetworkExtension.IKEv2Provider", 1, v15, v14, a8, v19);
  }

  else
  {
    v22 = 0;
  }

  if (v20)
  {
    objc_setProperty_atomic(v20, v23, v22, 24);

    *(v20 + 4) = 1;
    *(v20 + 2) = 0;
    objc_setProperty_atomic(v20, v24, 0, 40);
    if (a8 == 1)
    {
      v26 = @"Primary Tunnel";
    }

    else
    {
      v26 = @"Fallback Tunnel";
    }

    objc_setProperty_atomic(v20, v25, v26, 16);
  }

  else
  {
  }

  return v20;
}

void *sub_10009A54C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v44.receiver = a1;
    v44.super_class = NESMIKEv2VPNFallbackSession;
    a1 = objc_msgSendSuper2(&v44, "initWithConfiguration:andServer:", v7, v8);
    if (a1)
    {
      v10 = ne_log_large_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v46 = a1;
        v47 = 2080;
        v48 = "[NESMIKEv2VPNFallbackSession initWithConfiguration:andServer:andProtocol:andSessionType:]";
        v49 = 2112;
        v50 = v7;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@:%s: Configuration %@", buf, 0x20u);
      }

      NEInitCFTypes();
      v11 = [[NSMutableArray alloc] initWithCapacity:2];
      objc_setProperty_atomic(a1, v12, v11, 360);

      v13 = [v9 copy];
      [v13 setTunnelKind:1];
      v14 = [v7 copy];
      v15 = [v14 VPN];
      [v15 setProtocol:v13];

      v16 = [NEIKEv2FallbackChildSession alloc];
      v17 = [a1 queue];
      v18 = [a1 messageQueue];
      v42 = v14;
      v19 = sub_10009A3B4(v16, a1, v14, v8, v13, v17, v18, 1);

      v41 = v19;
      [objc_getProperty(a1 v20];
      v43 = v9;
      v21 = [v9 copy];
      [v21 setTunnelKind:2];
      v22 = [v7 copy];
      v23 = [v22 VPN];
      [v23 setProtocol:v21];

      v24 = [NEIKEv2FallbackChildSession alloc];
      v25 = [a1 queue];
      v26 = [a1 messageQueue];
      v27 = sub_10009A3B4(v24, a1, v22, v8, v21, v25, v26, 2);

      [objc_getProperty(a1 v28];
      v29 = [a1 server];
      v30 = [v29 primaryCellularInterface];
      objc_setProperty_atomic(a1, v31, v30, 384);

      a1[49] = 0;
      v33 = [objc_getProperty(a1 v32];

      if (v33 && nwi_state_copy())
      {
        v35 = [objc_getProperty(a1 v34];
        [v35 UTF8String];
        ifstate = nwi_state_get_ifstate();

        if (ifstate)
        {
          a1[49] = nwi_ifstate_get_flags();
        }

        nwi_state_release();
      }

      v37 = [a1 server];
      [v37 addObserver:a1 forKeyPath:@"primaryCellularInterface" options:5 context:0];

      a1[46] = 0;
      a1[47] = 0;
      a1[50] = 1;
      v38 = objc_alloc_init(NSMutableArray);
      objc_setProperty_atomic(a1, v39, v38, 408);

      v9 = v43;
    }
  }

  return a1;
}

void sub_10009A9A8(void *a1)
{
  if (a1)
  {
    v2 = [a1 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009AA38;
    block[3] = &unk_1000EB1C0;
    block[4] = a1;
    dispatch_async(v2, block);
  }
}

void sub_10009AA38(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    --*(v2 + 356);
    v3 = *(a1 + 32);
    if (v3 && v3[89])
    {
      return;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = [v3 server];
  sub_100059ED4(v5, v4);
}

void sub_10009AAB0(uint64_t a1, const char *a2)
{
  v4 = *(a1 + 32);
  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v5 = [Property objectAtIndexedSubscript:0];
  v7 = v5;
  if (v5)
  {
    v8 = objc_getProperty(v5, v6, 24, 1);
  }

  else
  {
    v8 = 0;
  }

  if (v4 == v8)
  {
    __assert_rtn("[NESMIKEv2VPNFallbackSession prepareNetwork:]_block_invoke", "NESMIKEv2VPNFallbackSession.m", 581, "0");
  }

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (v10)
  {
    v10 = objc_getProperty(v10, v9, 360, 1);
  }

  v12 = [v10 objectAtIndexedSubscript:1];
  v14 = v12;
  if (v12)
  {
    v15 = objc_getProperty(v12, v13, 24, 1);
  }

  else
  {
    v15 = 0;
  }

  if (v11 == v15)
  {
    v16 = [*(a1 + 40) server];
    if (v16)
    {
      v17 = v16[7];
    }

    else
    {
      v17 = 0;
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      v19 = objc_getProperty(v19, v18, 384, 1);
    }

    v21 = [v19 interfaceName];
    v22 = *(a1 + 40);
    if (v22)
    {
      v22 = objc_getProperty(v22, v20, 360, 1);
    }

    v23 = [v22 objectAtIndexedSubscript:1];
    v25 = v23;
    if (v23)
    {
      v23 = objc_getProperty(v23, v24, 24, 1);
    }

    v26 = [v23 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009ACAC;
    block[3] = &unk_1000EABA0;
    block[4] = *(a1 + 40);
    v29 = v21;
    v30 = v17;
    v27 = v21;
    dispatch_async(v26, block);
  }
}

void sub_10009ACAC(void *a1, const char *a2)
{
  v5 = a1 + 4;
  Property = a1[4];
  v4 = v5[1];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 360, 1);
  }

  v6 = [Property objectAtIndexedSubscript:1];
  v8 = v6;
  if (v6)
  {
    v6 = objc_getProperty(v6, v7, 24, 1);
  }

  [v6 setInterfaceName:v4];

  v10 = a1[6];
  if ((v10 | 2) == 3 && a1[5])
  {
    if (v10 == 3)
    {
      v17 = a1[4];
      if (v17)
      {
        v17 = objc_getProperty(v17, v9, 360, 1);
      }

      v18 = [v17 objectAtIndexedSubscript:1];
      v27 = v18;
      if (v18)
      {
        v18 = objc_getProperty(v18, v19, 24, 1);
      }

      v21 = [v18 server];
      v22 = a1[4];
      if (v22)
      {
        v22 = objc_getProperty(v22, v20, 360, 1);
      }

      v23 = [v22 objectAtIndexedSubscript:1];
      v25 = v23;
      if (v23)
      {
        v26 = objc_getProperty(v23, v24, 24, 1);
      }

      else
      {
        v26 = 0;
      }

      [v21 satisfyCellularPathForSession:v26];

      goto LABEL_20;
    }

    if (v10 != 1)
    {
      return;
    }

    v11 = a1[4];
    if (v11)
    {
      v11 = objc_getProperty(v11, v9, 360, 1);
    }

    v12 = [v11 objectAtIndexedSubscript:1];
    v27 = v12;
    if (v12)
    {
      v12 = objc_getProperty(v12, v13, 24, 1);
    }

    v14 = a1[5];
  }

  else
  {
    v15 = a1[4];
    if (v15)
    {
      v15 = objc_getProperty(v15, v9, 360, 1);
    }

    v12 = [v15 objectAtIndexedSubscript:1];
    v27 = v12;
    if (v12)
    {
      v12 = objc_getProperty(v12, v16, 24, 1);
    }

    v14 = 0;
  }

  [v12 handleNetworkPrepareResult:v14];
LABEL_20:
}